<head>
    <title><g:message code="website.edit.title" default="Edit Web Site"></g:message></title>
</head>
<body>
    <div class="artifactControls">
        <span class="menuButton"><g:link class="list" action="list">Web Site List</g:link></span>
    </div>
    <div class="body">
        <g:renderErrors bean="${website}"></g:renderErrors>
        <div id="artifactForm" class="artifactForm">
        
            <g:uploadForm name="uploadArtifactForm" url="[action:'update',id:website.id]">
                <label for="website.title">Title:</label> 
                <g:textField name="website.title" value="${website.title}" /> 
                <label for="website.description">Description:</label> 
                <g:textArea name="website.description">${website.description}</g:textArea> 
                <label for="website.url">URL:</label> 
                <g:textField name="website.url" value="${website.url}" /> 
                
                <label for="tags">Tags:</label> 
                <g:textField name="tags" value="${website.tags.join(',')}" /> 

                <div id="previewUpload">
                <label for="preview">Preview image:</label>
                <input type="file" name="preview" />
                </div>
        
                <g:submitButton name="Update"></g:submitButton>				
            </g:uploadForm>
        </div>
    </div>
</body>
