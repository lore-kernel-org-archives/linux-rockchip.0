From: Javier Martinez Canillas <javier-0uQlZySMnqxg9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add the power domain node for
 rk3399
Date: Fri, 1 Jul 2016 13:09:18 -0400
Message-ID: <CABxcv=nJ4jaeBwPOfcKTmBpSHSD1wX-kJ2oi-bFki4=Dae0tEw@mail.gmail.com>
References: <1467347575-11806-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467347575-11806-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Linux Kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Caesar,

On Fri, Jul 1, 2016 at 12:32 AM, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> In order to meet low power requirements, a power management unit (PMU) is
> designed for controlling power resources in RK3399. The RK3399 PMU is
> dedicated for managing the power of the whole chip.
>
> 1. add pd node for RK3399 Soc
> 2. create power domain tree
> 3. add qos node for domain
>
> From the DT/binds and driver can get more detail information:
> The driver:
>         drivers/soc/rockchip/pm_domains.c
> The document:
>         Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> ---

Everything from here to the actual diff will omitted by tools like git-am...

>
> Changes in v2:
> - As Doug/Heiko commnets on https://patchwork.kernel.org/patch/9206415/.
>   drop the debugfs-dump and Add the comments for alphabetical order.
>
> Note: As the TRM lists many voltage domains and power domains, then
> in actual we just need control some domains for driver.
> Due to some domains (e.g. emmc, usb, core)...We can't turn off it on
> bootup.
>
> Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>

...but you have your S-o-B and collected tags here so these are going
to be stripped. You should move those before the first '---'
separator.

Best regards,
Javier
