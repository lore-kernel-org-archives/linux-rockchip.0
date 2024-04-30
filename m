Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDE5C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 02:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTZ9zd1lGaa3OG77nf9cjHUwOEsOiTtL9nRd3T0Ix6k=; b=FUYu8tOkKYlepH
	XfLlxc1B6uWzi8cT3oUAbY9r4j6ZV/Ng+l2pZuRchEDgYDYNO0fVJ48bmhEsFZWRP2PzimMssgmKC
	OEtYKa3b++YzrCf2aLv6WgB+gG0iXYth/rFFyBQzF4/yKalqy6rVjcQ6uEN93VJ87IuoOYdOQsnBD
	BBV1a9kp4PjX3hEEK4j9oq3GgWmlSoS8xxeF/KBhwnhWM4s5DfzxKMvkuFDjMfIHEY9TbTOYneXVF
	UB9TDkNtGz4R6TU+fzbLbBVgF09NrZMSowfpqV6uSRh0stp4Hxw3AMnu7gZR/SO6oDmaMdcq7WCxn
	TJOImOkhQTxzji3lil8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQe-00000004owu-47dO;
	Tue, 30 Apr 2024 02:41:12 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQb-00000004ovW-1zNJ;
	Tue, 30 Apr 2024 02:41:10 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1eb24e3a2d9so30018655ad.1;
        Mon, 29 Apr 2024 19:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714444869; x=1715049669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eso4ARCm72QdAVSfiatUmFnG0dBC92pYQJkl3ko9Fxc=;
        b=HpVPLK7STj6dPQYyVsjrnuFVqXh4M+9upBXzNNJ+/FtUPre9LaF4pzFSHaIfWG7Twq
         2c7RRrar4yoKjYz3MXSOEhLSZJu4vfQWJDqFaReZfzmfMJZXJ/Veby1EymdFzAQXglxk
         sV6/JtzPHPOW7uWjs8dR1CwFt7/WMXybBpNqVlVuWigrdV0Df8ZKVxd+RpO+/WLSuHEI
         rZSXiVSH6bqdUt+1LkhL5h2TjVIxLTcYGz+IIJX3VdBFTEomYVBYYTJKe2UhVspZa/0X
         DOTw2nxhLfhpZk/0zz2+x8NVxGeXu87ygpTnSFt5z0Z5Y8CdXxygGOQO6dcuwZxjTP0+
         o+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714444869; x=1715049669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eso4ARCm72QdAVSfiatUmFnG0dBC92pYQJkl3ko9Fxc=;
        b=jdOhezN+zbUxRaTbsRNhwyXHfvoC7d2EUSKO767mPNAWx4R+E5R3u34/CEvq57gwu+
         W3zYtEfgfA/Hng+eUVuSmF5th5Lf+Ghov8uwUmndJo3JP+8Iexyj8K2hpTiqO9nDVPbf
         PoLFg6NSjRF/gfmcKMqCjBBhugp8/MT6VsFsjDP+pHvBYAlMsA1xwl9MAkWfPsMFGdB4
         vCwTB3yjOq3ZHBKLnne9sl5CLBsjAGqkqRSG5GtIs5NMqcpA7vfsUYTK9uXypPsO3bD9
         ffhPBU5Irc923Ex1+pc+aLAAzlNTyXFqXWLSu0cqlP12g0+3sA+MgnNr4mpqTwaG7t8K
         NgyA==
X-Forwarded-Encrypted: i=1; AJvYcCWxhPxIWQfxXCPeXMvIL0ZZC7XRZAWH5iHgI2ifLwa3r+5FNibGRfTvfKd8w5rDjo0PXy/hX/D//ZiVHg3jA5q5SchV+GzuaObQRI/JTdmhL5ovVzvRg7iA9fbXoTAzGQ5yQx63MkQf/egSjo2CkWEJ3MBpVJUVdNw=
X-Gm-Message-State: AOJu0YzEpVcFDjwjwap+/8I1YKegmgbyBLRDfsnPuxasFLpHd8+AceJN
	PRPovn2u/QYXmDsvhlYPVVZyj+0BK3rTOLIKzMjXL/55dEDwPk+S
X-Google-Smtp-Source: AGHT+IFcX43HEpbg0J5y68Nceakg6ZWP+vZGNSqE6JNf4XEeKnHfyk4h8JG/DM/CW+eONVEaJV2mcQ==
X-Received: by 2002:a17:902:f648:b0:1eb:7ba:a4c3 with SMTP id m8-20020a170902f64800b001eb07baa4c3mr16274996plg.48.1714444868887;
        Mon, 29 Apr 2024 19:41:08 -0700 (PDT)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id x12-20020a170902ec8c00b001eac94472f6sm8400379plg.93.2024.04.29.19.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 19:41:08 -0700 (PDT)
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
	sebastian.reichel@collabora.com,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sigmaris@gmail.com,
	nicolas@ndufresne.ca,
	linkmauve@linkmauve.fr
Subject: [PATCH v7 2/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Tue, 30 Apr 2024 10:40:02 +0800
Message-Id: <20240430024002.708227-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430024002.708227-1-liujianfeng1994@gmail.com>
References: <20240430024002.708227-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_194109_543750_7612E662 
X-CRM114-Status: UNSURE (   8.81  )
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
index b0a59ec51..da10df7d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1135,6 +1135,27 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};

+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vpu_mmu: iommu@fdb50800 {
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
