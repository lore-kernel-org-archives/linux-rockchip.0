Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B50FC388F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 05:05:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC790223FB
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 05:05:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IihLMfUi";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nlxR/fPH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC790223FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GBxTZHCVHx86JyurxDUR4A84Vdann3e1fZmMg5/XP2A=; b=IihLMfUii1u2HdFYxEPSkUO5o
	JXKSYfQ1qNTl7mc4x/j1WjkxG/aFTtz0dulEkSuRZZebh49+5+XQ3/oeuYxpSOPpkQA9ynW4jQKGc
	OYGnn9pm7IBRznbo/bZ1+HEDA2AxjKT55LH/XUKfPco1O3PRcwAmliLxG0kP0GfnFruFb8Mqk59qg
	83+NpvbLtR4AMY51+dY96uZudqHePTHSa7DXHskdv3kA39yPbcR6NaVKV7I5/oLCSkoDLQNK3jleo
	mJm/7YzF1w5H+NNRLta3535sLOgDEV2Y6zCFLKAg2c0VPro0wzMj9R7AKj2Awewjdr6gld1FYkSXp
	DffNK1V2w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVSmx-0001Uy-0p; Thu, 22 Oct 2020 05:05:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVSmu-0001Tf-P0
 for linux-rockchip@lists.infradead.org; Thu, 22 Oct 2020 05:05:21 +0000
Received: by mail-pl1-x641.google.com with SMTP id t22so315419plr.9
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2020 22:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2s/WABeigsA7Mtk0S1o9sQLZAsD6w8Z+WN9DH8FOQc=;
 b=nlxR/fPH/lcxICagndJXRM49tb//f/NoqPZcOrpnte9T+UHf5tUQMXKMOW48/Ie8yy
 uAdP6rToRhWnhNHnghik3iVL4daQCvLzujuFNaAHnpAEvhPJ3foQdFeAvs+UzXYCSWkV
 vVE9SUk5KveUwC9mN14Z5Cvwk7ObaDWOF5WXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2s/WABeigsA7Mtk0S1o9sQLZAsD6w8Z+WN9DH8FOQc=;
 b=G55rnv8g7WNh8qIeoba77iq/PwyS1jWAkA2DO+FBQ6oODuTU42zD/mso942BLAtKML
 c8xaoR0pW+93BkVgIA6viB5Vae06TFbiIQruIRBXPHTwZQE3tLF6KO2VjECnHbc0XICk
 Y/+Es+3+4UbJUd9fmnOqc0Hg3mjdxBoVOYvGkHPchXCN9ORJAZdTYX/qNqxvMYWegfhx
 gEz83zSujaQzRgX6TfW4/IiQofsRaFQayeM/2i5PwocNXwjWLcVVdNvtR+Scgm1GQEG+
 rU0HgTYj22bmyf9+F1JkUypRjzvMhYBVoIR5SkWBQwcUskuPD9+kvZ5bncXP5pFW1NVP
 ezaw==
X-Gm-Message-State: AOAM532PCSuKNHNsrByMJotUDnUavIgf6gixdS2ttnvDYDiaA5GR1gCi
 OUL5b4aNyKqD48nRJH1dgnqePg==
X-Google-Smtp-Source: ABdhPJy1S3Qg0UXAo7NAUpXG3IP9he1/d4XCGb8CAjHReHbkbKr6Op7VKpnwFVAXlxRcrXq41UUX2w==
X-Received: by 2002:a17:902:bb8c:b029:d2:2503:e458 with SMTP id
 m12-20020a170902bb8cb02900d22503e458mr1016068pls.18.1603343117155; 
 Wed, 21 Oct 2020 22:05:17 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net.
 [73.63.253.164])
 by smtp.gmail.com with ESMTPSA id q16sm394954pfu.206.2020.10.21.22.05.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 22:05:16 -0700 (PDT)
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
Subject: [PATCH v3 1/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
Date: Wed, 21 Oct 2020 22:04:43 -0700
Message-Id: <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022050445.930403-1-amstan@chromium.org>
References: <20201022050445.930403-1-amstan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201022_010520_867069_7D6A6B92 
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
Cc: devicetree@vger.kernel.org, Alexandru Stan <amstan@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The extra 0 only adds one point in the userspace visible range,
so this change is almost a noop with the current driver behavior.

We don't need the 0% point, userspace seems to handle this just fine
because it uses the bl_power property to turn off the display.

Furthermore after adding "backlight: pwm_bl: Fix interpolation" patch,
the backlight interpolation will work a little differently. So we need
to preemptively remove the 0-3 segment since otherwise we would have a
252 long interpolation that would slowly go between 0 and 3, looking
really bad in userspace. So it's almost a noop/cleanup now, but it will
be required in the future.

Signed-off-by: Alexandru Stan <amstan@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index af77ab20586d..4a148cf1defc 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -20,7 +20,7 @@ / {
 
 &backlight {
 	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
-	brightness-levels = <0 8 255>;
+	brightness-levels = <8 255>;
 	num-interpolated-steps = <247>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index f8b69e0a16a0..82fc6fba9999 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -39,7 +39,7 @@ volum_up {
 
 &backlight {
 	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index 069f0c2c1fdf..52a84cbe7a90 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -23,7 +23,7 @@ / {
 
 &backlight {
 	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <0 3 255>;
+	brightness-levels = <3 255>;
 	num-interpolated-steps = <252>;
 };
 
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
