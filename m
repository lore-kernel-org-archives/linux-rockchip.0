From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 19/25] pinctrl: pinctrl-rockchip: Fix a bunch of kerneldoc misdemeanours
Date: Tue, 14 Jul 2020 20:32:34 +0200
Message-ID: <2181743.Gcv4MJzrWR@phil>
References: <20200713144930.1034632-1-lee.jones@linaro.org> <20200713144930.1034632-20-lee.jones@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200713144930.1034632-20-lee.jones@linaro.org>
Sender: linux-gpio-owner@vger.kernel.org
To: Lee Jones <lee.jones@linaro.org>
Cc: linus.walleij@linaro.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 13. Juli 2020, 16:49:24 CEST schrieb Lee Jones:
> Demote headers which are clearly not kerneldoc, provide titles for
> struct definition blocks, fix API slip (bitrot) misspellings and
> provide some missing entries.
> 
> Fixes the following W=1 kernel build warning(s):
> 
>  drivers/pinctrl/pinctrl-rockchip.c:82: warning: cannot understand function prototype: 'struct rockchip_iomux '
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_DEFAULT' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_OR_3V0' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_ONLY' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_3V0_AUTO' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_3V3_ONLY' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_MAX' not described in enum 'rockchip_pin_drv_type'
>  drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_IO_DEFAULT' not described in enum 'rockchip_pin_pull_type'
>  drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_IO_1V8_ONLY' not described in enum 'rockchip_pin_pull_type'
>  drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_MAX' not described in enum 'rockchip_pin_pull_type'
>  drivers/pinctrl/pinctrl-rockchip.c:109: warning: Cannot understand  * @drv_type: drive strength variant using rockchip_perpin_drv_type
>  on line 109 - I thought it was a doc line
>  drivers/pinctrl/pinctrl-rockchip.c:122: warning: Cannot understand  * @reg_base: register base of the gpio bank
>  on line 109 - I thought it was a doc line
>  drivers/pinctrl/pinctrl-rockchip.c:325: warning: Function parameter or member 'route_location' not described in 'rockchip_mux_route_data'
>  drivers/pinctrl/pinctrl-rockchip.c:328: warning: Cannot understand  */
>  on line 109 - I thought it was a doc line
>  drivers/pinctrl/pinctrl-rockchip.c:375: warning: Function parameter or member 'data' not described in 'rockchip_pin_group'
>  drivers/pinctrl/pinctrl-rockchip.c:387: warning: Function parameter or member 'ngroups' not described in 'rockchip_pmx_func'
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks for fixing these doc issues
