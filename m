Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89858D6ACE0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 14:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N5H/tcIHOb9PNPcpUqmIG09YmrSM1dzSJ7McC1ddVC0=; b=H+xCYemqzIMrVI
	ZCIuhQGnrseJH20YytQIdu1mQ/qEebPyXZ02tNh8OOWiCxQ0qSd6vS02MKd4Yv8EE2Lr1QrkxDBze
	TZDROoz66Aa+ao8Q3fdcElSlOfDAs/sxfy7n0DO2bNKXQ8U6Nvk9pMV41djxMPCObgUr/uMrmUQO6
	QiOFH7xghAB+dRDKbEkAjKRJoBTF+FYm9oC92ZaqeXhhNhmdlR9Q2S1Z7G//Jgj3vHdUgIr+hc/+t
	QmNu2e0hQIe5+6ZQOOyVKEJajAHvFaMM/m27MQPDGPHyR40M+SCdZ2PwAFI5g1yu3UPlmYHPKR9UE
	ekn0p7qrPBUPIg62zvoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJBy-0000000DO5o-3r6R;
	Wed, 27 Nov 2024 14:38:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGJAn-0000000DNkt-0pKP;
	Wed, 27 Nov 2024 14:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PRuTuVIq3JpU5i9Vun6Kp/iyX1Q3OEVdomcFKNsz8gI=; b=yf9eqOCFuF8Cb/5VXuebfFnd20
	Tm0P6rxtSspLNDID/Fb3VD3gr/X1xWfhAsTGFhpkRmhQuHLgB32P8Xfi+dj83G0DADwstV2Orx1zz
	IwbF+S1BTln426TNd7/ySHZ4CJ0nai7/fBEn7LO2Tx3640DZR+eCN8QdNTtuUgjcOkD+FIQKqjtAy
	n64gqnVu+tsvv8T+ct7UC9kqHzvPc5mKs0+DyP+Nuukmw8j2X09f4rZ+cilyPHrXVMUgV78v6xYvQ
	utdjLo1Bm+MsKnP4X7VZQC3fysdnwL+Y3AApqzfXCqM4Sq6oUCSISbX/yMMQ2CXaa9hI0FTs1MbWx
	d3/igNXg==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGJAj-0002n6-9v; Wed, 27 Nov 2024 15:37:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dse@thaumatec.com
Subject: [PATCH v2 0/3] arm64: dts: rockchip: add and enable DSI2 on rk3588
Date: Wed, 27 Nov 2024 15:37:16 +0100
Message-ID: <20241127143719.660658-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_063745_276374_0FC25C8B 
X-CRM114-Status: GOOD (  10.46  )
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

This adds the dcphy and dsi2 controller nodes and adds an overlay
for the Tiger-Haikou Video-Demo adapter that provides a DSI display.

changes in v2:
- adapt to changed dcphy binding (phy-cells = 1)
- tiger-overlay changes (Quentin):
  - drop forgotten hdmi-connector node
  - improve description
  - fix node sorting
  - drop unnecessary pwm-pinctrl (set in tiger.dtsi)

Heiko Stuebner (3):
  arm64: dts: rockchip: add mipi dcphy nodes to rk3588
  arm64: dts: rockchip: add dsi controller nodes on rk3588
  arm64: dts: rockchip: add overlay for tiger-haikou video-demo adapter

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  99 ++++++++++++
 .../rk3588-tiger-haikou-video-demo.dtso       | 144 ++++++++++++++++++
 3 files changed, 244 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou-video-demo.dtso

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
