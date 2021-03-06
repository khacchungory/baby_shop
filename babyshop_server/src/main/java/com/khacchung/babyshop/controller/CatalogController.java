package com.khacchung.babyshop.controller;

import com.khacchung.babyshop.common.utils.Constants;
import com.khacchung.babyshop.common.utils.Result;
import com.khacchung.babyshop.model.auth.CustomUserDetail;
import com.khacchung.babyshop.model.dao.Catalog;
import com.khacchung.babyshop.model.dto.CatalogDTO;
import com.khacchung.babyshop.model.dto.ResponeDataDTO;
import com.khacchung.babyshop.repository.PermissionRepository;
import com.khacchung.babyshop.repository.RolePermissionRepository;
import com.khacchung.babyshop.service.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.repository.query.Param;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api")
public class CatalogController {
    @Autowired
    private CatalogService catalogService;

    @Autowired
    private PermissionRepository permissionRepository;

    @Autowired
    private RolePermissionRepository rolePermissionRepository;

    private CheckPermission checkPermission = CheckPermission.getInstance(permissionRepository, rolePermissionRepository);

    @RequestMapping(value = "/admin/create-catalog", method = RequestMethod.POST,
            consumes = {MediaType.APPLICATION_JSON_UTF8_VALUE},
            produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponeDataDTO<Catalog> createCatalog(@Valid @RequestBody CatalogDTO requestDTO) {
        Catalog catalog = new Catalog();
        catalog.setName(requestDTO.getName());
        try {
            Catalog tmp = catalogService.createCatalog(catalog);
            return new ResponeDataDTO<>(Constants.SUCCESS_MSG, Constants.SUCCESS_CODE, tmp);
        } catch (Exception e) {
            return new ResponeDataDTO<>(Result.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "/get-catalogs", method = RequestMethod.GET)
    public ResponeDataDTO<Page<Catalog>> getCatalogs(@Param("page") int page, @Param("size") int size) {
        try {
            var isApp = checkPermission.havePermission(permissionRepository, rolePermissionRepository,"catalog", "read");
            Page<Catalog> catalogs = catalogService.getCatalogs(PageRequest.of(page, size));
            return new ResponeDataDTO.Builder<Page<Catalog>>()
                    .withCode(Constants.SUCCESS_CODE)
                    .withMessage(Constants.SUCCESS_MSG)
                    .withData(catalogs)
                    .build();
        } catch (Exception e) {
            return new ResponeDataDTO<>(Result.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "/admin/delete-catalog", method = RequestMethod.GET)
    public ResponeDataDTO<String> deleteCatalog(@Param("id") int id) {
        try {
            Catalog catalog = catalogService.deleteCatalog(id);
            ResponeDataDTO<String> tmp = new ResponeDataDTO<>(Result.SUCCESS);
            tmp.setData(catalog.getName());
            return tmp;
        } catch (Exception e) {
            return new ResponeDataDTO<>(Result.NOT_FOUND);
        }
    }

    @RequestMapping(value = "/admin/update-catalog", method = RequestMethod.POST,
            consumes = {MediaType.APPLICATION_JSON_UTF8_VALUE},
            produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponeDataDTO<Catalog> updateCatalog(@Valid @RequestBody CatalogDTO requestDTO) {
        Catalog catalog = new Catalog(requestDTO.getId(), requestDTO.getName());
        try {
            Catalog tmp = catalogService.updateCatalog(catalog);
            return new ResponeDataDTO<>(Constants.SUCCESS_MSG, Constants.SUCCESS_CODE, tmp);
        } catch (Exception e) {
            return new ResponeDataDTO<>(Result.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "/get-catalog-by-id", method = RequestMethod.GET)
    public ResponeDataDTO<Catalog> getCatalog(@Param("id") int id) {
        try {
            Catalog catalog = catalogService.findCatalog(id);
            ResponeDataDTO<Catalog> tmp = new ResponeDataDTO<>(Result.SUCCESS);
            tmp.setData(catalog);
            return tmp;
        } catch (Exception e) {
            return new ResponeDataDTO<>(Result.NOT_FOUND);
        }
    }

    public boolean isAdmin() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            CustomUserDetail userDetails = (CustomUserDetail) auth.getPrincipal();
            try {
                var listRole = userDetails.getUser().getUserRoles();
                for (var item : listRole) {
                    if (item.getRole().getName() == "ROLE_ADMIN") {
                        return true;
                    }
                }
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }
}
