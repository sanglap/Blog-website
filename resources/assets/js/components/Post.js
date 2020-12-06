import React,{Component} from 'react';
class Post extends Component{
    constructor(){
        super();
        this.state={
            posts:[],
            loding:true
        }
    }

    // After Loading Component
    componentDidMount(){
        const data=[
            {
                id:'1',
                title:'First Title'
            },
            {
                id:'2',
                title:'Second Title'
            }
        ];
        this.setState({
            posts:data,
            loding:false
        });
    }

    render(){
        const postRows=this.state.posts.map(post=><h3 key={post.id}>{post.title}</h3>)
        return (
            <div>
                {postRows}
            </div>
            
        )
    }
}
export default Post;