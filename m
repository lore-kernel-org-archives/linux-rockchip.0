From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 00/14] Support more HDMI modes on RK3228/RK3328
Date: Fri, 10 Jan 2020 16:56:12 +0000 (UTC)
Message-ID: <a188146c-b424-b8b5-d9dd-189a84f5c046@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <b159ee28-213e-35d2-6d09-516abc3358bb@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b159ee28-213e-35d2-6d09-516abc3358bb-l0cyMroinI0@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Zheng Yang <zhengyang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-01-10 12:01, Kishon Vijay Abraham I wrote:
> 
> 
> On 09/01/20 2:37 AM, Jonas Karlman wrote:
>> This series make it possible to use more HDMI modes on RK3328,
>> and presumably also on RK3228. It also prepares for a future YUV420 and
>> 10-bit output series.
>>
>> Part of this has been reworked from vendor BSP 4.4 kernel commits.
>>
>> Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.
>>
>> Patch 6 prepares for use of high TMDS bit rates used with HDMI 2.0 and
>> 10-bit output modes.
>>
>> Patch 7-13 changes rk3228/rk3328 to use mode_valid functions suited for
>> the inno hdmi phy instead of the dw-hdmi phy. These changes allows for
>> more CEA modes to be usable, e.g. some 4K and fractal modes.
>>
>> Patch 14 adds support for more pixel clock rates in order to support
>> common DMT modes in addition to CEA modes.
> 
> Is it possible to split the series targeted for different subsystems or
> is it required for all the patches to be merged together?

I think it should be possible to split the patches without any issue.

The phy changes mainly targets HDMI mode rates that is currently not in use,
filtered out by current mode_valid or YUV420/Deep Color modes not yet supported.
And the drm changes should not have a hard requirement on the phy changes
in this series, but I have not tested them separately.

I will split this series and re-run some tests before sending independent series.

Regards,
Jonas

> 
> Thanks
> Kishon
>>
>> Note: I have only been able to build test RK322x related changes
>> as I do not have any RK322x device to test on.
>>
>> All modes, including fractal modes, has been tested with modetest on
>> a RK3328 Rock64 device using e.g.
>>
>>   modetest -M rockchip -s 39:3840x2160-29.97
>>
>> Changes in v2:
>>   - collect acked-by tag
>>   - drop the limit resolution width to 3840 patch
>>
>> This series is also available at [1] and the early work on YUV420 and
>> 10-bit output is available at [2].
>>
>> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-inno-hdmi-phy
>> [2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-bus-format
>>
>> Regards,
>> Jonas
>>
>> Algea Cao (1):
>>   phy/rockchip: inno-hdmi: Support more pre-pll configuration
>>
>> Huicong Xu (1):
>>   phy/rockchip: inno-hdmi: force set_rate on power_on
>>
>> Jonas Karlman (11):
>>   phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
>>   phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
>>   phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
>>   drm/rockchip: dw-hdmi: allow high tmds bit rates
>>   drm/rockchip: dw-hdmi: require valid vpll clock rate on rk3228/rk3328
>>   clk: rockchip: set parent rate for DCLK_VOP clock on rk3228
>>   arm64: dts: rockchip: increase vop clock rate on rk3328
>>   arm64: dts: rockchip: add vpll clock to hdmi node on rk3328
>>   ARM: dts: rockchip: add vpll clock to hdmi node on rk3228
>>   drm/rockchip: dw-hdmi: limit tmds to 340mhz on rk3228/rk3328
>>   drm/rockchip: dw-hdmi: remove unused plat_data on rk3228/rk3328
>>
>> Zheng Yang (1):
>>   phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate
>>
>>  arch/arm/boot/dts/rk322x.dtsi                 |   4 +-
>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
>>  drivers/clk/rockchip/clk-rk3228.c             |   2 +-
>>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  47 ++++++--
>>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
>>  5 files changed, 120 insertions(+), 49 deletions(-)
>>
