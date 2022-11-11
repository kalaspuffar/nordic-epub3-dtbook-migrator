#!/bin/bash

SCHXSLT_PATH=schxslt
MIGRATOR_PATH=..
SCHEMA_PATH=$MIGRATOR_PATH/src/main/resources/xml/schema

#cp $SCHEMA_PATH/2015-1/nordic-html5.rng src/main/resources/2015-1
#sed -i 's/http:\/\/www.daisy.org\/pipeline\/modules\/mathml-utils\/mathml3.rng/mathml3.rng/' src/main/resources/2020-1/nordic-html5.rng
#sed -i 's/<define name="annotation">/<define name="annotation" combine="choice">/' src/main/resources/2020-1/nordic-html5.rng
#sed -i 's/<define name="list">/<define name="list" combine="choice">/' src/main/resources/2020-1/nordic-html5.rng
saxon9-xslt -s:$SCHEMA_PATH/2015-1/nordic2015-1.nav-ncx.sch -o:src/main/resources/2015-1/nordic2015-1.nav-ncx.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2015-1/nordic2015-1.nav-references.sch -o:src/main/resources/2015-1/nordic2015-1.nav-references.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2015-1/nordic2015-1.opf-and-html.sch -o:src/main/resources/2015-1/nordic2015-1.opf-and-html.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2015-1/nordic2015-1.opf.sch -o:src/main/resources/2015-1/nordic2015-1.opf.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2015-1/nordic2015-1.sch -o:src/main/resources/2015-1/nordic2015-1.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl

cp $SCHEMA_PATH/2020-1/nordic-html5.rng src/main/resources/2020-1
sed -i 's/http:\/\/www.daisy.org\/pipeline\/modules\/mathml-utils\/mathml3.rng/mathml3.rng/' src/main/resources/2020-1/nordic-html5.rng
sed -i 's/<define name="annotation">/<define name="annotation" combine="choice">/' src/main/resources/2020-1/nordic-html5.rng
sed -i 's/<define name="list">/<define name="list" combine="choice">/' src/main/resources/2020-1/nordic-html5.rng
sed -i '/<start combine="choice">/,/<\/start>/d' src/main/resources/2020-1/nordic-html5.rng

saxon9-xslt -s:$SCHEMA_PATH/2020-1/nordic2020-1.nav-ncx.sch -o:src/main/resources/2020-1/nordic2020-1.nav-ncx.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2020-1/nordic2020-1.nav-references.sch -o:src/main/resources/2020-1/nordic2020-1.nav-references.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2020-1/nordic2020-1.opf-and-html.sch -o:src/main/resources/2020-1/nordic2020-1.opf-and-html.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2020-1/nordic2020-1.opf.sch -o:src/main/resources/2020-1/nordic2020-1.opf.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
saxon9-xslt -s:$SCHEMA_PATH/2020-1/nordic2020-1.sch -o:src/main/resources/2020-1/nordic2020-1.xsl -xsl:$SCHXSLT_PATH/2.0/compile-for-svrl.xsl
