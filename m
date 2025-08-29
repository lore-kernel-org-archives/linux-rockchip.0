Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55ED0CA0EED
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 05:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iAmLLZY8QWURGG9zL+QIbtWSJXO9KkFYYG2EzVCQKtg=; b=gajYCmnuUmz2pg
	eEWicGK6rzkbu++TkbsbAGgWvbjEqK+dPL1xczBHBkrwAXejhdBEDv+PHnzTT85Z8NIvcig6r8t3h
	mlxDpyACU2mycuMmin+3v0vzSGGRsNHP45s3B4W3RZPGQAwDqf7eGWZjmMyVkic5WLyZUOqHgURaz
	XIsmSux83hc8u8hkXR9S7DJLwar2g7bHFmZ0NBC4S+4dwoHgD94P8w6+4J+8VUDOxk9R0bj49xVVK
	Cqk1Va9weQvWL1rGwA8rSu8WVx3UPTjny3+aTANq59Gy/nTg3dxBvtkcwQEQwpIRIToJyCHGNXKkU
	16xyg6zhRVjb6UvlNLVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urs0c-00000004Xfp-1D6k;
	Fri, 29 Aug 2025 05:50:46 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urrvt-00000004XCU-2Xvf;
	Fri, 29 Aug 2025 05:45:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso9310115e9.1;
        Thu, 28 Aug 2025 22:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756446352; x=1757051152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GvFqQMURmL14u9c97vY/ctIINxRzc4H/Bt6epNcKPBU=;
        b=hAR1wLfHTFGoysdH+BlQd1ocoEB0SJfabCwlg5a09qSY2PtN3IgBbBrJXDBLFUBObD
         PsCqxXL3Qz9I1ri+kptcDOdOJdED03SFYe8vmeUy8/WAeV7OT5SAHVg/CYnXhm32WEMe
         8zMlAIHhZpkpxBRIhy31iRJH94EjXt/KG99wt/AhcDMVT6q9rtfBTeMBVIi85Z9ItdKP
         Q7yE2AIGZ5DO6i/v3A93BBLkYFtvOpPVFF0g2V73x2Wmed+zNZype/sMCPHx+9BK+g9M
         EmoTlYYMMvUGnRWw3BDTrbKaJfZ8drQEE9gDdp6WwkfYguJqP00FyXQ6jnUMOz3lfbjE
         SdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756446352; x=1757051152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GvFqQMURmL14u9c97vY/ctIINxRzc4H/Bt6epNcKPBU=;
        b=OEWfcsu44dVM29L+YipFjU3NfgtGOqfsr4XXWWDAmoU9sQikouoHGHNW9aXiYbUrvy
         AVPwtvYSXj0JwaYS1WaFfse7+c+dlWUb1OeHIybU60ra87vUJ6TrSJlj3B4EIRNP/fAw
         LBlqEnqwdVeYW9Gnn5HSeJIHMYklpbjKZ3Rs5r5JJTCq+TnomgkUAtRq0CGBo/a/vPbv
         V020x3zpLZrD8KA6fGXBXxGnVoy2Z6JNNYJy6zUKROoEXwC0jayCyjIaGo2pqSVw5MP/
         vPX0A9lZqdE0upqsM6x+koxQfcIbxC6FH02kczMjt2YyE0p4NuuIUbFx3OKTfr9m8F6V
         7ZPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ8RklCKYkx8376+trzL3ZVPIF90lc1UfkRMjNoOzLwBmO4hfPjquGHn96Rqjwo6xu7jLQCX/4kuJWa4cqr5Ga@lists.infradead.org, AJvYcCXkD1LFVWQRlnEzrOkMCngLF/d7X63yGQfHAkSNI49QnFhH0AGzTT/g6bDnOeedS6FYw+KhikvIDWT18YLUzU8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpAqjs5Tl+W20cglPqFR4PeA+Ts6wpq0vullivCPtYdF//dU/T
	LIjSsYVxOeNKLhgAcCTjgWQn46Rg/pdbebMSd5e+Gu3OpCVXI/TQtb9R
X-Gm-Gg: ASbGncteXIvVtk44HMXU9kBJ5zhjzWPNeqGYMXJa8W2YPCt1aEWgnaUDcg8IwumWb/r
	0Dgw6UFuZU94tln/m75+oumDJyjV2n0xgfzjNdHdn4x3wuPSLrT8NT6TFPCgNR+mvjI8PnXyejD
	Px3UiL17CGA1/FdjVz9t9wxHYQHgCW7WfLhC3F2iGc0HinxaUynS31x2+3WMfYnqbLE8fT0zr+9
	k1gGdxY5YrgwfKIlYDfQ3r2DGxjTfQGie/6hYtX+fhIbijDVdMqa5JYgyOS52a9Fyv67GFAUolS
	MNmESxQh51OoUTOW/y6AWgQS4RCr15WcLgs7NIQ9ecoadqwywPH0PrHsW+mPfH1sdfGLYUJiPXc
	/yvLSlz+Mx29/oeH5F4G6jK5Y/ZI=
X-Google-Smtp-Source: AGHT+IFCNnOTYeJKgtAudAIEV7Vht0gJlV0c6V/BdAzJw9IrIqsKSZY6cnSXqd7x5MJsuSpzEld5CQ==
X-Received: by 2002:a05:6000:2891:b0:3cd:96bb:b948 with SMTP id ffacd0b85a97d-3cd96bbc28fmr4602815f8f.47.1756446351739;
        Thu, 28 Aug 2025 22:45:51 -0700 (PDT)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e7f14bbsm22600945e9.8.2025.08.28.22.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 22:45:51 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add IR receiver to rk3328-roc
Date: Fri, 29 Aug 2025 05:45:47 +0000
Message-Id: <20250829054547.4053558-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_224553_648179_F1C82FBC 
X-CRM114-Status: GOOD (  10.02  )
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

From: Alex Bee <knaerzche@gmail.com>

Add the ir-receiver and ir pinctrl nodes to enable the IR receiver
on the ROC-RK3328-CC board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
index b5bd5e7d5748..aa1d5a6d7fd5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
@@ -84,6 +84,13 @@ vcc_phy: regulator-vcc-phy {
 		regulator-boot-on;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&ir_int>;
+		pinctrl-names = "default";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -300,6 +307,13 @@ &io_domains {
 };
 
 &pinctrl {
+
+	ir {
+		ir_int: ir-int {
+			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
