import { combineReducers, createStore, applyMiddleware } from 'redux'
import thunk from 'redux-thunk';
import { composeWithDevTools } from 'redux-devtools-extension';
import appReducer from './app';
import authReducer from './auth';
import contactReducer from './contact';
import alertReducer from './alert';
import productReducer from './product';
import catalogReducer from './catalog';
import blogReducer from './blog';
import cartReducer from './cart';
import favoriteReducer from './favorite';
import homeReducer from './home';

const mReducer = combineReducers({
    appReducer,
    authReducer,
    contactReducer,
    alertReducer,
    productReducer,
    catalogReducer,
    blogReducer,
    cartReducer,
    favoriteReducer,
    homeReducer
});

const Store = createStore(mReducer,
    composeWithDevTools(applyMiddleware(thunk))
);

export default Store;