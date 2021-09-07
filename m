Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D5BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 16:47:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D59E61090
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 16:47:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3D59E61090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/WtQoYIRCnjqRGJ+9cgVDZlt9HhnVrZk0WBw7ropew=; b=WhXCwoY8OEoTwV
	2Tk2s1I2N9CgnO9UFWgCTIHljy6UDstJslZo9dyiRYrM+VjO/gJvU/9x7nbKD66Ytb2r3Ovf8uNhx
	Kke/4Jvm/pNnUj+MC/gYJSNJ3eYvZyYAm+7CQG8E9lbJw+d7nllZ7+Fq1P2CbVdVJOzEEx/frjdtn
	pBrMhCL+yjp/xPEwuEP5kNgXx4BWs+y/llvzSdYAvh+fZlavnDVtov4a0NqRShQ4Y5Nt1jEsYY3vZ
	hVnSOYWZ0x6vaWTg/cysnarHrKJ4uEkPiV9LatCj1MSTdu1S6TCyEbPkCYR20lOTbsthQLgXJ+n/l
	cH4SVH3fEvzUtgzbmhHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNeFT-004Fbb-Aq; Tue, 07 Sep 2021 16:47:03 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNeFF-004FWi-Pb
 for linux-rockchip@lists.infradead.org; Tue, 07 Sep 2021 16:46:52 +0000
Received: by mail-pl1-x62f.google.com with SMTP id e7so6179588plh.8
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 09:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6zxeKOcsz9PYV/EBnoSP2OdS5qZkC/DOANNRm4GawZs=;
 b=EQY9LK0nlvbjdUDnGXYe/WMeXa86iXkGcxnQ5KO02Msq3CWuYqZAizkmwMyuJ2efAI
 DCEZDEoJCZMjfKabsFLEeoSYk8j18WhslDWHa8IMJaSLQ6iLe+mJFpAdtRrb1WfeQY9+
 ziEmjymz4N5LUDD7tEzIEkfCzmCGkDYFWxtn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zxeKOcsz9PYV/EBnoSP2OdS5qZkC/DOANNRm4GawZs=;
 b=px2Kf3aAQcKXXWRiap/XMLTMR3aF+2Sr8NkReg4GzE/TnfPbrZS9s7112e2WYStFYL
 Z3X7N3ozj7cVehxKn6FfDrOl9kzp0r3RxXEW2Hzebr7zL3dFVA9QHboTvKSkKA3aO+WH
 IaGmUKPZYzNBoVZAYKX1JOIqu35GwFdu9YEAv0K21JYtHmsqj0AEWjZR0bUTiX707aZX
 0E1v0Bw2sBY+HUNKVFPXbowbiP4yv8c7kkO+9A/DPnkqKmdMET4fxDFqDjvc+4vX1DJA
 zJETsF62pMzE9jJcJBr70KueHNWj5gUWXKAgzdQ+NapQpPTQkzfd49VK3VaQEoyfxm/r
 emrg==
X-Gm-Message-State: AOAM5328YCvBOb/+nr3K1qMd8e/XSegomv4BRh2pT8/7/m1Xg4/nvpry
 yN1UYP4TbpdTkeIeLLTGIsMvdg==
X-Google-Smtp-Source: ABdhPJzAMHxXX/5MzVpqqGR29iBTi/HayR0Rhqwnp/SejsqPflp4g9rejxSjXlgRIy9kau67KDbCZg==
X-Received: by 2002:a17:90b:1bcc:: with SMTP id
 oa12mr5465114pjb.241.1631033208783; 
 Tue, 07 Sep 2021 09:46:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7662:6d8e:510:db67])
 by smtp.gmail.com with UTF8SMTPSA id ml10sm3253767pjb.9.2021.09.07.09.46.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Sep 2021 09:46:48 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [RESEND PATCH 2/2] arm64: dts: rockchip: add Coresight debug range
 for RK3399
Date: Tue,  7 Sep 2021 09:46:37 -0700
Message-Id: <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
In-Reply-To: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_094649_860569_47B4417D 
X-CRM114-Status: GOOD (  11.46  )
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

Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.

This IP block can be used for sampling the PC of any given CPU, which is
useful in certain panic scenarios where you can't get the CPU to stop
cleanly (e.g., hard lockup).

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..c8c62637b600 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -433,6 +433,54 @@ usbdrd_dwc3_1: usb@fe900000 {
 		};
 	};
 
+	debug@fe430000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe430000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l0>;
+	};
+
+	debug@fe432000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe432000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l1>;
+	};
+
+	debug@fe434000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe434000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l2>;
+	};
+
+	debug@fe436000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe436000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l3>;
+	};
+
+	debug@fe610000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe610000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b0>;
+	};
+
+	debug@fe710000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe710000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b1>;
+	};
+
 	cdn_dp: dp@fec00000 {
 		compatible = "rockchip,rk3399-cdn-dp";
 		reg = <0x0 0xfec00000 0x0 0x100000>;
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
