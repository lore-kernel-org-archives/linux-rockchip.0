Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A29CC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 16:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQn8ASNxpBS/VtKxu4GAh8czyCev9qTp3tLaPWhpmP8=; b=MZMvo5i12H3SQ0
	+nObzWwIMiEP5iVH4TfIi6P+DpLRyxK+7ZB1CrU51r7EuYmHTyzZj0oolWWI2lPgnKrmT5wGgBtTz
	KzwY9HS4ibq866w6diglCg6Smc+zeFhHa14Xj9W/Hfh7/WQa90DDwqQfDbf1HJVO7Ofoynv0EBRw4
	ofqyovOvyg+19BS85G6EJPvaN/8xIjgGP5H/crjyv6abmGU9VL7krtxdCDCVSc5PyivRHxtlYZcsH
	Jg3TNNzC1LTMN7VF02/SF4jU74wRt12plilSdoaNZhgIx7C6PxQUPqiT80srNyPeqDF4aSL9xOv7j
	0pCG4g8TtAz2+7aYnQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7P-000000039U6-1xbH;
	Tue, 04 Jun 2024 16:34:39 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEX7L-000000039RE-2su2;
	Tue, 04 Jun 2024 16:34:37 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1f48b825d8cso11353265ad.2;
        Tue, 04 Jun 2024 09:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717518874; x=1718123674; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MSWAqBDL1izzu0pJ0VxA5Nn7Co4tP4tZJFYWLGdgAg8=;
        b=fPTA0Coy1+wUSaAzJ/bmVojwhacG8C0u+y9XUo3f8ZNEsp44PMuJOZoRcaIJZuQm/k
         GNrPjNale++HitWnsQ1lIeBpC8XuDT5hbxcNOP5pvN3Dj6ghKQ6vVkVqDUZRw49suRw3
         Cx9Vc0FkTJax2d5KOIy5szm9R1omeAFYUpZT6+axKtBFFCGNKdoExFBWxMxz7fioKjL5
         0qMg1bzBRYY5yL99vy+r1rcKT4sBWKd/v3zzH5oE0dfy8d9QqUaGXU7BJpHdqyccg62l
         pDeyMSQj8+oIk7PixbeIxhSoyb8KRAHlHlGFNgvq/XKQULSiOuuFDQDhARSimnnQCihe
         y9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717518874; x=1718123674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSWAqBDL1izzu0pJ0VxA5Nn7Co4tP4tZJFYWLGdgAg8=;
        b=diZwFqnkmbhyNl8GFAopMVAq+chslG4Lwhq8/thx5oH8n3Ic9kmBhlvhyuOvB0fN28
         nkt6mTIxaWf9Cj+dmdh4JQD/1E5phh7Ae7l3geEPKWQ2xPO98lL/YEdJPzc/t8ZvCktr
         oPHDVBo3Ex7W8fw/C1BgKPzEcqLczpslDwDjWgg2zLeYFzI58geek3Evex7K36UD6e0+
         FjOgKt52F6HkLQOv1yBhvJmWUiZzedIjrhK4VDELk8uTYuGMFS7sT9cDHZUdzzvpubKW
         a1Jy5zQ6Agk6N91fM9cFwhvhygJSvlY+oScBkAu9t4ipcvFsR4zi2p0XKLpZAcSzZz0W
         NR9Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4vk2QaUG3mu4ChB4ynZbq3hidCOOp0n6o2Sd3Rcg/RYnBt4cK6pSJ6wmLPFhZlEhjf1+aNn5nAnNgdz6pb8YHB+Hzy5eJ1NUZzW05AhFR2wP8894=
X-Gm-Message-State: AOJu0YwikReGoeHhhw0AtghBaNce75itO0HmGStycIjoztEB86Ve157G
	vvBqkfVJLwvWGtEUBbesyUsrsAmQUzhYSll/pHITrXWAd0Gqu3ihum/qS6E5o3Y=
X-Google-Smtp-Source: AGHT+IHwz4HQgLu2AhAlwAyyyDOYRi8UyDFV49LkLxu7HqmpNBzU9VPhkitQY78LumAPLMZ+arYn6A==
X-Received: by 2002:a17:902:f687:b0:1f6:5a50:93b3 with SMTP id d9443c01a7336-1f6a5a716edmr293035ad.43.1717518874470;
        Tue, 04 Jun 2024 09:34:34 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63235561csm85463445ad.70.2024.06.04.09.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 09:34:34 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add RGA2 support to rk3588
Date: Wed,  5 Jun 2024 00:34:07 +0800
Message-Id: <20240604163408.1863080-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
References: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_093435_788546_88349E27 
X-CRM114-Status: GOOD (  10.92  )
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

RK3588 also features a RGA2 block. Add the necessary device tree
node.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

---

Changes in v2:
- Sort node by bus-address based on next-20240604

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48a..beebc4dc0e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1159,6 +1159,17 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	rga: rga@fdb80000 {
+		compatible = "rockchip,rk3588-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xfdb80000 0x0 0x180>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA2>, <&cru HCLK_RGA2>, <&cru CLK_RGA2_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA2_CORE>, <&cru SRST_A_RGA2>, <&cru SRST_H_RGA2>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power RK3588_PD_VDPU>;
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
