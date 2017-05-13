From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Drop explicit "include/" prefix
 from #include
Date: Sat, 13 May 2017 17:43:40 +0200
Message-ID: <3956756.APWK7IdRuP@phil>
References: <20170512235357.19486-1-ijc@hellion.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170512235357.19486-1-ijc@hellion.org.uk>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Ian Campbell <ijc@hellion.org.uk>
Cc: Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Brian Norris <briannorris@chromium.org>, Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ian,

Am Samstag, 13. Mai 2017, 00:53:57 CEST schrieb Ian Campbell:
> It not necessary and counter to how all the other files are done.
> 
> It also happens to break the build in the split device tree repo
> https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/
> 
> Signed-off-by: Ian Campbell <ijc@hellion.org.uk>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

that glitch also breaks Olof's patch [0] fixing a depmod symlink
recursion in that it creates

../arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts:47:57: fatal error: include/dt-bindings/input/linux-event-codes.h: File or directory not found
 #include <include/dt-bindings/input/linux-event-codes.h>

with only Olof's patch applied. So I guess both patches should go
together with this one in front, so to be on the safe side, if some else
is going to apply both:

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


[0] https://www.spinics.net/lists/arm-kernel/msg580846.html
