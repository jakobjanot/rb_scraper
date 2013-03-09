=begin

http://webservice.bibliotek.dk/soeg/?version=1.1&operation=searchRetrieve&query=cql.serverChoice+exact+%28#{test}%29&startRecord=1&maximumRecords=100&recordSchema=abm&stylesheet=default.xsl&recordPacking=string


/*
 * Tabel over hvilke felter af de fundne poster der skal vises
 * index: navn pÃ¥ det datalement der skal vises
 * "prefix": bruger kun hvis samme indes findes med forskellige prefixer
 *           og indeholder sÃ¥ (namespace-)prefixet
 * "label": Tekst der vises foran dataelementet
 * "css": Navn pÃ¥ den css-klasse (fra $css_style) der skal bruges
 * "delimiter": Skilletegn mellem flere forekomster af "tag". Udelades delimiter,
 *              skrives hvert felt pÃ¥ sin linie
 * "format": Bruges feltet skal printes pÃ¥ en sÃ¦rlig mÃ¥de (fx link)
 */
$show_tags = array();
$show_tags["creator"] = array("label" => "Forfatter ", "css" => "normal", "delimiter" => ". ");
$show_tags["title"] = array("label" => "Titel ", "css" => "normal", "delimiter" => ". ");
$show_tags["description"] = array("label" => "Beskrivelse ", "css" => "normal", "delimiter" => ". ");
$show_tags["version"] = array("label" => "Udgave ", "css" => "normal", "delimiter" => "; ");
$show_tags["publisher"] = array("label" => "Forlag ", "css" => "normal", "delimiter" => "; ");
$show_tags["subject"] = array("label" => "Emne ", "css" => "normal", "delimiter" => "; ");
$show_tags["identifier"] = array("prefix" => "dc", "label" => "identifier ", "css" => "normal", "delimiter" => "; ");
$show_tags["location"] = array("label" => "bibdk ", "css" => "normal", "format" => '<a target="bibdk" title="Link til bibliotek.dk" href="%s">Link til bibliotek.dk</a>');

/*
 * Tabel over mulige input-felter
 * Tabellen fungere dels som filter overfor de input-felter der kan bruges og
 * som oversÃ¦ttelse til CQL-sÃ¸gekoden
 */
$field_to_cql = array("forfatter" => "dc.creator",
                      "titel" => "dc.title",
                      "emne" => "dc.subject",
                      "fritekst" => "dc.serverChoice",
                      "id" => "dc.identifier",
                      "Ã¥r" => "dc.date",
                      "sprog" => "dc.language",
                      "materialetype" => "dc.type",
                      "person" => "bath.personalName",
                      "ejer" => "bath.possessingInstitution",
                      "noter" => "bath.notes",
                      "postid" => "rec.id"
                      );
=end