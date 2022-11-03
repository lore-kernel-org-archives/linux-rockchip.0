Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D862FC43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Nov 2022 17:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DptD0cXsI6SV4N6gsZ2kdp3NZs5OJU6RZZmSrmPQ9rA=; b=alARaIDXATHJmN
	CdGxEF0NNTjgjfUZCkDN7zHuUWIXRouBVkKfI2zrAmmPuUG1EOzBD+StgMBohqbsA5L2QPxU0ZYWK
	fenacZju6jvDuv1ufEUxVZ4ABIWfNN0G1Mz1078v5rLj7YWw254aEgvCOx7dr+l5aMDb9w+uX+Xv1
	RI1usISQGNmSEcUlxwRXZqzNkWoziIj/d3i9s0FVWiup2ShaB3sceADhfhmZ5zEQ2HIhWqthr9YYp
	sJpGFlq+eMv9tCWJJ9bTifFOzORQ28EXBUllyV2cgdYqtZeor4GmwWH/Cn7YIlfUQDm9/NoeXoBqD
	l7O+vjKrwS3Kn0kIeFJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqduv-0012MH-6z; Thu, 03 Nov 2022 17:22:13 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqdq2-0010Or-Ph; Thu, 03 Nov 2022 17:17:12 +0000
Received: by mail-pj1-x102b.google.com with SMTP id h14so2280529pjv.4;
        Thu, 03 Nov 2022 10:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jMLMgTZnXG3qE89gvGIdlg9xWS4kfSGRYT+JSAUdRFU=;
        b=BgB2QdomzPzge4VbrqFYuwzmD3h1QhxfbsY4GqKYtF5a7n/NJTfmNYMPOXy/hbqOWI
         UOogT5U8gyicW6RQR/+0gY1M5xA06FG71qdz5iPYkpXjkd8COGd6E2KRPV/wJhK/hn0T
         91kPejzsqsK6/+/s8S3Ya4F6JXYNJCFwcE0RmL9LN4LgpLulk8sGgCby2gcfyRjPHGoe
         dNGSpDbtye5tFxt1gNOkjao1EjHsmyUC3l2C0CqCKRCZwq9rWrfOQdV4Um3RsRQ6Lvq/
         98nWPLYjLm7G2YQ3inoFWS4IrlRIm5o311J2uVLnqg75THYPSf2Ql8OZ0HAVZrMVTTcN
         6ltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jMLMgTZnXG3qE89gvGIdlg9xWS4kfSGRYT+JSAUdRFU=;
        b=wK57fE1W0JlMGNqDnV4KMfVHO6NhuOSDKnqd8Hx0/TYCNL2KnO9Qdd8shxnvXdXN1X
         7PZ3QiSWvci2dzLIlBe3QOeZZ5LX039QsY3PkcOnzqC8lopS0ZOjbTyqMNWT8jHzwbud
         CCXH/JU0IeMRvIogjsQNlMw9tv8P/oP+NJ87aR2Z8ZvK4ybflZT+Psg0Nv8fPuvBIqkM
         dCVH3QuSMlDn4bX1sRDqBLnPDLlYUXEUg2AuQx5HEhdTmEHRtryQuY+HHEqvLNdR6k97
         PhNInb0zDdg6yV2STRKdHCfbhR9EGlwNozrdJ8FOFXifD99hA/Eo79bd2D/blYNVG3Wb
         C1lQ==
X-Gm-Message-State: ACrzQf263uaRd3t5M54kIp+dB4021R1eGiGi2Z2XpII0ba43tqVfFkGK
	lj7OFssk4sy31xSv3tXqV2axo/5xKOo=
X-Google-Smtp-Source: AMsMyM4KXsk3pLBuAZJaQZE/nBZ7r1WJ0vPUvs2KpVzcs1jk2iH8wiq9zdv9D3GGG8xHFXhOLj6fbw==
X-Received: by 2002:a17:90b:70a:b0:211:f163:ddff with SMTP id s10-20020a17090b070a00b00211f163ddffmr31949799pjz.202.1667495827938;
        Thu, 03 Nov 2022 10:17:07 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:a6ae:11ff:fe11:fcc3])
        by smtp.gmail.com with ESMTPSA id d14-20020aa797ae000000b0056ddd2ac8f1sm960026pfq.211.2022.11.03.10.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 10:17:07 -0700 (PDT)
Date: Thu, 3 Nov 2022 10:17:03 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: hadess@hadess.net, hdegoede@redhat.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, wens@csie.org, jernej.skrabec@gmail.com,
	samuel@sholland.org, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@somainline.org, heiko@sntech.de,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [RFC PATCH 0/7] fix reset line polarity for Goodix touchscreen
 controllers
Message-ID: <Y2P3jyz1L0yKsCk8@google.com>
References: <20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_101710_896296_B5C09D36 
X-CRM114-Status: GOOD (  26.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Quentin,

On Thu, Nov 03, 2022 at 03:43:45PM +0100, Quentin Schulz wrote:
> The Goodix touchscreen controller has a reset line active low. It happens to
> also be used to configure its i2c address at runtime. If the reset line is
> incorrectly asserted, the address will be wrongly configured. This cost me a few
> hours yesterday, trying to figure out why the touchscreen wouldn't work.
> 
> The driver is "asserting" this reset GPIO by setting its output to 0, probably
> to reflect the physical state of the line. However, this relies on the fact that
> the Device Tree node setting the reset line polarity to active high, which is
> incorrect since the reset is active low in hardware.
> 
> To fix this inconsistency, the polarity is inverted to not confuse the user
> about the reset line polarity.
> 
> This is marked as RFC because it breaks DT compatibility and also the Google
> CoachZ device is the only one with an active low polarity for the reset GPIO
> in DT, so not sure if it is a typo or its state is actually inverted (so GPIO
> active high to drive the reset line low). Changing it anyways since the polarity
> is changed in the driver so it needs to be changed in DT too.

I would like to get gpio handling into a better shape, but the above is
completely incorrect. "goodix,gt7375p" that is used in CoachZ and other
Google designs is using i2c-hid compatible firmware and is not being
driven by drivers/input/touchscreen/goodix.c driver, but rather by
i2c-hid + hid-multitouch combo.

You should not be touching arch/arm64/boot/dts/qcom/sc7180* at all.

> 
> I'm all ears if there's a better way to handle this. We could document this in
> the DT binding but this kinda breaks the promise we make that the DT is not
> bound to the driver implementation.

I think Hans has already voiced concerns about x86 devices using these
devices and having GPIO data encoded in the driver, so we need to
accommodate them. On DT side we can add a quirk to gpiolib-of.c to
[maybe temporary] override polarity of reset GPIO lines, then update DTS
to match the reality.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
