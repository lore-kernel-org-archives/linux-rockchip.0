From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
Date: Wed, 3 Jul 2019 19:58:08 +0200
Message-ID: <CAK8P3a098AZfkz0bxfgN_XXk7QSQYi1V-EEmqLjQPjzR7986aA@mail.gmail.com>
References: <20190703153112.2767411-1-arnd@arndb.de> <20190703165919.GC118075@archlinux-epyc>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190703165919.GC118075@archlinux-epyc>
Sender: linux-kernel-owner@vger.kernel.org
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Nick Desaulniers <ndesaulniers@google.com>, Nathan Huckleberry <nhuck@google.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 3, 2019 at 6:59 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> > clang emits a warning about a negative shift count for an
> > unused part of a conditional constant expression:
> >
> > drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
> >         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
> >         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
> >         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
> >         .status_mask = (status >= 0) ? BIT(status) : 0, \
> >                                        ^~~~~~~~~~~
> > include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> >
> > This is a bug in clang that will be fixed in the future, but in order
> > to build cleanly with clang-8, it would be helpful to shut up this
> > warning. This file is the only instance reported by kernelci at the
> > moment.
> >
> > The best solution I could come up with is to move the BIT() usage
> > out of the macro into the instantiation, so we can avoid using
> > BIT(-1).
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Nick recently mentioned that Nathan was working on a fix on the clang
> side. It might be worth holding off on this to see if it can make it
> into LLVM 9, which will branch in about two weeks and be released at
> the end of August (according to llvm.org).

I think fixing it in llvm is a good idea regardless of the workaround.
My main goal for the workaround is to get a clean kernelci build
again, and it will probably take a little while to move that to a fixed
clang-9 build (release or prerelease).

> I don't feel strongly about it though so if this is going in:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks!

      Arnd
