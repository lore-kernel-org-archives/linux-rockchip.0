Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F3CDC25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GO6IGAe6/o58Mq0BIKC35TidwbOnH0Ek/gCxZ+nh0aw=; b=gzYxN18QxaUpSB
	UThtmeKsrtdZuB0C0x0irg3gGFdMdwbS+7P54IqygegnSQMCnjLj42JcAYHlEkmOH/UVovobevSyt
	4wG11FXAc+zd0XCAuYnVgzW0o6dMk2xH9aPrpLdjY2TDUHZp5VnVaGAqZSc8jN7WMEWVANDRV7azt
	/pZi5HRsdMx3zfYgyjqxiZ1YmMSCa5LLt5qqfxoOO39oKEplHOv7KlHLlJTK2Y9j+W1FrbfdbH2Jh
	Oi90DDpEtLR2FG+kvxTZ8AwVleCkvmflTEvdrE3U+iGXr/QX8k3UTAO5ylVkeKz8Ua9sx5DtgEAdv
	JBT6f6MI7ebUzI52IyZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yz-00000001MTK-3idl;
	Thu, 09 May 2024 12:07:53 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yb-00000001M5L-1m0E;
	Thu, 09 May 2024 12:07:31 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2e27277d2c1so10279271fa.2;
        Thu, 09 May 2024 05:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256447; x=1715861247; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BojjtcE4PW8Jg2RRLDbuh20R8FtUvCT6KeHyvo0GHNo=;
        b=WyUX35n3BmkN36tQ4NGS5I4sZtS1FZOIMpjQy1cN3dnzvw1VUVo62kpYmdH1oD0dHM
         MAPGQ1pEStWppVQ1VROTAA90pbpN7BxmJAk+FB0zNlqJqRChDr+OZFpNAefNONv8TlaJ
         78NUeY8mXphZXpt+jx8xQhjawEz8Fn1T1ujxHC8hZRxsQ3ExifrEc0fibvPXVvQMCZKW
         xRjifjN9+EJkTlku1SrDExKc8+0rzr8K/ULVEDeE6i7g627WmRN02gDeDzhFCjnbqCHj
         MGnEosyUUBm0ZC+GZH5qFBJrEBFC0pb5R2DJdFrmlI7JOxDcM9US9pYhFswpl/SDw0cn
         XNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256447; x=1715861247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BojjtcE4PW8Jg2RRLDbuh20R8FtUvCT6KeHyvo0GHNo=;
        b=V3mEbkzuR24FewPxH7WXgKhdRZHTSV0hsMa34UFuCClgfMV3y3FvYUrvgSInm7UxKl
         ijt8y1we4Iux8fjNrM3OOmlOpPZEVKnTb3isremz14S5VNu9IqbEJoE9ZbucD5vnrBX7
         axq8ZoZ1fImjTfyLe8tKUYq8BXKj8C2UOeuhVZKiq1BA/f/qipnkpPOmYnfvlWZVhluv
         2jiN7VBkWgGyijx+r7vxJ4xmWhH+2+BjcHBWI0xR8cuOCjUqn7aiI1n5obdznpYyEXRT
         xpO1F8ibt9211jtebAf6y2WC0Y5GfsEkb5PHzu35BMbvchn5d9SHbOFWF+h7M3fM2Ffw
         mdZg==
X-Forwarded-Encrypted: i=1; AJvYcCVdNtBGOHgWHvSPipmkErg5HiArwwhvd72Jf2oXMUDifnSLxQ0HNPZrOxtY9ncRyu5wlEJlwqR5wBJ9WGWAFmbirK+bWIZIixdvkBM4e2ZaDuMaoaWT2IOyBCKVdI86TMI1a6oFjqzRzgoHjd9+3B5yHCGIY9Li7rM=
X-Gm-Message-State: AOJu0Yxj8vwhTux6jcyxY53ghLV3xRRnkhGOGOQEoJbdZsuta09s6x0S
	PLEqVzJz0bFQHq5h4iXqRHCqHoGP33IsElLsAIOVQ65wYOWwIpE=
X-Google-Smtp-Source: AGHT+IE4TX6luDFQmraVbsCSCIhJfzYELnpsZujXaSoQ8waQa95ruXUBJvJ/gqlTIZi6yx2evpmhPA==
X-Received: by 2002:a2e:9983:0:b0:2df:c0c7:9046 with SMTP id 38308e7fff4ca-2e4479ba923mr37325681fa.35.1715256446939;
        Thu, 09 May 2024 05:07:26 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:26 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 6/7] ARM: dts: rockchip: Add D-PHY for RK3128
Date: Thu,  9 May 2024 14:07:14 +0200
Message-ID: <20240509120715.86694-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050729_499098_3FAF4FF0 
X-CRM114-Status: GOOD (  11.52  )
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

The InnoSilicon D-PHY found in RK3128 SoCs supports DSI/LVDS/TTL with a
maximum transfer rate of 1 Gbps per lane. While adding it, also add it's
clocks to RK3128_PD_VIO powerdomain as the phy is part of it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - also added SCLK_MIPI_24M to powerdomain
 - reword commit message

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fb98873fd94e..fbd95bb08cd3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -216,6 +216,8 @@ power-domain@RK3128_PD_VIO {
 					 <&cru ACLK_LCDC0>,
 					 <&cru HCLK_LCDC0>,
 					 <&cru PCLK_MIPI>,
+					 <&cru PCLK_MIPIPHY>,
+					 <&cru SCLK_MIPI_24M>,
 					 <&cru ACLK_RGA>,
 					 <&cru HCLK_RGA>,
 					 <&cru ACLK_VIO0>,
@@ -496,6 +498,18 @@ hdmi_out: port@1 {
 		};
 	};
 
+	dphy: phy@20038000 {
+		compatible = "rockchip,rk3128-dsi-dphy";
+		reg = <0x20038000 0x4000>;
+		clocks = <&cru SCLK_MIPI_24M>, <&cru PCLK_MIPIPHY>;
+		clock-names = "ref", "pclk";
+		resets = <&cru SRST_MIPIPHY_P>;
+		reset-names = "apb";
+		power-domains = <&power RK3128_PD_VIO>;
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
