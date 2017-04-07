<template>
  <codemirror v-model="code" :options="editorOptions" @ready="onReady"></codemirror>
</template>

<script>
  import {
    codemirror as Codemirror
  } from 'vue-codemirror';
  // require active-line.js
  import 'codemirror/addon/selection/active-line';
  // styleSelectedText
  import 'codemirror/addon/selection/mark-selection';
  import 'codemirror/addon/search/searchcursor';
  // hint
  import 'codemirror/addon/hint/show-hint';
  import 'codemirror/addon/hint/show-hint.css';
  import 'codemirror/addon/hint/anyword-hint';
  // highlightSelectionMatches
  import 'codemirror/addon/scroll/annotatescrollbar';
  import 'codemirror/addon/search/matchesonscrollbar';
  import 'codemirror/addon/search/match-highlighter';
  // keyMap
  import 'codemirror/addon/edit/matchbrackets';
  import 'codemirror/addon/search/search';
  import 'codemirror/keymap/sublime';
  // foldGutter
  import 'codemirror/addon/fold/foldgutter.css';
  import 'codemirror/addon/fold/foldgutter';
  import 'codemirror/addon/fold/brace-fold';
  import 'codemirror/addon/fold/foldcode';

  export default {
    name: 'codeEditor',
    data() {
      return {
        code: JSON.stringify({
          foo: 'bar'
        }, null, '  '),
        editorOptions: {
          // codemirror options
          tabSize: 2,
          mode: 'application/json',
          theme: 'monokai',
          lineNumbers: true,
          line: true,
          // sublime、emacs、vim三种键位模式，支持你的不同操作习惯
          keyMap: 'sublime',
          // 代码折叠
          foldGutter: true,
          gutters: ['CodeMirror-linenumbers', 'CodeMirror-foldgutter'],
          // 选中文本自动高亮，及高亮方式
          styleSelectedText: true,
          hintOptions: {
            // 当匹配只有一项的时候是否自动补全
            completeSingle: false
          },
          highlightSelectionMatches: {
            showToken: /\w/,
            annotateScrollbar: true
          }
          // more codemirror config...
          // 如果有hint方面的配置，也应该出现在这里
        }
      };
    },
    methods: {
      onReady(codeMirror) {
        codeMirror.on('keyup', cm => cm.execCommand('autocomplete'));
      }
    },
    components: {
      Codemirror
    }

  };

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>


</style>
