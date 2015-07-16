From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/4] ARM: dts: rockchip: add initial support for rk3288
 Chrome-devices
Date: Thu, 16 Jul 2015 14:22:41 +0200
Message-ID: <2237472.zxKkR4oPTR@diego>
References: <1436574562-16308-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1436574562-16308-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, khilman-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 11. Juli 2015, 02:29:18 schrieb Heiko Stuebner:
> This adds the basic support for two RK3288 Chrome-devices.
> Of course the internal display does not yet work, because we're
> missing the edp driver in mainline currently.
> But we're nevertheless able to boot to a rootfs on the devices.
> 
> 
> Alexandru M Stan (2):
>   ARM: dts: rockchip: add shared rk3288-veyron files
>   ARM: dts: rockchip: add veyron-jerry board
> 
> Chris Zhong (1):
>   ARM: dts: Add sbs-battery dts fragment used by chromebooks
> 
> Heiko Stuebner (1):
>   ARM: dts: rockchip: add Pinky board

applied these 4 with Dougs Acks/Reviews after addressing Dougs comments by
- removing /bits/ 8 from gpio-restart
- removing the bt_dev_wake pin for now
- removing dvs-pins from the rk808 node
- fixing missing newline in the pinky patch
