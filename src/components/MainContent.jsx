import { useState } from "react";

import HelpArea from "./HelpArea";

function MainContent() {
     const [helpVisible, setHelpVisible] = useState(false);

     function toggleHelp() {
          setHelpVisible((isVisible) => !isVisible);
     }

     return (
          <div>
               <button onClick={toggleHelp}>
                    {helpVisible ? "Hide" : "Show"} Help
               </button>
               {helpVisible && <HelpArea />}
          </div>
     );
}

export default MainContent;
