From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH 10/12] drm: bridge/dw_hdmi: fix phy enable/disable handling
Date: Wed, 07 Oct 2015 18:40:11 +0800
Message-ID: <5614F68B.6050808@rock-chips.com>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
 <E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk> <56149A11.4070102@rock-chips.com>
 <20151007094831.GF21513@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0645163340=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151007094831.GF21513@n2100.arm.linux.org.uk>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============0645163340==
Content-Type: multipart/alternative;
 boundary="------------040509080908050209010700"

This is a multi-part message in MIME format.
--------------040509080908050209010700
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/07/2015 05:48 PM, Russell King - ARM Linux wrote:
> On Wed, Oct 07, 2015 at 12:05:37PM +0800, Yakir Yang wrote:
>>
>> On 08/09/2015 12:04 AM, Russell King wrote:
>>> The dw_hdmi enable/disable handling is particularly weak in several
>>> regards:
>>> * The hotplug interrupt could call hdmi_poweron() or hdmi_poweroff()
>>>    while DRM is setting a mode, which could race with a mode being set.
>>> * Hotplug will always re-enable the phy whenever it detects an active
>>>    hotplug signal, even if DRM has disabled the output.
>>>
>>> Resolve all of these by introducing a mutex to prevent races, and a
>>> state-tracking bool so we know whether DRM wishes the output to be
>>> enabled.  We choose to use our own mutex rather than ->struct_mutex
>>> so that we can still process interrupts in a timely fashion.
>>>
>>> Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
>>> ---
>>>   drivers/gpu/drm/bridge/dw_hdmi.c | 29 ++++++++++++++++++++++-------
>>>   1 file changed, 22 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
>>> index 7b8a4e942a71..0ee188930d26 100644
>>> --- a/drivers/gpu/drm/bridge/dw_hdmi.c
>>> +++ b/drivers/gpu/drm/bridge/dw_hdmi.c
>>> @@ -125,6 +125,9 @@ struct dw_hdmi {
>>>   	bool sink_is_hdmi;
>>>   	bool sink_has_audio;
>>> +	struct mutex mutex;		/* for state below and previous_mode */
>>> +	bool disabled;			/* DRM has disabled our bridge */
>>> +
>>>   	spinlock_t audio_lock;
>>>   	struct mutex audio_mutex;
>>>   	unsigned int sample_rate;
>>> @@ -1389,8 +1392,12 @@ static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
>>>   {
>>>   	struct dw_hdmi *hdmi = bridge->driver_private;
>>> +	mutex_lock(&hdmi->mutex);
>>> +
>>>   	/* Store the display mode for plugin/DKMS poweron events */
>>>   	memcpy(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));
>>> +
>>> +	mutex_unlock(&hdmi->mutex);
>>>   }
>>>   static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
>>> @@ -1404,14 +1411,20 @@ static void dw_hdmi_bridge_disable(struct drm_bridge *bridge)
>>>   {
>>>   	struct dw_hdmi *hdmi = bridge->driver_private;
>>> +	mutex_lock(&hdmi->mutex);
>>> +	hdmi->disabled = true;
>>>   	dw_hdmi_poweroff(hdmi);
>>> +	mutex_unlock(&hdmi->mutex);
>>>   }
>>>   static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
>>>   {
>>>   	struct dw_hdmi *hdmi = bridge->driver_private;
>>> +	mutex_lock(&hdmi->mutex);
>>>   	dw_hdmi_poweron(hdmi);
>>> +	hdmi->disabled = false;
>>> +	mutex_unlock(&hdmi->mutex);
>>>   }
>>>   static void dw_hdmi_bridge_nop(struct drm_bridge *bridge)
>>> @@ -1534,20 +1547,20 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>>>   	phy_int_pol = hdmi_readb(hdmi, HDMI_PHY_POL0);
>>>   	if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
>>> +		hdmi_modb(hdmi, ~phy_int_pol, HDMI_PHY_HPD, HDMI_PHY_POL0);
>>> +		mutex_lock(&hdmi->mutex);
>>>   		if (phy_int_pol & HDMI_PHY_HPD) {
>>>   			dev_dbg(hdmi->dev, "EVENT=plugin\n");
>>> -			hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);
>>> -
>>> -			dw_hdmi_poweron(hdmi);
>>> +			if (!hdmi->disabled)
>>> +				dw_hdmi_poweron(hdmi);
>>>   		} else {
>>>   			dev_dbg(hdmi->dev, "EVENT=plugout\n");
>>> -			hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
>>> -				  HDMI_PHY_POL0);
>>> -
>>> -			dw_hdmi_poweroff(hdmi);
>>> +			if (!hdmi->disabled)
>>> +				dw_hdmi_poweroff(hdmi);
>> Just like my reply on 08/12, I thought this could be removed, so
>> poweron/poweroff would only be called with bridge->enable/
>> bridge->disable, them maybe no need mutex here.
> The bridge enable/disable methods do not get called on hotplug changes.
>
> [    1.363011] dwhdmi-imx 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
> [    1.371341] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,HPD S:RX----,HPD)
> [    1.381345] imx-drm display-subsystem: bound 120000.hdmi (ops dw_hdmi_imx_ops)
> [    1.448691] dwhdmi-imx 120000.hdmi: dw_hdmi_bridge_disable()
> [    1.450963] dwhdmi-imx 120000.hdmi: dw_hdmi_bridge_enable()
>
> and then unplugging and re-plugging the HDMI cable:
>
> [   68.307505] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,--- S:RX----,---)
> [   73.813970] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,HPD S:RX----,HPD)
>
> As you can see, during the period of disconnection for five seconds,
> dw_hdmi_bridge_disable() was not called.
>
> So, without the code above, we'd be needlessly wasting power with the
> bridge enabled, trying to drive a disconnected display.

Strangely, I do see bridge enable/disable in my side, past the log and 
dump_stack bellow.

And I guess your HDMI maybe not really hot pluged, could you confirm 
that the "status"
of HDMI display card have been changed between "connected" and 
"disconnected".


Do see bridge_disable when I unpluging the HDMI cable
[   16.358717] dwhdmi-rockchip ff980000.hdmi: EVENT=plugout
[   20.613221] [<c010e030>] (unwind_backtrace) from [<c010a4e0>] 
(show_stack+0x20/0x24)
[   20.631561] [<c010a4e0>] (show_stack) from [<c0896828>] 
(dump_stack+0x70/0x8c)
[   20.649337] [<c0896828>] (dump_stack) from [<c0414038>] 
(dw_hdmi_bridge_disable+0x1c/0x88)
[   20.668178] [<c0414038>] (dw_hdmi_bridge_disable) from [<c03e3888>] 
(drm_encoder_disable+0x34/0x78)
[   20.687857] [<c03e3888>] (drm_encoder_disable) from [<c03e3b1c>] 
(__drm_helper_disable_unused_functions+0x68/0xe4)
[   20.708975] [<c03e3b1c>] (__drm_helper_disable_unused_functions) from 
[<c03e4320>] (drm_crtc_helper_set_config+0x128/0x85c)
[   20.731180] [<c03e4320>] (drm_crtc_helper_set_config) from 
[<c03f5e3c>] (drm_mode_set_config_internal+0x58/0xdc)
[   20.752507] [<c03f5e3c>] (drm_mode_set_config_internal) from 
[<c0405ed0>] (commit_crtc_state+0x124/0x1ec)
[   20.773342] [<c0405ed0>] (commit_crtc_state) from [<c04055d4>] 
(atomic_commit.isra.3+0x5c/0xc8)
[   20.793397] [<c04055d4>] (atomic_commit.isra.3) from [<c040565c>] 
(drm_atomic_commit+0x1c/0x20)
[   20.813467] [<c040565c>] (drm_atomic_commit) from [<c03fa480>] 
(drm_mode_setcrtc+0x324/0x3e4)
[   20.833379] [<c03fa480>] (drm_mode_setcrtc) from [<c03eb320>] 
(drm_ioctl+0x304/0x478)
[   20.852557] [<c03eb320>] (drm_ioctl) from [<c021f024>] 
(do_vfs_ioctl+0x494/0x5a8)
[   20.871377] [<c021f024>] (do_vfs_ioctl) from [<c021f194>] 
(SyS_ioctl+0x5c/0x84)
[   20.890038] [<c021f194>] (SyS_ioctl) from [<c010646c>] 
(__sys_trace_return+0x0/0x14)
[   16.890157] ------- YAKIR: dw_hdmi_bridge_disable:1656
[   16.897907] ------- YAKIR: dw_hdmi_poweroff:1631

Also see bridge have been disabled once before try to bridge_enable when 
I try re-plugging the HDMI cable
[   20.494292] dwhdmi-rockchip ff980000.hdmi: EVENT=plugin
[   12.599389] [<c010e030>] (unwind_backtrace) from [<c010a4e0>] 
(show_stack+0x20/0x24)
[   12.612238] [<c010a4e0>] (show_stack) from [<c0896828>] 
(dump_stack+0x70/0x8c)
[   12.624609] [<c0896828>] (dump_stack) from [<c0414038>] 
(dw_hdmi_bridge_disable+0x1c/0x88)
[   12.638055] [<c0414038>] (dw_hdmi_bridge_disable) from [<c03e3dd4>] 
(drm_crtc_helper_set_mode+0x20c/0x4e0)
[   12.652878] [<c03e3dd4>] (drm_crtc_helper_set_mode) from [<c03e47ec>] 
(drm_crtc_helper_set_config+0x5f4/0x85c)
[   12.668019] [<c03e47ec>] (drm_crtc_helper_set_config) from 
[<c03f5e3c>] (drm_mode_set_config_internal+0x58/0xdc)
[   12.683442] [<c03f5e3c>] (drm_mode_set_config_internal) from 
[<c0405ed0>] (commit_crtc_state+0x124/0x1ec)
[   12.698287] [<c0405ed0>] (commit_crtc_state) from [<c04055d4>] 
(atomic_commit.isra.3+0x5c/0xc8)
[   12.712295] [<c04055d4>] (atomic_commit.isra.3) from [<c040565c>] 
(drm_atomic_commit+0x1c/0x20)
[   12.726258] [<c040565c>] (drm_atomic_commit) from [<c03fa480>] 
(drm_mode_setcrtc+0x324/0x3e4)
[   12.740226] [<c03fa480>] (drm_mode_setcrtc) from [<c03eb320>] 
(drm_ioctl+0x304/0x478)
[   12.753651] [<c03eb320>] (drm_ioctl) from [<c021f024>] 
(do_vfs_ioctl+0x494/0x5a8)
[   12.766794] [<c021f024>] (do_vfs_ioctl) from [<c021f194>] 
(SyS_ioctl+0x5c/0x84)
[   12.779861] [<c021f194>] (SyS_ioctl) from [<c010646c>] 
(__sys_trace_return+0x0/0x14)
[   21.059320] ------- YAKIR: dw_hdmi_bridge_disable:1656
[   21.068272] ------- YAKIR: dw_hdmi_poweroff:1631
[   21.076714] rockchip-vop ff930000.vop: start latency exceeded, new 
value 9333 ns
[   21.088037] rockchip-vop ff930000.vop: Attached to iommu domain
[   12.871336] [<c010e030>] (unwind_backtrace) from [<c010a4e0>] 
(show_stack+0x20/0x24)
[   12.882067] [<c010a4e0>] (show_stack) from [<c0896828>] 
(dump_stack+0x70/0x8c)
[   12.892311] [<c0896828>] (dump_stack) from [<c0414134>] 
(dw_hdmi_bridge_enable+0x3c/0xf28)
[   12.903569] [<c0414134>] (dw_hdmi_bridge_enable) from [<c03e3ff4>] 
(drm_crtc_helper_set_mode+0x42c/0x4e0)
[   12.916226] [<c03e3ff4>] (drm_crtc_helper_set_mode) from [<c03e47ec>] 
(drm_crtc_helper_set_config+0x5f4/0x85c)
[   12.929450] [<c03e47ec>] (drm_crtc_helper_set_config) from 
[<c03f5e3c>] (drm_mode_set_config_internal+0x58/0xdc)
[   12.942883] [<c03f5e3c>] (drm_mode_set_config_internal) from 
[<c0405ed0>] (commit_crtc_state+0x124/0x1ec)
[   12.955784] [<c0405ed0>] (commit_crtc_state) from [<c04055d4>] 
(atomic_commit.isra.3+0x5c/0xc8)
[   12.967753] [<c04055d4>] (atomic_commit.isra.3) from [<c040565c>] 
(drm_atomic_commit+0x1c/0x20)
[   12.979705] [<c040565c>] (drm_atomic_commit) from [<c03fa480>] 
(drm_mode_setcrtc+0x324/0x3e4)
[   12.991568] [<c03fa480>] (drm_mode_setcrtc) from [<c03eb320>] 
(drm_ioctl+0x304/0x478)
[   13.002817] [<c03eb320>] (drm_ioctl) from [<c021f024>] 
(do_vfs_ioctl+0x494/0x5a8)
[   13.013766] [<c021f024>] (do_vfs_ioctl) from [<c021f194>] 
(SyS_ioctl+0x5c/0x84)
[   13.024655] [<c021f194>] (SyS_ioctl) from [<c010646c>] 
(__sys_trace_return+0x0/0x14)
[   21.114556] ------- YAKIR: dw_hdmi_bridge_enable:1664
[   21.122889] ------- YAKIR: dw_hdmi_poweron:1625


- Yakir


--------------040509080908050209010700
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 10/07/2015 05:48 PM, Russell King -
      ARM Linux wrote:<br>
    </div>
    <blockquote cite=3D"mid:20151007094831.GF21513@n2100.arm.linux.org.uk=
"
      type=3D"cite">
      <pre wrap=3D"">On Wed, Oct 07, 2015 at 12:05:37PM +0800, Yakir Yang=
 wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">

On 08/09/2015 12:04 AM, Russell King wrote:
</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">The dw_hdmi enable/disable handling is particula=
rly weak in several
regards:
* The hotplug interrupt could call hdmi_poweron() or hdmi_poweroff()
  while DRM is setting a mode, which could race with a mode being set.
* Hotplug will always re-enable the phy whenever it detects an active
  hotplug signal, even if DRM has disabled the output.

Resolve all of these by introducing a mutex to prevent races, and a
state-tracking bool so we know whether DRM wishes the output to be
enabled.  We choose to use our own mutex rather than -&gt;struct_mutex
so that we can still process interrupts in a timely fashion.

Signed-off-by: Russell King <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:rmk+kernel@arm.linux.org.uk">&lt;rmk+kernel@arm.linux.org.uk&gt;</a>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw=
_hdmi.c
index 7b8a4e942a71..0ee188930d26 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -125,6 +125,9 @@ struct dw_hdmi {
 	bool sink_is_hdmi;
 	bool sink_has_audio;
+	struct mutex mutex;		/* for state below and previous_mode */
+	bool disabled;			/* DRM has disabled our bridge */
+
 	spinlock_t audio_lock;
 	struct mutex audio_mutex;
 	unsigned int sample_rate;
@@ -1389,8 +1392,12 @@ static void dw_hdmi_bridge_mode_set(struct drm_bri=
dge *bridge,
 {
 	struct dw_hdmi *hdmi =3D bridge-&gt;driver_private;
+	mutex_lock(&amp;hdmi-&gt;mutex);
+
 	/* Store the display mode for plugin/DKMS poweron events */
 	memcpy(&amp;hdmi-&gt;previous_mode, mode, sizeof(hdmi-&gt;previous_mode=
));
+
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
@@ -1404,14 +1411,20 @@ static void dw_hdmi_bridge_disable(struct drm_bri=
dge *bridge)
 {
 	struct dw_hdmi *hdmi =3D bridge-&gt;driver_private;
+	mutex_lock(&amp;hdmi-&gt;mutex);
+	hdmi-&gt;disabled =3D true;
 	dw_hdmi_poweroff(hdmi);
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi =3D bridge-&gt;driver_private;
+	mutex_lock(&amp;hdmi-&gt;mutex);
 	dw_hdmi_poweron(hdmi);
+	hdmi-&gt;disabled =3D false;
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 static void dw_hdmi_bridge_nop(struct drm_bridge *bridge)
@@ -1534,20 +1547,20 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev=
_id)
 	phy_int_pol =3D hdmi_readb(hdmi, HDMI_PHY_POL0);
 	if (intr_stat &amp; HDMI_IH_PHY_STAT0_HPD) {
+		hdmi_modb(hdmi, ~phy_int_pol, HDMI_PHY_HPD, HDMI_PHY_POL0);
+		mutex_lock(&amp;hdmi-&gt;mutex);
 		if (phy_int_pol &amp; HDMI_PHY_HPD) {
 			dev_dbg(hdmi-&gt;dev, "EVENT=3Dplugin\n");
-			hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);
-
-			dw_hdmi_poweron(hdmi);
+			if (!hdmi-&gt;disabled)
+				dw_hdmi_poweron(hdmi);
 		} else {
 			dev_dbg(hdmi-&gt;dev, "EVENT=3Dplugout\n");
-			hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
-				  HDMI_PHY_POL0);
-
-			dw_hdmi_poweroff(hdmi);
+			if (!hdmi-&gt;disabled)
+				dw_hdmi_poweroff(hdmi);
</pre>
        </blockquote>
        <pre wrap=3D"">
Just like my reply on 08/12, I thought this could be removed, so
poweron/poweroff would only be called with bridge-&gt;enable/
bridge-&gt;disable, them maybe no need mutex here.
</pre>
      </blockquote>
      <pre wrap=3D"">
The bridge enable/disable methods do not get called on hotplug changes.

[    1.363011] dwhdmi-imx 120000.hdmi: Detected HDMI controller 0x13:0xa:=
0xa0:0xc1
[    1.371341] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,=
HPD S:RX----,HPD)
[    1.381345] imx-drm display-subsystem: bound 120000.hdmi (ops dw_hdmi_=
imx_ops)
[    1.448691] dwhdmi-imx 120000.hdmi: dw_hdmi_bridge_disable()
[    1.450963] dwhdmi-imx 120000.hdmi: dw_hdmi_bridge_enable()

and then unplugging and re-plugging the HDMI cable:

[   68.307505] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,=
--- S:RX----,---)
[   73.813970] dwhdmi-imx 120000.hdmi: dw_hdmi_irq(I:RX----,HPD P:RX3210,=
HPD S:RX----,HPD)

As you can see, during the period of disconnection for five seconds,
dw_hdmi_bridge_disable() was not called.

So, without the code above, we'd be needlessly wasting power with the
bridge enabled, trying to drive a disconnected display.
</pre>
    </blockquote>
    <br>
    Strangely, I do see bridge enable/disable in my side, past the log
    and dump_stack bellow.<br>
    <br>
    And I guess your HDMI maybe not really hot pluged, could you confirm
    that the "status"<br>
    of HDMI display card have been changed between "connected" and
    "disconnected".<br>
    <br>
    <br>
    Do see bridge_disable when I unpluging the HDMI cable<br>
    [=A0=A0 16.358717] dwhdmi-rockchip ff980000.hdmi: EVENT=3Dplugout<br>
    <small>[=A0=A0 20.613221] [&lt;c010e030&gt;] (unwind_backtrace) from
      [&lt;c010a4e0&gt;] (show_stack+0x20/0x24)<br>
      [=A0=A0 20.631561] [&lt;c010a4e0&gt;] (show_stack) from
      [&lt;c0896828&gt;] (dump_stack+0x70/0x8c)<br>
      [=A0=A0 20.649337] [&lt;c0896828&gt;] (dump_stack) from
      [&lt;c0414038&gt;] (dw_hdmi_bridge_disable+0x1c/0x88)<br>
      [=A0=A0 20.668178] [&lt;c0414038&gt;] (dw_hdmi_bridge_disable) from
      [&lt;c03e3888&gt;] (drm_encoder_disable+0x34/0x78)<br>
      [=A0=A0 20.687857] [&lt;c03e3888&gt;] (drm_encoder_disable) from
      [&lt;c03e3b1c&gt;]
      (__drm_helper_disable_unused_functions+0x68/0xe4)<br>
      [=A0=A0 20.708975] [&lt;c03e3b1c&gt;]
      (__drm_helper_disable_unused_functions) from [&lt;c03e4320&gt;]
      (drm_crtc_helper_set_config+0x128/0x85c)<br>
      [=A0=A0 20.731180] [&lt;c03e4320&gt;] (drm_crtc_helper_set_config)
      from [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal+0x58/0xdc)<br=
>
      [=A0=A0 20.752507] [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal=
)
      from [&lt;c0405ed0&gt;] (commit_crtc_state+0x124/0x1ec)<br>
      [=A0=A0 20.773342] [&lt;c0405ed0&gt;] (commit_crtc_state) from
      [&lt;c04055d4&gt;] (atomic_commit.isra.3+0x5c/0xc8)<br>
      [=A0=A0 20.793397] [&lt;c04055d4&gt;] (atomic_commit.isra.3) from
      [&lt;c040565c&gt;] (drm_atomic_commit+0x1c/0x20)<br>
      [=A0=A0 20.813467] [&lt;c040565c&gt;] (drm_atomic_commit) from
      [&lt;c03fa480&gt;] (drm_mode_setcrtc+0x324/0x3e4)<br>
      [=A0=A0 20.833379] [&lt;c03fa480&gt;] (drm_mode_setcrtc) from
      [&lt;c03eb320&gt;] (drm_ioctl+0x304/0x478)<br>
      [=A0=A0 20.852557] [&lt;c03eb320&gt;] (drm_ioctl) from
      [&lt;c021f024&gt;] (do_vfs_ioctl+0x494/0x5a8)<br>
      [=A0=A0 20.871377] [&lt;c021f024&gt;] (do_vfs_ioctl) from
      [&lt;c021f194&gt;] (SyS_ioctl+0x5c/0x84)<br>
      [=A0=A0 20.890038] [&lt;c021f194&gt;] (SyS_ioctl) from
      [&lt;c010646c&gt;] (__sys_trace_return+0x0/0x14)</small><br>
    [=A0=A0 16.890157] ------- YAKIR: dw_hdmi_bridge_disable:1656<br>
    [=A0=A0 16.897907] ------- YAKIR: dw_hdmi_poweroff:1631<br>
    <br>
    Also see bridge have been disabled once before try to bridge_enable
    when I try re-plugging the HDMI cable<br>
    [=A0=A0 20.494292] dwhdmi-rockchip ff980000.hdmi: EVENT=3Dplugin<br>
    <small>[=A0=A0 12.599389] [&lt;c010e030&gt;] (unwind_backtrace) from
      [&lt;c010a4e0&gt;] (show_stack+0x20/0x24)<br>
      [=A0=A0 12.612238] [&lt;c010a4e0&gt;] (show_stack) from
      [&lt;c0896828&gt;] (dump_stack+0x70/0x8c)<br>
      [=A0=A0 12.624609] [&lt;c0896828&gt;] (dump_stack) from
      [&lt;c0414038&gt;] (dw_hdmi_bridge_disable+0x1c/0x88)<br>
      [=A0=A0 12.638055] [&lt;c0414038&gt;] (dw_hdmi_bridge_disable) from
      [&lt;c03e3dd4&gt;] (drm_crtc_helper_set_mode+0x20c/0x4e0)<br>
      [=A0=A0 12.652878] [&lt;c03e3dd4&gt;] (drm_crtc_helper_set_mode) fr=
om
      [&lt;c03e47ec&gt;] (drm_crtc_helper_set_config+0x5f4/0x85c)<br>
      [=A0=A0 12.668019] [&lt;c03e47ec&gt;] (drm_crtc_helper_set_config)
      from [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal+0x58/0xdc)<br=
>
      [=A0=A0 12.683442] [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal=
)
      from [&lt;c0405ed0&gt;] (commit_crtc_state+0x124/0x1ec)<br>
      [=A0=A0 12.698287] [&lt;c0405ed0&gt;] (commit_crtc_state) from
      [&lt;c04055d4&gt;] (atomic_commit.isra.3+0x5c/0xc8)<br>
      [=A0=A0 12.712295] [&lt;c04055d4&gt;] (atomic_commit.isra.3) from
      [&lt;c040565c&gt;] (drm_atomic_commit+0x1c/0x20)<br>
      [=A0=A0 12.726258] [&lt;c040565c&gt;] (drm_atomic_commit) from
      [&lt;c03fa480&gt;] (drm_mode_setcrtc+0x324/0x3e4)<br>
      [=A0=A0 12.740226] [&lt;c03fa480&gt;] (drm_mode_setcrtc) from
      [&lt;c03eb320&gt;] (drm_ioctl+0x304/0x478)<br>
      [=A0=A0 12.753651] [&lt;c03eb320&gt;] (drm_ioctl) from
      [&lt;c021f024&gt;] (do_vfs_ioctl+0x494/0x5a8)<br>
      [=A0=A0 12.766794] [&lt;c021f024&gt;] (do_vfs_ioctl) from
      [&lt;c021f194&gt;] (SyS_ioctl+0x5c/0x84)<br>
      [=A0=A0 12.779861] [&lt;c021f194&gt;] (SyS_ioctl) from
      [&lt;c010646c&gt;] (__sys_trace_return+0x0/0x14)</small><br>
    [=A0=A0 21.059320] ------- YAKIR: dw_hdmi_bridge_disable:1656<br>
    [=A0=A0 21.068272] ------- YAKIR: dw_hdmi_poweroff:1631<br>
    [=A0=A0 21.076714] rockchip-vop ff930000.vop: start latency exceeded,
    new value 9333 ns<br>
    [=A0=A0 21.088037] rockchip-vop ff930000.vop: Attached to iommu domai=
n<br>
    <small>[=A0=A0 12.871336] [&lt;c010e030&gt;] (unwind_backtrace) from
      [&lt;c010a4e0&gt;] (show_stack+0x20/0x24)<br>
      [=A0=A0 12.882067] [&lt;c010a4e0&gt;] (show_stack) from
      [&lt;c0896828&gt;] (dump_stack+0x70/0x8c)<br>
      [=A0=A0 12.892311] [&lt;c0896828&gt;] (dump_stack) from
      [&lt;c0414134&gt;] (dw_hdmi_bridge_enable+0x3c/0xf28)<br>
      [=A0=A0 12.903569] [&lt;c0414134&gt;] (dw_hdmi_bridge_enable) from
      [&lt;c03e3ff4&gt;] (drm_crtc_helper_set_mode+0x42c/0x4e0)<br>
      [=A0=A0 12.916226] [&lt;c03e3ff4&gt;] (drm_crtc_helper_set_mode) fr=
om
      [&lt;c03e47ec&gt;] (drm_crtc_helper_set_config+0x5f4/0x85c)<br>
      [=A0=A0 12.929450] [&lt;c03e47ec&gt;] (drm_crtc_helper_set_config)
      from [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal+0x58/0xdc)<br=
>
      [=A0=A0 12.942883] [&lt;c03f5e3c&gt;] (drm_mode_set_config_internal=
)
      from [&lt;c0405ed0&gt;] (commit_crtc_state+0x124/0x1ec)<br>
      [=A0=A0 12.955784] [&lt;c0405ed0&gt;] (commit_crtc_state) from
      [&lt;c04055d4&gt;] (atomic_commit.isra.3+0x5c/0xc8)<br>
      [=A0=A0 12.967753] [&lt;c04055d4&gt;] (atomic_commit.isra.3) from
      [&lt;c040565c&gt;] (drm_atomic_commit+0x1c/0x20)<br>
      [=A0=A0 12.979705] [&lt;c040565c&gt;] (drm_atomic_commit) from
      [&lt;c03fa480&gt;] (drm_mode_setcrtc+0x324/0x3e4)<br>
      [=A0=A0 12.991568] [&lt;c03fa480&gt;] (drm_mode_setcrtc) from
      [&lt;c03eb320&gt;] (drm_ioctl+0x304/0x478)<br>
      [=A0=A0 13.002817] [&lt;c03eb320&gt;] (drm_ioctl) from
      [&lt;c021f024&gt;] (do_vfs_ioctl+0x494/0x5a8)<br>
      [=A0=A0 13.013766] [&lt;c021f024&gt;] (do_vfs_ioctl) from
      [&lt;c021f194&gt;] (SyS_ioctl+0x5c/0x84)<br>
      [=A0=A0 13.024655] [&lt;c021f194&gt;] (SyS_ioctl) from
      [&lt;c010646c&gt;] (__sys_trace_return+0x0/0x14)</small><br>
    [=A0=A0 21.114556] ------- YAKIR: dw_hdmi_bridge_enable:1664<br>
    [=A0=A0 21.122889] ------- YAKIR: dw_hdmi_poweron:1625<br>
    <br>
    <br>
    - Yakir<br>
    <blockquote cite=3D"mid:20151007094831.GF21513@n2100.arm.linux.org.uk=
"
      type=3D"cite">
      <pre wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040509080908050209010700--


--===============0645163340==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0645163340==--
