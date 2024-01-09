Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27923C47073
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9viuZw/dUeqY23YpyYTccrYFuWdBq8iY1IKUpEsR4Cc=; b=dW+SQCJ8yBQFzx
	SOhL7iybHlq75BDaFlVN6Z2jHGWsXzSTfkXps6IkF+sTq4A36x6nJf384X2DSlHI9QCSjSuKHCllN
	X0Qouw9awrh79Mj7mNSrKBEf6DpG32kp0Eb5qhRshmV7hwwMDDAy5rAqG9hpIy9f3l/J/7cNTBZoH
	zL0c0kHe96pxXX0b3GxxDmQmagwKLViP/mUqVFD4Va+4znVnbOcjwWNKoAEkIqtuTRO3OT8q73sBS
	PpGisAkpjetJR36KlInjJUtltt6Rgl6chuwAmso8jcKKrJ6Wa0vn46an86Z9acyQyygGTv0jqRHPD
	m8FbkI4HgdBUovpclnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCH5-008O1C-1i;
	Tue, 09 Jan 2024 13:36:11 +0000
Received: from smtp-190e.mail.infomaniak.ch ([2001:1600:4:17::190e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCGw-008NxR-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jan 2024 13:36:07 +0000
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4T8X4r6stQzMqKGF;
	Tue,  9 Jan 2024 13:35:56 +0000 (UTC)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4T8X4r2wzbzMppDb;
	Tue,  9 Jan 2024 14:35:56 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add spi controller aliases on
  rk3399
Date: Tue,  9 Jan 2024 14:35:43 +0100
Message-ID: <20240109-rk3399-spi-aliases-v1-1-2009e44e734a@theobroma-systems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_053602_789118_CD8A1DBE 
X-CRM114-Status: UNSURE (   5.97  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

There are 6 SPI controllers on RK3399 and they are all numbered in the
TRM, so let's add the appropriate aliases to the main DTSI so that any
RK3399-based board doesn't need to define the aliases themselves to
benefit from stable SPI indices in userspace.

Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index da0dfb237f853..7b04ba526fd59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -34,6 +34,12 @@ aliases {
 		serial2 = &uart2;
 		serial3 = &uart3;
 		serial4 = &uart4;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		spi4 = &spi4;
+		spi5 = &spi5;
 	};
 
 	cpus {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
