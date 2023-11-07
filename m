Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BDCBC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 15:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwr7PxHkr6b1EQjEqUlyr0T945mgj//WXe/nXDFi+28=; b=Fu/oYqQS5Yr3Q6
	TfHJ6BEyPI8kh3eTcBAZ5KiNU1nzRx3YL6IU2xQoxgubhPTsjugnDXaLeMb/EALrr9/lXX0NTEm0E
	XFdMb2UHKON8sPCFwGn5xO7YTbHmUahL+K7X518S0Iug55Cs0QCwBjAD4BhxTJsUMoyV8Fx+KEicr
	eleZ3Yvs8V3lkEm7Q06+kqaIXHm6WBi8FCwrhZ8I8D05PeadJGpCTudG1fV6uFpC0o5e6c7YYWHYw
	KFttBkldCwCevACFcsIoAAHpQsE2FN9rs3nhaMk2sIrtdORNWwIUWNG4/yHUQFgAaNDjhEPHDCocv
	/qtOxathF55XjWuETJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQq-001vNt-0h;
	Tue, 07 Nov 2023 15:56:00 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQi-001vGT-2l
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 15:55:54 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40837ebba42so36655195e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 07:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699372550; x=1699977350; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s+UV3k4yizYTMdoa5VrKE6ofk04X3OR5xKj9uFZuHk4=;
        b=pXLPpx3BneeaZ7wjT6zNVlIvxUbxYptc6754m40nuzn2QCK08dXENAJC2nDtZhY7UM
         3lYkksGLmowbDre8S5Ud7OLPbcjJR2GAe9M5z2wghMigMYD/fEZili+55i/RIP+Mmt4M
         xsDouejxsWcjADhNNfuKhfGsxkep3VBHUZL06Mn8vmDNv3ph4gU8+lx4V8oqh8FrKkTe
         eH/U1K9XxGFJS0T/qTo7e+diKZwaQ50T4/vnuKQhF/F7Oy93m+XnaxKSo12pj2S3SBpm
         wF14zrqaRKjzN7App1SxahawneiH5z2EzHGd0sYsPqXVtAQ5HLdzVrIOXC9E3Ca6+yla
         oEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699372550; x=1699977350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s+UV3k4yizYTMdoa5VrKE6ofk04X3OR5xKj9uFZuHk4=;
        b=szKnInzTK7utKqE1oD02nmhYa44/maKfB7Kes0NsCtCXJrIeevWRDK6hDbg3FlDeU5
         xQqyUIfMSv2LcyCUn9hMsaPqEODlU7Gj9q8HbbndFGKav+gOiLIvKnyjwK3hkrxBfsuY
         XeA2mmaHEaPTfnpNxnPFmvYkisA8Lx0OXaACFPVZqTWoCRw6QNHDtFcQ/bagjfPqJ5fs
         Vz8LlXRtz9fpDx+TtXXlfoCRmTQOzMEkn851q35OteNP756Z/KlTkzZ1fBfInPY0+nY2
         5fW+V5EWuO5gqHeRWIEfB1CdgtzejgHxZA55NCqcqXkd4C44Ks6F574hRQHcmojs/j/9
         p2bw==
X-Gm-Message-State: AOJu0YzoTCzmD+25vjcyYSz4nCuThbz6rgvsXr7tFjsZgRzufJMZkT9s
	HL4fSeGE01oIGxpZAdWU5Po2TA==
X-Google-Smtp-Source: AGHT+IHkZ5GDVZhysvqM4521kZZywfOXQBII4ImWf3CF24yhLceufV+jdRnRjPS4MYfSNa8U4v6jHw==
X-Received: by 2002:a05:600c:548e:b0:405:4daa:6e3d with SMTP id iv14-20020a05600c548e00b004054daa6e3dmr2628006wmb.39.1699372550578;
        Tue, 07 Nov 2023 07:55:50 -0800 (PST)
Received: from arnold.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f6-20020a05600c4e8600b003fefb94ccc9sm16579085wmq.11.2023.11.07.07.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 07:55:49 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: ricardo@pardini.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 3/6] ARM64: dts: rk3588: add crypto node
Date: Tue,  7 Nov 2023 15:55:29 +0000
Message-Id: <20231107155532.3747113-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231107155532.3747113-1-clabbe@baylibre.com>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_075552_894444_F462094F 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

The rk3588 has a crypto IP handled by the rk3588 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7064c0e9179f..a2ba5ebec38d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1523,6 +1523,18 @@ sdhci: mmc@fe2e0000 {
 		status = "disabled";
 	};
 
+	crypto: crypto@fe370000 {
+		compatible = "rockchip,rk3588-crypto";
+		reg = <0x0 0xfe370000 0x0 0x2000>;
+		interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+		clock-names = "core", "aclk", "hclk";
+		resets = <&scmi_reset SRST_CRYPTO_CORE>;
+		reset-names = "core";
+		status = "okay";
+	};
+
 	i2s0_8ch: i2s@fe470000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfe470000 0x0 0x1000>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
