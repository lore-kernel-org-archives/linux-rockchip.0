Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D872DCE8E8B
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 15:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xI1iEGW3Dq8P9RGl/44DPiQ4yJmj2jpu+/hU2UIBcUk=; b=baN8lCtYGNizWU
	5v7A5DdRS8Wg8BCbJWiADCsi56utis3KvCYQHvaQjsfo9HXrry7d8stKj7LGUycoZC7aW9s31LrfC
	f3O3H5/NkLo2xtUM0lvdRhYySB3AQVweq1Jx2K0lY4EPweBZN2TOEjEzK7r8Oi4W3uspA6qAeoPv+
	WPrZ0eHIKJEBFUqZOP/gy4Ng7zlimvZy6KPcyo7m/GN0KkfyxRsOLU/1U8MghNjaZiGZWD6aeYhJk
	/vwX4JcEYyb+6z9rpqiOzqjcwnBSEnGw2zHyyqYJLHWpwIrAZpI1IyxKAPKegu+UNXpX1UtA/IRlp
	vvUp/Wl4bNcNBpiEpu9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3zkJ-00000000uNQ-0pCE;
	Thu, 24 Oct 2024 15:27:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3zXR-00000000sYv-1k8X;
	Thu, 24 Oct 2024 15:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FuuE2DfjRA1FWJIBJRKhJNQLLqzau7vyr2ycbZbbPws=; b=U91iHFzlfLq6HHiw3lKnGqCxok
	auJKYm70mS6jujtQpufdmThT1Z/N0Q5rTB4SSOgZudLGz0BdgHPjH2QfdRG2Ke72WdObYKvC5m1S/
	Sp+KPYfryalG8hq0SxH6RhpcD2OXaSXuV0/7KBZrTftGxb2CBo1GGznwtoHDgTi4v2wRFNX/6zRru
	0iUrAevYl6q3FSKQK975o/m0lha3GmoIFZJquoUiI7863tI6vu57dzeUBhLb+iMlcqVP/ceZojP/g
	9fascOKDCHdgKm+H3zzgT1mRBWGhS9QmrSJt/zTbIzymVuypUOQI1D0+hdDeP15JXToCQvz0/WVMR
	Gq8TUn2g==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3zXO-00000008h62-2te0;
	Thu, 24 Oct 2024 15:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FuuE2DfjRA1FWJIBJRKhJNQLLqzau7vyr2ycbZbbPws=; b=jFfH2AG9XtE7VrCasB/T4rs65O
	lIfHfZr1jtQ/1kBDTspQU3MMAQESkm4j+ZsnvbKX2GEZ9n2lzQkHtVmAm9vfpQU0TDObEGCuPVc5A
	exRVNIkmgxeN5dWwEKFdNFN8oS1L3rY5QfuoRh3/BKnMWWaV5eARt0Rh0+Cl7ZMuSmKuzORMSuvKC
	ndjRyULbvfeJxUHgkT26UekaZ4wK6MBIYxd0knwDSDw3OeEgUVTcGjwr2cT8s0TzX8ThhsKVPY+fN
	4E3+KmQwTOgdtRLwyfu4prD4Wnm7SKg3DwqDI/OxIOisqMoghXOUuBbwr/iKaE+WtXFH3hUWFjc+B
	GLaVzTDg==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3zXK-0004at-OH; Thu, 24 Oct 2024 17:14:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: add HDMI pinctrl to rk3588-tiger SoM
Date: Thu, 24 Oct 2024 17:14:01 +0200
Message-ID: <20241024151403.1748554-2-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024151403.1748554-1-heiko@sntech.de>
References: <20241024151403.1748554-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_161410_837875_CD14544A 
X-CRM114-Status: GOOD (  11.26  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The Tiger SoM routes all relevant HDMI pins to its Q7 connector.
Some from the M0 and some from the M1 set of pins.

Add the necessary pinctrl entry to the hdmi controller for the SoM.
Not all baseboards may use all pins, but even for them it'll serve
documentation purposes.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 615094bb8ba3..11c1cb27f9c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -152,6 +152,12 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim1_tx0_cec &hdmim0_tx0_hpd &hdmim1_tx0_scl
+		     &hdmim1_tx0_sda>;
+};
+
 &i2c1 {
 	pinctrl-0 = <&i2c1m0_xfer>;
 };
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
