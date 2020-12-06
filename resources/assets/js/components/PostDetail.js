import React,{Component} from 'react';
class PostDetail extends Component{
    constructor(){
        super();
        this.state={
            posts:[],
            loding:true
        }
    }

    render(){
        return (
            <p>
                PostDetail Page
            </p>
        )
    }
}
export default PostDetail;