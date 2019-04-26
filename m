From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] ARM: errata: Workaround errata A12 857271 / A17 857272
Date: Fri, 26 Apr 2019 15:37:23 -0700
Message-ID: <CAD=FV=W=JW_W0FsPoNOA_ZSDptC0AGLVAiTm=o2HH8bmFeNPaA@mail.gmail.com>
References: <20190423225959.43742-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190423225959.43742-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <linux@armlinux.org.uk>
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Salvador Climent Bayarri <Salva.Climent@arm.com>, Marc Gonzalez <marc.w.gonzalez@free.fr>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Sonny Rao <sonnyrao@chromium.org>, Will Deacon <will.deacon@arm.com>, Bobby Batacharia <bbatacha@arm.com>, Matthias Kaehlcke <mka@chromium.org>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, LKML <linux-kernel@vger.kernel.org>, Paul Burton <paul.burton@mips.com>, Palmer Dabbelt <palmer@sifive.com>, Marc Zyngier <marc.zyngier@arm.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Apr 23, 2019 at 4:00 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This adds support for working around errata A12 857271 / A17 857272.
> These errata were causing hangs on rk3288-based Chromebooks and it was
> confirmed that this workaround fixed the problems.  In the Chrome OS
> 3.14 kernel this was treated as two errata: ERRATA_FOOBAR [1] and
> ERRATA_CR711784 [2].  Apparently the two errata got lumped together at
> some point in time.
>
> Let's actually get the workaround landed.
>
> [1] https://crrev.com/c/342753
> [2] https://crbug.com/711784
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Sonny Rao <sonnyrao@chromium.org>
> ---
>
> Changes in v2:
> - Squashed bits 10 and 11 into one errata.
>
>  arch/arm/Kconfig      | 18 ++++++++++++++++++
>  arch/arm/mm/proc-v7.S | 10 ++++++++++
>  2 files changed, 28 insertions(+)

Breadcrumbs: this has been submitted to RMK's patch tracking system.  See:

https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8861/1

-Doug
