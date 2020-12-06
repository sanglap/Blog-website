import React from 'react';
import {Switch,Route} from 'react-router-dom';
import Post from './Post';
import PostDetail from './PostDetail';
function Main(){
    return(
        <main>
            <Switch>
                <Route exact path="/" component={Post} />
                <Route path="/detail" component={PostDetail} />
            </Switch>
        </main>
    ) 
}
export default Main;