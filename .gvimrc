" hybrid {{{
colorscheme hybrid
" hi Search ctermfg=0 ctermbg=14 guifg=#0d100f guibg=#908033
hi Search ctermfg=0 ctermfg=14 gui=bold guifg=#7fbf00 guibg=NONE
hi IncSearch cterm=bold ctermfg=10 gui=bold guifg=#7fbf00
" }}}

" 80�s�𒴂���ꍇ�n�C���C�g {{{
" au VimEnter,Colorscheme * :hi OverLength ctermbg=red ctermfg=white guibg=#592929
" au VimEnter,Colorscheme * :match OverLength /\%81v.*/
" }}}

" ���{��p {{{
if has('multi_byte_ime')
  "highlight Cursor guifg=NONE guibg=Green
  highlight CursorIM guifg=NONE guibg=Purple
end
" prevent Google IME from beging automatically disabled
" ref:
"   title: MacVim-kaoriya��auto-pairs������ɓ��{��IME������ɐ؂�ւ�鎞�̑Ώ��@ - Qiita
"   url: http://qiita.com/amagawawaw/items/4a46d08f6c3e456e18d0
set imdisable
"}}}

" easymotion {{{
hi EasyMotionTarget ctermfg=red guifg=red
hi EasyMotionTarget2First ctermfg=red guifg=red
hi EasyMotionTarget2Second ctermfg=blue guifg=orangered
hi EasyMotionShade  ctermfg=gray guifg=gray
hi EasyMotionShadeLine  ctermfg=gray guifg=gray
"hi Comment term=bold ctermfg=Cyan guifg=#80a0ff gui=bold
"}}}

" Font {{{
if has('win32')
  set guifont=MS_Gothic:h9:cSHIFTJIS
  set linespace=0
  if has('kaoriya')
    set ambiwidth=auto
  endif
endif
"}}}

" �E�B���h�E�̏����T�C�Y {{{
" set lines=38 columns=96
" set lines=50 columns=96
"}}}

" ���̑� {{{
" ���j���[,�c�[���o�[��\��
set guioptions-=m
set guioptions-=T
" �����X�N���[���o�[�̃T�C�Y���J�[�\���s�̒����ɐ�������(�v�Z�ʂ��y���ł���)
set guioptions+=h
" ���������X�N���[���o�[����ɕ\��(�E�B���h�E�T�C�Y�̏���ȕύX�ƍĕ`���h��)
" Note:
"   �J���Ă���^�u�y�[�W�ɂ���Ă͍��������X�N���[���o�[����������Ȃ������肷��
"   �����X�N���[���o�[�̕\���ؑւ��N����ƃE�B���h�E�T�C�Y������ɕς��
"   �E�B���h�E�T�C�Y���ς��ƍĕ`�悪�N����̂œ�����d���Ȃ�
"   �����Windows�ŃE�B���h�E�̃X�i�b�v�𗘗p���Ă���ꍇ��,�X�i�b�v����������Ă��܂�
"   �^�u�y�[�W���g��Ȃ��Ȃ炱�̃I�v�V�����͊O���č\��Ȃ�
set guioptions+=l
" �^�u�y�[�W����ɕ\��
" 0: ��\��, 1: 2�ȏ�^�u�y�[�W������ꍇ�̂�, 2: ��ɕ\��
set showtabline=2
" }}}
