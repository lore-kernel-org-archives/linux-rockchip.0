Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-20.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75CAEC4708B
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 11:00:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A31460241
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 11:00:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A31460241
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNoi9c5AaCwMn0MBRKpkJ3SczvjKHtHCG0SFPtitKeE=; b=rNfUVvuXX2DIlo
	69UEx947kY9GPnB5Y28bmy724C77ARlc+PxXroqrHKDUi6hpnd2ExQHyWfAOQJeH/sa+DnNGwee/M
	56ISHXsPSF9oBG4L2vUsrLkCWqDJExptWk7JM/P1lSZ1SOvP6CG1Nrz/ntedpOyYgyWINjHTvjMB2
	6b0SumOzCn0FVCnYnb8FxSTwnVM4OnSi4XhovazG4g8Fak8iYR3ZkddXmt376lKXuipfdmTD+A01o
	oH5JUXoSGxvJulye4ZT27jh4t8OzTJwkzTcnfOuNck4HK+bhCPw9G3TZvfA5Jd3nnFtBDU0ToH+nv
	lwLI2n+CMl6YoQPwVwWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmDk7-0052FD-Cc; Thu, 27 May 2021 10:59:59 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmDk2-0052Ch-Uj
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 10:59:58 +0000
Received: by mail-pj1-x102a.google.com with SMTP id
 gb21-20020a17090b0615b029015d1a863a91so2115026pjb.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 May 2021 03:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R5N5oZ+1APogmyoyRV7B7KuQxfti3iHISxAjw6QGonM=;
 b=CvDQzkMeN2S0owB/PTz9PlRw2l4ooxZvPjlEY7xClUuZ6/JPfMGrjoV1FI+iVpOGQl
 bVvA44bDOgoeCsjVT/QGdMdHzg/9cliLi6sm91pd2oHHu7GrjdBxLw++800jHZBMeAKk
 Zbs3NZa/1sBPlD/mCwQNBF7U7XBK5EbRG1Nzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R5N5oZ+1APogmyoyRV7B7KuQxfti3iHISxAjw6QGonM=;
 b=dysPWayEQ/pSbt6CNBnB5aMjX17CGxfDFN/jh5uMROMkMtzaPrFyCnB12UlqxO1nMu
 d0dYjB2hK1v1PmNFVLMtXxPic8Vd02Yu+9B4FrffCMSimMiRbdlXz5NYMfKRFTEySDdz
 YZILDzHJDgufp/SLmBOipi1JXqIQ4TRydzP/PWyILwDBWSY27NlHJABFAVl+QQJJbEw3
 geo4PyNfHv1R0oyWr0h1x5Ft0fKyMl2LrlFj4wW7bNBZviZvJ8BrPB6nVD5YbfxMNTwk
 hhEWfBz/AuPAPaTjQ5Qz60MK4iCEEo8rtVw33YkthLke+G+FI1n3TfsUzkVR5NV4/7LZ
 QKAg==
X-Gm-Message-State: AOAM531QpxGz/+5vg22/e5O+0oPaBYktnOZOW0b/gUMIcKhqH7F10Cz+
 0qfcLYmYvTSnRrJ3RP10tPqpog==
X-Google-Smtp-Source: ABdhPJxA5qxO0aqkxFVJOXW+GvbA5Thb7DzFCwERhtJ5wS1n3604FSkv7GIv16K+dcS/CGZ8nIZoNw==
X-Received: by 2002:a17:90b:341:: with SMTP id
 fh1mr3162306pjb.136.1622113193528; 
 Thu, 27 May 2021 03:59:53 -0700 (PDT)
Received: from 7698f5da3a10 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id m1sm1747391pgd.78.2021.05.27.03.59.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 May 2021 03:59:53 -0700 (PDT)
Date: Thu, 27 May 2021 10:59:47 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210527105943.GA441@7698f5da3a10>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_035955_914059_355A3F34 
X-CRM114-Status: GOOD (  38.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, May 26, 2021 at 02:41:00PM -0400, Peter Geis wrote:
> On Wed, May 26, 2021 at 12:23 PM Rudi Heitbaum <rudi@heitbaum.com> wrote:
> >
> >
> > For rk3399pro boards the tcs4526 regulator supports the vdd_gpu
> > regulator. The tcs4526 regulator has a chip id of <0>.
> > Add the compatibile tcs,tcs4526
> >
> > without this patch, the dmesg output is:
> >   fan53555-regulator 0-0010: Chip ID 0 not supported!
> >   fan53555-regulator 0-0010: Failed to setup device!
> >   fan53555-regulator: probe of 0-0010 failed with error -22
> > with this patch, the dmesg output is:
> >   vdd_gpu: supplied by vcc5v0_sys
> >
> > The regulators are described as:
> > - Dedicated power management IC TCS4525
> > - Lithium battery protection chip TCS4526
> >
> > This has been tested with a Radxa Rock Pi N10.
> >
> > Fixes: f9028dcdf589 ("regulator: fan53555: only bind tcs4525 to correct chip id")
> > Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
> 
> Considering the TCS4525 wasn't supported prior to its recent addition,
> and the TCS4526 wasn't supported by the driver at all, this isn't a
> fix but a feature addition.
> Binding only to the correct device ID exists for this reason, to
> prevent unsafe voltage setting.

Hi Peter, thanks for the detailed feedback. You are quite right (I had
started using the tcs4525 patch as a tcs452x patch. I'll update that in
the resubmission.

> I also don't see the TCS4525/TCS4526 regulators in the current
> linux-next device tree for the N10.

I have a working rk3399pro-vmarc-som.dtsi that I intend to submit, but
wanted to get clarity on the tcs452x first. I have included it at the
bottom of this email.

> > ---
> >  drivers/regulator/fan53555.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
> > index 2695be617373..ddab9359ea20 100644
> > --- a/drivers/regulator/fan53555.c
> > +++ b/drivers/regulator/fan53555.c
> > @@ -90,6 +90,7 @@ enum {
> >  };
> >
> >  enum {
> > +       TCS4525_CHIP_ID_00 = 0,
> >         TCS4525_CHIP_ID_12 = 12,
> 
> This isn't a TCS4525, but a TCS4526.

I'll update this to TCS4526_CHIP_ID_00

> >  };
> >
> > @@ -373,6 +374,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
> >  static int fan53526_voltages_setup_tcs(struct fan53555_device_info *di)
> >  {
> >         switch (di->chip_id) {
> > +       case TCS4525_CHIP_ID_00:
> >         case TCS4525_CHIP_ID_12:
> >                 di->slew_reg = TCS4525_TIME;
> >                 di->slew_mask = TCS_SLEW_MASK;
> > @@ -564,6 +566,9 @@ static const struct of_device_id __maybe_unused fan53555_dt_ids[] = {
> >         }, {
> >                 .compatible = "tcs,tcs4525",
> >                 .data = (void *)FAN53526_VENDOR_TCS
> > +       }, {
> > +               .compatible = "tcs,tcs4526",
> > +               .data = (void *)FAN53526_VENDOR_TCS
> 
> Since you aren't adding any functional code, is there a particular
> reason you can't just add the chip id and simply use the tcs4525
> compatible?
> This will prevent you from needing to modify the dt-bindings as well.

In and earlier commit to the BSP kernel the proposal was to rename to
tcs452x. ref:
https://github.com/CK-LINUX/kernel/commit/b3bbe8018c56362feed1e49c8d243a8dbcdcc07b

I chose to follow the example of silergy,syr827 and silergy,syr828 for
tcs4526 (given I made the mistake in assuming that support for tcs4525
meant support for tcs4525.) This would maintain consistency of naming of
tcs4526 throughout the source. Is that ok?

> >         },
> >         { }
> >  };
> > @@ -672,6 +677,9 @@ static const struct i2c_device_id fan53555_id[] = {
> >         }, {
> >                 .name = "tcs4525",
> >                 .driver_data = FAN53526_VENDOR_TCS
> > +       }, {
> > +               .name = "tcs4526",
> > +               .driver_data = FAN53526_VENDOR_TCS
> >         },
> >         { },
> >  };
> > --
> > 2.29.2
> >

Below is the draft patch for the dtsi includeing the 2 missing regulators and
to enable the GPU on the Radxa Rock Pi N10 which utilises the VMARC RK3399Pro SoM.

This will be submitted seperately to the "tcs4526 regulator" patch.

--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi	2021-05-08 09:11:59.000000000 +0000
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi	2021-05-08 09:11:59.000000000 +0000
@@ -57,6 +57,22 @@
 	pinctrl-0 = <&hdmi_cec>;
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	assigned-clocks = <&cru ACLK_GPU>;
+	assigned-clock-rates = <200000000>;
+	status = "okay";
+	/delete-property/ operating-points-v2;
+};
+
+&vopl {
+	status = "disabled";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <30>;
@@ -289,6 +288,50 @@
 			};
 		};
 	};
+
+	vdd_cpu_b: tcs4525@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel1_gpio>;
+		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-initial-state = <3>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: tcs4526@10 {
+		compatible = "tcs,tcs4526";
+		reg = <0x10>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel2_gpio>;
+		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <735000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-ramp-delay = <1000>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-initial-state = <3>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
 };
+
+&i2s2 {
+	status = "okay";
+};
 
 &i2c1 {
@@ -381,6 +380,29 @@
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
 		};
+		vsel1_gpio: vsel1-gpio {
+			rockchip,pins =
+				<1 RK_PC1 0 &pcfg_pull_down>;
+		};
+		vsel2_gpio: vsel2-gpio {
+			rockchip,pins =
+				<1 RK_PB6 0 &pcfg_pull_down>;
+		};
+
+		soc_slppin_gpio: soc-slppin-gpio {
+			rockchip,pins =
+				<1 RK_PA5 0 &pcfg_output_low>;
+		};
+
+		soc_slppin_slp: soc-slppin-slp {
+			rockchip,pins =
+				<1 RK_PA5 1 &pcfg_pull_down>;
+		};
+
+		soc_slppin_rst: soc-slppin-rst {
+			rockchip,pins =
+				<1 RK_PA5 2 &pcfg_pull_none>;
+		};
 	};
 
 	sdio-pwrseq {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
