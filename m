From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: remove always-on and boot-on
 from vcc_sd
Date: Fri, 14 Oct 2016 19:18:20 +0200
Message-ID: <2696393.duMc0ZLDdc@phil>
References: <1474516939-22001-1-git-send-email-shawn.lin@rock-chips.com>
 <1474516939-22001-3-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1474516939-22001-3-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

Am Donnerstag, 22. September 2016, 12:02:19 CEST schrieb Shawn Lin:
> Please don't add these for vcc_sd, and mmc-core/driver will control
> it. Otherwise, it will waste energy even without sdmmc in slot.
> 
> Moreover, it will causes a bug:
> If we insert/remove sd card, we could see
> [9.337271] mmc0: new ultra high speed SDR25 SDHC card at address 0007
> [9.345144] mmcblk0: mmc0:0007 SD32G 29.3 GiB
> 
> This is okay for normal sd insert/remove test, but when I debug some
> issues for sdmmc, I did unbind/bind test. And there is a interesting
> phenomenon when we bind the driver again:
> [58.314069] mmc0: new high speed SDHC card at address 0007
> [58.320282] mmcblk0: mmc0:0007 SD32G 29.3 GiB
> 
> So the sd card could just support high speed without power cycle
> since the vcc_sd is always on, which makes the sd card fail to
> reinit its internal ocr mask.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

>  arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 2 --
>  arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 --

I've applied the geekbox + r68 parts of the patch as fix for 4.9 ...

>  arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts        | 2 --

and merged the px5-evb-part with the core patch adding the px5-evb,
so that we don't introduce known regressions unecessarily.


Thanks for fixing this
Heiko
