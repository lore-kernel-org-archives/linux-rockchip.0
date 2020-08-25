Return-Path: <SRS0=C56+=CD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75098C433E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 15:50:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 449A92072D
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 15:50:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="csvuG9+S";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="iepPZMUx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 449A92072D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n4N2XnteHkrTHkjogX1E347lpUCwvdfkAz5KlOZf4LY=; b=csvuG9+Sul1W+CobGNkx1ERXT
	F+rx5/ivQF2S0qCfiUYbPBL1COlRbQ5ZdwDQVuELDOGiqNfzx8H9vaOfX9u+gb9dKiwj+bTzkGctE
	7HjQSNKXdlSzgCW0EQLu+0S4+7SLFMO/kI70KUhSowdeHwbK9kCBIXFIoQh1/iWGNSINu8jeOVSlp
	lpJpgGO0G9a2WKFQWuJteBMjmSAf7iWxpWnmq9m6wcH0fh+19a8Z/J9qRJ4zssKBE9S9+NK1rkEaH
	ZxhzgvyRjBe6JDMfisHyJ7PEDYDBwIEOYeXzLfFNKJZypvgtd+cUR0xJbaR3z3EnRbgNntFxk+CVt
	7jHzawdFA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAbDQ-0002Zv-5C; Tue, 25 Aug 2020 15:50:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAbDN-0002ZJ-Mw
 for linux-rockchip@lists.infradead.org; Tue, 25 Aug 2020 15:50:26 +0000
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8E9E2076C
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2020 15:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598370625;
 bh=kkJkXhmioIJQwsukGCwJD/oWEwK9HwwT7ICNctF3euE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iepPZMUxPPfNV4NgNQvKYw0bKlAp+7ff2+icC5HJDfMTos6esrkPTtqMOCHQw+xKh
 J+a0izz+d2S5jk2Ch/ERGJZd8ZXaRCpkI5mT16bZHcFof/vxMgzKyvSp2C0LN6ToU5
 Ze9SAt6kOgakUjZJJOcd2OI8hQRX8747inBg5RoA=
Received: by mail-ot1-f49.google.com with SMTP id a65so10734029otc.8
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2020 08:50:24 -0700 (PDT)
X-Gm-Message-State: AOAM531cWpDsNjdsAJZA6nj7SQ5Fixz8tOdkMK9C14EJVlIEnVh/Fdk2
 D5ZtnezMINlsbmRju8KOvWmbbI9XchhcBPFHpQ==
X-Google-Smtp-Source: ABdhPJzwQ9ZH34bliWvfQGeu3USdo0K8TRmckV2s4StillhPTdBNCd1F3rQthdZKBSrONLJMcgBLlGMcftceTr+YEvg=
X-Received: by 2002:a9d:32e5:: with SMTP id u92mr6653653otb.107.1598370624203; 
 Tue, 25 Aug 2020 08:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200811123115.8144-1-finley.xiao@rock-chips.com>
 <20200824230956.GA3500214@bogus>
 <c3f54e18-8683-8bd9-90fa-e3465cddf8e8@arm.com>
 <13b84e7e-adfe-5939-e78d-0a20fce0a92e@linaro.org>
In-Reply-To: <13b84e7e-adfe-5939-e78d-0a20fce0a92e@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Aug 2020 09:50:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJO7PFYMpO-eDaCOzz5MxyjkfOScw9Q_ZzF=bEswCweGA@mail.gmail.com>
Message-ID: <CAL_JsqJO7PFYMpO-eDaCOzz5MxyjkfOScw9Q_ZzF=bEswCweGA@mail.gmail.com>
Subject: Re: [PATCH v1] thermal/of: Introduce k-po,
 k-pu and k-i for a thermal zone
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200825_115025_873953_420640D1 
X-CRM114-Status: GOOD (  30.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Tao Huang <huangtao@rock-chips.com>, devicetree@vger.kernel.org,
 "heiko@sntech.de" <heiko@sntech.de>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Aug 25, 2020 at 3:44 AM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> On 25/08/2020 10:25, Lukasz Luba wrote:
> > Hi Rob,
> >
> > On 8/25/20 12:09 AM, Rob Herring wrote:
> >> On Tue, Aug 11, 2020 at 08:31:15PM +0800, Finley Xiao wrote:
> >>> The default value for k_pu is:
> >>>      2 * sustainable_power / (desired_temperature - switch_on_temp)
> >>> The default value for k_po is:
> >>>      sustainable_power / (desired_temperature - switch_on_temp)
> >>> The default value for k_i is 10.
> >>>
> >>> Even though these parameters of the PID controller can be changed
> >>> by the following sysfs files:
> >>>      /sys/class/thermal/thermal_zoneX/k_pu
> >>>      /sys/class/thermal/thermal_zoneX/k_po
> >>>      /sys/class/thermal/thermal_zoneX/k_i
> >>>
> >>> But it's still more convenient to change the default values by
> >>> devicetree,
> >>> so introduce these three optional properties. If provided these
> >>> properties,
> >>> they will be parsed and associated with the thermal zone via the thermal
> >>> zone parameters.
> >>>
> >>> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> >>> ---
> >>>   Documentation/devicetree/bindings/thermal/thermal.txt | 14
> >>> ++++++++++++++
> >>
> >> Bindings should be a separate file and this one is a DT schema now.
> >>
> >>>   drivers/thermal/thermal_of.c                          |  7 +++++++
> >>>   2 files changed, 21 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/thermal/thermal.txt
> >>> b/Documentation/devicetree/bindings/thermal/thermal.txt
> >>> index f78bec19ca35..ebe936b57ded 100644
> >>> --- a/Documentation/devicetree/bindings/thermal/thermal.txt
> >>> +++ b/Documentation/devicetree/bindings/thermal/thermal.txt
> >>> @@ -165,6 +165,20 @@ Optional property:
> >>>               2000mW, while on a 10'' tablet is around
> >>>               4500mW.
> >>>   +- k-po:            Proportional parameter of the PID controller when
> >>> +            current temperature is above the target.
> >>> +  Type: signed
> >>> +  Size: one cell
> >>> +
> >>> +- k-pu:            Proportional parameter of the PID controller when
> >>> +            current temperature is below the target.
> >>> +  Type: signed
> >>> +  Size: one cell
> >>> +
> >>> +- k-i:            Integral parameter of the PID controller.
> >>> +  Type: signed
> >>> +  Size: one cell
> >>
> >> What's PID?
> >>
> >> I know nothing about the sysfs params, but the binding needs to stand on
> >> it's own and needs enough detail to educate me.
> > Sorry for the delay, I missed that patch.
> > These parameters are the coefficients for the
> > Proportional-Integral-Derivative (PID) controller [1], which is the
> > core of the Intelligent Power Allocation (IPA) thermal governor.
>
> Just a few words to elaborate a bit for Rob who may not have time to
> digest the whole concept from Wikipedia :)
>
> The PID is an regulation loop where the input is compared to the output.
>
> For example when driving a car and you aim a speed cruise of 90km/h. You
> press the accelerator and watch the current speed. The smaller the
> current speed is, the stronger you will push the accelerator. And the
> closer to the cruise speed the car is, the lesser you push the
> accelerator until the car stabilize to the cruise to speed.
>
> The k-* describes how strong you push the accelerator and release it.
>
> In the thermal framework, that has an impact on how brutal the
> mitigation acts and depending on them it results in a flat temperature
> curve or a sawtooth aspect.
>
> These coefficient depends on the ambient temperature (casing, room
> temperature), the heat sink and the load. Depending on the use cases,
> you may want to change their values at runtime.
>
> From my POV, setting these values in the DT does not really make sense.

I pretty much always agree with not putting things in DT. :)

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
