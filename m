Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29C0DC433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 08:01:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ADAC920E65
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 08:01:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="U977xEtW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Yq/nvpaQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ADAC920E65
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BClHG4FI9pZE29606N/6j7oruCab8s6uD7Ln8q4KFws=; b=U977xEtWGpz2vktAL1gcf7REH
	YEWTQwxPpu6Lr/iDtQBdx95/PqN0LWVPAxSh2ZzW+MEv9ayL5j+JLJYziLcftnxiSEL4a/bORLRtr
	yqoYOZro9mv3ObbVef6mlX95AnvJGtZ8IOmRzZDOtl6kv3u+Jr6F0by2q8azP26569GRQdLts8/Lo
	D9N3VmgnjD5bSQfYs0iyOjE04krMURHaS5OSGCySXOe+z0XOydtuxRzUurM3bwoaukgCVhhJ7fy8R
	KlN/deDL3/JOmbr4I3mNIDo/ZhThNfrqntv1CivCW9ItdgZ+UkRbxG5fA65P/dNOXIjhOmHPQzXTT
	1WhLsLwXA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSFFe-0004xR-W3; Tue, 13 Oct 2020 08:01:43 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSFFY-0004uo-T0
 for linux-rockchip@lists.infradead.org; Tue, 13 Oct 2020 08:01:37 +0000
Received: by mail-pj1-x102a.google.com with SMTP id g16so217181pjv.3
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2020 01:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PX6utEv95nZrK8Cio4KcHOFe3eh1+n1xQTOKgWru7Q8=;
 b=Yq/nvpaQ5Hpx/VK+3t8sVeKV8lzlwCiDy9N4+pw8gUCZpI3XS9cL9KwWtSFkhWhisR
 LGmwRdWOc8I/GXFP/OoRfZ5q2niv7Jht6WP1s7Niv6VRkxKqD+4GSHYXr/EGk+DgX4ts
 Psnki/01Xl8AnE4gxxe2SnN1XiYtoSXrDxcqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PX6utEv95nZrK8Cio4KcHOFe3eh1+n1xQTOKgWru7Q8=;
 b=slCfgHLr1ltlq8Q2ZahJbLjUTpXi84o7E4fUbokDPipG38BMHnPXs7hvoBTCtS1ZOx
 UmrOfJLOYnDf01sSz7dYXHTz5Cz4+PBsvA6CCSq/fEHtpdhBshZBQa1/swJkr6dP+cp0
 MnWhOvzmSltcza/KHw6eV9jqbVkeS1MmeE1/M23J/pvelLqX9s5J7bvXn4KpUKD0PbwZ
 aMu9sP4KMfUh/r6aFmAF8LByhOXI8pA+i9+ftY4PTrWZAQz2P1TIYHTO9z/rfYI5OazA
 8aQHOniewAlr7O0zNLJ3MfmgM6fF4n9mBhv3DUbCc58KgLWPlXo5LrxCthDXhhP7U/aF
 +qyQ==
X-Gm-Message-State: AOAM531h+8jiwN72cdATapSUPGXzVgcegQ8rPgbFZGV7hNBuTB5z4rwH
 XnQFJROQm/KrcMsjygmOtCHJiA==
X-Google-Smtp-Source: ABdhPJwy8G+WoGa8xfqN7S2NUeVNZqaFQcnZEV3UAVpca7MBw+WNfz5pRUiBOuT/fqofn7wEFblptA==
X-Received: by 2002:a17:90a:160f:: with SMTP id
 n15mr24051942pja.75.1602576092037; 
 Tue, 13 Oct 2020 01:01:32 -0700 (PDT)
Received: from alex-desktop.lan (c-73-63-253-164.hsd1.ca.comcast.net.
 [73.63.253.164])
 by smtp.gmail.com with ESMTPSA id y124sm14956924pfy.28.2020.10.13.01.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Oct 2020 01:01:31 -0700 (PDT)
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
Subject: [PATCH v2 2/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
Date: Tue, 13 Oct 2020 01:01:02 -0700
Message-Id: <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013080103.410133-1-amstan@chromium.org>
References: <20201013080103.410133-1-amstan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_040136_956450_A2122799 
X-CRM114-Status: GOOD (  14.57  )
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

After the "PWM backlight interpolation adjustments" patches, the
backlight interpolation works a little differently. The way these
dts files were working before was relying on a bug (IMHO).

Remove the 0-3 range since otherwise we would have a 252 long
interpolation that would slowly go between 0 and 3, looking really bad
in userspace.

We don't need the 0% point, userspace seems to handle this just fine
because it uses the bl_power property to turn off the display.

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
