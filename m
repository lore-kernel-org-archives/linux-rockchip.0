From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Regression: HDMI stopped working on rk3399-sapphire in 4.17-rc1
Date: Tue, 17 Apr 2018 19:23:29 +0200
Message-ID: <CAAMcf8AEDE2p16WQHjwS85M=1aAfgW8cY+0E6GWKA5WSFGmejw@mail.gmail.com>
References: <CAAMcf8DRkLJYCYtemri3L-SrPax4VJ4jvHG369MYcDAwWeOm8g@mail.gmail.com>
 <22762165.vUi6oYY3Kd@phil>
 <CAAMcf8DKcxHuMn78dHe-4Qn7XHvnQBEx6jaMm3aukrmMsBFVWw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8DKcxHuMn78dHe-4Qn7XHvnQBEx6jaMm3aukrmMsBFVWw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 16, 2018 at 11:49 PM, Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Mon, Apr 16, 2018 at 11:41 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>> Hi Vicente,
>>
>> Am Montag, 16. April 2018, 23:18:27 CEST schrieb Vicente Bergas:
>>> Hello,
>>>
>>> first of all, I am not sure if this goes to
>>> linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>>> or
>>> dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
>>> Please, tell me if I have chosen the wrong list.
>>
>> Best would be having both in the Cc list :-)
>>
>>
>>> In 4.16-rc7 the HDMI video works with minor issues, but it is perfectly
>>> usable. In 4.17-rc1 the HDMI port is not detected at all.
>>>
>>> Here are the messages from dmesg that I think are relevant:
>>>
>>> Linux version 4.16.0-rc7+ (vj@alarm) (gcc version 7.3.0 (GCC)) #15 SMP
>>> Mon Mar 26 19:03:44 CEST 2018
>>> iommu: Adding device ff8f0000.vop to group 0
>>> iommu: Adding device ff900000.vop to group 1
>>> rockchip-drm display-subsystem: bound ff8f0000.vop (ops vop_component_ops)
>>> rockchip-drm display-subsystem: bound ff900000.vop (ops vop_component_ops)
>>> rockchip-drm display-subsystem: failed to bind ff940000.hdmi (ops
>>> dw_hdmi_rockchip_ops): -EPROBE_DEFER
>>> rockchip-drm display-subsystem: master bind failed: -EPROBE_DEFER
>>> rockchip-drm display-subsystem: bound ff8f0000.vop (ops vop_component_ops)
>>> rockchip-drm display-subsystem: bound ff900000.vop (ops vop_component_ops)
>>> dwhdmi-rockchip ff940000.hdmi: Detected HDMI TX controller v2.11a with
>>> HDCP (DWC HDMI 2.0 TX PHY)
>>> rockchip-drm display-subsystem: bound ff940000.hdmi (ops dw_hdmi_rockchip_ops)
>>> [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
>>> [drm] No driver support for vblank timestamp query.
>>> Console: switching to colour frame buffer device 240x67
>>> rockchip-drm display-subsystem: fb0:  frame buffer device
>>> [drm] Initialized rockchip 1.0.0 20140818 for display-subsystem on minor 0
>>>
>>> Linux version 4.17.0-rc1+ (vj@alarm) (gcc version 7.3.0 (GCC)) #1 SMP
>>> Mon Apr 16 19:42:50 CEST 2018
>>> rk_iommu ff8f3f00.iommu: Failed to get clk 'iface': -ENOENT
>>> rk_iommu: probe of ff8f3f00.iommu failed with error -ENOENT
>>> rk_iommu ff903f00.iommu: Failed to get clk 'iface': -ENOENT
>>> rk_iommu: probe of ff903f00.iommu failed with error -ENOENT
>>> rockchip-drm display-subsystem: Linked as a consumer to ff8f0000.vop
>>> rockchip-drm display-subsystem: Linked as a consumer to ff900000.vop
>>> rockchip-drm display-subsystem: Linked as a consumer to ff940000.hdmi
>>> rockchip-drm display-subsystem: master bind failed: -12
>>> rockchip-vop: probe of ff900000.vop failed with error -12
>>>
>>>
>>> While fixing this issue, I can help debugging and testing.
>>
>> I do belive
>>         https://patchwork.codeaurora.org/patch/495129/
>> should do the trick. Needs a respin to make it a bit more
>> beatiful, but should restore your display output again nevertheless.
>>
>>
>> Heiko
>
> Hi Heiko,
> thanks for such a quick answer!
> Tomorrow I'll give it a try.
>
> Regards,
>   Vicente.

Hi Heiko,
just tested your v2 patch:
http://lists.infradead.org/pipermail/linux-rockchip/2018-April/020349.html
and indeed the HDMI port was detected and was able to show me the console :)

But, there have been several kernel stack traces, a lot of
unresponsiveness and unable to start a framebuffer-based graphical
mode.
The first relevant error seems to be line 349 from dmesg:
[CRTC:30:crtc-0] vblank wait timed out
https://pastebin.com/YegEpAep

Please, can somebody help?

Regards,
  Vicente.
