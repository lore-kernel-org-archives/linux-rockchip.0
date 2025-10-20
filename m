Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC64CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKtiVSp/kKPMqO2qJzTkvClB0oW8Ik/WkTnHMGqqDzw=; b=lDpgyiuc/25+S3
	mMiSqG8GmT84ISHrvjYtYc47GBDzqyEgkQTodprmHffc0yBrVy3O25BL2OHTDIrnJWsnOm7ES3391
	tPWdNNMra/UhcN09ierZlCaDur+rmKdyHXUfnKwDmMee+nrufSehxTiZLPMX98komv8u2m003a1L+
	ikc8toXTolchsbJxkW/TqtaG2YAyoIHnBs1aC6ph7GutsM//+0uWUCYjnG97jqyoIzcT/oR4D4hKg
	5xG7QsV73DGhiLcps+aJVPeH2qwp+d4GfrHAXIb8jFPzDlxjH0GEqF+Yt3uPBxkKmQ66TQw6ePGgM
	acm2MNctWEs9J5NeT6/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlDK-0000000CMwI-0jVO;
	Mon, 20 Oct 2025 08:25:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlDG-0000000CMph-3xga;
	Mon, 20 Oct 2025 08:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=pOUvvxU2BJaHxDxHIo4De4OqXEVjTkBaEpIseudvhGs=; b=DtpxN1PlWm09zUHWBVJ/Gg5IPU
	PSGk1BUw4cEaCdaqGuDI8L+X6H1LWC8MhNZcTnLUXKyiRAHisS7294+McAYXLj3+JQjoF7LViXtDk
	BMAwd3d9G9P1RwNIhMFqoFMNE8rNgc2XKoX3VEyhvlFJrG3bqaq6phrvxcZ+FmPHFJXwf9eGQBec+
	vuomOk/nTgNdAV6KYi5UJOvewVTgqnUoVjODjCKgHDEgRxH9mroI0NRSAelfA4KC/pSdubIxi+tAc
	N1FGbLFz6MM7OmJvXfXSeCniDfK7mcrzgXjNNvEBF9aFtnmGL31iEtxJqIOpM2mlxCraK6GO9Wf6G
	TqtmiJew==;
Received: from [141.76.253.240] (helo=phil.eduroam.local)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAlCz-00078O-AA; Mon, 20 Oct 2025 10:25:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 4/9] arm64: dts: rockchip: Add power-domain to RK3368 DSI controller
Date: Mon, 20 Oct 2025 10:25:03 +0200
Message-ID: <20251020082508.3636511-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020082508.3636511-1-heiko@sntech.de>
References: <20251020082508.3636511-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_012555_003383_8A949840 
X-CRM114-Status: GOOD (  11.54  )
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

The DSI controller is also part of the VIO power-domain and it
definitly needs to be on when accessing it to no cause SError
faults, so add the power-domain property to it.

Fixes: 5023d0cd6183 ("arm64: dts: rockchip: Add DSI for RK3368")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 8f0216203241..5b2cbb3003b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -896,6 +896,7 @@ mipi_dsi: dsi@ff960000 {
 		clock-names = "pclk";
 		phys = <&dphy>;
 		phy-names = "dphy";
+		power-domains = <&power RK3368_PD_VIO>;
 		resets = <&cru SRST_MIPIDSI0>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
