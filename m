Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E2CCC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 11:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpPeu5RNjNGkeJRamxPVO4Ei1CrgCzwx7qP4GLJWfdc=; b=SgwPXh40M18kRl
	rXdqaz8wtt8cr0s+xEcvQx2YWV2motmR9PiE799UStfbexsq4SBhACN8repUo2ceWb+qEo0yosORN
	WdoG+qTx7/+m5akCtsP9dz9njCuR7TAnkLy9cfXE3XsXdZcW6sClc5UdnZLGFGB4zZOD7Pcdz8dcw
	5QDaJ4WP5iZttncCxCsGLisylCbK4p5GlHBCfM4BetD1vBhzn0JzdgVu13XVC6gNOTS6W0B+qs2es
	vXEMf9CU9fcixuErwCsfDapV129jgkFn0cHJ2hq284l83axPQvu8NojNRvKKJ5QUK5gqfvK73c/zd
	+81A/noWbvMtktWrDQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPfa-00000001wzO-3mw6;
	Thu, 18 Apr 2024 11:11:10 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPfW-00000001wwr-2IRr;
	Thu, 18 Apr 2024 11:11:08 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1e411e339b8so5745835ad.3;
        Thu, 18 Apr 2024 04:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713438666; x=1714043466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lxb2yFQOzOHStfCQA/m2P7fU2z/qbCohGERMxV0x4sk=;
        b=XSvwxBYTPJ3gOuamdkivnxSpuEic94EcFN9BCuV9jJjr+lpLc5YggDYnSiBIZiHJOJ
         wq/8MBF8HRF6RaQ0EX2EiRnsyFwac2w1unW+jTO6OkuyMJICV1/W2yFmpc4ILq6swxzU
         pYUWzXOdpTxFqvgCuK0Tp29BtMk43AYapP1MnykJnGmfVLTisWjZTa8d4lLX679e97/H
         KMLN2dGQ0x+GdZ+D//lU0Bomm9TI/m8mGTST+XyB4l/tY3UDHjtN4HadZykf2+TY3Ca2
         MC7FAKI1xX1qhzygFpi6XWuML17KI5WzsaPyUFyWg3aN7WLS5d2LkOLhBCNdC/ryYUjV
         ZhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713438666; x=1714043466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lxb2yFQOzOHStfCQA/m2P7fU2z/qbCohGERMxV0x4sk=;
        b=afk0NK8wWSGHuvmN1dSznpj7/C6pLExMVdYhqQWZX0XaI+/5uLxjdm79l9G23iOysS
         KpZkAKiOov3AwMz4JcwfjPOeHXeC7HuintK80WyDfMpGOvj7YvlQpQ5CTCmppf8pxPhU
         OHbTYxbfweyLQ/QvMjmdScRXb1cXbgpcqx4DK9gR82dItj2yh77qqiFfN0t49sHEljy7
         uXWxU3ybEdqsPuC1Sz/WCFSHZbCuDTwwhUhz7MXzkL1ENdC8VDly/oUgheQDH7Y1Ogh/
         avSb9/s3ofm0nebH5/ghr0zHwq7vc2IKndQJW5jq0wdZv7WaiY/lSKFLhNsiC6VVAVnH
         wlVw==
X-Forwarded-Encrypted: i=1; AJvYcCXnZma4T+mlEV3ddHdI7diVw8nhL3ODlDlTeRmmTaULZmvkD4qFkLlKRBnGxnJ3xQzO2qfQ7l8vKGjCsJcPOM0CmAKYoL3NQTPG7nx25EZMdEaMl9snQSPITDSOJZkKyx8GHJYZrMiP9aMXqwl7GWGVwOzkGYjJoYk=
X-Gm-Message-State: AOJu0YyOPNbYKbSQUi8pPgD4N7URAh+su9Tz+rmaeZMNDst8mHX2bPXO
	Wb7me9qEbAMlIH96ot1dxSOtQDFxLN5Pq1ni2LDCDew84LsPx8aM
X-Google-Smtp-Source: AGHT+IFslWsdauAw3+GK4AxaZnWnbDcqaOOWdRddILDSGXxdvFx/EDWKsSl4+dq3Al/RraRAbXnS5Q==
X-Received: by 2002:a17:902:c185:b0:1e3:e0a2:ccc3 with SMTP id d5-20020a170902c18500b001e3e0a2ccc3mr2740474pld.30.1713438665941;
        Thu, 18 Apr 2024 04:11:05 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id kh5-20020a170903064500b001e4d22f828fsm1051159plb.33.2024.04.18.04.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 04:11:05 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sebastian.reichel@collabora.com,
	sigmaris@gmail.com,
	didi.debian@cknow.org
Subject: [PATCH v6 2/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Thu, 18 Apr 2024 19:10:02 +0800
Message-Id: <20240418111002.83015-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418111002.83015-1-liujianfeng1994@gmail.com>
References: <20240418111002.83015-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_041106_682374_CFDCC1D8 
X-CRM114-Status: UNSURE (   9.05  )
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

Enable Hantro G1 video decoder in RK3588's devicetree.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index b0a59ec51..b0817382f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1135,6 +1135,27 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};

+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vdpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vdpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vdpu_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	av1d: video-codec@fdc70000 {
 		compatible = "rockchip,rk3588-av1-vpu";
 		reg = <0x0 0xfdc70000 0x0 0x800>;
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
