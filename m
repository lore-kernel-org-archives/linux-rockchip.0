From: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
Date: Wed, 3 Jul 2019 09:59:19 -0700
Message-ID: <20190703165919.GC118075@archlinux-epyc>
References: <20190703153112.2767411-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190703153112.2767411-1-arnd@arndb.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>
Cc: Heiko Stuebner <heiko@sntech.de>, arm@kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>, Nathan Huckleberry <nhuck@google.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> clang emits a warning about a negative shift count for an
> unused part of a conditional constant expression:
> 
> drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
>         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
>         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
>         .status_mask = (status >= 0) ? BIT(status) : 0, \
>                                        ^~~~~~~~~~~
> include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> 
> This is a bug in clang that will be fixed in the future, but in order
> to build cleanly with clang-8, it would be helpful to shut up this
> warning. This file is the only instance reported by kernelci at the
> moment.
> 
> The best solution I could come up with is to move the BIT() usage
> out of the macro into the instantiation, so we can avoid using
> BIT(-1).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Nick recently mentioned that Nathan was working on a fix on the clang
side. It might be worth holding off on this to see if it can make it
into LLVM 9, which will branch in about two weeks and be released at
the end of August (according to llvm.org).

I don't feel strongly about it though so if this is going in:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
