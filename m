Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D3EC47077
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 13:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNb1l25eEVjm/nGioeCe7EklxYkoCGIiFBHvVhCwsCA=; b=DbvaleRMmx8Cxz
	7NbwfqZd1u6PUQ7SfpNSta+RHQT3RwcOi+fNS8Tx/WjW1G4XI371eZBfV2uwbaCDTqAol2g+K2pBA
	tbooU8BBn+tUsLsEuTmDFo2bABdMTmjymf2J7FOlEnVrrNhY8+VjPW+w/K7lYzSr3P7p+wGG7YBEj
	IhKRu/fr2DUob2P0HUHnmmQODazob/5hRTD1eRWrcI36IzFYyLyNfxlyBNVeAYyfQ81busQy5Xw/d
	2sY35IAhQ15+JOv74pcP+QLz4U0yO72GzIpOH0Xm38Ww7IRZkQXDE/WM9DnCULg8vbxIMfP+dRYXR
	snbqnFUcYdaD6U6OAHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCH5-008O16-0W;
	Tue, 09 Jan 2024 13:36:11 +0000
Received: from smtp-42ad.mail.infomaniak.ch ([84.16.66.173])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNCGx-008NxV-1Y
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jan 2024 13:36:07 +0000
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4T8X4s3hdRzMqB7W;
	Tue,  9 Jan 2024 13:35:57 +0000 (UTC)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4T8X4r6qsSzMpnPh;
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
Subject: [PATCH 2/2] arm64: dts: rockchip: remove duplicate SPI aliases for
  helios64
Date: Tue,  9 Jan 2024 14:35:44 +0100
Message-ID: <20240109-rk3399-spi-aliases-v1-2-2009e44e734a@theobroma-systems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_053603_675053_10515060 
X-CRM114-Status: UNSURE (   6.23  )
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

An earlier commit defined an alias for all SPI controllers found on the
RK3399, so there's no need to duplicate the aliases in helios64's device
tree.

Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 1eb287a3f8c03..d664ac18a941e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -21,9 +21,6 @@ / {
 	aliases {
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
-		spi1 = &spi1;
-		spi2 = &spi2;
-		spi5 = &spi5;
 	};
 
 	avdd_0v9_s0: avdd-0v9-s0 {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
