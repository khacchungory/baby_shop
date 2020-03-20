import React, { Component } from 'react';
import Header from './../../layouts/header';
import Search from './../../layouts/search';
import Group from './../../layouts/group';
import Footer from './../../layouts/footer';
import Banner from './../../layouts/banner';
import Breadcrumb from './../../layouts/breadcrumb';
import { getDetailProduct } from './../../../state/product/product_action';
import { connect } from 'react-redux';
import { getCurentCatalog } from './../../../state/catalog/catalog_action';
import ReactImageZoom from 'react-image-zoom';
import { convertMoneyDisplay } from './../../../utilities/convert_money';
import renderComponent from './../../layouts/render_component';
class ProductDetail extends Component {
    constructor(props) {
        super(props);
        this.state = {
            typeGrid: true
        };
        this.getDataProduct();
    }

    getDataProduct = () => {
        const idCatalog = this.props.match.params.id;
        this.props.getDetailProduct(idCatalog);
    }

    dataLinkProduct = () => {
        return [
            { name: 'Trang Chủ', link: '/' },
        ];
    }

    convertMoney = (price, discount) => {
        const t = convertMoneyDisplay(price, discount);
        return t;
    }

    render() {
        return (
            <div >
                <Header></Header>
                <Search></Search>
                <Banner imgBg="images/bg/5.jpg" title="THÔNG TIN SẢN PHẨM"></Banner>
                <Breadcrumb dataLink={this.dataLinkProduct()} myName="Thông Tin Sản Phẩm"></Breadcrumb>

                <section className="htc__product__details bg__white ptb--100">
                    {/* Start Product Details Top */}
                    <div className="htc__product__details__top">
                        <div className="container">
                            <div className="row">
                                <div className="col-md-5 col-lg-5 col-sm-12 col-xs-12">
                                    <div className="htc__product__details__tab__content">
                                        {/* Start Product Big Images */}
                                        <div className="product__big__images">
                                            <div className="portfolio-full-image tab-content">
                                                <div role="tabpanel" className="tab-pane fade in active" id="img-tab-1">
                                                    {/* <ReactImageZoom zoomStyle={{opacity: 1, backgroundColor: 'white'}} zoomPosition='left'
                                                     img={this.props.currentProduct === null ? '1.jpg' : this.props.currentProduct.imagePath} /> */}
                                                    <img src={this.props.currentProduct === null ? '1.jpg' : this.props.currentProduct.imagePath} />
                                                </div>
                                            </div>
                                        </div>
                                        {/* End Product Big Images */}
                                    </div>
                                </div>
                                <div className="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
                                    <div className="ht__product__dtl">
                                        <h2>{this.props.currentProduct === null ? '' : this.props.currentProduct.name}</h2>
                                        <h6>Mã Sản Phẩm: <span>ID{this.props.currentProduct === null ? '' : this.props.currentProduct.id}</span></h6>

                                        {this.props.currentProduct === null ? <div></div> :
                                            this.props.currentProduct.discount !== 0
                                                ?
                                                <ul className="pro__prize" style={{ display: 'block' }}>
                                                    <li className="old__prize" style={{ textDecoration: 'line-through' }}>{this.props.currentProduct.price} VND</li>
                                                    <li style={{ fontSize: '24px', marginTop: '12px' }}>{this.convertMoney(this.props.currentProduct.price, this.props.currentProduct.discount)} VND</li>
                                                </ul>
                                                :
                                                <ul className="pro__prize" style={{ display: 'block' }}>
                                                    <li style={{ fontSize: '24px', marginTop: '12px' }}>
                                                        {this.convertMoney(this.props.currentProduct.price, 0)} VND
                                                     </li>
                                                </ul>
                                        }

                                        <div className="ht__pro__desc">
                                            <div className="sin__desc align--left">
                                                <p><span>color:</span></p>
                                                <ul className="pro__color">
                                                    <li className="red"><a href="#">red</a></li>
                                                    <li className="green"><a href="#">green</a></li>
                                                    <li className="balck"><a href="#">balck</a></li>
                                                </ul>
                                                <div className="pro__more__btn">
                                                    <a href="#">more</a>
                                                </div>
                                            </div>

                                            <div className="sin__desc align--left">
                                                <p><span>size</span></p>
                                                <select className="select__size">
                                                    <option>s</option>
                                                    <option>l</option>
                                                    <option>xs</option>
                                                    <option>xl</option>
                                                    <option>m</option>
                                                    <option>s</option>
                                                </select>
                                            </div>

                                            <div className="sin__desc product__share__link">
                                                <p><span>Chia Sẻ Sản Phẩm:</span></p>
                                                <ul className="pro__share">
                                                    <li><a href="#" target="_blank"><i className="icon-social-twitter icons" /></a></li>
                                                    <li><a href="#" target="_blank"><i className="icon-social-instagram icons" /></a></li>
                                                    <li><a href="https://www.facebook.com/Furny/?ref=bookmarks" target="_blank"><i className="icon-social-facebook icons" /></a></li>
                                                    <li><a href="#" target="_blank"><i className="icon-social-google icons" /></a></li>
                                                    <li><a href="#" target="_blank"><i className="icon-social-linkedin icons" /></a></li>
                                                    <li><a href="#" target="_blank"><i className="icon-social-pinterest icons" /></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/* End Product Details Top */}
                </section>




                <section className="htc__produc__decription bg__white">
                    <div className="container">
                        <div className="row">
                            <div className="col-xs-12">
                                {/* Start List And Grid View */}
                                <ul className="pro__details__tab" role="tablist">
                                    <li role="presentation" className="description active"><a href="#description" role="tab" data-toggle="tab">Thông Tin Sản Phẩm</a></li>
                                    <li role="presentation" className="review"><a href="#review" role="tab" data-toggle="tab">Hướng Dẫn Bảo Quản</a></li>
                                    <li role="presentation" className="shipping"><a href="#shipping" role="tab" data-toggle="tab">TAGS</a></li>
                                </ul>
                                {/* End List And Grid View */}
                            </div>
                        </div>
                        <div className="row">
                            <div className="col-xs-12">
                                <div className="ht__pro__details__content">
                                    {/* Start Single Content */}
                                    <div role="tabpanel" id="description" className="pro__single__content tab-pane fade in active">
                                        {this.props.currentProduct === null ? '' : renderComponent(this.props.currentProduct.description)}
                                    </div>
                                    {/* End Single Content */}
                                    {/* Start Single Content */}
                                    <div role="tabpanel" id="review" className="pro__single__content tab-pane fade">
                                        <div className="ty-wysiwyg-content"><p><span style={{ color: 'rgb(67, 67, 67)', fontFamily: 'Arial', fontSize: '13.3333px', fontWeight: 700, whiteSpace: 'pre-wrap', lineHeight: 2, textAlign: 'justify', backgroundColor: 'transparent' }}>CÁCH GIẶT ỦI VÀ BẢO QUẢN SẢN PHẨM</span><br />
                                            <span id="docs-internal-guid-c7cf60b1-ea6b-51dd-dfb3-0fb9d4f0f1fc" /></p>
                                            <p dir="ltr" style={{ lineHeight: 2, marginTop: '4pt', marginBottom: '10pt', textAlign: 'justify' }}><span id="docs-internal-guid-c7cf60b1-ea6b-51dd-dfb3-0fb9d4f0f1fc"><span style={{ fontSize: '13.3333px', fontFamily: 'Arial', color: 'rgb(74, 74, 74)', verticalAlign: 'baseline', whiteSpace: 'pre-wrap' }}>- Vò bằng tay với lần giặt đầu tiên, giặt bằng nước lã và không có xà phòng để lớp in mềm hơn, chống bong tróc. Nên giặt sản phẩm bằng nước lạnh hoặc nước nóng dưới 40 độ vì nếu giặt trong nước quá nóng sẽ làm vải giãn ra và lỏng sản phẩm.</span></span></p>
                                            <p dir="ltr" style={{ lineHeight: '1.62', marginTop: '0pt', marginBottom: '0pt', textAlign: 'justify' }}><span id="docs-internal-guid-c7cf60b1-ea6b-51dd-dfb3-0fb9d4f0f1fc"><span style={{ fontSize: '13.3333px', fontFamily: 'Arial', color: 'rgb(74, 74, 74)', verticalAlign: 'baseline', whiteSpace: 'pre-wrap' }}>- Để giữ màu sản được lâu và không bị ra màu trong quá trình giặt, mẹ có thể ngâm sản phẩm trong nước ấm có pha chút giấm trong khoảng 15-20 phút.</span></span></p>
                                            <p><span style={{ color: 'rgb(74, 74, 74)', fontFamily: 'Arial', fontSize: '13.3333px', whiteSpace: 'pre-wrap', lineHeight: '1.62', textAlign: 'justify' }}>- Không đổ trực tiếp các loại xà bông hoặc nước tẩy lên hình in. Mẹ nên hạn chế dùng các loại nước xả mềm vải vì nó sẽ làm sản phẩm bị giãn rất nhanh và khiến hình in bị mềm, dễ bong tróc. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ có thể dùng các loại nước xả thơm.</span></p>
                                            <p><span style={{ color: 'rgb(74, 74, 74)', fontFamily: 'Arial', fontSize: '13.3333px', whiteSpace: 'pre-wrap', lineHeight: '1.62', textAlign: 'justify' }}>- Không nên để sản phẩm ở những nơi ẩm ướt, với tính chất hút ẩm, hút nước tốt, sản phẩm dễ bị ẩm mốc, thậm chí để lại những vết ố trên vải. Tránh phơi sản phẩm trực tiếp dưới nắng vì sẽ làm màu và hình in phai màu.</span></p>
                                            <p><span id="docs-internal-guid-c7cf60b1-ea6b-51dd-dfb3-0fb9d4f0f1fc"><span style={{ fontSize: '13.3333px', fontFamily: 'Arial', color: 'rgb(74, 74, 74)', verticalAlign: 'baseline', whiteSpace: 'pre-wrap' }}>- Khi ủi sản phẩm tuyệt đối không được ủi lên bề mặt in hình trên sản phẩm, nên ủi ở nhiệt độ thấp và lộn trái sản phẩm ra trước khi ủi để tránh làm chết màu sắc của vải và làm bong tróc hay biến dạng những hình ảnh được in trên sản phẩm.</span></span></p>
                                        </div>
                                    </div>
                                    {/* End Single Content */}
                                    {/* Start Single Content */}
                                    <div role="tabpanel" id="shipping" className="pro__single__content tab-pane fade">

                                    </div>
                                    {/* End Single Content */}
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <Group></Group>
                <Footer></Footer>
            </div >
        )
    }
}

const mapStateToProps = (state, ownProps) => {
    return {
        currentProduct: state.productReducer.currentProduct
    }
}

const mapDispatchToProps = (dispatch, ownProps) => {
    return {
        getDetailProduct: (id) => {
            dispatch(getDetailProduct(id))
        }
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ProductDetail);