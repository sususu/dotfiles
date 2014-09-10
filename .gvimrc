" hybrid {{{
colorscheme hybrid
" }}}

" 80�s�𒴂���ꍇ�n�C���C�g {{{
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
" }}}

" ���{��p {{{
if has('multi_byte_ime')
  "highlight Cursor guifg=NONE guibg=Green
  highlight CursorIM guifg=NONE guibg=Purple
endif
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
set showtabline=1
" }}}
