Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8623FD10F28
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Nov 2024 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vubw7TR8af5vZVKj3s7eBf4I28QpINMa+dNIHARNiE=; b=hflg+bgGsefFAT
	1OvpGdhTUyrmJNXIFopp5wDWxSvutcEsB9tAZ/hRb3YaIHk2Hhwh/YhnktanFQgwl5rqtqhgCYX7U
	dDJthubchOM1KdEOTy8U3wlRNS67yiU2DDNoMQz1bwsSqctlio55a03TV2IATiyVsgIqvooLwzoPP
	v+mvmiP4gzLQE90ucpo6W8ek2yi5VJQAOyXl2VFxnt4lbK0gmiwg+glBR89Mfu853Ov64qAnaD7fX
	8dExUTyHdEmI1JSauXYDR6YBXRsyZ5nuAtK7w1cWACgXKzoLh6zqy+6atarFyjU0DySJplfMaqFi3
	VysNJ83eCNKR3ICNzT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tClkt-00000007n4K-2VUV;
	Sun, 17 Nov 2024 20:20:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCljw-00000007mtv-3kKE;
	Sun, 17 Nov 2024 20:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=96aPTgcJmyf/nNkBF02AGuwprUpi9s19DA42nDAZD1E=; b=cPJckVm9tgpiNdGGsXKv+fPvFL
	Eyf7jabTzBweHsJUEaqfOexNX1PUqAOlmb16f6BSbG3OmO8ynXMnjRXXiHEUuhiwYrpsr4mGkF6tx
	5v+C8bm3SojWRhADaqLTdznStpXAeTHb93GuvRYkT+kOK1qQgVJZaFsGwftf/6Vc5RdFdzOat/JUd
	YjjigLEa1dIUbhrIi9Y58G9SE08msxtG06Y6zGmVoTsMsqyB0FlYBnDbMpbJhqRA4t7/8061OBswo
	CULbov/RYpkSL+4wnQ+xwyHT9h1WYkS+sKNGpV8LqpDOmulNQ/lQP5jdQMH6PstWHApjPzwBxxMG9
	10kxECuA==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tCljt-0000cF-6j; Sun, 17 Nov 2024 21:19:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Rockchip - add Firefly ROC-RK3576-PC board
Date: Sun, 17 Nov 2024 21:18:53 +0100
Message-ID: <20241117201855.789945-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_121924_986113_5204ABFF 
X-CRM114-Status: UNSURE (   9.78  )
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

This adds a second board based around the rk3576 SoC.

Heiko Stuebner (2):
  dt-bindings: arm: rockchip: Add Firefly ROC-RK3576-PC binding
  arm64: dts: rockchip: Add devicetree for the ROC-RK3576-PC

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3576-roc-pc.dts | 745 ++++++++++++++++++
 3 files changed, 751 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
