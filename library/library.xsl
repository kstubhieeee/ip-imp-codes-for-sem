<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Library Catalogue</title>
                <style>
                    table {
                        width: 80%;
                        border-collapse: collapse;
                        margin: 20px auto;
                        font-family: Arial, sans-serif;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: #f4f4f4;
                        font-weight: bold;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                </style>
            </head>
            <body>
                <h1 style="text-align: center;">Library Catalogue</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Name of the Book</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Year of Publishing</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="library/book">
                            <tr>
                                <td><xsl:value-of select="name" /></td>
                                <td><xsl:value-of select="author" /></td>
                                <td><xsl:value-of select="publisher" /></td>
                                <td><xsl:value-of select="year" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
