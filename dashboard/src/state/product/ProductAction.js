import * as Type from './Constant';
import callApi from '../../service';
import * as Method from '../../utilities';
import Store from '../Store';
import { showAlertError, showAlertSuccess } from '../alert/ActionAlert';
import { uploadImage } from '../../service/CallApi';

export function getListCatalog() {
    return (dispath) => {
        return callApi('get-catalogs?page=0&size=1000', Method.GET, null, true)
            .then(res => {
                if (res !== undefined && res.data.code === 200) {
                    dispath(fetchListCataog(res.data.data.content));
                }
            });
    }
}

export function uploadImageAndCreate(image, data) {
    return (dispath) => {
        return uploadImage(image).then(res => {
            dispath(createProduct({ ...data, imagePath: res.data.data }));
        }).catch(() => {
            dispath(createError());
            dispath(showAlertError(Type.MSG_ERR_CREATE));
        });
    }
}

export function uploadImageAndUpdate(image, data) {
    return (dispath) => {
        return uploadImage(image).then(res => {
            dispath(editProduct({ ...data, imagePath: res.data.data }));
        }).catch(() => {
            dispath(createError());
            dispath(showAlertError(Type.MSG_ERR_CREATE));
        });
    }
}

export function createProduct(name) {
    const page = Store.getState().ProductReducer.totalPage;
    return (dispath) => {
        dispath(loadding());
        return callApi('admin/create-product', Method.POST,
            name, true).then(res => {
                if (res === undefined) {
                    dispath(createError());
                    dispath(showAlertError(Type.MSG_ERR_CREATE));
                }
                if (res.data.code === 200) {
                    dispath(createSuccess(res));
                    dispath(showAlertSuccess(Type.MSG_SS_CRATE));
                    dispath(getListProduct(page));
                } else {
                    dispath(createError());
                    dispath(showAlertError(Type.MSG_ERR_CREATE));
                }
            }).catch((res) => {
                console.log(res);
                dispath(createError());
                dispath(showAlertError(Type.MSG_ERR_CREATE));
            });
    }
}

export function getListProduct(number) {
    const pageSize = Store.getState().ProductReducer.pageSize;
    if (number < 0) {
        number = 0;
    }
    return (dispath) => {
        const parameter = `get-products?page=${number}&size=${pageSize}`;
        dispath(loadding());
        return callApi(parameter, Method.GET,
            null, false).then(res => {
                if (res === undefined) {
                    dispath(showAlertError(Type.MSG_ERR_GET));
                }
                if (res.data.code === 200) {
                    if ((res.data.data.totalPages - 1) < number && res.data.data.totalElements > 0) {
                        return dispath(getListProduct(number - 1));
                    }
                    dispath(fetchList(res.data.data.content,
                        res.data.data.totalElements,
                        res.data.data.totalPages,
                        res.data.data.first,
                        res.data.data.last,
                        res.data.data.number
                    ));
                } else {
                    dispath(showAlertError(Type.MSG_ERR_GET));
                }
            }).catch(() => {
                dispath(showAlertError(Type.MSG_ERR_GET));
            });
    }
}

export function editProduct(data) {
    const page = Store.getState().ProductReducer.pageNumber;
    return (dispath) => {
        dispath(loadding());
        callApi('admin/update-product', Method.POST, data, true)
            .then(res => {
                if (res === undefined) {
                    dispath(editError());
                    dispath(showAlertError(Type.MSG_ERR_EDIT));
                }
                if (res.data.code === 200) {
                    dispath(showAlertSuccess(Type.MSG_SS_EDIT));
                    dispath(editSuccess(res));
                    dispath(getListProduct(page));
                } else {
                    dispath(editError());
                    dispath(showAlertError(Type.MSG_ERR_EDIT));
                }
            }).catch(() => {
                dispath(editError());
                dispath(showAlertError(Type.MSG_ERR_EDIT));
            });
    }
}

export function removeProduct(id) {
    const page = Store.getState().ProductReducer.pageNumber;
    return (dispath) => {
        dispath(loadding());
        callApi(`admin/delete-product?id=${id}`, Method.GET, null, true).then(res => {
            if (res === undefined) {
                dispath(removeError());
                dispath(showAlertError(Type.MSG_ERR_DELETE));
            }
            if (res.data.code === 200) {
                dispath(removeSuccess());
                dispath(showAlertSuccess(Type.MSG_SS_DELETE));
                dispath(getListProduct(page));
            } else {
                dispath(removeError());
                dispath(showAlertError(Type.MSG_ERR_DELETE));
            }
        }).catch(() => {
            dispath(removeError());
            dispath(showAlertError(Type.MSG_ERR_DELETE));
        });
    }
}

export function fetchListCataog(data) {
    return {
        type: Type.FETCH_LIST_CATALOG,
        listCatalog: data
    }
}

export function fetchList(data, size, page, first, last, number) {
    return {
        type: Type.FETCH_LIST,
        listData: data,
        totalSize: size,
        totalPage: page,
        isFirst: first,
        isLast: last,
        currentPage: number
    }
}

export function loadding() {
    return {
        type: Type.PRODUCT_FETCHING
    }
}

export function createSuccess(data) {
    return {
        type: Type.CREATE_PRODUCT_SS,
        data: data
    }
}

export function createError() {
    return {
        type: Type.CREATE_PRODUCT_ER,
    }
}

export function editSuccess(data) {
    return {
        type: Type.EDIT_PRODUCT_SS,
        data: data
    }
}

export function editError() {
    return {
        type: Type.EDIT_PRODUCT_ER,
    }
}

export function removeSuccess(data) {
    return {
        type: Type.REMOVE_PRODUCT_SS,
        data: data
    }
}

export function removeError() {
    return {
        type: Type.REMOVE_PRODUCT_ER,
    }
}

export function openCreate() {
    return {
        type: Type.OPEN_CREATE
    }
}

export function closeModal() {
    return {
        type: Type.CLOSE_MODAL
    }
}

export function openEdit(data) {
    return {
        type: Type.OPEN_EDIT,
        data: data
    }
}


export function openDelete(data) {
    return {
        type: Type.OPEN_DELETE,
        data: data
    }
}