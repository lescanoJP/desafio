# configuração de busca no postgresql
PgSearch.multisearch_options = {
 using: {
  tsearch: {
   any_word: true
  },
  trigram: {}
 }
}