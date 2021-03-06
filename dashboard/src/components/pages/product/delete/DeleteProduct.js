import React, { Component } from 'react';
import { connect } from 'react-redux';
import { removeProduct, closeModal } from '../../../../state/product/ProductAction';

class DeleteProduct extends Component {
    sendRequest = (e) => {
        this.props.sendDataDelete(this.props.data.id);
    }

    render() {
        return (
            <div>
                <div className="modal-content">
                    <div className="modal-header">
                        <h5 className="modal-title">Xóa sản phẩm</h5>
                        <button type="button" className="close" data-dismiss="modal" aria-label="Close" onClick={() => this.props.closeModel()}>
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div className="modal-body">
                        <span>Bạn có chắc chắn muốn xóa sản phẩm '<b style={{fontWeight: '700'}}>{this.props.data !== null ? this.props.data.name : ''}</b>' ?</span>

                    </div>
                    <div className="modal-footer">
                        <button type="button" id="asd" className="btn btn-secondary" data-dismiss="modal" onClick={() => this.props.closeModel()}>Hủy</button>
                        <button type="button" className="btn btn-primary" onClick={(e) => this.sendRequest(e)} disabled={this.props.isFetching}>Xóa</button>
                    </div>
                </div>
            </div>
        );
    }
}

const mapStateToProps = (state, ownProps) => {
    return {
        isFetching: state.CatalogReducer.isFetching,
        data: state.CatalogReducer.data
    }
}

const mapDispatchToProps = (dispatch, ownProps) => {
    return {
        sendDataDelete: (id) => {
            dispatch(removeProduct(id));
        },
        closeModel: () => {
            dispatch(closeModal());
        }
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(DeleteProduct);