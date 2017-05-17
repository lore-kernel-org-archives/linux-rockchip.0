From: Ian Campbell <ijc@hellion.org.uk>
Subject: Re: [PATCH] arm64: dts: rockchip: Drop explicit "include/" prefix
 from #include
Date: Wed, 17 May 2017 02:13:42 +0100
Message-ID: <1494983622.32636.5.camel@hellion.org.uk>
References: <20170512235357.19486-1-ijc@hellion.org.uk>
         <3956756.APWK7IdRuP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3956756.APWK7IdRuP@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc: linux-kernel@vger.kernel.org, Brian Norris <briannorris@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 2017-05-13 at 17:43 +0200, Heiko Stuebner wrote:
> Hi Ian,
> 
> Am Samstag, 13. Mai 2017, 00:53:57 CEST schrieb Ian Campbell:
> > It not necessary and counter to how all the other files are done.
> > 
> > It also happens to break the build in the split device tree repo
> > https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetr
> > ee-rebasing.git/
> > 
> > Signed-off-by: Ian Campbell <ijc@hellion.org.uk>
> > Cc: Brian Norris <briannorris@chromium.org>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-rockchip@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> 
> that glitch also breaks Olof's patch [0] fixing a depmod symlink
> recursion in that it creates
> 
> ../arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts:47:57: fatal
> error: include/dt-bindings/input/linux-event-codes.h: File or
> directory not found
>  #include <include/dt-bindings/input/linux-event-codes.h>
> 
> with only Olof's patch applied. So I guess both patches should go
> together with this one in front, so to be on the safe side, if some
> else
> is going to apply both:
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Not sure who should/wil merge this, but it seems I neglected to Cc Arnd
and Olof so I'm doing so now.

Would be good to get this in soonish.

Ian
