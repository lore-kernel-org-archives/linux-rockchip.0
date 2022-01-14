Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B1AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 20:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQp3ATiPUUB3fDnWmfL6F3T2MX4rD/MSfw99+le4TDA=; b=i7zolALTzohjuJ
	tDCpbSskI3qKnIyD7+xGjacS6YpYmUvENm+oS9srAbCrlSn5MPNhaOMRI/AxEb1UMPdymGg35vdxn
	xUNZEZ753wM6l6s2XkIik/4rvCQ3qdWPgH+2l6F+kZM7XRcJz7ln+wB9697ea7/6d5tKmqIVbrrrw
	bYhIq2HhRSWTyImGky0ru8qOlfbQJT3o3dRnXDZdzEjFOAzjWcwkiA2rTgxH/fjDnI8prZMrFhuU8
	URFUF8SWTRzX04Nfbvs+4AggbsdS7kfXrcPvZTb4277CjiLmeYqMxOlFI7j1mSHe9NZpTrioEtWw9
	8pQ/0Wc5xeCSNOzHq2aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8T0x-00A9wL-C2; Fri, 14 Jan 2022 20:17:35 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8T0b-00A9ns-86
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 20:17:14 +0000
Received: by mail-pl1-x62c.google.com with SMTP id c3so14041638pls.5
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 12:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NHI4YdJkg3blWqPelJAYTO4ml6hVxIePrSWCG1B/xFA=;
 b=EEigY38b1fTu+aiEP3SmQ0r0AcAMPN99i8wrAOaTvKy4ytD/0GOOBLLlpl+WXnajij
 X3Nu9yfWhzPIYpKmaOpgO0vwkP1Y7RDErmL2kBD1EAZt9n3wXWYMtNw602JoVR5bLHN4
 vUF+EV32uGddQTHPmX5WBu3o20sB8//KqZoXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NHI4YdJkg3blWqPelJAYTO4ml6hVxIePrSWCG1B/xFA=;
 b=6sY7Lhp6DIlC85ldnAr9dBMFCTBCLHz7lvhgCi5jOhBWZIaZNbEFkY1oJ12ShwBB/h
 U/GveMUzZ1kWcqgH3cJjaGAznkLwCdP99P53fIAdDSh7U13dOUKmx+cqw3dW3RIGC/Si
 OPefsqHalTYodqcG3jUtey/rQgSfH1zMmzJLVyamt5MLjbhCqQ/0TXDLdEasSJr2eEwD
 0WpxrnTT58rsiummNlroN3Y2wv45s7uOaNIjxmA3Ch+3NN1UX1UgdMfteeIinfM7UpPh
 dEawaNGSJvOaEpBpzzUMSy92oPULqSQIn+6yr5jkGu8qZdubZSJvik8279isQZfqJEMQ
 kRhg==
X-Gm-Message-State: AOAM532P0hpecQ4jI/ITcB4cRcmV+SSGTUaodNLhLgRRiDSf8LvUltoQ
 Kd5uj7S7bB/14Fqotk7TRXn66g==
X-Google-Smtp-Source: ABdhPJyANqLFSMw/ah46py8E9k5uIE2DiLUf4ryo5wQMT8muBxJU4jdXvlE8Hx0LhnJYKQTgOC1SiQ==
X-Received: by 2002:a17:90b:4a92:: with SMTP id
 lp18mr12273149pjb.123.1642191432492; 
 Fri, 14 Jan 2022 12:17:12 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id l13sm5300187pgq.34.2022.01.14.12.17.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 12:17:12 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
Date: Fri, 14 Jan 2022 12:16:50 -0800
Message-Id: <20220114121515.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114201652.3875838-1-briannorris@chromium.org>
References: <20220114201652.3875838-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_121713_308588_DD872DAD 
X-CRM114-Status: GOOD (  13.43  )
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

Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 45a5ae5d2027..21ec073f4d51 100644
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
 
@@ -537,6 +533,10 @@ &sdmmc {
 	vqmmc-supply = <&ppvar_sd_card_io>;
 };
 
+&spdif {
+	status = "okay";
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
