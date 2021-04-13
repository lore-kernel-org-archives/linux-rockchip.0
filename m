Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CCF5C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5574061176
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5574061176
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GoQKBh7ym9dP5+l//lfqoseqm4alo1f1eA5Hnr8SJUc=; b=JnfHB5A6wZ61rr4hxkO0WuhKJH
	Ax7mE2NleAfphCcb/t56hT5BZv8WUiT3Yj/I8L5FZQcXPFVJZTpu5gXx2cx3qTHWpBjQD5y3ETg5f
	Dbzv5/Cg+jzZnGWBv3Nufd3vbEj+7lCYrkM4e+93bhUDrs3LnDglPIFh3XRdtQM02znKbUvtHac1g
	M7rBre+BU2er8kj13f+sE8hUX3ESe+4KXvBNdtcR5V6wiEqYZVjyesHAJKWykhcDuk48leKMXva0f
	QrVO7TIa1dXSRrXs016zAMRdYgUmr/xMuA3Tqfvdw7okWfxup5ggkmle2VuJZY4YETwOuyELkltK4
	88gN/RIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWQBj-00AT3C-Mh; Tue, 13 Apr 2021 21:03:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBV-00AT0I-2E
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 21:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=0Kcpv2DfS132Tq/uB+B3qKm5QXh8gVhpTtw0hxY/loE=; b=fp+pu0AaO3gIPPO1wAXKmfAp2V
 U7P2GzmzyPlQX/KCj3YhYG/bUK2/vOX6dvivhBnDiWyNhGzJB+V1O8GSy0yNCZZCh857WIod+RHiE
 enAHrt3nARt0SAKpFs4chNnduKBGmk/7r6hrR+vDZl98KhjoTG2t5JohjcVgv/nehl1/ZppLH4R/F
 SNqckRLVZiFr7fbJO4Q99JVj3/eBpT5b5a2HnwTG4EMKdlVxkrr+veskWSWwI0k9y5QY1zxasMeQg
 SzeSoSi4DfzSWwtKjlsdbgoi/Zb1ypfkLg8x5ljHh4A6Mhey7Cd63y9xgbEBVANZW6CP51NHOq8GL
 dMfZRftA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBS-007K3L-Gv
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 21:02:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E1D111F424FD
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH net-next 0/3] net: stmmac: RK3566/RK3568
Date: Tue, 13 Apr 2021 18:02:32 -0300
Message-Id: <20210413210235.489467-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_140254_706238_B1E01DB8 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add support for Rockchip RK3566 and RK3568 SoCs.

This has been tested on a Pine64 RK3566 Quartz64 Model B board,
DHCP and iperf are looking good.

While here, I'm adding a small patch from David Wu, for some
sanity checks for dwmac-rockchip-specific non-NULL ops.

Thanks!

David Wu (2):
  net: stmmac: dwmac-rk: Check platform-specific ops
  net: stmmac: Add RK3566/RK3568 SoC support

Ezequiel Garcia (1):
  net: stmmac: Don't set has_gmac if has_gmac4 is set

 .../bindings/net/rockchip-dwmac.txt           |   2 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 179 +++++++++++++++++-
 2 files changed, 178 insertions(+), 3 deletions(-)

-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
