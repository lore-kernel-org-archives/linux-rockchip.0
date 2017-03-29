From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: fix Kconfig dependencies
Date: Wed, 29 Mar 2017 09:03:15 +0800
Message-ID: <58DB07D3.4070809@rock-chips.com>
References: <20170328101654.73624-1-arnd@arndb.de>
 <CABXOdTfAruXx0NPO3v9HA9biDd9gz8bGjQP16s9HP8Q3ihVqwA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CABXOdTfAruXx0NPO3v9HA9biDd9gz8bGjQP16s9HP8Q3ihVqwA@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Guenter Roeck <groeck@google.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Tobias Jakobi <tjakobi@math.uni-bielefeld.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>, Stephen Boyd <stephen.boyd@linaro.org>, linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Chris Zhong <zyw@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, Guenter Roeck <groeck@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd,

Tested-by: Jeffy Chen <jeffy.chen@rock-chips.com>

Thanx for fixing this :)

On 03/29/2017 12:37 AM, Guenter Roeck wrote:
> On Tue, Mar 28, 2017 at 3:16 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>> A bug that I had fixed earlier just came back, with CONFIG_EXTCON=m,
>> the rockchip drm driver will fail to link:
>>
>> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_get_port_lanes':
>> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x30): undefined reference to `extcon_get_state'
>> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x6c): undefined reference to `extcon_get_property'
>> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_check_sink_connection':
>> cdn-dp-core.c:(.text.cdn_dp_check_sink_connection+0x80): undefined reference to `extcon_get_state'
>> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_enable':
>> cdn-dp-core.c:(.text.cdn_dp_enable+0x748): undefined reference to `extcon_get_property'
>>
>> The problem is that that the sub-drivers are now all linked into the
>> main rockchip drm module, which breaks all the Kconfig dependencies
>> that are specified in the options for those sub-drivers.
>>
>> This clarifies the dependency to ensure that we can only turn on the DP
>> driver when EXTCON is reachable. As the 'select' statements can now
>> cause additional options to become built-in when they should be
>> loadable modules, I'm moving those into the main driver config option.
>> The dependency on DRM_ROCKCHIP can be reduced into a single 'if'
>> statement here for brevity, but this has no functional effect.
>>
>> Fixes: b6705157b2db ("drm/rockchip: add extcon dependency for DP")
>> Fixes: 8820b68bd378 ("drm/rockchip: Refactor the component match logic.")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Acked-by: Guenter Roeck <groeck@chromium.org>
>
>> ---
>>   drivers/gpu/drm/rockchip/Kconfig | 19 +++++++++----------
>>   1 file changed, 9 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
>> index 50c41c0a50ef..dcc539ba85d6 100644
>> --- a/drivers/gpu/drm/rockchip/Kconfig
>> +++ b/drivers/gpu/drm/rockchip/Kconfig
>> @@ -5,6 +5,10 @@ config DRM_ROCKCHIP
>>          select DRM_KMS_HELPER
>>          select DRM_PANEL
>>          select VIDEOMODE_HELPERS
>> +       select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
>> +       select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
>> +       select DRM_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
>> +       select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
>>          help
>>            Choose this option if you have a Rockchip soc chipset.
>>            This driver provides kernel mode setting and buffer
>> @@ -12,10 +16,10 @@ config DRM_ROCKCHIP
>>            2D or 3D acceleration; acceleration is performed by other
>>            IP found on the SoC.
>>
>> +if DRM_ROCKCHIP
>> +
>>   config ROCKCHIP_ANALOGIX_DP
>>          bool "Rockchip specific extensions for Analogix DP driver"
>> -       depends on DRM_ROCKCHIP
>> -       select DRM_ANALOGIX_DP
>>          help
>>            This selects support for Rockchip SoC specific extensions
>>            for the Analogix Core DP driver. If you want to enable DP
>> @@ -23,9 +27,7 @@ config ROCKCHIP_ANALOGIX_DP
>>
>>   config ROCKCHIP_CDN_DP
>>           bool "Rockchip cdn DP"
>> -        depends on DRM_ROCKCHIP
>> -       depends on EXTCON
>> -       select SND_SOC_HDMI_CODEC if SND_SOC
>> +       depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
>>           help
>>            This selects support for Rockchip SoC specific extensions
>>            for the cdn DP driver. If you want to enable Dp on
>> @@ -34,8 +36,6 @@ config ROCKCHIP_CDN_DP
>>
>>   config ROCKCHIP_DW_HDMI
>>           bool "Rockchip specific extensions for Synopsys DW HDMI"
>> -        depends on DRM_ROCKCHIP
>> -        select DRM_DW_HDMI
>>           help
>>            This selects support for Rockchip SoC specific extensions
>>            for the Synopsys DesignWare HDMI driver. If you want to
>> @@ -44,8 +44,6 @@ config ROCKCHIP_DW_HDMI
>>
>>   config ROCKCHIP_DW_MIPI_DSI
>>          bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
>> -       depends on DRM_ROCKCHIP
>> -       select DRM_MIPI_DSI
>>          help
>>           This selects support for Rockchip SoC specific extensions
>>           for the Synopsys DesignWare HDMI driver. If you want to
>> @@ -54,8 +52,9 @@ config ROCKCHIP_DW_MIPI_DSI
>>
>>   config ROCKCHIP_INNO_HDMI
>>          bool "Rockchip specific extensions for Innosilicon HDMI"
>> -       depends on DRM_ROCKCHIP
>>          help
>>            This selects support for Rockchip SoC specific extensions
>>            for the Innosilicon HDMI driver. If you want to enable
>>            HDMI on RK3036 based SoC, you should select this option.
>> +
>> +endif
>> --
>> 2.9.0
>>
>
>
>
