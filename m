Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE71CAC59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Sep 2025 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xULv0WGOsXDFEsIwjY3GAv82tC/2NRybQekR0OXGYwc=; b=149ZsRMZyGFWbl
	rTPN9YZOPb+WIVPLJytpVGmFoZtWzisEwUlc1C2I80duZ2eY4mzWDcUP2+tdwkN/pyuIamhjwggm0
	6VCsvAOIApmKiw+QV/9fjBQp1L9HYIiZQk7CqRTwmZUgssbMVIMWF/UKQJEqtlazhEDVBEj6z5qCd
	CNDw/MO6pYI1dzG9RJk4nzBPrPcyamRAbRmcYUebGI+40Kq/pHgZXaNDhpH+jpTA8pGzpPMcOOQqB
	Iv///BYi/x2SEsHE84vegPW2O9fXmUUcRdGjCHkb5Fu1q2GDnpLvP/WQ0YWYL2epqobdav5JNgbqy
	8JQuyzKmumrEHpvjDm4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyqgw-0000000BBRp-3pLv;
	Wed, 17 Sep 2025 11:51:18 +0000
Received: from mail1.nippynetworks.com ([91.220.24.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyqgt-0000000BBQX-3uSl;
	Wed, 17 Sep 2025 11:51:17 +0000
Received: from grunt.nippynetworks.lan (unknown [94.228.36.46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lists@wildgooses.com)
	by mail1.nippynetworks.com (Postfix) with ESMTPSA id 4cRcYC3FT0zkd2v;
	Wed, 17 Sep 2025 12:51:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
	s=dkim; t=1758109871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=C3JLm+WtAgOBOP5ZX8TVm1Cp5vhXuI2GzWj1bb042eU=;
	b=bmE4l/oziTF0VmvvghpjBK3QAb49FXUE5rBADlKvSbHSr3lK9Wpj2rWXJ8iBGmy3m7olQU
	1tGerj1aotI0U8cQOISRLXp4zBnrJL4kqT3AMXk2bzCUyqchkEbCgPRfsbL8xbvTI4RL6v
	KkSbE8V9DN8Vjuz9X0cjY3SrPsk68p0=
From: Ed Wildgoose <lists@wildgooses.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ed Wildgoose <lists@wildgooses.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: fix dma and pinctrl defs
Date: Wed, 17 Sep 2025 11:49:29 +0000
Message-ID: <20250917114932.25994-1-lists@wildgooses.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_045116_212487_7592FCBE 
X-CRM114-Status: GOOD (  11.93  )
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

The default pinctrl definitions for the Radxa Zero 3W don't match the
datasheet. Possibly few people enable extra UARTs and hence it wasn't
noticed? I needed all 5 UARTs for a project and the first patch corrects
the pinctrl defs. Without this patch, enabling the extra UARTs causes
issues such as the MMC devices disappearing, due to collisions.

Second patch adds a dma-names property, which appears to be a
pre-requisite for enabling DMA on the UARTs. I've applied this to the
base rk356x-base.dtsi as it seems like a change that should apply to all
SOMs? However, I confess ignorance in this area, so could I ask for a
second opinion before anyone applies this?  It's tested on my Zero 3W
board and appears to function correctly and DMA is reported as enabled.


Ed Wildgoose (2):
  arm64: dts: rockchip: correct uart mux for Radxa ZERO 3
  rockchip: dts: Enable UART DMA by adding default dma-names property

 .../boot/dts/rockchip/rk3566-radxa-zero-3.dtsi    | 15 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi     |  9 +++++++++
 2 files changed, 24 insertions(+)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
