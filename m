Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 358F3C43467
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 08:01:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A29520E65
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 08:01:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="D9FIlR4K";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HvRYgaNc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8A29520E65
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=70Uvu5FKrOclCKKFonwcFCY2dhl+UiCrBZGwNGLfXnQ=; b=D9FIlR4Ks1wiGW06InAmYj7mu9
	ex3AC77MkRypI5cFt4mDvykcfnblWxQ06e/Wm/YpqnPQCcA83QsHGAXExwnrvaiu8QzbojpnacoHQ
	BDEaRYOPWnkbja7odn3AipCshmTT4gPidV4+lvEWqUlWLb20IcPiCKAvMp02acBnJ1k9IM4MRySXj
	2q3lvqeapAgq176EUHlvwF5CDxBfPi11OtmNrfW3Prgklnnxgg187rUNz1EqppgEoLQKXdTyRR1WP
	zjrD0jICxiTjmY1GWkNHAoet/5mg5qjW6HmiateCMXrERB8EySmAZ0ZxKRDwbqABYaU/RYN9wlGQ5
	93lv5QPg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSFFW-0004vB-FR; Tue, 13 Oct 2020 08:01:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSFFT-0004ti-1u
 for linux-rockchip@lists.infradead.org; Tue, 13 Oct 2020 08:01:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id 10so6713812pfp.5
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2020 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kobb2e1tlICZgkQS/oGVtY54aK5l9kHJ2QZVBKXSGxE=;
 b=HvRYgaNc6roOxiu+jeMNUaEvL5jd+9FuF8oUyy0Qut6ZicDzpSKH3rWKcSKeygEjEn
 yb0slmgyi3zc3tFthbRId+EYOgfZZFgKsSyDAhoLqFIbgcMmoSRBIMdI4D74fUepQXuR
 VahaQpxlXCfl8FLlEz1J7risjgxjMtLieTEX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kobb2e1tlICZgkQS/oGVtY54aK5l9kHJ2QZVBKXSGxE=;
 b=T+cxIDloaHlsUwtts5UoRcPATtsc+dsxPh/Lz9mQxhwrbPIbVV0S9cAhp2arE2EbzP
 9oalan7dUps1eHLysWF5ce4LlqkSXBrgqQgcbFGZoqjGtKiQuZEyROQgZB3RwCvQAz0j
 ftTlwBCtQxQ8cbDwRUbJmtbsQPHRXvJ+4Dxjd/PP4ETfzcs8+CUYrZyhKBjtxvmppTPF
 XEN1WYh/FQfG9YRqftzvjRARVhcG139U8NL0rAwbEt0kfSgm6QVHIz9CNNZ4Qkcmpahw
 7k+NiuK0rzvLgWagV6QXHlLvKoCj29qCJbcCGD5bwYLv06OLzjlzkowG+hAY+01S5NGE
 h7KQ==
X-Gm-Message-State: AOAM5317siTEqEuuvKvcCruyDm/koGsHulzlNB+P2ss1AO5L2ns/+QLs
 qw6egKlWVdVYCrgMaGhQKva1Kg==
X-Google-Smtp-Source: ABdhPJxP6pxFhLR56ZtuQO0U0FlPcp8Gjo0ZGCypcR6tvA2syik1UwDJOMcOKfmi863CHLyQwReK/Q==
X-Received: by 2002:a62:2a94:0:b029:155:3225:6fd0 with SMTP id
 q142-20020a622a940000b029015532256fd0mr25008896pfq.64.1602576086840; 
 Tue, 13 Oct 2020 01:01:26 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net.
 [73.63.253.164])
 by smtp.gmail.com with ESMTPSA id y124sm14956924pfy.28.2020.10.13.01.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Oct 2020 01:01:26 -0700 (PDT)
From: Alexandru Stan <amstan@chromium.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 0/3] PWM backlight interpolation adjustments
Date: Tue, 13 Oct 2020 01:01:00 -0700
Message-Id: <20201013080103.410133-1-amstan@chromium.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_040131_128573_FD72C0AA 
X-CRM114-Status: GOOD (  13.65  )
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
Cc: devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Alexandru Stan <amstan@chromium.org>, linux-pwm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I was trying to adjust the brightness-levels for the trogdor boards:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2291209
Like on a lot of panels, trogdor's low end needs to be cropped,
and now that we have the interpolation stuff I wanted to make use of it
and bake in even the curve that's customary to have on chromebooks.

I found the current behavior of the pwm_bl driver a little unintuitive
and non-linear. See patch 1 for a suggested fix for this.

A few veyron dts files were relying on this (perhaps weird) behavior.
Those devices also want a minimum brightness like trogdor, so changed
them to use the new way.

Finally, given that trogdor's dts is part of linux-next now, add the
brightness-levels to it, since that's the original reason I was looking at
this.

Changes in v2:
- Fixed type promotion in the driver
- Removed "backlight: pwm_bl: Artificially add 0% during interpolation",
userspace works just fine without it because it already knows how to use
bl_power for turning off the display.
- Added brightness-levels to trogdor as well, now the dts is upstream.


Alexandru Stan (3):
  backlight: pwm_bl: Fix interpolation
  ARM: dts: rockchip: veyron: Remove 0 point from brightness-levels
  arm64: dts: qcom: trogdor: Add brightness-levels

 arch/arm/boot/dts/rk3288-veyron-jaq.dts      |  2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts   |  2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts    |  2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi |  9 +++
 drivers/video/backlight/pwm_bl.c             | 70 +++++++++-----------
 5 files changed, 43 insertions(+), 42 deletions(-)

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
