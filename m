From: hl <hl@rock-chips.com>
Subject: Re: [RFC PATCH v2 6/6] drm/rockchip: Add dmc notifier in vop driver
Date: Wed, 22 Jun 2016 20:25:04 +0800
Message-ID: <576A83A0.3080908@rock-chips.com>
References: <1465207986-17888-1-git-send-email-hl@rock-chips.com>
 <CGME20160606101348epcas1p468b2019b1d69887a154b60c3afa2edce@epcas1p4.samsung.com>
 <1465207986-17888-7-git-send-email-hl@rock-chips.com>
 <576A3A38.3000306@samsung.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0744666553=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <576A3A38.3000306@samsung.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chanwoo Choi <cw00.choi@samsung.com>, heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============0744666553==
Content-Type: multipart/alternative;
 boundary="------------050702050500010700080902"

This is a multi-part message in MIME format.
--------------050702050500010700080902
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Chanwoo Choi,

On 2016=E5=B9=B406=E6=9C=8822=E6=97=A5 15:11, Chanwoo Choi wrote:
> Hi,
>
> On 2016=EB=85=84 06=EC=9B=94 06=EC=9D=BC 19:13, Lin Huang wrote:
>> when in ddr frequency scaling process, vop can not do
>> enable or disable operate, since dcf will base on vop vblank
>> time to do frequency scaling and need to get vop irq if there
>> have vop enabled. So need register to dmc notifier, and we can
>> get the dmc status.
> If you want to know when ddr frequency is chanaged,
> you can use the DEVFREQ_TRANSITION_NOTIFIER notifier[1] (merged to v4.7=
-rc1)
> which includes the following notification:
> - DEVFREQ_PRECHANGE
> - DEVFREQ_POSTCHANGE=09
>
> [1] "PM / devfreq: Add new DEVFREQ_TRANSITION_NOTIFIER notifier"
> - https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D0fe3a66410a3ba96679be903f1e287d7a0a264a9
Check the code, if the set target fail, it will not send=20
DEVFREQ_POSTCHANGE, but in our case, whether the target
setting sucess or fail, it should send message to vop driver,  tell vop=20
driver dmc have finish frequency setting.
>
> Thanks,
> Chanwoo Choi
>
>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>> ---
>>
>> Changes in v2:
>> - None
>>
>> Changes in v1:
>> - use wait_event instead usleep
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 43 +++++++++++++++++++=
++++++++--
>>   1 file changed, 41 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu=
/drm/rockchip/rockchip_drm_vop.c
>> index 1c4d5b5..8286048 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> @@ -31,6 +31,8 @@
>>   #include <linux/reset.h>
>>   #include <linux/delay.h>
>>  =20
>> +#include <soc/rockchip/rockchip_dmc.h>
>> +
>>   #include "rockchip_drm_drv.h"
>>   #include "rockchip_drm_gem.h"
>>   #include "rockchip_drm_fb.h"
>> @@ -116,6 +118,10 @@ struct vop {
>>  =20
>>   	const struct vop_data *data;
>>  =20
>> +	struct notifier_block dmc_nb;
>> +	int dmc_in_process;
>> +	wait_queue_head_t	wait_dmc_queue;
>> +
>>   	uint32_t *regsbak;
>>   	void __iomem *regs;
>>  =20
>> @@ -426,6 +432,21 @@ static void vop_dsp_hold_valid_irq_disable(struct=
 vop *vop)
>>   	spin_unlock_irqrestore(&vop->irq_lock, flags);
>>   }
>>  =20
>> +static int dmc_notify(struct notifier_block *nb, unsigned long event,
>> +		      void *data)
>> +{
>> +	struct vop *vop =3D container_of(nb, struct vop, dmc_nb);
>> +
>> +	if (event =3D=3D DMCFREQ_ADJUST) {
>> +		vop->dmc_in_process =3D 1;
>> +	} else if (event =3D=3D DMCFREQ_FINISH) {
>> +		vop->dmc_in_process =3D 0;
>> +		wake_up(&vop->wait_dmc_queue);
>> +	}
>> +
>> +	return NOTIFY_OK;
>> +}
>> +
>>   static void vop_enable(struct drm_crtc *crtc)
>>   {
>>   	struct vop *vop =3D to_vop(crtc);
>> @@ -434,6 +455,13 @@ static void vop_enable(struct drm_crtc *crtc)
>>   	if (vop->is_enabled)
>>   		return;
>>  =20
>> +	/*
>> +	 * if in dmc scaling frequency process, wait until it finish
>> +	 * use 100ms as timeout time.
>> +	 */
>> +	wait_event_timeout(vop->wait_dmc_queue,
>> +			   !vop->dmc_in_process, HZ / 10);
>> +
>>   	ret =3D pm_runtime_get_sync(vop->dev);
>>   	if (ret < 0) {
>>   		dev_err(vop->dev, "failed to get pm runtime: %d\n", ret);
>> @@ -485,6 +513,7 @@ static void vop_enable(struct drm_crtc *crtc)
>>   	enable_irq(vop->irq);
>>  =20
>>   	drm_crtc_vblank_on(crtc);
>> +	rockchip_dmc_get(&vop->dmc_nb);
>>  =20
>>   	return;
>>  =20
>> @@ -505,6 +534,13 @@ static void vop_crtc_disable(struct drm_crtc *crt=
c)
>>   		return;
>>  =20
>>   	/*
>> +	 * if in dmc scaling frequency process, wait until it finish
>> +	 * use 100ms as timeout time.
>> +	 */
>> +	wait_event_timeout(vop->wait_dmc_queue,
>> +			   !vop->dmc_in_process, HZ / 10);
>> +
>> +	/*
>>   	 * We need to make sure that all windows are disabled before we
>>   	 * disable that crtc. Otherwise we might try to scan from a destroy=
ed
>>   	 * buffer later.
>> @@ -517,7 +553,7 @@ static void vop_crtc_disable(struct drm_crtc *crtc=
)
>>   		VOP_WIN_SET(vop, win, enable, 0);
>>   		spin_unlock(&vop->reg_lock);
>>   	}
>> -
>> +	rockchip_dmc_put(&vop->dmc_nb);
>>   	drm_crtc_vblank_off(crtc);
>>  =20
>>   	/*
>> @@ -1243,7 +1279,7 @@ static int vop_create_crtc(struct vop *vop)
>>   		ret =3D -ENOENT;
>>   		goto err_cleanup_crtc;
>>   	}
>> -
>> +	vop->dmc_nb.notifier_call =3D dmc_notify;
>>   	init_completion(&vop->dsp_hold_completion);
>>   	init_completion(&vop->wait_update_complete);
>>   	crtc->port =3D port;
>> @@ -1465,6 +1501,9 @@ static int vop_bind(struct device *dev, struct d=
evice *master, void *data)
>>   	/* IRQ is initially disabled; it gets enabled in power_on */
>>   	disable_irq(vop->irq);
>>  =20
>> +	init_waitqueue_head(&vop->wait_dmc_queue);
>> +	vop->dmc_in_process =3D 0;
>> +
>>   	ret =3D vop_create_crtc(vop);
>>   	if (ret)
>>   		return ret;
>>
>
>
>

--=20
Lin Huang


--------------050702050500010700080902
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hi Chanwoo Choi,<br>
    <br>
    <div class=3D"moz-cite-prefix">On 2016=E5=B9=B406=E6=9C=8822=E6=97=A5=
 15:11, Chanwoo Choi
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:576A3A38.3000306@samsung.com" type=3D"cite">
      <pre wrap=3D"">Hi,

On 2016=EB=85=84 06=EC=9B=94 06=EC=9D=BC 19:13, Lin Huang wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">when in ddr frequency scaling process, vop can not=
 do
enable or disable operate, since dcf will base on vop vblank
time to do frequency scaling and need to get vop irq if there
have vop enabled. So need register to dmc notifier, and we can
get the dmc status.
</pre>
      </blockquote>
      <pre wrap=3D"">
If you want to know when ddr frequency is chanaged,
you can use the DEVFREQ_TRANSITION_NOTIFIER notifier[1] (merged to v4.7-r=
c1)
which includes the following notification:
- DEVFREQ_PRECHANGE
- DEVFREQ_POSTCHANGE=09

[1] "PM / devfreq: Add new DEVFREQ_TRANSITION_NOTIFIER notifier"
- <a class=3D"moz-txt-link-freetext" href=3D"https://git.kernel.org/cgit/=
linux/kernel/git/torvalds/linux.git/commit/?id=3D0fe3a66410a3ba96679be903=
f1e287d7a0a264a9">https://git.kernel.org/cgit/linux/kernel/git/torvalds/l=
inux.git/commit/?id=3D0fe3a66410a3ba96679be903f1e287d7a0a264a9</a></pre>
    </blockquote>
    Check the code, if the set target fail, it will not send
    DEVFREQ_POSTCHANGE, but in our case, whether the target<br>
    setting sucess or fail, it should send message to vop driver,=C2=A0 t=
ell
    vop driver dmc have finish frequency setting.<br>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    <span style=3D"color: rgb(0, 128, 0); font-family: monospace; font-si=
ze: 13.3333px; font-style: normal; font-variant: normal; font-weight: nor=
mal; letter-spacing: normal; line-height: normal; orphans: auto; text-ali=
gn: start; text-indent: 0px; text-transform: none; white-space: pre; wido=
ws: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline=
 !important; float: none; background-color: rgb(255, 255, 255);"></span>
    <blockquote cite=3D"mid:576A3A38.3000306@samsung.com" type=3D"cite">
      <pre wrap=3D"">

Thanks,
Chanwoo Choi

</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">
Signed-off-by: Lin Huang <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:hl@rock-chips.com">&lt;hl@rock-chips.com&gt;</a>
---

Changes in v2:
- None

Changes in v1:
- use wait_event instead usleep

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 43 +++++++++++++++++++++++=
++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_vop.c
index 1c4d5b5..8286048 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -31,6 +31,8 @@
 #include &lt;linux/reset.h&gt;
 #include &lt;linux/delay.h&gt;
=20
+#include &lt;soc/rockchip/rockchip_dmc.h&gt;
+
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_fb.h"
@@ -116,6 +118,10 @@ struct vop {
=20
 	const struct vop_data *data;
=20
+	struct notifier_block dmc_nb;
+	int dmc_in_process;
+	wait_queue_head_t	wait_dmc_queue;
+
 	uint32_t *regsbak;
 	void __iomem *regs;
=20
@@ -426,6 +432,21 @@ static void vop_dsp_hold_valid_irq_disable(struct vo=
p *vop)
 	spin_unlock_irqrestore(&amp;vop-&gt;irq_lock, flags);
 }
=20
+static int dmc_notify(struct notifier_block *nb, unsigned long event,
+		      void *data)
+{
+	struct vop *vop =3D container_of(nb, struct vop, dmc_nb);
+
+	if (event =3D=3D DMCFREQ_ADJUST) {
+		vop-&gt;dmc_in_process =3D 1;
+	} else if (event =3D=3D DMCFREQ_FINISH) {
+		vop-&gt;dmc_in_process =3D 0;
+		wake_up(&amp;vop-&gt;wait_dmc_queue);
+	}
+
+	return NOTIFY_OK;
+}
+
 static void vop_enable(struct drm_crtc *crtc)
 {
 	struct vop *vop =3D to_vop(crtc);
@@ -434,6 +455,13 @@ static void vop_enable(struct drm_crtc *crtc)
 	if (vop-&gt;is_enabled)
 		return;
=20
+	/*
+	 * if in dmc scaling frequency process, wait until it finish
+	 * use 100ms as timeout time.
+	 */
+	wait_event_timeout(vop-&gt;wait_dmc_queue,
+			   !vop-&gt;dmc_in_process, HZ / 10);
+
 	ret =3D pm_runtime_get_sync(vop-&gt;dev);
 	if (ret &lt; 0) {
 		dev_err(vop-&gt;dev, "failed to get pm runtime: %d\n", ret);
@@ -485,6 +513,7 @@ static void vop_enable(struct drm_crtc *crtc)
 	enable_irq(vop-&gt;irq);
=20
 	drm_crtc_vblank_on(crtc);
+	rockchip_dmc_get(&amp;vop-&gt;dmc_nb);
=20
 	return;
=20
@@ -505,6 +534,13 @@ static void vop_crtc_disable(struct drm_crtc *crtc)
 		return;
=20
 	/*
+	 * if in dmc scaling frequency process, wait until it finish
+	 * use 100ms as timeout time.
+	 */
+	wait_event_timeout(vop-&gt;wait_dmc_queue,
+			   !vop-&gt;dmc_in_process, HZ / 10);
+
+	/*
 	 * We need to make sure that all windows are disabled before we
 	 * disable that crtc. Otherwise we might try to scan from a destroyed
 	 * buffer later.
@@ -517,7 +553,7 @@ static void vop_crtc_disable(struct drm_crtc *crtc)
 		VOP_WIN_SET(vop, win, enable, 0);
 		spin_unlock(&amp;vop-&gt;reg_lock);
 	}
-
+	rockchip_dmc_put(&amp;vop-&gt;dmc_nb);
 	drm_crtc_vblank_off(crtc);
=20
 	/*
@@ -1243,7 +1279,7 @@ static int vop_create_crtc(struct vop *vop)
 		ret =3D -ENOENT;
 		goto err_cleanup_crtc;
 	}
-
+	vop-&gt;dmc_nb.notifier_call =3D dmc_notify;
 	init_completion(&amp;vop-&gt;dsp_hold_completion);
 	init_completion(&amp;vop-&gt;wait_update_complete);
 	crtc-&gt;port =3D port;
@@ -1465,6 +1501,9 @@ static int vop_bind(struct device *dev, struct devi=
ce *master, void *data)
 	/* IRQ is initially disabled; it gets enabled in power_on */
 	disable_irq(vop-&gt;irq);
=20
+	init_waitqueue_head(&amp;vop-&gt;wait_dmc_queue);
+	vop-&gt;dmc_in_process =3D 0;
+
 	ret =3D vop_create_crtc(vop);
 	if (ret)
 		return ret;

</pre>
      </blockquote>
      <pre wrap=3D"">



</pre>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Lin Huang</pre>
  </body>
</html>

--------------050702050500010700080902--


--===============0744666553==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0744666553==--
