Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03C4CC83F1D
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 09:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhYY7u4/eXN1iu7p4y3rE6Ku1o3MCkq2VIqJMR3iDvw=; b=k2NGA3n4gbdqyA
	qbMgG+RR5c4QIeiTafK5bicAAPTKzYyPCCtBGyw9yPqItwzeGMDDGW7465V3ggLewa/kD4ONxHsa+
	I0muSA6ggsASzilHEfFbfr/cFq32V4cbQWm5vhS+wuEMb5QV8xNWDm2dIMlOBUUT9xDMI/0LSqQNF
	c29CaqfkkcWc8Q2kjG3AjZSJxxhjA1YV9eKr2UecRdMY1UVKmxgsd21WW5tLyMzEhr/yCnIsXJSSO
	pVSALZI2kDhgSncU5qLieD5YPN0D6ao/trW0sif3atny4H+/IK5mI+9bhBApWoZBMpkJJzH6hWDaT
	NXdA3WjqEbKYH3BNbhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uasft-0000000HaBG-3dQZ;
	Sun, 13 Jul 2025 09:07:09 +0000
Received: from mail-ej1-f43.google.com ([209.85.218.43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uasEu-0000000HXFC-4915;
	Sun, 13 Jul 2025 08:39:18 +0000
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae04d3d63e6so662099266b.2;
        Sun, 13 Jul 2025 01:39:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752395956; x=1753000756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=petoWFIc1yVrUA7vb5hl0SJbICvldq7drqIuMNaVr3w=;
        b=RAuc+QIUS2CwAqbgNXV4rXxb1uC+xiY25XCOMBA1jR5VJP4l/PQcggZ6lNyjNM01FH
         vlmd1QASn+90wUMHJBQC8yldOmp/a9mAruDq7FgsgixphIy2GRt2gPF6HzIU/W97JoTc
         suDB4NS4bOvNxVXE9bS5cJYLqQ0ECkP08WSCaWqYnRGLBm/SahSutq2hVAl7dOIm10JL
         O9qRbOveUKeabEp05rUqv5MFjwiR4cN4/WPahygrfe8INT1Qs3huSDXgq09qqV9DM/c9
         xzF6BHpCNbvpYBMfPGLcUpmtXADGHReW45AHWYZSAeEFkO29piiB4OGslalZMMwFvPgH
         dmNA==
X-Forwarded-Encrypted: i=1; AJvYcCVLnLl9ubDy0Gcux9HtAzIqDtgv0NJtrwCpojCPcI8znFOEgFivGapPAzmC8JCISoSffd4k0cS2OeNyZ9bRolyp@lists.infradead.org, AJvYcCWciIbJ2uVH60zYzjf+AcNGZNG6dz3K4DNssnEpwSg+pImTdbsiJLRso8oqCMfkV1/0oyhTmPgzyiXSeqbq9sc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA3OLU5GO10ncuGP58bGruAqfIhNxO+tbADgoOKs7oc14Dgweb
	epXD30v8xouKXkJ2Hqo7VKmAszWCF1Hyt090WOcclNFuqhIG1zgbtPq267MOKsvy
X-Gm-Gg: ASbGncv2VrDbQ0y4b8xzj/1VhLShGdufd123rv+PpscaHC8Y44MLMEyXBnU7MA6yGXh
	UevhArCW1UDIaYByHwMYdSmwvuzL9zymaS8Os7H3dX5Y36Z9F+WiYByW9U2QeJHOXi6VWsdK1Fa
	qGSc7qUjMg65PE/8CeGjryUdnVW5WWBczcFbkbLhfxy8GL5xbw9lBx+Hw8f/olHgH7c9tGoEuSh
	8iHiVeWni70oI/KCstHgfUzu7HmSjlQj60KDX4Zsr+GksWNY7ynZ9F9SFmJb1PICVhkiCRjPQwX
	YVCREbybO3c1P+onVg2bYlDSRr8aUHPIyp2N8elwSQ7sSTVYNpYpudUeN45kNw5GAc8jUJm0BAq
	dITtxyIKp4XWyLkGFkpzjMl9YIE2CujJqBGle9V5xdQOMcUln/jAbinKz
X-Google-Smtp-Source: AGHT+IEOh5WdKdbW0T6J6UmEk9cmBDAiAC1DtupfJxwpMjim3iRySIz9Y05XcPSJrFS/GFvgalD80Q==
X-Received: by 2002:a17:906:9fc9:b0:adb:229f:6b71 with SMTP id a640c23a62f3a-ae6fbc13b33mr938047266b.5.1752395955356;
        Sun, 13 Jul 2025 01:39:15 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90a42sm610876266b.27.2025.07.13.01.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 01:39:14 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sun, 13 Jul 2025 10:38:57 +0200
Subject: [PATCH v8 07/10] arm64: dts: rockchip: add pd_npu label for RK3588
 power domains
MIME-Version: 1.0
Message-Id: <20250713-6-10-rocket-v8-7-64fa3115e910@tomeuvizoso.net>
References: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
In-Reply-To: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, 
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_013917_033903_0595CA50 
X-CRM114-Status: GOOD (  13.36  )
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

From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

The NPU of the RK3588 has an external supply. This supply also affects
the power domain of the NPU, not just the NPU device nodes themselves.
Since correctly modelled boards will want the power domain to be aware
of the regulator so that it doesn't always have to be on, add a label to
the NPU power domain node so board files can reference it.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 70f03e68ba550d6b9142131dcca86e8ded36e2f1..1eddc69fd9c9ed95cdc810ba48d9683e3f82489a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -841,7 +841,7 @@ power: power-controller {
 			status = "okay";
 
 			/* These power domains are grouped by VD_NPU */
-			power-domain@RK3588_PD_NPU {
+			pd_npu: power-domain@RK3588_PD_NPU {
 				reg = <RK3588_PD_NPU>;
 				#power-domain-cells = <0>;
 				#address-cells = <1>;

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
