Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64A3CD4851
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 May 2026 11:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZX9cvIvhGeEHMqXiYeQobCObMYBaxXK86McNgFlvdo=; b=Cf6/G4FjqVcVKX
	Z9w0QHBrvmycY3MVeZg0KOoNPBJYkJXoToBkRLof5jH/OhNc4z9g+gsMPLc1zp4C0rDqg0n4bijgq
	w/+u5b6XsqqciPhEBVt8IYVcSXIgjeIgJ6Y349dXsNAksyzGCD9ki6IprI6pzmfHV2K+zyeE6q8a8
	0KCANQzP1wfk7Sb4RNluPW0r73evuMT/68iiJ470tDK3YVCyZeW785tHgiu99yLSc/tfkHsVuPHnn
	UJ016K5O2npszLPVPSx6Zh2MdB8/QDdiCZ/67Nk+vmkYnqL1i+0OSsUSoGX9Hm0soJYmQYNw/14cY
	8oZLZHWwCyGhm1IhQ7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNURI-00000005Miv-14Rc;
	Thu, 14 May 2026 11:41:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNURD-00000005MhO-1kif;
	Thu, 14 May 2026 11:41:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6F12F40366;
	Thu, 14 May 2026 11:41:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E48AFC2BCB3;
	Thu, 14 May 2026 11:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778758870;
	bh=B3MvYtUjDdjrTsiyXToJ/tDAClWGB3+nRNvOgBfJu2s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fuURqa3qXjxizf98GY8RPZxBO2rgNbvbkJBJ90rLKg2ZdlOELngSUrzmxVz1OtoQK
	 pbju3i+kavVZtIPXwZp7NnOFMFl8SBJqjlBUlpOvdlMvaIY4mkfe/SvoXRCCf2ukX8
	 ZMlkbXDsqMXXaTicYpAFaNgp7rcJVt+rq90ZV+TPdh0qwp3dXkUryQEDhbyumLmVtX
	 34bjKbybY1mS1Uvxv5/qszULQNNP2ro/qiYNGAdxgWqNQdc08UFsnHW1VkQ0lZWy8u
	 RZr6C1zVRkZ0r/iuREVeQ6ZBPiUXiOexXHIiakKMAUtBktmmFPK6R/Bg/XquJtAWNp
	 M8mbf24PS4LBQ==
Date: Thu, 14 May 2026 12:41:04 +0100
From: Lee Jones <lee@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	William Breathitt Gray <wbg@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>,
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v5 2/6] mfd: Add Rockchip mfpwm driver
Message-ID: <20260514114104.GK305027@google.com>
References: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
 <20260420-rk3576-pwm-v5-2-ae7cfbbe5427@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420-rk3576-pwm-v5-2-ae7cfbbe5427@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_044111_521939_48664B39 
X-CRM114-Status: GOOD (  54.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 20 Apr 2026, Nicolas Frattaroli wrote:

> With the Rockchip RK3576, the PWM IP used by Rockchip has changed
> substantially. Looking at both the downstream pwm-rockchip driver as
> well as the mainline pwm-rockchip driver made it clear that with all its
> additional features and its differences from previous IP revisions, it
> is best supported in a new driver.
> =

> This brings us to the question as to what such a new driver should be.
> To me, it soon became clear that it should actually be several new
> drivers, most prominently when Uwe Kleine-K=F6nig let me know that I
> should not implement the pwm subsystem's capture callback, but instead
> write a counter driver for this functionality.
> =

> Combined with the other as-of-yet unimplemented functionality of this
> new IP, it became apparent that it needs to be spread across several
> subsystems.
> =

> For this reason, we add a new MFD core driver, called mfpwm (short for
> "Multi-function PWM"). This "parent" driver makes sure that only one
> device function driver is using the device at a time, and is in charge
> of registering the MFD cell devices for the individual device functions
> offered by the device.
> =

> An acquire/release pattern is used to guarantee that device function
> drivers don't step on each other's toes.

The whys, whos and wherefors should not be included in the commit
message.  We want to know what you're trying to achieve, why you're
trying to achieve it and how you're going about it.  This should be
purely technical.  Leave all of the conversation history out of it.

I'll be honest.  All of this bespoke acquisition handling is freaking me
out.  It's almost certainly not going to accepted like this, but in
order to help suggest an alternative I need to understand exactly what
the specifications are.

> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  MAINTAINERS                        |   2 +
>  drivers/mfd/Kconfig                |  16 ++
>  drivers/mfd/Makefile               |   1 +
>  drivers/mfd/rockchip-mfpwm.c       | 357 ++++++++++++++++++++++++++++
>  include/linux/mfd/rockchip-mfpwm.h | 470 +++++++++++++++++++++++++++++++=
++++++
>  5 files changed, 846 insertions(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 86f20cb563c6..d52731242a33 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23178,6 +23178,8 @@ L:	linux-rockchip@lists.infradead.org
>  L:	linux-pwm@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/pwm/rockchip,rk3576-pwm.yaml
> +F:	drivers/mfd/rockchip-mfpwm.c
> +F:	include/linux/mfd/rockchip-mfpwm.h
>  =

>  ROCKCHIP RK3568 RANDOM NUMBER GENERATOR SUPPORT
>  M:	Daniel Golle <daniel@makrotopia.org>
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 7192c9d1d268..80b4e82c4937 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1378,6 +1378,22 @@ config MFD_RC5T583
>  	  Additional drivers must be enabled in order to use the
>  	  different functionality of the device.
>  =

> +config MFD_ROCKCHIP_MFPWM
> +	tristate "Rockchip multi-function PWM controller"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OF
> +	depends on HAS_IOMEM
> +	depends on COMMON_CLK
> +	select MFD_CORE
> +	help
> +	  Some Rockchip SoCs, such as the RK3576, use a PWM controller that has
> +	  several different functions, such as generating PWM waveforms but also
> +	  counting waveforms.
> +
> +	  This driver manages the overall device, and selects between different
> +	  functionalities at runtime as needed. Drivers for them are implemented
> +	  in their respective subsystems.
> +
>  config MFD_RK8XX
>  	tristate
>  	select MFD_CORE
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index e75e8045c28a..ebadbaea9e4a 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -231,6 +231,7 @@ obj-$(CONFIG_MFD_PALMAS)	+=3D palmas.o
>  obj-$(CONFIG_MFD_VIPERBOARD)    +=3D viperboard.o
>  obj-$(CONFIG_MFD_NTXEC)		+=3D ntxec.o
>  obj-$(CONFIG_MFD_RC5T583)	+=3D rc5t583.o rc5t583-irq.o
> +obj-$(CONFIG_MFD_ROCKCHIP_MFPWM)	+=3D rockchip-mfpwm.o
>  obj-$(CONFIG_MFD_RK8XX)		+=3D rk8xx-core.o
>  obj-$(CONFIG_MFD_RK8XX_I2C)	+=3D rk8xx-i2c.o
>  obj-$(CONFIG_MFD_RK8XX_SPI)	+=3D rk8xx-spi.o
> diff --git a/drivers/mfd/rockchip-mfpwm.c b/drivers/mfd/rockchip-mfpwm.c
> new file mode 100644
> index 000000000000..72d04982b961
> --- /dev/null
> +++ b/drivers/mfd/rockchip-mfpwm.c
> @@ -0,0 +1,357 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2025 Collabora Ltd.
> + *
> + * A driver to manage all the different functionalities exposed by Rockc=
hip's
> + * PWMv4 hardware.
> + *
> + * This driver is chiefly focused on guaranteeing non-concurrent operati=
on
> + * between the different device functions, as well as setting the clocks.
> + * It registers the device function platform devices, e.g. PWM output or
> + * PWM capture.
> + *
> + * Authors:
> + *     Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> + */
> +
> +#include <linux/array_size.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/mfd/core.h>
> +#include <linux/mfd/rockchip-mfpwm.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/overflow.h>
> +#include <linux/platform_device.h>
> +#include <linux/spinlock.h>
> +
> +/**
> + * struct rockchip_mfpwm - private mfpwm driver instance state struct
> + * @pdev: pointer to this instance's &struct platform_device
> + * @base: pointer to the memory mapped registers of this device
> + * @pwm_clk: pointer to the PLL clock the PWM signal may be derived from
> + * @osc_clk: pointer to the fixed crystal the PWM signal may be derived =
from
> + * @rc_clk: pointer to the RC oscillator the PWM signal may be derived f=
rom
> + * @chosen_clk: a clk-mux of pwm_clk, osc_clk and rc_clk
> + * @pclk: pointer to the APB bus clock needed for mmio register access
> + * @active_func: pointer to the currently active device function, or %NU=
LL if no
> + *               device function is currently actively using any of the =
shared
> + *               resources. May only be checked/modified with @state_loc=
k held.
> + * @acquire_cnt: number of times @active_func has currently mfpwm_acquir=
e()'d
> + *               it. Must only be checked or modified while holding @sta=
te_lock.
> + * @state_lock: this lock is held while either the active device functio=
n, the
> + *              enable register, or the chosen clock is being changed.
> + * @irq: the IRQ number of this device
> + */
> +struct rockchip_mfpwm {
> +	struct platform_device *pdev;

It's more common to store 'struct device *'.

> +	void __iomem *base;
> +	struct clk *pwm_clk;
> +	struct clk *osc_clk;
> +	struct clk *rc_clk;
> +	struct clk *chosen_clk;
> +	struct clk *pclk;
> +	struct rockchip_mfpwm_func *active_func;
> +	unsigned int acquire_cnt;
> +	spinlock_t state_lock;
> +	int irq;
> +};
> +
> +static atomic_t subdev_id =3D ATOMIC_INIT(0);
> +
> +static inline struct rockchip_mfpwm *to_rockchip_mfpwm(struct platform_d=
evice *pdev)
> +{
> +	return platform_get_drvdata(pdev);
> +}

No pointless abstractions please.  Just use the call directly.

> +
> +static int mfpwm_check_pwmf(const struct rockchip_mfpwm_func *pwmf,
> +			    const char *fname)
> +{
> +	struct device *dev =3D &pwmf->parent->pdev->dev;
> +
> +	if (IS_ERR_OR_NULL(pwmf)) {
> +		dev_warn(dev, "called %s with an erroneous handle, no effect\n",
> +			 fname);



> +		return -EINVAL;
> +	}
> +
> +	if (IS_ERR_OR_NULL(pwmf->parent)) {
> +		dev_warn(dev, "called %s with an erroneous mfpwm_func parent, no effec=
t\n",
> +			 fname);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +__attribute__((nonnull))
> +static int mfpwm_do_acquire(struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm =3D pwmf->parent;
> +	unsigned int cnt;
> +
> +	if (mfpwm->active_func && pwmf->id !=3D mfpwm->active_func->id)

Comments throughout please.

> +		return -EBUSY;
> +
> +	if (!mfpwm->active_func)
> +		mfpwm->active_func =3D pwmf;
> +
> +	if (!check_add_overflow(mfpwm->acquire_cnt, 1, &cnt)) {
> +		mfpwm->acquire_cnt =3D cnt;
> +	} else {
> +		dev_warn(&mfpwm->pdev->dev, "prevented acquire counter overflow in %s\=
n",
> +			 __func__);

__func__s are not user friendly.  The user does not care about internals.

Keep them in your local BSP if you need them.

> +		return -EOVERFLOW;

How many are you planning to allow?

> +	}
> +
> +	dev_dbg(&mfpwm->pdev->dev, "%d acquired mfpwm, acquires now at %u\n",
> +		pwmf->id, mfpwm->acquire_cnt);

Drop the debug prints when upstreaming.

> +
> +	return clk_enable(mfpwm->pclk);
> +}
> +
> +int mfpwm_acquire(struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm;
> +	unsigned long flags;
> +	int ret =3D 0;
> +
> +	ret =3D mfpwm_check_pwmf(pwmf, "mfpwm_acquire");
> +	if (ret)
> +		return ret;
> +
> +	mfpwm =3D pwmf->parent;
> +	dev_dbg(&mfpwm->pdev->dev, "%d is attempting to acquire\n", pwmf->id);
> +
> +	if (!spin_trylock_irqsave(&mfpwm->state_lock, flags))
> +		return -EBUSY;
> +
> +	ret =3D mfpwm_do_acquire(pwmf);
> +
> +	spin_unlock_irqrestore(&mfpwm->state_lock, flags);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_NS_GPL(mfpwm_acquire, "ROCKCHIP_MFPWM");
> +
> +__attribute__((nonnull))
> +static void mfpwm_do_release(const struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm =3D pwmf->parent;
> +
> +	if (!mfpwm->active_func)
> +		return;
> +
> +	if (mfpwm->active_func->id !=3D pwmf->id)
> +		return;
> +
> +	/*
> +	 * No need to check_sub_overflow here, !mfpwm->active_func above catches
> +	 * this type of problem already.
> +	 */
> +	mfpwm->acquire_cnt--;
> +
> +	if (!mfpwm->acquire_cnt)
> +		mfpwm->active_func =3D NULL;
> +
> +	clk_disable(mfpwm->pclk);
> +}
> +
> +void mfpwm_release(const struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm;
> +	unsigned long flags;
> +
> +	if (mfpwm_check_pwmf(pwmf, "mfpwm_release"))
> +		return;
> +
> +	mfpwm =3D pwmf->parent;
> +
> +	spin_lock_irqsave(&mfpwm->state_lock, flags);
> +	mfpwm_do_release(pwmf);
> +	dev_dbg(&mfpwm->pdev->dev, "%d released mfpwm, acquires now at %u\n",
> +		pwmf->id, mfpwm->acquire_cnt);
> +	spin_unlock_irqrestore(&mfpwm->state_lock, flags);
> +}
> +EXPORT_SYMBOL_NS_GPL(mfpwm_release, "ROCKCHIP_MFPWM");
> +
> +int mfpwm_get_mode(const struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm;
> +	int ret;
> +
> +	ret =3D mfpwm_check_pwmf(pwmf, "mfpwm_acquire");
> +	if (ret)
> +		return ret;
> +
> +	mfpwm =3D pwmf->parent;
> +
> +	guard(spinlock_irqsave)(&mfpwm->state_lock);
> +
> +	if (!rockchip_pwm_v4_is_enabled(mfpwm_reg_read(mfpwm->base, PWMV4_REG_E=
NABLE)))

Don't embed function names like this.

> +		return -1;

-1 is not a real error code.

> +
> +	return mfpwm_reg_read(mfpwm->base, PWMV4_REG_CTRL) & PWMV4_MODE_MASK;
> +}
> +EXPORT_SYMBOL_NS_GPL(mfpwm_get_mode, "ROCKCHIP_MFPWM");
> +
> +/**
> + * mfpwm_register_subdev - register a single mfpwm_func
> + * @mfpwm: pointer to the parent &struct rockchip_mfpwm
> + * @name: sub-device name string
> + *
> + * Allocate a single &struct mfpwm_func, fill its members with appropria=
te data,
> + * and register a new mfd cell.
> + *
> + * Returns: 0 on success, negative errno on error
> + */
> +static int mfpwm_register_subdev(struct rockchip_mfpwm *mfpwm,
> +				 const char *name)
> +{
> +	struct rockchip_mfpwm_func *func;
> +	struct mfd_cell cell =3D {};
> +
> +	func =3D devm_kzalloc(&mfpwm->pdev->dev, sizeof(*func), GFP_KERNEL);
> +	if (IS_ERR(func))
> +		return PTR_ERR(func);
> +	func->irq =3D mfpwm->irq;
> +	func->parent =3D mfpwm;

Suggest you use the 'struct device' hierarchy instead of hand rolling
your own.

> +	func->id =3D atomic_inc_return(&subdev_id);

Why dosen't PLATFORM_DEVID_AUTO work for you?

> +	func->base =3D mfpwm->base;
> +	func->core =3D mfpwm->chosen_clk;
> +	cell.name =3D name;
> +	cell.platform_data =3D func;
> +	cell.pdata_size =3D sizeof(*func);
> +
> +	return devm_mfd_add_devices(&mfpwm->pdev->dev, func->id, &cell, 1, NULL,
> +				    0, NULL);
> +}
> +
> +static int mfpwm_register_subdevs(struct rockchip_mfpwm *mfpwm)
> +{
> +	int ret;
> +
> +	ret =3D mfpwm_register_subdev(mfpwm, "rockchip-pwm-v4");
> +	if (ret)
> +		return ret;
> +
> +	ret =3D mfpwm_register_subdev(mfpwm, "rockchip-pwm-capture");
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

Place all of your devices in static (const if they are immutable)
structs.  Literally no one else does MFD registration like this - do not
reinvent the wheel.

> +static int rockchip_mfpwm_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct rockchip_mfpwm *mfpwm;

Could we use 'ddata' for the variable instance name instead of 'mfpwm'
to follow standard naming conventions for private data structures?

> +	char *clk_mux_name;
> +	const char *mux_p_names[3];
> +	int ret =3D 0;
> +
> +	mfpwm =3D devm_kzalloc(&pdev->dev, sizeof(*mfpwm), GFP_KERNEL);
> +	if (IS_ERR(mfpwm))
> +		return PTR_ERR(mfpwm);
> +
> +	mfpwm->pdev =3D pdev;
> +
> +	spin_lock_init(&mfpwm->state_lock);
> +
> +	mfpwm->base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(mfpwm->base))
> +		return dev_err_probe(dev, PTR_ERR(mfpwm->base),
> +				     "failed to ioremap address\n");

Doesn't devm_platform_ioremap_resource() already have its own error message=
s?

> +
> +	mfpwm->pclk =3D devm_clk_get_prepared(dev, "pclk");
> +	if (IS_ERR(mfpwm->pclk))
> +		return dev_err_probe(dev, PTR_ERR(mfpwm->pclk),
> +				     "couldn't get and prepare 'pclk' clock\n");
> +
> +	mfpwm->irq =3D platform_get_irq(pdev, 0);
> +	if (mfpwm->irq < 0)
> +		return dev_err_probe(dev, mfpwm->irq, "couldn't get irq 0\n");
> +
> +	mfpwm->pwm_clk =3D devm_clk_get_prepared(dev, "pwm");
> +	if (IS_ERR(mfpwm->pwm_clk))
> +		return dev_err_probe(dev, PTR_ERR(mfpwm->pwm_clk),
> +				     "couldn't get and prepare 'pwm' clock\n");
> +
> +	mfpwm->osc_clk =3D devm_clk_get_prepared(dev, "osc");
> +	if (IS_ERR(mfpwm->osc_clk))
> +		return dev_err_probe(dev, PTR_ERR(mfpwm->osc_clk),
> +				     "couldn't get and prepare 'osc' clock\n");
> +
> +	mfpwm->rc_clk =3D devm_clk_get_prepared(dev, "rc");
> +	if (IS_ERR(mfpwm->rc_clk))
> +		return dev_err_probe(dev, PTR_ERR(mfpwm->rc_clk),
> +				     "couldn't get and prepare 'rc' clock\n");
> +

I'd do these in a loop.

> +	clk_mux_name =3D devm_kasprintf(dev, GFP_KERNEL, "%s_chosen", dev_name(=
dev));
> +	if (!clk_mux_name)
> +		return -ENOMEM;
> +
> +	mux_p_names[0] =3D __clk_get_name(mfpwm->pwm_clk);
> +	mux_p_names[1] =3D __clk_get_name(mfpwm->osc_clk);
> +	mux_p_names[2] =3D __clk_get_name(mfpwm->rc_clk);

Didn't you already request these by name?

> +	mfpwm->chosen_clk =3D clk_register_mux(dev, clk_mux_name, mux_p_names,

devm_clk_hw_register_mux()?

> +					     ARRAY_SIZE(mux_p_names),
> +					     CLK_SET_RATE_PARENT,
> +					     mfpwm->base + PWMV4_REG_CLK_CTRL,
> +					     PWMV4_CLK_SRC_SHIFT, PWMV4_CLK_SRC_WIDTH,
> +					     CLK_MUX_HIWORD_MASK, NULL);
> +	ret =3D clk_prepare(mfpwm->chosen_clk);
> +	if (ret) {
> +		dev_err(dev, "failed to prepare PWM clock mux: %pe\n",
> +			ERR_PTR(ret));

dev_err_probe()

> +		return ret;
> +	}
> +
> +	platform_set_drvdata(pdev, mfpwm);
> +
> +	ret =3D mfpwm_register_subdevs(mfpwm);
> +	if (ret) {
> +		dev_err(dev, "failed to register sub-devices: %pe\n",
> +			ERR_PTR(ret));

* Should we use 'dev_err_probe()' for this error path as well to correctly
handle deferred probing?

> +		return ret;
> +	}
> +
> +	return ret;
> +}
> +
> +static void rockchip_mfpwm_remove(struct platform_device *pdev)
> +{
> +	struct rockchip_mfpwm *mfpwm =3D to_rockchip_mfpwm(pdev);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&mfpwm->state_lock, flags);
> +
> +	if (mfpwm->chosen_clk) {
> +		clk_unprepare(mfpwm->chosen_clk);

No devm_* version available?

> +		clk_unregister_mux(mfpwm->chosen_clk);
> +	}
> +
> +	spin_unlock_irqrestore(&mfpwm->state_lock, flags);
> +}
> +
> +static const struct of_device_id rockchip_mfpwm_of_match[] =3D {
> +	{
> +		.compatible =3D "rockchip,rk3576-pwm",
> +	},

Single line.

> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_mfpwm_of_match);
> +
> +static struct platform_driver rockchip_mfpwm_driver =3D {
> +	.driver =3D {
> +		.name =3D KBUILD_MODNAME,

Use the raw string instead - this makes debugging challenging.

> +		.of_match_table =3D rockchip_mfpwm_of_match,
> +	},
> +	.probe =3D rockchip_mfpwm_probe,
> +	.remove =3D rockchip_mfpwm_remove,
> +};
> +module_platform_driver(rockchip_mfpwm_driver);
> +
> +MODULE_AUTHOR("Nicolas Frattaroli <nicolas.frattaroli@collabora.com>");
> +MODULE_DESCRIPTION("Rockchip MFPWM Driver");

FWIW, I don't like the name.

> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/mfd/rockchip-mfpwm.h b/include/linux/mfd/rockc=
hip-mfpwm.h

How much of this file is applicable to the core driver?

> new file mode 100644
> index 000000000000..dbf1588a4382
> --- /dev/null
> +++ b/include/linux/mfd/rockchip-mfpwm.h
> @@ -0,0 +1,470 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (c) 2025 Collabora Ltd.
> + *
> + * Common header file for all the Rockchip Multi-function PWM controller
> + * drivers that are spread across subsystems.
> + *
> + * Authors:
> + *     Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> + */
> +
> +#ifndef __SOC_ROCKCHIP_MFPWM_H__
> +#define __SOC_ROCKCHIP_MFPWM_H__
> +
> +#include <linux/bits.h>
> +#include <linux/clk.h>
> +#include <linux/hw_bitfield.h>
> +#include <linux/io.h>
> +#include <linux/spinlock.h>
> +
> +struct rockchip_mfpwm;
> +
> +/**
> + * struct rockchip_mfpwm_func - struct representing a single function dr=
iver
> + *
> + * @id: unique id for this function driver instance
> + * @base: pointer to start of MMIO registers
> + * @parent: a pointer to the parent mfpwm struct
> + * @irq: the shared IRQ gotten from the parent mfpwm device
> + * @core: a pointer to the clk mux that drives this channel's PWM
> + */
> +struct rockchip_mfpwm_func {
> +	int id;
> +	void __iomem *base;
> +	struct rockchip_mfpwm *parent;
> +	int irq;
> +	struct clk *core;
> +};
> +
> +/*
> + * PWMV4 Register Definitions
> + * --------------------------
> + *
> + * Attributes:
> + *  RW  - Read-Write
> + *  RO  - Read-Only
> + *  WO  - Write-Only
> + *  W1T - Write high, Self-clearing
> + *  W1C - Write high to clear interrupt
> + *
> + * Bit ranges to be understood with Verilog-like semantics,
> + * e.g. [03:00] is 4 bits: 0, 1, 2 and 3.
> + *
> + * All registers must be accessed with 32-bit width accesses only
> + */
> +
> +#define PWMV4_REG_VERSION		0x000
> +/*
> + * VERSION Register Description
> + * [31:24] RO  | Hardware Major Version
> + * [23:16] RO  | Hardware Minor Version
> + * [15:15] RO  | Reserved
> + * [14:14] RO  | Hardware supports biphasic counters
> + * [13:13] RO  | Hardware supports filters
> + * [12:12] RO  | Hardware supports waveform generation
> + * [11:11] RO  | Hardware supports counter
> + * [10:10] RO  | Hardware supports frequency metering
> + * [09:09] RO  | Hardware supports power key functionality
> + * [08:08] RO  | Hardware supports infrared transmissions
> + * [07:04] RO  | Channel index of this instance
> + * [03:00] RO  | Number of channels the base instance supports
> + */
> +
> +#define PWMV4_REG_ENABLE		0x004
> +/*
> + * ENABLE Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:06] RO  | Reserved
> + * [05:05] RW  | PWM Channel Counter Read Enable, 1 =3D enabled
> + */
> +#define PWMV4_CHN_CNT_RD_EN(v)		FIELD_PREP_WM16(BIT(5), (v))
> +/*
> + * [04:04] W1T | PWM Globally Joined Control Enable
> + *               1 =3D this PWM channel will be enabled by a global pwm =
enable
> + *               bit instead of the PWM Enable bit.
> + */
> +#define PWMV4_GLOBAL_CTRL_EN(v)		FIELD_PREP_WM16(BIT(4), (v))
> +/*
> + * [03:03] RW  | Force Clock Enable
> + *               0 =3D disabled, if the PWM channel is inactive then so =
is the
> + *               clock prescale module
> + */
> +#define PWMV4_FORCE_CLK_EN(v)		FIELD_PREP_WM16(BIT(3), (v))
> +/*
> + * [02:02] W1T | PWM Control Update Enable
> + *               1 =3D enabled, commits modifications of _CTRL, _PERIOD,=
 _DUTY and
> + *               _OFFSET registers once 1 is written to it
> + */
> +#define PWMV4_CTRL_UPDATE_EN		FIELD_PREP_WM16_CONST(BIT(2), 1)
> +/*
> + * [01:01] RW  | PWM Enable, 1 =3D enabled
> + *               If in one-shot mode, clears after end of operation
> + */
> +#define PWMV4_EN_MASK			BIT(1)
> +#define PWMV4_EN(v)			FIELD_PREP_WM16(PWMV4_EN_MASK, \
> +							((v) ? 1 : 0))
> +/*
> + * [00:00] RW  | PWM Clock Enable, 1 =3D enabled
> + *               If in one-shot mode, clears after end of operation
> + */
> +#define PWMV4_CLK_EN_MASK		BIT(0)
> +#define PWMV4_CLK_EN(v)			FIELD_PREP_WM16(PWMV4_CLK_EN_MASK, \
> +							((v) ? 1 : 0))
> +#define PWMV4_EN_BOTH_MASK		(PWMV4_EN_MASK | PWMV4_CLK_EN_MASK)
> +static inline __pure bool rockchip_pwm_v4_is_enabled(unsigned int val)
> +{
> +	return (val & PWMV4_EN_BOTH_MASK);
> +}
> +
> +#define PWMV4_REG_CLK_CTRL		0x008
> +/*
> + * CLK_CTRL Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:15] RW  | Clock Global Selection
> + *               0 =3D current channel scale clock
> + *               1 =3D global channel scale clock
> + */
> +#define PWMV4_CLK_GLOBAL(v)		FIELD_PREP_WM16(BIT(15), (v))
> +/*
> + * [14:13] RW  | Clock Source Selection
> + *               0 =3D Clock from PLL, frequency can be configured
> + *               1 =3D Clock from crystal oscillator, frequency is fixed
> + *               2 =3D Clock from RC oscillator, frequency is fixed
> + *               3 =3D Reserved
> + *               NOTE: The purpose for this clock-mux-outside-CRU constr=
uct is
> + *                     to let the SoC go into a sleep state with the PWM
> + *                     hardware still having a clock signal for IR input=
, which
> + *                     can then wake up the SoC.
> + */
> +#define PWMV4_CLK_SRC_PLL		0x0U
> +#define PWMV4_CLK_SRC_CRYSTAL		0x1U
> +#define PWMV4_CLK_SRC_RC		0x2U
> +#define PWMV4_CLK_SRC_SHIFT		13
> +#define PWMV4_CLK_SRC_WIDTH		2
> +/*
> + * [12:04] RW  | Scale Factor to apply to pre-scaled clock
> + *               1 <=3D v <=3D 256, v means clock divided by 2*v
> + */
> +#define PWMV4_CLK_SCALE_F(v)		FIELD_PREP_WM16(GENMASK(12, 4), (v))
> +/*
> + * [03:03] RO  | Reserved
> + * [02:00] RW  | Prescale Factor
> + *               v here means the input clock is divided by pow(2, v)
> + */
> +#define PWMV4_CLK_PRESCALE_F(v)		FIELD_PREP_WM16(GENMASK(2, 0), (v))
> +
> +#define PWMV4_REG_CTRL			0x00C
> +/*
> + * CTRL Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:09] RO  | Reserved
> + * [08:06] RW  | PWM Input Channel Selection
> + *               By default, the channel selects its own input, but writ=
ing v
> + *               here selects PWM input from channel v instead.
> + */
> +#define PWMV4_CTRL_IN_SEL(v)		FIELD_PREP_WM16(GENMASK(8, 6), (v))
> +/* [05:05] RW  | Aligned Mode, 0 =3D Valid, 1 =3D Invalid */
> +#define PWMV4_CTRL_UNALIGNED(v)		FIELD_PREP_WM16(BIT(5), (v))
> +/* [04:04] RW  | Output Mode, 0 =3D Left Aligned, 1 =3D Centre Aligned */
> +#define PWMV4_LEFT_ALIGNED		0x0U
> +#define PWMV4_CENTRE_ALIGNED		0x1U
> +#define PWMV4_CTRL_OUT_MODE(v)		FIELD_PREP_WM16(BIT(4), (v))
> +/*
> + * [03:03] RW  | Inactive Polarity for when the channel is either disabl=
ed or
> + *               has completed outputting the entire waveform in one-sho=
t mode.
> + *               0 =3D Negative, 1 =3D Positive
> + */
> +#define PWMV4_POLARITY_N		0x0U
> +#define PWMV4_POLARITY_P		0x1U
> +#define PWMV4_INACTIVE_POL(v)		FIELD_PREP_WM16(BIT(3), (v))
> +/*
> + * [02:02] RW  | Duty Cycle Polarity to use at the start of the waveform.
> + *               0 =3D Negative, 1 =3D Positive
> + */
> +#define PWMV4_DUTY_POL_SHIFT		2
> +#define PWMV4_DUTY_POL_MASK		BIT(PWMV4_DUTY_POL_SHIFT)
> +#define PWMV4_DUTY_POL(v)		FIELD_PREP_WM16(PWMV4_DUTY_POL_MASK, \
> +							(v))
> +/*
> + * [01:00] RW  | PWM Mode
> + *               0 =3D One-shot mode, PWM generates waveform RPT times
> + *               1 =3D Continuous mode
> + *               2 =3D Capture mode, PWM measures cycles of input wavefo=
rm
> + *               3 =3D Reserved
> + */
> +#define PWMV4_MODE_ONESHOT		0x0U
> +#define PWMV4_MODE_CONT			0x1U
> +#define PWMV4_MODE_CAPTURE		0x2U
> +#define PWMV4_MODE_MASK			GENMASK(1, 0)
> +#define PWMV4_MODE(v)			FIELD_PREP_WM16(PWMV4_MODE_MASK, (v))
> +#define PWMV4_CTRL_COM_FLAGS	(PWMV4_INACTIVE_POL(PWMV4_POLARITY_N) | \
> +				 PWMV4_DUTY_POL(PWMV4_POLARITY_P) | \
> +				 PWMV4_CTRL_OUT_MODE(PWMV4_LEFT_ALIGNED) | \
> +				 PWMV4_CTRL_UNALIGNED(true))
> +#define PWMV4_CTRL_CONT_FLAGS	(PWMV4_MODE(PWMV4_MODE_CONT) | \
> +				 PWMV4_CTRL_COM_FLAGS)
> +#define PWMV4_CTRL_CAP_FLAGS	(PWMV4_MODE(PWMV4_MODE_CAPTURE) | \
> +				 PWMV4_CTRL_COM_FLAGS)
> +
> +#define PWMV4_REG_PERIOD		0x010
> +/*
> + * PERIOD Register Description
> + * [31:00] RW  | Period of the output waveform
> + *               Constraints: should be even if CTRL_OUT_MODE is CENTRE_=
ALIGNED
> + */
> +
> +#define PWMV4_REG_DUTY			0x014
> +/*
> + * DUTY Register Description
> + * [31:00] RW  | Duty cycle of the output waveform
> + *               Constraints: should be even if CTRL_OUT_MODE is CENTRE_=
ALIGNED
> + */
> +
> +#define PWMV4_REG_OFFSET		0x018
> +/*
> + * OFFSET Register Description
> + * [31:00] RW  | Offset of the output waveform, based on the PWM clock
> + *               Constraints: 0 <=3D v <=3D (PERIOD - DUTY)
> + */
> +
> +#define PWMV4_REG_RPT			0x01C
> +/*
> + * RPT Register Description
> + * [31:16] RW  | Second dimensional of the effective number of waveform
> + *               repetitions. Increases by one every first dimensional t=
imes.
> + *               Value `n` means `n + 1` repetitions. The final number of
> + *               repetitions of the waveform in one-shot mode is:
> + *               `(first_dimensional + 1) * (second_dimensional + 1)`
> + * [15:00] RW  | First dimensional of the effective number of waveform
> + *               repetitions. Value `n` means `n + 1` repetitions.
> + */
> +
> +#define PWMV4_REG_FILTER_CTRL		0x020
> +/*
> + * FILTER_CTRL Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:10] RO  | Reserved
> + * [09:04] RW  | Filter window number
> + * [03:01] RO  | Reserved
> + * [00:00] RW  | Filter Enable, 0 =3D disabled, 1 =3D enabled
> + */
> +
> +#define PWMV4_REG_CNT			0x024
> +/*
> + * CNT Register Description
> + * [31:00] RO  | Current value of the PWM Channel 0 counter in pwm clock=
 cycles,
> + *               0 <=3D v <=3D 2^32-1
> + */
> +
> +#define PWMV4_REG_ENABLE_DELAY		0x028
> +/*
> + * ENABLE_DELAY Register Description
> + * [31:16] RO  | Reserved
> + * [15:00] RW  | PWM enable delay, in an unknown unit but probably cycles
> + */
> +
> +#define PWMV4_REG_HPC			0x02C
> +/*
> + * HPC Register Description
> + * [31:00] RW  | Number of effective high polarity cycles of the input w=
aveform
> + *               in capture mode. Based on the PWM clock. 0 <=3D v <=3D =
2^32-1
> + */
> +
> +#define PWMV4_REG_LPC			0x030
> +/*
> + * LPC Register Description
> + * [31:00] RW  | Number of effective low polarity cycles of the input wa=
veform
> + *               in capture mode. Based on the PWM clock. 0 <=3D v <=3D =
2^32-1
> + */
> +
> +#define PWMV4_REG_BIPHASIC_CNT_CTRL0	0x040
> +/*
> + * BIPHASIC_CNT_CTRL0 Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:10] RO  | Reserved
> + * [09:09] RW  | Biphasic Counter Phase Edge Selection for mode 0,
> + *               0 =3D rising edge (posedge), 1 =3D falling edge (negedg=
e)
> + * [08:08] RW  | Biphasic Counter Clock force enable, 1 =3D force enable
> + * [07:07] W1T | Synchronous Enable
> + * [06:06] W1T | Mode Switch
> + *               0 =3D Normal Mode, 1 =3D Switch timer clock and measure=
d clock
> + *               Constraints: "Biphasic Counter Mode" must be 0 if this =
is 1
> + * [05:03] RW  | Biphasic Counter Mode
> + *               0x0 =3D Mode 0, 0x1 =3D Mode 1, 0x2 =3D Mode 2, 0x3 =3D=
 Mode 3,
> + *               0x4 =3D Mode 4, 0x5 =3D Reserved
> + * [02:02] RW  | Biphasic Counter Clock Selection
> + *               0 =3D clock is from PLL and frequency can be configured
> + *               1 =3D clock is from crystal oscillator and frequency is=
 fixed
> + * [01:01] RW  | Biphasic Counter Continuous Mode
> + * [00:00] W1T | Biphasic Counter Enable
> + */
> +
> +#define PWMV4_REG_BIPHASIC_CNT_CTRL1	0x044
> +/*
> + * BIPHASIC_CNT_CTRL1 Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:11] RO  | Reserved
> + * [10:04] RW  | Biphasic Counter Filter Window Number
> + * [03:01] RO  | Reserved
> + * [00:00] RW  | Biphasic Counter Filter Enable
> + */
> +
> +#define PWMV4_REG_BIPHASIC_CNT_TIMER	0x048
> +/*
> + * BIPHASIC_CNT_TIMER Register Description
> + * [31:00] RW  | Biphasic Counter Timer Value, in number of biphasic cou=
nter
> + *               timer clock cycles
> + */
> +
> +#define PWMV4_REG_BIPHASIC_CNT_RES	0x04C
> +/*
> + * BIPHASIC_CNT_RES Register Description
> + * [31:00] RO  | Biphasic Counter Result Value
> + *               Constraints: Can only be read after INTSTS[9] is assert=
ed
> + */
> +
> +#define PWMV4_REG_BIPHASIC_CNT_RES_S	0x050
> +/*
> + * BIPHASIC_CNT_RES_S Register Description
> + * [31:00] RO  | Biphasic Counter Result Value with synchronised process=
ing
> + *               Can be read in real-time if BIPHASIC_CNT_CTRL0[7] was s=
et to 1
> + */
> +
> +#define PWMV4_REG_INTSTS		0x070
> +/*
> + * INTSTS Register Description
> + * [31:10] RO  | Reserved
> + * [09:09] W1C | Biphasic Counter Interrupt Status, 1 =3D interrupt asse=
rted
> + * [08:08] W1C | Waveform Middle Interrupt Status, 1 =3D interrupt asser=
ted
> + * [07:07] W1C | Waveform Max Interrupt Status, 1 =3D interrupt asserted
> + * [06:06] W1C | IR Transmission End Interrupt Status, 1 =3D interrupt a=
sserted
> + * [05:05] W1C | Power Key Match Interrupt Status, 1 =3D interrupt asser=
ted
> + * [04:04] W1C | Frequency Meter Interrupt Status, 1 =3D interrupt asser=
ted
> + * [03:03] W1C | Reload Interrupt Status, 1 =3D interrupt asserted
> + * [02:02] W1C | Oneshot End Interrupt Status, 1 =3D interrupt asserted
> + * [01:01] W1C | HPC Capture Interrupt Status, 1 =3D interrupt asserted
> + * [00:00] W1C | LPC Capture Interrupt Status, 1 =3D interrupt asserted
> + */
> +#define PWMV4_INT_LPC			BIT(0)
> +#define PWMV4_INT_HPC			BIT(1)
> +#define PWMV4_INT_LPC_W(v)		FIELD_PREP_WM16(PWMV4_INT_LPC, \
> +							((v) ? 1 : 0))
> +#define PWMV4_INT_HPC_W(v)		FIELD_PREP_WM16(PWMV4_INT_HPC, \
> +							((v) ? 1 : 0))
> +
> +#define PWMV4_REG_INT_EN		0x074
> +/*
> + * INT_EN Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:10] RO  | Reserved
> + * [09:09] RW  | Biphasic Counter Interrupt Enable, 1 =3D enabled
> + * [08:08] W1C | Waveform Middle Interrupt Enable, 1 =3D enabled
> + * [07:07] W1C | Waveform Max Interrupt Enable, 1 =3D enabled
> + * [06:06] W1C | IR Transmission End Interrupt Enable, 1 =3D enabled
> + * [05:05] W1C | Power Key Match Interrupt Enable, 1 =3D enabled
> + * [04:04] W1C | Frequency Meter Interrupt Enable, 1 =3D enabled
> + * [03:03] W1C | Reload Interrupt Enable, 1 =3D enabled
> + * [02:02] W1C | Oneshot End Interrupt Enable, 1 =3D enabled
> + * [01:01] W1C | HPC Capture Interrupt Enable, 1 =3D enabled
> + * [00:00] W1C | LPC Capture Interrupt Enable, 1 =3D enabled
> + */
> +
> +#define PWMV4_REG_INT_MASK		0x078
> +/*
> + * INT_MASK Register Description
> + * [31:16] WO  | Write Enable Mask for the lower half of the register
> + *               Set bit `n` here to 1 if you wish to modify bit `n >> 1=
6` in
> + *               the same write operation
> + * [15:10] RO  | Reserved
> + * [09:09] RW  | Biphasic Counter Interrupt Masked, 1 =3D masked
> + * [08:08] W1C | Waveform Middle Interrupt Masked, 1 =3D masked
> + * [07:07] W1C | Waveform Max Interrupt Masked, 1 =3D masked
> + * [06:06] W1C | IR Transmission End Interrupt Masked, 1 =3D masked
> + * [05:05] W1C | Power Key Match Interrupt Masked, 1 =3D masked
> + * [04:04] W1C | Frequency Meter Interrupt Masked, 1 =3D masked
> + * [03:03] W1C | Reload Interrupt Masked, 1 =3D masked
> + * [02:02] W1C | Oneshot End Interrupt Masked, 1 =3D masked
> + * [01:01] W1C | HPC Capture Interrupt Masked, 1 =3D masked
> + * [00:00] W1C | LPC Capture Interrupt Masked, 1 =3D masked
> + */
> +
> +static inline u32 mfpwm_reg_read(void __iomem *base, u32 reg)
> +{
> +	return readl(base + reg);
> +}
> +
> +static inline void mfpwm_reg_write(void __iomem *base, u32 reg, u32 val)
> +{
> +	writel(val, base + reg);
> +}

a) Please do not abstract for the sake of it.
b) Please use Regmap instead.

> +
> +/**
> + * mfpwm_acquire - try becoming the active mfpwm function device
> + * @pwmf: pointer to the calling driver instance's &struct rockchip_mfpw=
m_func
> + *
> + * mfpwm device "function" drivers must call this function before doing =
anything
> + * that either modifies or relies on the parent device's state, such as =
clocks,
> + * enabling/disabling outputs, modifying shared regs etc.
> + *
> + * The return statues should always be checked.
> + *
> + * All mfpwm_acquire() calls must be balanced with corresponding mfpwm_r=
elease()
> + * calls once the device is no longer making changes that affect other d=
evices,
> + * or stops producing user-visible effects that depend on the current de=
vice
> + * state being kept as-is. (e.g. after the PWM output signal is stopped)
> + *
> + * The same device function may mfpwm_acquire() multiple times while it =
already
> + * is active, i.e. it is re-entrant, though it needs to balance this wit=
h the
> + * same number of mfpwm_release() calls.
> + *
> + * Context: This function does not sleep.
> + *
> + * Return:
> + * * %0                 - success
> + * * %-EBUSY            - a different device function is active
> + * * %-EOVERFLOW        - the acquire counter is at its maximum
> + */
> +extern int __must_check mfpwm_acquire(struct rockchip_mfpwm_func *pwmf);
> +
> +/**
> + * mfpwm_release - drop usage of active mfpwm device function by 1
> + * @pwmf: pointer to the calling driver instance's &struct rockchip_mfpw=
m_func
> + *
> + * This is the balancing call to mfpwm_acquire(). If no users of the dev=
ice
> + * function remain, set the mfpwm device to have no active device functi=
on,
> + * allowing other device functions to claim it.
> + */
> +extern void mfpwm_release(const struct rockchip_mfpwm_func *pwmf);
> +
> +/**
> + * mfpwm_get_mode - get the current mode the hardware is in
> + * @pwmf: pointer to a &struct rockchip_mfpwm_func
> + *
> + * Check the hardware registers of the PWM hardware to determine which m=
ode it
> + * is currently operating in, if any.
> + *
> + * Returns:
> + *   - %-EINVAL if @pwmf is %NULL or an error pointer
> + *   - %-1 if the PWM hardware is off, regardless of operating mode
> + *   - %PWMV4_MODE_ONESHOT if PWM hardware is in one-shot output mode
> + *   - %PWMV4_MODE_CONT if PWM hardware is in continuous output mode
> + *   - %PWMV4_MODE_CAPTURE if PWM hardware is in capture mode
> + */
> +extern int mfpwm_get_mode(const struct rockchip_mfpwm_func *pwmf);
> +
> +#endif /* __SOC_ROCKCHIP_MFPWM_H__ */
> =

> -- =

> 2.53.0
> =


-- =

Lee Jones

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
