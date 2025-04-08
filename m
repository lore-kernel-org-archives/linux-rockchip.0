Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59826C36010
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 20:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zlLel3I5kY0IFb4S2QfGWazPb6xjBxkk7LSywd1QRI=; b=dF/MQNvXInHorm
	ui76AT+cFpI09D60BXTbSkH6M72bTUpFCNK8nYDYXpjwCpEQuVlk1ab7KeV3JRoiJEo3+bXZlTPKt
	NI/LlXjUUXqYt30+SSFdqFcl/npo6mCjbRxpy8vkYJCW0l2gBxKXzgnizl++carYyjs7GeV94DDP7
	BjjBhbDmy4b9XPhKV/Q0KWJfjVTtJyoiy36uQJ3+u2W1qNZAcDeptgg4hnZc8U8MgWCB0o9dxNZ/6
	XR9jP4bTTTsedE5yn0VrTz8x3mROPsrige4FuXw86e2N7Qdl99F2chNRK1BifO/2o0K6g3aampftn
	oT61AuASq3JpUNKEbrhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2FGU-00000005J6c-0Slm;
	Tue, 08 Apr 2025 20:09:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2FA8-00000005IaR-280h;
	Tue, 08 Apr 2025 20:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FxiVMMavbeVJat0Fg13/bdPyEQi5kd3dq3ZqRtNTT1k=; b=QOnjGrf7X9PrCbh55TklsvWBSV
	RpDtdVx3YJhCSYVlvWD8r5SitRALVtYyrVe4AjNSmP0rf0XqJROu31YDlFYA/9R9Oequlznuxc+Ka
	hASbdH7877Vj9UPZ8la+BO50aButo8PYEaf6wpSUiFylT01JejCZbV+4F3tim+4ss9RnrlBURjL+5
	hd2oQW0TN9pAP9/KHhvVTA87RPnAX37KJRkgV8bH3Y9BVRjAEU7GUkFHp/GgIJfrOB+II2JQ2GApD
	u5V6Xu8Nj4TXSsvNybh4kDPTmhuxsgUd5uVb8JzO+AuZ5UE10Dcvbkl4NFm4jRRXfBZc1suO3l8J4
	mWFi6LWg==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2F9z-00023n-2e; Tue, 08 Apr 2025 22:03:03 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 4/7] soc: rockchip: add mfpwm driver
Date: Tue, 08 Apr 2025 22:03:01 +0200
Message-ID: <5559308.Sb9uPGUboI@diego>
In-Reply-To: <20250408-rk3576-pwm-v1-4-a49286c2ca8e@collabora.com>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <20250408-rk3576-pwm-v1-4-a49286c2ca8e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_130312_710284_21C05F0A 
X-CRM114-Status: GOOD (  34.85  )
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
Cc: linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

not a full review, just me making a first pass.

> +unsigned long mfpwm_clk_get_rate(struct rockchip_mfpwm *mfpwm)
> +{
> +	if (!mfpwm || !mfpwm->chosen_clk)
> +		return 0;
> +
> +	return clk_get_rate(mfpwm->chosen_clk);
> +}
> +EXPORT_SYMBOL_NS_GPL(mfpwm_clk_get_rate, "ROCKCHIP_MFPWM");

aren't you just re-implemeting a clk-mux with the whole chosen-clk
mechanism? See drivers/clk/clk-mux.c, so in theory you should be
able to just do a clk_register_mux(...) similar to for example
sound/soc/samsung/i2s.c .


> +
> +__attribute__((nonnull))
> +static int mfpwm_do_acquire(struct rockchip_mfpwm_func *pwmf)
> +{
> +	struct rockchip_mfpwm *mfpwm = pwmf->parent;
> +	unsigned int cnt;
> +
> +	if (mfpwm->active_func && pwmf->id != mfpwm->active_func->id)
> +		return -EBUSY;
> +
> +	if (!mfpwm->active_func)
> +		mfpwm->active_func = pwmf;
> +
> +	if (!check_add_overflow(mfpwm->acquire_cnt, 1, &cnt)) {
> +		mfpwm->acquire_cnt = cnt;
> +	} else {
> +		WARN(1, "prevented acquire counter overflow in %s\n", __func__);

dev_warn, as you have the mfpwm pointing to a pdev?

> +		return -EOVERFLOW;
> +	}
> +
> +	dev_dbg(&mfpwm->pdev->dev, "%d acquired mfpwm, acquires now at %u\n",
> +		pwmf->id, mfpwm->acquire_cnt);
> +
> +	return clk_enable(mfpwm->pclk);
> +}

> +/**
> + * mfpwm_get_clk_src - read the currently selected clock source
> + * @mfpwm: pointer to the driver's private &struct rockchip_mfpwm instance
> + *
> + * Read the device register to extract the currently selected clock source,
> + * and return it.
> + *
> + * Returns:
> + * * the numeric clock source ID on success, 0 <= id <= 2
> + * * negative errno on error
> + */
> +static int mfpwm_get_clk_src(struct rockchip_mfpwm *mfpwm)
> +{
> +	u32 val;
> +
> +	clk_enable(mfpwm->pclk);
> +	val = mfpwm_reg_read(mfpwm->base, PWMV4_REG_CLK_CTRL);
> +	clk_disable(mfpwm->pclk);
> +
> +	return (val & PWMV4_CLK_SRC_MASK) >> PWMV4_CLK_SRC_SHIFT;
> +}
> +
> +static int mfpwm_choose_clk(struct rockchip_mfpwm *mfpwm)
> +{
> +	int ret;
> +
> +	ret = mfpwm_get_clk_src(mfpwm);
> +	if (ret < 0) {
> +		dev_err(&mfpwm->pdev->dev, "couldn't get current clock source: %pe\n",
> +			ERR_PTR(ret));
> +		return ret;
> +	}
> +	if (ret == PWMV4_CLK_SRC_CRYSTAL) {
> +		if (mfpwm->osc_clk) {
> +			mfpwm->chosen_clk = mfpwm->osc_clk;
> +		} else {
> +			dev_warn(&mfpwm->pdev->dev, "initial state wanted 'osc' as clock source, but it's unavailable. Defaulting to 'pwm'.\n");
> +			mfpwm->chosen_clk = mfpwm->pwm_clk;
> +		}
> +	} else {
> +		mfpwm->chosen_clk = mfpwm->pwm_clk;
> +	}
> +
> +	return clk_rate_exclusive_get(mfpwm->chosen_clk);
> +}
>
> +/**
> + * mfpwm_switch_clk_src - switch between PWM clock sources
> + * @mfpwm: pointer to &struct rockchip_mfpwm driver data
> + * @clk_src: one of either %PWMV4_CLK_SRC_CRYSTAL or %PWMV4_CLK_SRC_PLL
> + *
> + * Switch between clock sources, ``_exclusive_put``ing the old rate,
> + * ``clk_rate_exclusive_get``ing the new one, writing the registers and
> + * swapping out the &struct_rockchip_mfpwm->chosen_clk.
> + *
> + * Returns:
> + * * %0        - Success
> + * * %-EINVAL  - A wrong @clk_src was given or it is unavailable
> + * * %-EBUSY   - Device is currently in use, try again later
> + */
> +__attribute__((nonnull))
> +static int mfpwm_switch_clk_src(struct rockchip_mfpwm *mfpwm,
> +					  unsigned int clk_src)
> +{
> +	struct clk *prev;
> +	int ret = 0;
> +
> +	scoped_cond_guard(spinlock_try, return -EBUSY, &mfpwm->state_lock) {
> +		/* Don't fiddle with any of this stuff if the PWM is on */
> +		if (mfpwm->active_func)
> +			return -EBUSY;
> +
> +		prev = mfpwm->chosen_clk;
> +		ret = mfpwm_get_clk_src(mfpwm);
> +		if (ret < 0)
> +			return ret;
> +		if (ret == clk_src)
> +			return 0;
> +
> +		switch (clk_src) {
> +		case PWMV4_CLK_SRC_PLL:
> +			mfpwm->chosen_clk = mfpwm->pwm_clk;
> +			break;
> +		case PWMV4_CLK_SRC_CRYSTAL:
> +			if (!mfpwm->osc_clk)
> +				return -EINVAL;
> +			mfpwm->chosen_clk = mfpwm->osc_clk;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +
> +		clk_enable(mfpwm->pclk);
> +
> +		mfpwm_reg_write(mfpwm->base, PWMV4_REG_CLK_CTRL,
> +				PWMV4_CLK_SRC(clk_src));
> +		clk_rate_exclusive_get(mfpwm->chosen_clk);
> +		if (prev)
> +			clk_rate_exclusive_put(prev);
> +
> +		clk_disable(mfpwm->pclk);
> +	}
> +
> +	return ret;
> +}

ok, the relevant part might be the 
	/* Don't fiddle with any of this stuff if the PWM is on */
thing, which will require special set_rate operation, but in general I
think, if it ticks like a clock, it probably should be a real clock ;-) .


> +static ssize_t chosen_clock_show(struct device *dev,
> +				 struct device_attribute *attr, char *buf)
> +{
> +	struct rockchip_mfpwm *mfpwm = dev_get_drvdata(dev);
> +	unsigned long clk_src = 0;
> +
> +	/*
> +	 * Why the weird indirection here? I have the suspicion that if we
> +	 * emitted to sysfs with the lock still held, then a nefarious program
> +	 * could hog the lock by somehow forcing a full buffer condition and
> +	 * then refusing to read from it. Don't know whether that's feasible
> +	 * to achieve in reality, but I don't want to find out the hard way
> +	 * either.
> +	 */
> +	scoped_guard(spinlock, &mfpwm->state_lock) {
> +		if (mfpwm->chosen_clk == mfpwm->pwm_clk)
> +			clk_src = PWMV4_CLK_SRC_PLL;
> +		else if (mfpwm->osc_clk && mfpwm->chosen_clk == mfpwm->osc_clk)
> +			clk_src = PWMV4_CLK_SRC_CRYSTAL;
> +		else
> +			return -ENODEV;
> +	}
> +
> +	if (clk_src == PWMV4_CLK_SRC_PLL)
> +		return sysfs_emit(buf, "pll\n");
> +	else if (clk_src == PWMV4_CLK_SRC_CRYSTAL)
> +		return sysfs_emit(buf, "crystal\n");
> +
> +	return -ENODEV;
> +}

which brings me to my main point of contention. Why does userspace
need to select a clock source for the driver via sysfs.

Neither the commit message nor the code does seem to explain that,
or I'm just blind - which is also a real possibility.

In general I really think, userspace should not need to care about if
a PLL or directly the oscillator is used a clock input.
I assume which is needed results from some runtime factor, so the
driver should be able to select the correct one?

A mux-clock could ust use clk_mux_determine_rate_flags() to select
the best parent depending on a requested rate instead.


> +static ssize_t chosen_clock_store(struct device *dev,
> +				  struct device_attribute *attr,
> +				  const char *buf, size_t count)
> +{
> +	struct rockchip_mfpwm *mfpwm = dev_get_drvdata(dev);
> +	int ret;
> +
> +	if (sysfs_streq(buf, "pll")) {
> +		ret = mfpwm_switch_clk_src(mfpwm, PWMV4_CLK_SRC_PLL);
> +		if (ret)
> +			return ret;
> +		return count;
> +	} else if (sysfs_streq(buf, "crystal")) {
> +		ret = mfpwm_switch_clk_src(mfpwm, PWMV4_CLK_SRC_CRYSTAL);
> +		if (ret)
> +			return ret;
> +		return count;
> +	} else {
> +		return -EINVAL;
> +	}
> +}
> +
> +static DEVICE_ATTR_RW(chosen_clock);
> +
> +static ssize_t available_clocks_show(struct device *dev,
> +				     struct device_attribute *attr, char *buf)
> +{
> +	struct rockchip_mfpwm *mfpwm = dev_get_drvdata(dev);
> +	ssize_t size = 0;
> +
> +	size += sysfs_emit_at(buf, size, "pll\n");
> +	if (mfpwm->osc_clk)
> +		size += sysfs_emit_at(buf, size, "crystal\n");
> +
> +	return size;
> +}
> +
> +static DEVICE_ATTR_RO(available_clocks);
> +
> +static struct attribute *mfpwm_attrs[] = {
> +	&dev_attr_available_clocks.attr,
> +	&dev_attr_chosen_clock.attr,
> +	NULL,
> +};

Not understanding the need for the sysfs stuff was my main point this
evening :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
