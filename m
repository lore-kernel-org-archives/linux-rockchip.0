Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 415F2C388F9
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 05:05:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 900AA20657
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 05:05:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="k3QQVYgP";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="f48hBtEY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 900AA20657
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dNjceZ+j8OqpHXedT+5MRlXtywinqGFKwXSGKypzYGs=; b=k3QQVYgPQLw6ISHChunoS+sUTV
	ioCAC+7X0P1Z2Rn+gQQ1NyhuxxRFakMsTgJhN9Icqv/VfuceTId/YlgE/94w8HuhFRs5jmokIWnmr
	kNRUAm0GH5MysqrPq7utyHGyI5LxAUNKxdTVWmWE1HEh91KblKCRyDDRs86W849afflgTQx5BEN5Z
	G2KNjSscYgGUnmEYkZbX8H/VgKIMUFyPCh92zsAgXIssWa0OzxJwLlQUVnNmWrQyI6r+hIPVzWywr
	Zg0ShskV5EQNYexuvJghEFcJmQ0qtrmxx+9VnwJZf/CaW2U7LA0vZIRYFHgH0kVCfUh6biLXBxNtX
	fIOemy4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVSmz-0001Vc-Jt; Thu, 22 Oct 2020 05:05:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVSmu-0001TI-SG
 for linux-rockchip@lists.infradead.org; Thu, 22 Oct 2020 05:05:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id h2so310717pll.11
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2020 22:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=br1VG/AftR5rvhAmwlJkFmu6wT77im0wqYMY63lXCPc=;
 b=f48hBtEYiQ9cumyN91pZln9WRYzYGIagC8IaqGZt02+O2MHl6eQhg0BtJ9+cg1Lz5h
 o78FtZXmTE3jBKH3YGJw6UO0d0jZFwtKCoYPkexfnY1SZ/dfXt7VslCJZM/bN6IMdzvi
 1GjVCtofogBD1D5SMd8g0By60jOJ/X9Pviva4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=br1VG/AftR5rvhAmwlJkFmu6wT77im0wqYMY63lXCPc=;
 b=SwIoSVoYAPp8fQAJIIw/e75q3pstVVxbtEXO3Ty/6GoKXi2aADvb7RT49gym1mZ3z7
 0AsxqVyN5yFHQMRH1iCbjTUAWL0HT2KGqklMvn3gEvAYU/dE8XiA7LUxaYLu1q+F5ade
 TnGE4j9fyiTmADHtszZXPWNr2gRwwi6saFv+AQIjfrNagRLg1xfuLLwcC6XQAUgFk4zq
 YgydKp6pQ+Gn/knrbfczFTK3GCrUcNv2Q9eK0EGmG0xTHDVCxOJWrLxYUuTWCxjNQC+S
 xmN5wSGfcWqdySkqns1Ayb16GgH8d1gOiv8kMKsCReaY3IWvzNHOp5Am2X81/pjpYER0
 0AiQ==
X-Gm-Message-State: AOAM5325Jf/n9WzHzP19ICJ9hYA7lOmGlr6oY82OuLkyDqGR1jhpSlY+
 +828bnM2o9jw/BRZ+c9NI04ylw==
X-Google-Smtp-Source: ABdhPJymcPyyQm+Vwkk6bRyWkhQZdrrKBm+8kHDpsoJwQTQghvs0I0e+UpqN3Vxv1JCNbjDoQlFwsw==
X-Received: by 2002:a17:902:ab89:b029:d5:b297:2cc1 with SMTP id
 f9-20020a170902ab89b02900d5b2972cc1mr765458plr.7.1603343113453; 
 Wed, 21 Oct 2020 22:05:13 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net.
 [73.63.253.164])
 by smtp.gmail.com with ESMTPSA id q16sm394954pfu.206.2020.10.21.22.05.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 22:05:12 -0700 (PDT)
From: Alexandru Stan <amstan@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v3 0/3] PWM backlight interpolation adjustments
Date: Wed, 21 Oct 2020 22:04:42 -0700
Message-Id: <20201022050445.930403-1-amstan@chromium.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201022_010520_967115_1073D391 
X-CRM114-Status: GOOD (  15.34  )
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

Changes in v3:
- Reordered patches, since both dts changes will work just fine
  even before the driver change.
- Rewrote a bit of the commit message to describe the new policy,
  as Daniel suggested.
- Removed redundant s64 for something that's always positive

Changes in v2:
- Fixed type promotion in the driver
- Removed "backlight: pwm_bl: Artificially add 0% during interpolation",
  userspace works just fine without it because it already knows how to use
  bl_power for turning off the display.
- Added brightness-levels to trogdor as well, now the dts is upstream.


Alexandru Stan (3):
  ARM: dts: rockchip: veyron: Remove 0 point from brightness-levels
  arm64: dts: qcom: trogdor: Add brightness-levels
  backlight: pwm_bl: Fix interpolation

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
