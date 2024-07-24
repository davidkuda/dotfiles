bindkey -v
bindkey '^x^x' edit-command-line


# kafka config search
function kf {
  key=$( \
    sqlite3 ~/code/repos/kafka-config-search/kafka-cfg.db \
        'select title from kafka_config;' \
      | fzf \
  )

  echo ""
  echo "    $key:"
  echo ""
  sqlite3 ~/code/repos/kafka-config-search/kafka-cfg.db \
      "select description from kafka_config where title = '$key'" \
    | fold --spaces \
    | sed 's/^/    /'
  echo ""
}


