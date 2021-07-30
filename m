Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66987C4320E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 15:16:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32DA36044F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 15:16:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 32DA36044F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/Y7UoyamMGOMclO5qA5pv1Tzt0rk7G/75FdlfQCa0g=; b=H3PFFwncZ2gXmZ
	0GBl6kmC23nuLZ1rG/TjHaneh6nD7kmN7QNi6hczvo1V93BjKUAk/l5F1v/vGJXL8dInZrwyahMZ0
	fEEOQxMwrWRnWYYSXT5/B0PkqRFZSwwsfhGEAZRz8oUa7VqP6s1e3ZqVzFjufg8NjnnujpOItwfKv
	uLkMy8aKVVw5l6Hsa4ZcqsLvw7QxGPp2eZFEeuXkOHt7d3fMsJbDarFu/LlV7quMMiByxsSUNw1AH
	K1USEl9Ml2sqLcvQqOptWoWwAf2zEK0+1g/R7E4HN/gcLyHG3bKM1vbRlsNHYGms6XoEu4BqA0Bnt
	MWTjwXff7wmt/suHu/jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9UFD-009EHE-B2; Fri, 30 Jul 2021 15:16:15 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9UBw-009CxF-1J; Fri, 30 Jul 2021 15:12:54 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id e4so2868049ybn.2;
 Fri, 30 Jul 2021 08:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MFWb5ReFHG9Qg18Snz/SW+OnDom1C9cZbldQUCdkKvw=;
 b=o5kQpx8LrRodDLjVZrkuF/iDFyMtWzz9ew64tl4B5afEttXbhuZezzXzWft2zUP5Dy
 UcN2rCB/wGoYCpULEhl5jMLPgQZDa1fgwF9HREgevvbX6nd0C9nUrXKxWY3Nz25m0z94
 HQx+3zVqw3JWzep0eFZn340khidKXdzBvQGvX3jURa/0y2d8Dnlbq8bZePvtOoRAwLSr
 hAU/Rmg+fcqL8WdI6EJOq+qZ8HdKFh+2fzjtu6S+zZR9bqDDzC6Q1Dt+msn0q5BQpFnV
 QYLOWucAIZcqyvWvtnuXxgLwdMXa1QGlHfB/UvamVEXzjm8OAaG930RNcIewhNhrmOYr
 mDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MFWb5ReFHG9Qg18Snz/SW+OnDom1C9cZbldQUCdkKvw=;
 b=BiR7zMH4YFKstX5m155xTwxk2ehm84G3MLbJxfLveYlOCvS9ukPzJmv5DPT0ntL9Ln
 bJuc5EF7vZ/MjMBYOWBjUnBZxWxUoa7WI1iRRMWFl2CyNwD+DfsTwX1iF/LqDKBxpJkN
 hrrJ+mN2NnqhxQidwvo1f5/9JX3lXmAmAsnYYUyzfI5X7xqddNeLlINBEVyDu3ACds8f
 pQewpZHCcTaTYufq9KqKffOurKoObdps+CmjkvhlxWIoOi3tCNb9zQ4PNc+OkAgMILHr
 sD6mpkAMcr3n0hxdmI6bnK0xTVpk+8GDxvi+nuHwuX3ALsJsV6XjX8a93mBVGSOFvYfc
 KR8g==
X-Gm-Message-State: AOAM530PxnAs63dgfI3Cy27Sg42p0AacvXx4T/cgJoIKmXRVJHsjl/M9
 qDteqA304cYGIztk+J8zpspHzyt8zPQjwOqOAWE=
X-Google-Smtp-Source: ABdhPJwSbNJMRFq5P7d/BDOUhlE2m8nVbAT/REQJMtWGEvx4/xrIgzApd253SEcgaC/ectgWIbIlw72jEiK4DfRcLKE=
X-Received: by 2002:a25:2985:: with SMTP id p127mr3850822ybp.386.1627657970588; 
 Fri, 30 Jul 2021 08:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210730140210.728367-1-pgwipeout@gmail.com>
 <9bb0e700-eb12-af14-76d6-3a90d434339b@arm.com>
In-Reply-To: <9bb0e700-eb12-af14-76d6-3a90d434339b@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 30 Jul 2021 11:12:39 -0400
Message-ID: <CAMdYzYpXwWdddVFFFQ=0MY0zCOR++n3gurkg-q7Jtrr7X_icQA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_081252_151423_E9BF7032 
X-CRM114-Status: GOOD (  27.14  )
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

On Fri, Jul 30, 2021 at 10:33 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Peter,
>
> On 2021-07-30 15:02, Peter Geis wrote:
> > The rockpro64 had a fan node since
> > commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
> > however it was never tied into the thermal driver for automatic control.
> >
> > Add the links to the thermal node to permit the kernel to handle this
> > automatically.
> > Borrowed from the (rk3399-khadas-edge.dtsi).
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >
> > Changelog:
> > v2:
> > Adjusted fan setpoints for less noise
> >
> >   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 57 +++++++++++++++++++
> >   1 file changed, 57 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > index 6bff8db7d33e..0d79e6ae1c3a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > @@ -69,6 +69,7 @@ diy_led: led-1 {
> >
> >       fan: pwm-fan {
> >               compatible = "pwm-fan";
> > +             cooling-levels = <0 100 150 200 255>;
> >               #cooling-cells = <2>;
> >               fan-supply = <&vcc12v_dcin>;
> >               pwms = <&pwm1 0 50000 0>;
> > @@ -245,6 +246,34 @@ &cpu_b1 {
> >       cpu-supply = <&vdd_cpu_b>;
> >   };
> >
> > +&cpu_thermal {
> > +     trips {
> > +             cpu_warm: cpu_warm {
> > +                     temperature = <55000>;
> > +                     hysteresis = <2000>;
> > +                     type = "active";
> > +             };
>
> (Heh, it still tickles me to see these points I arbitrarily made up
> being faithfully copied around - I guess that means I got them right!)

On the rockpro64 these points work quite nicely, I compile the kernel
natively so I hit the first one easily.

>
> > +
> > +             cpu_hot: cpu_hot {
> > +                     temperature = <65000>;
> > +                     hysteresis = <2000>;
> > +                     type = "active";
> > +             };
> > +     };
> > +
> > +     cooling-maps {
> > +             map2 {
> > +                     trip = <&cpu_warm>;
> > +                     cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> > +             };
> > +
> > +             map3 {
> > +                     trip = <&cpu_hot>;
> > +                     cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> > +             };
> > +     };
> > +};
> > +
> >   &emmc_phy {
> >       status = "okay";
> >   };
> > @@ -281,6 +310,34 @@ &gpu {
> >       status = "okay";
> >   };
> >
> > +&gpu_thermal {
> > +     trips {
> > +             gpu_warm: gpu_warm {
> > +                     temperature = <55000>;
> > +                     hysteresis = <2000>;
> > +                     type = "active";
> > +             };
> > +
> > +             gpu_hot: gpu_hot {
> > +                     temperature = <65000>;
> > +                     hysteresis = <2000>;
> > +                     type = "active";
> > +             };
> > +     };
> > +
> > +     cooling-maps {
> > +             map1 {
> > +                     trip = <&gpu_warm>;
> > +                     cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> > +             };
> > +
> > +             map2 {
> > +                     trip = <&gpu_hot>;
> > +                     cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> > +             };
> > +     };
> > +};
>
> Unless something's changed since commit a793e19c15f2 ("arm64: dts:
> rockchip: Fix NanoPC-T4 cooling maps"), multiple cooling maps don't
> actually share a singe cooling device properly[1]. The Khadas Edge DT
> dates from right around the same time so I guess it crossed over with
> that discussion and never got fixed.
>
> In hindsight, I do seem to remember my fan being a bit more jumpy around
> the trip points than it is today, which may well have been the two maps
> fighting each other...
>
> Robin.
>
> [1]
> https://lore.kernel.org/linux-rockchip/55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org/

Interesting, so instead of "or-ing" the signals to the fan, the
thermal just fights with itself?
That explains interesting states where it can't decide if it wants to
run or not.

I'll pull the gpu portion and submit a v3, thanks!

>
> > +
> >   &i2c0 {
> >       clock-frequency = <400000>;
> >       i2c-scl-rising-time-ns = <168>;
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
