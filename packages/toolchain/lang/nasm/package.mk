################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="nasm"
PKG_VERSION="2.10.07"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://nasm.sourceforge.net/"
PKG_URL="http://www.nasm.us/pub/nasm/releasebuilds/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS=""
PKG_BUILD_DEPENDS="ccache"
PKG_PRIORITY="optional"
PKG_SECTION="toolchain/lang"
PKG_SHORTDESC="nasm: A 80x86 assembler which can create a wide rande of object formats"
PKG_LONGDESC="The Netwide Assembler, NASM, is an 80x86 assembler designed for portability and modularity. It supports a range of object file formats, including Linux, Microsoft 16-bit OBJ and Win32. It will also output plain binary files. Its syntax is designed to be sim- ple and easy to understand, similar to Intel's but less complex. It supports Pentium, P6 and MMX opcodes, and has macro capability. It includes a disassembler as well."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_host() {
  # add builddir to LDFLAGS, needed for build outside the sourcedir
  CFLAGS="$CFLAGS -I$(pwd)"
}

pre_make_host() {
  # make needed dir, needed for build outside the sourcedir
  mkdir -p ./lib
}