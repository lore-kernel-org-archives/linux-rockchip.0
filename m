From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] ARM: dts: support Highspeed for rk3066a platform
Date: Sat, 12 Sep 2015 00:45 +0200
Message-ID: <25757012.mQz0HMffNZ@diego>
References: <1441956268-10418-1-git-send-email-shawn.lin@rock-chips.com> <1441956341-10623-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1441956341-10623-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

Am Freitag, 11. September 2015, 15:25:41 schrieb Shawn Lin:
> Add cap-sd-highspeed and cap-mmc-highspeed for rk3066a
> platform to make sd cards running faster.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  arch/arm/boot/dts/rk3066a.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
> index 946f187..b50a785 100644
> --- a/arch/arm/boot/dts/rk3066a.dtsi
> +++ b/arch/arm/boot/dts/rk3066a.dtsi
> @@ -595,6 +595,8 @@
>  &mmc0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sd0_clk &sd0_cmd &sd0_cd &sd0_bus4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
>  };
> 

Currently we're setting the dw_mmc capabilities in the individual board files 
and patch1 also correctly adds the cap to the radxarock file.

So I'd think we should stay with one scheme and probably add the rk3066 caps 
to the bqcurie2, marsboard and rayeager where applicable.


Heiko
