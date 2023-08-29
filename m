Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D3FC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfSCEzOxIW6bwTfJtfafhj4p1T4SAYV0aXTeMbQ8bDw=; b=MKaBqndgqrGNUk
	LF21DVDJGlnlpqou4ZBl4XJJp5IyGMB63JqkahIt53kGFa0ULaL+fOeehLlUGPBo6c6Q0VoY1hZNU
	/UrapKGmdpYtAPDryRU30YtMp8c+bs/wWoPaxGTAr2wR3ahpPVWIIMZ6GU/E0V7ce+KB9GhGitS4H
	8oxi5TFDYYwpH37Yx4cmBT5XOb6SjNrQ/R7YA6N28Mvj7rxiQhfUTSq6gUGfDjSduNMP3aZz8L2Tb
	OaNTN/7gCc51lgOZdYRiO/9mc0HTtMDg+RxhlYsIXAdyGWjpe9niESroiCRetZ6+lI+73sWgW1OMo
	TpHipd8SGry0s+5TJGoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2MV-00BwZP-1H;
	Tue, 29 Aug 2023 17:18:43 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LV-00BvQx-1u;
	Tue, 29 Aug 2023 17:17:42 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c3c8adb27so580851266b.1;
        Tue, 29 Aug 2023 10:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329460; x=1693934260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HORfKlZ4SywXOGQyingnsT/g0xzmPt7r0h5GBjv1Y2o=;
        b=VUixQxnYtqHbxNxKsf0ASLykcCTVDBNkGoP6Rm38KMc6AILysWa8b+lFKAXuD5qslG
         UyjCBLmFLidSKQ0RY7WXdCaq6jbPDDNTkPudF2VqWSQyI8Jia9045Tr7UoVbpy0vadyi
         9I6hOEzja2RK9gkAfFgcBIrsuoCw0g17m2Dt7ih9TXDbMk7/TUdsAaZ/iWM7ntqpdij6
         psUVG0D77RiEOIT04TFhtm/3QirUtJ+5sT5JehV7cPLhkUdT7cql53AtvV0XhVAiaG8R
         +Glt9LWtL2p7QnoIAZznkypP6rY57aC9Sy3a5iDARmcIanhYxdE2wGgn9IpZf9eoxiA8
         aNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329460; x=1693934260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HORfKlZ4SywXOGQyingnsT/g0xzmPt7r0h5GBjv1Y2o=;
        b=gXZxhVFCJDqreMqA0Evh7STSCZOltgehYGstBHgDBkxB0x9OLTONwXR7VjWCy3bW8V
         y8cFCvxXoTfoQW1VzrkJDcC/q7zM2iPyFyIllNx0Sc6y5EzqKYqrILNEJK1QnnL2JgCC
         5nAHrgxN0ideij/BCQJ5d/4pw3ad7+R2w+/murjxr0IGuRIXFmglNVSsxFXhhvYBmjpL
         yYjkRKh0pipBXaP/LVNUgIaXng/ywFoQod/O1RpnIrWVxBbEwRmAdtxOhSMLplKHfgNA
         TacvdkgWGoufSZmiMeLpDkoPpIRYmtxSypb1c2Lnvd+tf/3MhngEZnVz1/D9/AqRjyzg
         jCTQ==
X-Gm-Message-State: AOJu0Ywe4/TcqavUKi1xal5mn/j+o6oTTSYw0basCgxXW+PTntj0mmUq
	XP5LRWm0JFbx7Iwud82Lkw==
X-Google-Smtp-Source: AGHT+IG2fXAH6X9U8J0RtkYi3Dw+VWCQIj6fcYHWOgIhpDrIwSbMG6tADEykLLjvIrFhPYjoUswF6g==
X-Received: by 2002:a17:907:2cc8:b0:9a5:c9a4:ba1a with SMTP id hg8-20020a1709072cc800b009a5c9a4ba1amr1965327ejc.59.1693329460328;
        Tue, 29 Aug 2023 10:17:40 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:39 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 16/31] ARM: dts: rockchip: Add SRAM node for RK312x
Date: Tue, 29 Aug 2023 19:16:32 +0200
Message-ID: <20230829171647.187787-17-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101741_652578_BB1FF1DE 
X-CRM114-Status: GOOD (  11.97  )
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

RK312x SoCs have 8KB of SRAM.
Add the respective device tree node for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 4d3422abf008..7aba97b2c990 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -77,6 +77,14 @@ xin24m: oscillator {
 		#clock-cells = <0>;
 	};
 
+	imem: sram@10080000 {
+		compatible = "mmio-sram";
+		reg = <0x10080000 0x2000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x10080000 0x2000>;
+	};
+
 	pmu: syscon@100a0000 {
 		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
 		reg = <0x100a0000 0x1000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
