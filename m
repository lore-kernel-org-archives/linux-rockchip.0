From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: use adjusted_mode in mode_set
Date: Mon, 29 Jan 2018 10:17:37 +0000
Message-ID: <114a9fc1-3f31-decd-6bdc-803dc88b3b3c@st.com>
References: <20180125155504.8611-1-philippe.cornu@st.com>
 <2782155.lsFkNecG25@avalon>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2782155.lsFkNecG25@avalon>
Content-Language: en-US
Content-ID: <4FE1ED423339364A865855891BD9CF44@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Archit Taneja <architt@codeaurora.org>, Heiko Stubner <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, Brian Norris <briannorris@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre TORGUE <alexandre.torgue@s>
List-Id: linux-rockchip.vger.kernel.org

Hi Laurent,

And many thanks for your comments :)


On 01/29/2018 10:46 AM, Laurent Pinchart wrote:
> Hi Philippe,
> 
> (CC'ing Daniel Vetter)
> 
> Thank you for the patch.
> 
> On Thursday, 25 January 2018 17:55:04 EET Philippe Cornu wrote:
>> The "adjusted_mode" clock value (ie the real pixel clock) is more
>> accurate than "mode" clock value (ie the panel/bridge requested
>> clock value). It offers a better preciseness for timing
>> computations and allows to reduce the extra dsi bandwidth in
>> burst mode (from ~20% to ~10-12%, hw platform dependant).
>>
>> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
> 
> The adjusted mode is documented as
> 
>      /**
>       * @adjusted_mode:
>       *
>       * Internal display timings which can be used by the driver to handle
>       * differences between the mode requested by userspace in @mode and what
>       * is actually programmed into the hardware. It is purely driver
>       * implementation defined what exactly this adjusted mode means. Usually
>       * it is used to store the hardware display timings used between the
>       * CRTC and encoder blocks.
>       */
> 
> This is easy to handle when the CRTC and encoder are controlled by the same
> driver, as the field is "implementation defined" by a single driver . However,
> when using bridges, there are two drivers involved, and they must both agree
> to meaningfully use the adjusted mode. I can't see how to do so without
> standardizing the meaning of the adjusted mode field.

This is exactly the reason why my first implementation used the dsi 
bridge "optional pixel clock" instead of the adjusted_mode (see [1])

But after digging more into the drm source code, I think using 
adjusted_mode instead of the pixel clock here brings more advantages 
because:
* adjusted_mode is an argument of bridge mode_set() probably for being 
used in any manner, maybe like this :)
* if the bridge "user" (crtc or a master bridge drivers) does not need 
to modify its adjusted_mode then mode & adjusted_mode mode_set() 
arguments will have the same values so "no consequence" for the bridge.
* if the bridge "user" (crtc or master bridge drivers) needs to adjust 
any value of the mode then this adjustment is available for the bridge.
* rockchip crtc updates a part of the mode (the clock), stm is doing the 
same (see [2]) but any future "user" of the dw_mipi_dsi bridge can 
adjust something else (blankings...) and the dw_mipi_dsi bridge will be 
then aware of...

But maybe it is a wrong usage of the "adjusted_mode offer"...

Many thanks,
Philippe :-)
[1] https://patchwork.freedesktop.org/patch/200240/
[2] https://patchwork.freedesktop.org/patch/200720/

> 
> Daniel, what's your opinion on this ?
> 
>> ---
>> Note: This patch replaces "drm/bridge/synopsys: dsi: add optional pixel
>> clock"
>>
>>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c index
>> ed8af32f8e52..b926b62e9e33 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> @@ -707,20 +707,20 @@ static void dw_mipi_dsi_bridge_mode_set(struct
>> drm_bridge *bridge,
>>
>>   	clk_prepare_enable(dsi->pclk);
>>
>> -	ret = phy_ops->get_lane_mbps(priv_data, mode, dsi->mode_flags,
>> +	ret = phy_ops->get_lane_mbps(priv_data, adjusted_mode, dsi->mode_flags,
>>   				     dsi->lanes, dsi->format, &dsi->lane_mbps);
>>   	if (ret)
>>   		DRM_DEBUG_DRIVER("Phy get_lane_mbps() failed\n");
>>
>>   	pm_runtime_get_sync(dsi->dev);
>>   	dw_mipi_dsi_init(dsi);
>> -	dw_mipi_dsi_dpi_config(dsi, mode);
>> +	dw_mipi_dsi_dpi_config(dsi, adjusted_mode);
>>   	dw_mipi_dsi_packet_handler_config(dsi);
>>   	dw_mipi_dsi_video_mode_config(dsi);
>> -	dw_mipi_dsi_video_packet_config(dsi, mode);
>> +	dw_mipi_dsi_video_packet_config(dsi, adjusted_mode);
>>   	dw_mipi_dsi_command_mode_config(dsi);
>> -	dw_mipi_dsi_line_timer_config(dsi, mode);
>> -	dw_mipi_dsi_vertical_timing_config(dsi, mode);
>> +	dw_mipi_dsi_line_timer_config(dsi, adjusted_mode);
>> +	dw_mipi_dsi_vertical_timing_config(dsi, adjusted_mode);
>>
>>   	dw_mipi_dsi_dphy_init(dsi);
>>   	dw_mipi_dsi_dphy_timing_config(dsi);
>> @@ -734,7 +734,7 @@ static void dw_mipi_dsi_bridge_mode_set(struct
>> drm_bridge *bridge,
>>
>>   	dw_mipi_dsi_dphy_enable(dsi);
>>
>> -	dw_mipi_dsi_wait_for_two_frames(mode);
>> +	dw_mipi_dsi_wait_for_two_frames(adjusted_mode);
>>
>>   	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
>>   	dw_mipi_dsi_set_mode(dsi, 0);
> 
