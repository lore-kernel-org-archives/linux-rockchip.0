Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84682C004D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 18:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amTI9N0AIEpX9bAkbD99Cls3t3x36HkL4lZ6tPFPu9g=; b=PVqLmu84YhXp5A
	0GPx+YCTYghOZ63t/S5AtzG4QBcA2sNmw/00Hd/Y4hx1zcU5BeAvVVbgeMnZNHobZ4iMHVcxMKjtH
	gg24KIDBerdjqv2z462ZxIGXfas+0RQKaBLU/LOLSkcyO+sdPd0bRxrXo0lEZxfppxISJiN7ff8hg
	xvfMF6z9uhL3oT+3HIHud3SCvvQjX9/5iVkRqKd9OSlVeJ6VcD3WVbbKlNt0uDDczvSOs83Y9qpyH
	9ARnZcljNpEEtFt6wzmaI7/WR/6JRplqnuy4m6XN8e0iPo4nC1AR8NqHpNMdKzOs8NZHI7OgBLHQ4
	hmWOGThDGQ/xteDocvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZzY-006ed3-Lt; Thu, 19 Jan 2023 18:50:28 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZyc-006eBq-3J; Thu, 19 Jan 2023 18:49:31 +0000
Received: by mail-lf1-x130.google.com with SMTP id a11so4656092lfg.0;
        Thu, 19 Jan 2023 10:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whMWYQfGzaJPnTeJPhhjcLAVFGOi1DqjOoYU7lBrbEw=;
        b=E2T2D6DACq3966VESzWpx8PhFIHol1jPrku6s4cUp6lTE2hNExogTwiraPMFBdYmi4
         eeOuM2hw4Hwl53fTpWWHq4LhCyIuMjqYZe1uRMC45MXLZo40vX/jpMtqv7wN9fAG73FW
         uDsMQaX+Fq56W6q5iVMdfdu1N1VTkWQKREEbwkpIKm67BXjEzS8DqaiQdszp95LwCk4E
         aNbMAU6njxaomNOH7Ma0UZFq20W1ApDJs+VsbQtXvUeVps6RrzrpGT245Oo3EOng4kAZ
         SQCvPUSQiUYcHxllnIcUe3EDHtMoPxVXjWBT/ASG8cQ7QuDjHNV4hUq8S0oXL/vf6ucw
         FxVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=whMWYQfGzaJPnTeJPhhjcLAVFGOi1DqjOoYU7lBrbEw=;
        b=RAK0GceQeay9vrsVI0PUhsFp5NPVlJfe/ZDxTr5sf6GydI1vrgPt+OrtteztSAwzda
         j3tz1AzLPLdVlAKK4JlAPpDYw58GeIbA5egpndz89wrUpJ0ukkL0Gzm9PvDPW2J5m02J
         D12zp8JS3yspHN/+jyrSQoWE7j56kCFG8ZelEUVNxRyeXBALbDht2tqxbBX/p5MPhhfQ
         QRo3/LzSrDojbmjY+w0tZ0Sb73V/uOyPJbg68DR8bQCmLw3h/+wpk3ZpoUq4+QU9g5Aj
         DDg5Im5cZa0l54EuPSYxBzoNCnwQ3MWEFP+IT5dkJuiGHCsuJROOvxpIQMauz0CcNjFF
         b/Zw==
X-Gm-Message-State: AFqh2krOzaeRdXn0XznPyZ+pOQAm4URHEwBdy3NAxRN4XXjQA4p1S17a
	phMj4KFSu1AnZp6XDGnwFV8=
X-Google-Smtp-Source: AMrXdXudzU4h7M6LO0PZkeIfHC/mW9RojDp0JElKBbO6CrK/AO11pQaR5TWVFRGk5TwTG4YmA8FvxA==
X-Received: by 2002:ac2:4c97:0:b0:4b6:fdc3:a668 with SMTP id d23-20020ac24c97000000b004b6fdc3a668mr2754311lfl.31.1674154168187;
        Thu, 19 Jan 2023 10:49:28 -0800 (PST)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id b31-20020a0565120b9f00b004d30752a561sm2112737lfv.298.2023.01.19.10.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 10:49:27 -0800 (PST)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: 
Cc: a1ba.omarov@gmail.com,
	alexander.sverdlin@siemens.com,
	macromorgan@hotmail.com,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Frank Wunderlich <frank-w@public-files.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Date: Thu, 19 Jan 2023 21:48:04 +0300
Message-Id: <20230119184807.171132-3-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119184807.171132-1-a1ba.omarov@gmail.com>
References: <20230119184807.171132-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_104930_253538_A1E427D6 
X-CRM114-Status: UNSURE (   9.78  )
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

Exposes ports for VOP2 and for panel

Tested-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
Link: https://patchwork.kernel.org/project/linux-rockchip/patch/20220923160115.2946615-3-a1ba.omarov@gmail.com/#25097661
Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 5706c3e24f0a..34d1b943f312 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -827,6 +827,31 @@ hdmi_out: port@1 {
 		};
 	};
 
+	lvds: lvds {
+		compatible = "rockchip,rk3568-lvds";
+		clocks = <&cru PCLK_DSITX_0>;
+		clock-names = "pclk_lvds";
+		phys = <&dsi_dphy0>;
+		phy-names = "dphy";
+		power-domains = <&power RK3568_PD_VO>;
+		rockchip,grf = <&grf>;
+		rockchip,output = "lvds";
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			lvds_in: port@0 {
+				reg = <0>;
+			};
+
+			lvds_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
