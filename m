Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F15AEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 11:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ds4Qe48KX1RxeA57XdA9+1ya6OAtZIGsomevTaoENWA=; b=1B0wCzwhG1TjGW
	qwKORU41aoULJxqNZ0jwPMewj5HEcTkvIAV2TZ0OaJZ19PsRdzIwNbeYiDDo8yjTyY4dPJBw9CmuG
	e65l9fWlJXkH9Ae2uDbfrgtEtTrTZ6UufOQE0cVbKscU67R/EiqHxvxMRp7E28jP2aZVTAt8NxXU/
	8qrLHUnn2GzXS4WUjay7+65Qaw8xJztmyi23rtbT7RrpcSKHgxkSi7pSgfzuG0VYrVX7Vm5+ifIgL
	v6jYSdIzkFF4LI3lLKoKaLWliRZlYE4sixrQJyl39WFUUmV19ntxZ2RGelBN3SFt8fBGeoevHjX4K
	Vlz5r+MEQzEPlBy5r1cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPCG-00B1Z8-2L; Fri, 29 Apr 2022 11:54:04 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPBS-00B15d-93; Fri, 29 Apr 2022 11:53:16 +0000
Received: by mail-qv1-xf29.google.com with SMTP id kj18so5144947qvb.6;
 Fri, 29 Apr 2022 04:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zdBkDQmKoIggvVv+9nKr+EG7gevAiBpcUOqfYxzGhEU=;
 b=btsBbf150KlxvPgk29yG535UtWnJICkliDohSbgYOm9Uxqzs45Q0cuw8eRkzeIo5m6
 UfaWty44QpA9Jq89tmgWpEOdOse/nkT7r7cU140rXyr5Phfrbkhhm9qemHu6GA7Qrpl2
 SmHZ4gQ+HFsujQfELi7YlgJ8R6JqnRgk/3kFkvGT2PtRBKJqSrQXEH4glvObWFiKy7A1
 n9x5lmUZJJktqSy+q6lGotSKf+WQdV56AOB2vixJn0q9i9UFFMjPi1k+C1/shz4NVMMc
 RXfFg6Xb1R28QVl2uLN8h0+1ItWu52ebkixk2rqspzuVqyKKCknQDYaugrQOr7UvnCdA
 lPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zdBkDQmKoIggvVv+9nKr+EG7gevAiBpcUOqfYxzGhEU=;
 b=DsX7zw7C6PYCCMCY8Z24ZqXMGsSGk3WG1z5muQ4PvC6w55tPY9ZRQdzgWZbw6p/+tV
 kUW6dVkEBHlMZzvpt79kdgiSoryGF48VKR/GKOen3YpkPZA544KuYVUB2uwzHdUY35mw
 toBx0rQgg8534Klt9C2OVA39bYIfmzeSjfGtonCENE1pAIGQ7cR6qA9zTxBC68rCu89b
 giPZYck4rpC6dT8NT3IzXu4XMa6sG2XWYBAZd0BFoqlF9oKxpb8HrjgIJLNu/aOzIMkV
 Lzw3MP8eyII5HkpPXcPF1ei+VPaU/D2eh3geVSqULf+G/VkCWeMOUDcruq+/ySqPSRTo
 8I/A==
X-Gm-Message-State: AOAM531hPKqLRq85KaxbMWqpjMAvtf7RvnWmaOvhgai3H4+U+wkv9n0h
 J1UmW/5hTPWteXkI/9ZQQB71JvK7yqQwKQ==
X-Google-Smtp-Source: ABdhPJxHLLSlDuQSF8q/L28tDhOJvVMBBSaB10SlvL2+Jt+VX752p8Q+6XTmT2eS4vLZrXwe6fmZMA==
X-Received: by 2002:a05:6214:202b:b0:458:10af:3f59 with SMTP id
 11-20020a056214202b00b0045810af3f59mr2314048qvf.57.1651233191745; 
 Fri, 29 Apr 2022 04:53:11 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 123-20020a370c81000000b0069fa408fdb7sm1382505qkm.24.2022.04.29.04.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 04:53:11 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] arm64: dts: rockchip: add rk356x sfc support
Date: Fri, 29 Apr 2022 07:52:49 -0400
Message-Id: <20220429115252.2360496-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_045314_381396_3F4BEBB4 
X-CRM114-Status: GOOD (  11.19  )
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

Add the sfc node to the rk356x device tree. This enables spi flash
support for this soc.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index ca20d7b91fe5..61a6d9d4c8a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -750,6 +750,17 @@ sdmmc1: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sfc: spi@fe300000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe300000 0x0 0x4000>;
+		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		pinctrl-0 = <&fspi_pins>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe310000 {
 		compatible = "rockchip,rk3568-dwcmshc";
 		reg = <0x0 0xfe310000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
