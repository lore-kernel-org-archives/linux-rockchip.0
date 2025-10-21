Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9519BCCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 22:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQknaxzK03U0ejPoY/NFzp9Kr4swZEPyjsES1jI8EPM=; b=RyOMYUAdY+GnF4
	zv3dp8FmluoAdOEpG5dgUqEl3lr0VenEiWqbnc8NhoG/1myTBSGzSpY5uaL3Of9Mcj4EzopTxvQfz
	XqiBWcH4FSM+g1ZDMlPdPXZFCZe/zDNKWEXPBIILlaDvp+xs91MsryMfx1ZkZPVOr6imzzceFz/MQ
	dRJO8zhmdJvL3BumsDPFkmU63+n3GFi41QHxHipVTOcTEk6edL8UbTqYxA6qR4axR85WvVugrwFiq
	BrLAfbQYb0qy4dodtMwk1zN/3bHPPuM8wfHTEuFJnH9xAdGLcVol2Js984JzZFTLUPCSV8r66L1jN
	WNO0YA+EDvHGiLhV8ECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL5m-00000000pm4-0TSd;
	Tue, 21 Oct 2025 22:44:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL5j-00000000pgn-0z9d;
	Tue, 21 Oct 2025 22:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=OE1/poLOBpssLfVKi6tvWS54f0LMjEaMWJ/83vjq+V4=; b=c5X6C4u0uKTb6j/SKDLaDajGeq
	vUUJ2o5P8eNs65B+zwcNo8VZT8OAlUlSePJv189L6Hy63lD8akphVZXwIpscqUcJqWBKasBGsNsOI
	f1b9VkTClwxsKpvXhX6PAaNKI54EGhjNgysA1WKZ2KcDuj2CfIdVGtr/xOnwcmsDCm56iu2s6n3ti
	JJ+jIhmUnQnlxKZ4ujuuRnYmhm2udH59ldEfpNY7CdSuDbWCYzpMbEXyrUpCEeiM+L0OmDm3hhRXz
	9Gq98b+YEDgD2cBKs9vD3FX6X4RtDMvk2Fwm6v2zpP3IMOXZnAWYEBOc/Ly9c0gsDeqRklUKEIVFc
	FPDICgNA==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBL5a-0006q7-SV; Wed, 22 Oct 2025 00:44:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] DWMAC support for Rockchip RK3506
Date: Wed, 22 Oct 2025 00:43:53 +0200
Message-ID: <20251021224357.195015-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_154431_274980_53369A7E 
X-CRM114-Status: UNSURE (   9.50  )
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

Some cleanups to the DT binding for Rockchip variants of the dwmac
and adding the RK3506 support on top.

As well as the driver-glue needed for setting up the correct RMII
speed seitings.

David Wu (1):
  ethernet: stmmac: dwmac-rk: Add RK3506 GMAC support

Heiko Stuebner (3):
  dt-bindings: net: snps,dwmac: move rk3399 line to its correct position
  dt-bindings: net: snps,dwmac: Sync list of Rockchip compatibles
  dt-bindings: net: rockchip-dwmac: Add compatible string for RK3506

 .../bindings/net/rockchip-dwmac.yaml          |  3 +
 .../devicetree/bindings/net/snps,dwmac.yaml   |  6 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 79 +++++++++++++++++++
 3 files changed, 87 insertions(+), 1 deletion(-)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
