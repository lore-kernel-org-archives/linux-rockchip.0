From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] MAINTAINERS: rockchip: Track more files
Date: Mon, 9 Dec 2019 16:18:00 +0800
Message-ID: <e4dc0f27-6a26-3b29-11fd-231f686fce91@rock-chips.com>
References: <20191204090710.11646-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191204090710.11646-1-miquel.raynal@bootlin.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Miquel Raynal <miquel.raynal@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Miquel,

On 2019/12/4 下午5:07, Miquel Raynal wrote:
> The current list misses a lot of drivers not prefixed or suffixed by
> "rockchip". For instance, there are plenty drivers called rk808 and
> rk805 which are currently not tracked (clk, regulator, pinctrl, RTC,
> MFD, includes, bindings). Add them to the list under the Rockchip
> entry.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>
> Hi Heiko,
>
> You are right we should try to check more often your tree. Also, here
> is a patch so that you are Cc'ed for all Rockchip related patches
> because the current list is not exhaustive at all (not sure it is
> voluntary or not though).
>
> Cheers,
> Miquèl
>
>   MAINTAINERS | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cba1095547fd..a9564e6cb872 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2198,12 +2198,16 @@ L:	linux-rockchip@lists.infradead.org
>   T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
>   S:	Maintained
>   F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
> +F:	Documentation/devicetree/bindings/*/*rk80*
>   F:	arch/arm/boot/dts/rk3*
>   F:	arch/arm/boot/dts/rv1108*
>   F:	arch/arm/mach-rockchip/
> +F:	include/*/*/rk808.h
> +F:	include/*/*/*/rk808.h
>   F:	drivers/clk/rockchip/
>   F:	drivers/i2c/busses/i2c-rk3x.c
>   F:	drivers/*/*rockchip*
> +F:	drivers/*/*rk80*
>   F:	drivers/*/*/*rockchip*
>   F:	sound/soc/rockchip/
>   N:	rockchip
For the Rockchip PMIC, is it better to have a NEW MAINTAINER entry like 
"ROCKCHIP PMIC DRIVER"
which share the same mailing list linux-rockchip@, because there is not 
only rk808,
but also rk805, rk809, rk817, rk818, and may be more to come.

BTW, we should use 'rk8' instead of 'rk80' to match all the Rockchip PMICs.


Thanks,
- Kever
