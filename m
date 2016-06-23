From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [v3 PATCH 3/5] phy: Add USB Type-C PHY driver for rk3399
Date: Thu, 23 Jun 2016 18:27:52 +0530
Message-ID: <576BDCD0.5060001@ti.com>
References: <1466686264-6744-1-git-send-email-zyw@rock-chips.com>
 <1466686264-6744-4-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1466686264-6744-4-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thursday 23 June 2016 06:21 PM, Chris Zhong wrote:
> Add a PHY provider driver for the rk3399 SoC Type-c PHY. The USB
> Type-C PHY is designed to support the USB3 and DP applications. The
> PHY basically has two main components: USB3 and DisplyPort. USB3
> operates in SuperSpeed mode and the DP can operate at RBR, HBR and
> HBR2 data rates.
> 
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> ---
> 
> Changes in v3:
> - remove the phy framework(Kishon Vijay Abraham I)
> - add parentheses around the macro
> - use a single space between type and name
> - add spaces after opening and before closing braces.
> - use u16 for register value
> - remove type-c phy header file
> - CodingStyle optimization
> - use some cable extcon to get type-c port information
> - add a extcon to notify Display Port
> 
> Changes in v2:
> - select RESET_CONTROLLER
> - alphabetic order
> - modify some spelling mistakes
> - make mode cleaner
> - use bool for enable/disable
> - check all of the return value
> - return a better err number
> - use more readx_poll_timeout()
> - clk_disable_unprepare(tcphy->clk_ref);
> - remove unuse functions, rockchip_typec_phy_power_on/off
> - remove unnecessary typecast from void *
> - use dts node to distinguish between phys.
> 
> Changes in v1:
> - update the licence note
> - init core clock to 50MHz
> - use extcon API
> - remove unused global
> - add some comments for magic num
> - change usleep_range(1000, 2000) tousleep_range(1000, 1050)
> - remove __func__ from dev_err
> - return err number when get clk failed
> - remove ADDR_ADJ define
> - use devm_clk_get(&pdev->dev, "tcpdcore")
> 
>  drivers/phy/Kconfig              |    8 +
>  drivers/phy/Makefile             |    1 +
>  drivers/phy/phy-rockchip-typec.c | 1027 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 1036 insertions(+)
>  create mode 100644 drivers/phy/phy-rockchip-typec.c
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 26566db..ec87b3a 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -351,6 +351,14 @@ config PHY_ROCKCHIP_DP
>  	help
>  	  Enable this to support the Rockchip Display Port PHY.
>  
> +config PHY_ROCKCHIP_TYPEC
> +	tristate "Rockchip TYPEC PHY Driver"
> +	depends on ARCH_ROCKCHIP && OF
> +	select GENERIC_PHY

Why? None of the generic PHY API's are used here. Why do you want select
generic PHY?
> +	select RESET_CONTROLLER

The driver also uses extcon. That has to be selected as well.

And since this driver doesn't use phy framework, I feel this should probably
end up in drivers/extcon and not drivers/phy.

Thanks
Kishon
