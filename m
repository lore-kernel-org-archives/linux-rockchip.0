From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [RFC PATCH v2 6/6] drm/rockchip: Add dmc notifier in vop driver
Date: Thu, 23 Jun 2016 10:19:06 +0900
Message-ID: <576B390A.3050905@samsung.com>
References: <1465207986-17888-1-git-send-email-hl@rock-chips.com>
 <CGME20160606101348epcas1p468b2019b1d69887a154b60c3afa2edce@epcas1p4.samsung.com>
 <1465207986-17888-7-git-send-email-hl@rock-chips.com>
 <576A3A38.3000306@samsung.com> <576A83A0.3080908@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-reply-to: <576A83A0.3080908@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: hl <hl@rock-chips.com>, heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: mturquette@baylibre.com, sboyd@codeaurora.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kyungmin.park@samsung.com, dianders@chromium.org, dbasehore@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Lin,

On 2016=EB=85=84 06=EC=9B=94 22=EC=9D=BC 21:25, hl wrote:
> Hi Chanwoo Choi,
>=20
> On 2016=E5=B9=B406=E6=9C=8822=E6=97=A5 15:11, Chanwoo Choi wrote:
>> Hi,
>>
>> On 2016=EB=85=84 06=EC=9B=94 06=EC=9D=BC 19:13, Lin Huang wrote:
>>> when in ddr frequency scaling process, vop can not do
>>> enable or disable operate, since dcf will base on vop vblank
>>> time to do frequency scaling and need to get vop irq if there
>>> have vop enabled. So need register to dmc notifier, and we can
>>> get the dmc status.
>> If you want to know when ddr frequency is chanaged,
>> you can use the DEVFREQ_TRANSITION_NOTIFIER notifier[1] (merged to v=
4.7-rc1)
>> which includes the following notification:
>> - DEVFREQ_PRECHANGE
>> - DEVFREQ_POSTCHANGE=09
>>
>> [1] "PM / devfreq: Add new DEVFREQ_TRANSITION_NOTIFIER notifier"
>> - https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/co=
mmit/?id=3D0fe3a66410a3ba96679be903f1e287d7a0a264a9
> Check the code, if the set target fail, it will not send DEVFREQ_POST=
CHANGE, but in our case, whether the target
> setting sucess or fail, it should send message to vop driver,  tell v=
op driver dmc have finish frequency setting.

I check the code when target function is failed.
DEVFREQ_TRANSITION_NOTIFIER notifier[1] is missing the error case as yo=
u mentioned.
So, we would add following patches to fix the problem.

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 1d6c803804d5..2bd9d4228b7b 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -268,8 +268,10 @@ int update_devfreq(struct devfreq *devfreq)
        devfreq_notify_transition(devfreq, &freqs, DEVFREQ_PRECHANGE);
=20
        err =3D devfreq->profile->target(devfreq->dev.parent, &freq, fl=
ags);
-       if (err)
+       if (err) {
+		freqs.new =3D cur_freq;
+               devfreq_notify_transition(devfreq, &freqs, DEVFREQ_POST=
CHANGE);
                return err;
+       }
=20
        freqs.new =3D freq;
        devfreq_notify_transition(devfreq, &freqs, DEVFREQ_POSTCHANGE);


Thanks,
Chanwoo Choi

>>
>> Thanks,
>> Chanwoo Choi
>>
>>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>>> ---
>>>
>>> Changes in v2:
>>> - None
>>>
>>> Changes in v1:
>>> - use wait_event instead usleep
>>>
>>>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 43 +++++++++++++++++=
++++++++++--
>>>  1 file changed, 41 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/=
gpu/drm/rockchip/rockchip_drm_vop.c
>>> index 1c4d5b5..8286048 100644
>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>>> @@ -31,6 +31,8 @@
>>>  #include <linux/reset.h>
>>>  #include <linux/delay.h>
>>> =20
>>> +#include <soc/rockchip/rockchip_dmc.h>
>>> +
>>>  #include "rockchip_drm_drv.h"
>>>  #include "rockchip_drm_gem.h"
>>>  #include "rockchip_drm_fb.h"
>>> @@ -116,6 +118,10 @@ struct vop {
>>> =20
>>>  	const struct vop_data *data;
>>> =20
>>> +	struct notifier_block dmc_nb;
>>> +	int dmc_in_process;
>>> +	wait_queue_head_t	wait_dmc_queue;
>>> +
>>>  	uint32_t *regsbak;
>>>  	void __iomem *regs;
>>> =20
>>> @@ -426,6 +432,21 @@ static void vop_dsp_hold_valid_irq_disable(str=
uct vop *vop)
>>>  	spin_unlock_irqrestore(&vop->irq_lock, flags);
>>>  }
>>> =20
>>> +static int dmc_notify(struct notifier_block *nb, unsigned long eve=
nt,
>>> +		      void *data)
>>> +{
>>> +	struct vop *vop =3D container_of(nb, struct vop, dmc_nb);
>>> +
>>> +	if (event =3D=3D DMCFREQ_ADJUST) {
>>> +		vop->dmc_in_process =3D 1;
>>> +	} else if (event =3D=3D DMCFREQ_FINISH) {
>>> +		vop->dmc_in_process =3D 0;
>>> +		wake_up(&vop->wait_dmc_queue);
>>> +	}
>>> +
>>> +	return NOTIFY_OK;
>>> +}
>>> +
>>>  static void vop_enable(struct drm_crtc *crtc)
>>>  {
>>>  	struct vop *vop =3D to_vop(crtc);
>>> @@ -434,6 +455,13 @@ static void vop_enable(struct drm_crtc *crtc)
>>>  	if (vop->is_enabled)
>>>  		return;
>>> =20
>>> +	/*
>>> +	 * if in dmc scaling frequency process, wait until it finish
>>> +	 * use 100ms as timeout time.
>>> +	 */
>>> +	wait_event_timeout(vop->wait_dmc_queue,
>>> +			   !vop->dmc_in_process, HZ / 10);
>>> +
>>>  	ret =3D pm_runtime_get_sync(vop->dev);
>>>  	if (ret < 0) {
>>>  		dev_err(vop->dev, "failed to get pm runtime: %d\n", ret);
>>> @@ -485,6 +513,7 @@ static void vop_enable(struct drm_crtc *crtc)
>>>  	enable_irq(vop->irq);
>>> =20
>>>  	drm_crtc_vblank_on(crtc);
>>> +	rockchip_dmc_get(&vop->dmc_nb);
>>> =20
>>>  	return;
>>> =20
>>> @@ -505,6 +534,13 @@ static void vop_crtc_disable(struct drm_crtc *=
crtc)
>>>  		return;
>>> =20
>>>  	/*
>>> +	 * if in dmc scaling frequency process, wait until it finish
>>> +	 * use 100ms as timeout time.
>>> +	 */
>>> +	wait_event_timeout(vop->wait_dmc_queue,
>>> +			   !vop->dmc_in_process, HZ / 10);
>>> +
>>> +	/*
>>>  	 * We need to make sure that all windows are disabled before we
>>>  	 * disable that crtc. Otherwise we might try to scan from a destr=
oyed
>>>  	 * buffer later.
>>> @@ -517,7 +553,7 @@ static void vop_crtc_disable(struct drm_crtc *c=
rtc)
>>>  		VOP_WIN_SET(vop, win, enable, 0);
>>>  		spin_unlock(&vop->reg_lock);
>>>  	}
>>> -
>>> +	rockchip_dmc_put(&vop->dmc_nb);
>>>  	drm_crtc_vblank_off(crtc);
>>> =20
>>>  	/*
>>> @@ -1243,7 +1279,7 @@ static int vop_create_crtc(struct vop *vop)
>>>  		ret =3D -ENOENT;
>>>  		goto err_cleanup_crtc;
>>>  	}
>>> -
>>> +	vop->dmc_nb.notifier_call =3D dmc_notify;
>>>  	init_completion(&vop->dsp_hold_completion);
>>>  	init_completion(&vop->wait_update_complete);
>>>  	crtc->port =3D port;
>>> @@ -1465,6 +1501,9 @@ static int vop_bind(struct device *dev, struc=
t device *master, void *data)
>>>  	/* IRQ is initially disabled; it gets enabled in power_on */
>>>  	disable_irq(vop->irq);
>>> =20
>>> +	init_waitqueue_head(&vop->wait_dmc_queue);
>>> +	vop->dmc_in_process =3D 0;
>>> +
>>>  	ret =3D vop_create_crtc(vop);
>>>  	if (ret)
>>>  		return ret;
>>>
>>
>>
>>
>=20
> --=20
> Lin Huang
>=20

