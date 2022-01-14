Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64231C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 23:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nJ6IVO0bWpDpY8am/0a/uMDUuXsXVP4h4YCQICkbVY=; b=dP4ZrAlVMADX0u
	6TCqW68zJS29+SC3bq+OHZjhNmi++54DZRJEY39fwg8XWIGvGEEvELMb/2pWcxX3T59dMJ7z4NUJq
	gaIGYJ3xdG7+2OU6UmU0skes5EQHo3Dfxz2Gb5lTDThkbjPfpPMnYcsSL97UV6HjrsEubCnXtQQHw
	ip7DmJYsRbXOsaiuSlBp4XGGSpnKCLyQXECOL/34ZM5JTJ2jyuWWVSCrZFvChkMnjdJdAAbFbrlM9
	e6G2mvBrQwngyOfTVg6LPMG11TB2cNBh1+fgXvIijZlj7Emel6JXsuwktLUCdKM7Ypjvt4OdYUEII
	HEpDIGqxPYt5kNgdiNVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8VbL-00ANdv-R1; Fri, 14 Jan 2022 23:03:19 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Vab-00ANEl-6I
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 23:02:35 +0000
Received: by mail-pg1-x52d.google.com with SMTP id x20so3915331pgk.1
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 15:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o2h9cZxYJ3emYpUIj++uO1rilt4TStZ87q6578VwqZA=;
 b=htS6cflFJn1ZL5Y0EPBeN6hbyK7QvRLQG6rL5+hf+Wyp/p/OwvwAl+Evj2ZQ1THw8U
 UC6WEz/EhH69UAKuS4Z7gffz1k2LATR0EJgozsv2LnARXXrqxKBBQ4ABYZcLLxPDoo6k
 9jAJ1rcvLoaJTprwBOkTnDB9oHf7Sk8iuKDJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o2h9cZxYJ3emYpUIj++uO1rilt4TStZ87q6578VwqZA=;
 b=EZFXG55jVg3ha4/ICH6Kt6WFxBZki8HXG/er4r4RepsC8lA5qxnu3RHZ7UWPdpGP8o
 AAkcFQK4/W1HgaKyxWEaAyzgUwOy2J/eGdqlXTg3SM8O/uNdTMfti/7q6/wDPZEE7q9h
 A0Ggg/c0p6i4mj1F7K7kG9PaBI1daiEFcjTIFzPDN+Qty+AsmwMTGWZFY9bSmkM9yBfl
 3Is2CDYIG8sXAXCALGTqC6ycEA5qxvFcmehPH3y6fgizRS25FDZHvi0b+jneE0HxYGQ6
 i4OtLVhT4sVzcBLfqaPSuGUyXztp8fL8tk7CpXHvYG1gsTU8MdQ0bB7ZnCuyIc2v6qKD
 rU7A==
X-Gm-Message-State: AOAM531W4SSsQdCcTubpxbvxQxYmK4mlueFB4jky73rjp9JK90dFW97j
 lVfF4l8SAbksqc5GXkElf5RjdQ==
X-Google-Smtp-Source: ABdhPJyUUCEgb915ys8+J2HAqJSVrMJLFjTcoRKHgsU+KV+w14oykK1ZzYgHLlzxpYzPiETOK+okYA==
X-Received: by 2002:a05:6a00:2408:b0:4c1:e1a1:770 with SMTP id
 z8-20020a056a00240800b004c1e1a10770mr10548879pfh.70.1642201348060; 
 Fri, 14 Jan 2022 15:02:28 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id h11sm6161656pjs.10.2022.01.14.15.02.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 15:02:27 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF
 output
Date: Fri, 14 Jan 2022 15:02:07 -0800
Message-Id: <20220114150129.v2.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114230209.4091727-1-briannorris@chromium.org>
References: <20220114230209.4091727-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_150233_254707_3F1E4728 
X-CRM114-Status: GOOD (  15.39  )
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

Commit b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
switched the platform to SPDIF, but we didn't fix up the device tree.

Drop the pinctrl settings, because the 'spdif_bus' pins are either:
 * unused (on kevin, bob), so the settings is ~harmless
 * used by a different function (on scarlet), which causes probe
   failures (!!)

Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - (Un)set pinctrl, because the default assumes we're routing out to
   external pins

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 45a5ae5d2027..162f08bca0d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -286,7 +286,7 @@ max98357a: max98357a {
 
 	sound: sound {
 		compatible = "rockchip,rk3399-gru-sound";
-		rockchip,cpu = <&i2s0 &i2s2>;
+		rockchip,cpu = <&i2s0 &spdif>;
 	};
 };
 
@@ -437,10 +437,6 @@ &i2s0 {
 	status = "okay";
 };
 
-&i2s2 {
-	status = "okay";
-};
-
 &io_domains {
 	status = "okay";
 
@@ -537,6 +533,17 @@ &sdmmc {
 	vqmmc-supply = <&ppvar_sd_card_io>;
 };
 
+&spdif {
+	status = "okay";
+
+	/*
+	 * SPDIF is routed internally to DP; we either don't use these pins, or
+	 * mux them to something else.
+	 */
+	/delete-property/ pinctrl-0;
+	/delete-property/ pinctrl-names;
+};
+
 &spi1 {
 	status = "okay";
 
-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
