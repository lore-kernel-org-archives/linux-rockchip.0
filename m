Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30762CD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 08:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OXeIrdd+IZ0uodu5xSUT5hzfaxNH6l32VoCj52b/qS0=; b=j1QA1GLKvCjGOU6yNgTVoVdldP
	ryU1zClhOuG81N+J/0S9+tozQnCnYQCSW/JaBnCZTTstXG02cTGCVyqcpCx7ebPqx7bqgF8ryVMNp
	ZvQ5a+FewG3/O34sXb3XERQEtTax9EJVJyRms6WcvBQ0FdwXs1VtYAggBTEpL5/h8FJ07FLJ7hBYp
	MDu4WIxMEb6uky5YEUCe2j86cckZ5kfYDbis2n3KqKf2qBJI4G7AOxuy5ruyuPtOBR8Dis60VWXKQ
	SZ2jVKsIrcNDoO1goPGzbaGnDdSJ2ntbk4EP2OB9fB7+ISywLwA8J+kL7/+xEHmERj0p5PTymUW/6
	Pl47BHBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9LR-00000003WGl-1LE5;
	Wed, 27 May 2026 08:10:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9LP-00000003WG0-0LWP
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 08:10:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 59E87438D6
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DE891F000E9
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779869426;
	bh=KRN67tkQlkMDZKLT9iKAVE1JzAihnwk5W2CB0m5etpY=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=MpAw2DMEpWcNnfHEOmHMYcGGtoq4TEO43kGDNyXh8cmnRnHnDzJZLdk+qIXbwLGrf
	 0MsA943j+nCZnekfxrNm9loBcu2sd6XfRhkNO0N3m6+UMvFcWHOMCGjQOdaY9pMBth
	 MW6gMzqMGBGzoVnjvSXwbRtsqsa88K0SzIRoYG4vL3sXoJCSjs5/nGtSziqvCD28xK
	 QQTp49rXK9xamDit2QTC2tGc59W3izYgO8Fjn8auwqDBSNgXFEuXuXCH74z6dYaHFB
	 iAv/FnjyDB533CA85u36IudlAQWYaZFS/SnDDKSZBEEvTIC4xrWOViSyCPAje+XZk6
	 I3OPXbo5EYtVg==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-394095009beso95744121fa.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 01:10:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/vM8g1Ueu8I5LM5di7CleOj6Lufdl9xRwnZLVG7bZ6JYH4n+ODU2wTDWk0/HC2ntorSqFKsgKXIGFtptubYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9xIPevDEO/0xlAd8MoRsuohZP8ADm7plDx33wT2z27cXlAPLa
	ZtvQelci93MxmVMngHlJPrK0An+NiHPkYvx6dtcT8aXVwWnCni2jZHpArejVTwFkP2L4Z3UOt8D
	YDcBIq0OpE+mLpo09sHPUeWQ0u1EA3cG1g2SD2OTFnA==
X-Received: by 2002:a05:651c:1144:b0:393:c6b5:9930 with SMTP id
 38308e7fff4ca-395d89f8bc0mr66274191fa.27.1779869424983; Wed, 27 May 2026
 01:10:24 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:10:23 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:10:23 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260526171050.12785-1-scardracs@disroot.org>
MIME-Version: 1.0
References: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
 <20260526171050.12785-1-scardracs@disroot.org>
Date: Wed, 27 May 2026 04:10:23 -0400
X-Gmail-Original-Message-ID: <CAMRc=Mdid6eE0_Vy4WBBz5OQuNg6fOmBGjjGHpWW_mXrcSMA9w@mail.gmail.com>
X-Gm-Features: AVHnY4IFLgMQGuRInLadJCLOEP27q2rYiq6VMJnNMgrrC9fDtHdryVv1ax6veT4
Message-ID: <CAMRc=Mdid6eE0_Vy4WBBz5OQuNg6fOmBGjjGHpWW_mXrcSMA9w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: rockchip: fix resource leaks and teardown bugs
To: Marco Scardovi <scardracs@disroot.org>
Cc: heiko@sntech.de, linusw@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, brgl@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_011027_151166_7153475C 
X-CRM114-Status: GOOD (  17.30  )
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

On Tue, 26 May 2026 19:02:44 +0200, Marco Scardovi <scardracs@disroot.org> said:
> Hi Bartosz,
> thank you for the review on the first version of this series.
>
> TL;DR: There's no clock-names property in the DTBs for the GPIO banks,
>        and they don't expose a separate debounce clock in hardware.
>
> Regarding your question: existing DTBs currently do not provide clock-names
> for these GPIO nodes and instead rely on positional clock ordering.
>
> While we could extend the binding to optionally support clock-names going
> forward, the driver still needs to remain compatible with existing DTBs, so
> it cannot rely on name-based lookup here.
>
> For this reason, keeping the index-based of_clk_get(..., 1) lookup together
> with devm_add_action_or_reset() for cleanup seemed like the safest option.
>
> A good example can be gpio1 in rk3399-base.dtsi, where the clocks property
> is defined as:
>
>   clocks = <&pmucru PCLK_GPIO1_PMU>;
>
> If we switched to name-based lookup via devm_clk_get(dev, "db"), it would
> fail for existing DTBs because they do not define the corresponding
> clock-names property.
>
> Additionally, PMU banks such as gpio1 do not expose a separate debounce
> clock in hardware, so there would not be a matching entry anyway.
>
> Therefore, using of_clk_get(..., 1) is currently the only approach that
> preserves compatibility with existing DTBs while avoiding regressions.
>

I see. Can you please reverse the order of the patches? The fix should go into
v7.1 and stable branches, patch 1/2 is a new feature so it'll go into v7.2.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
