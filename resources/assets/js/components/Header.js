import React from 'react';
import {Link} from 'react-router-dom';
function Header(){
    return(
        <ul>
            <li>
                <Link to="/">Home</Link>
                <Link to="/detail">Detail</Link>
            </li>
        </ul>
    ) 
}
export default Header;