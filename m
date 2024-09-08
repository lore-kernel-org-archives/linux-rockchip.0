Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F06E4CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AcNeEvZ+cxyQEN6RhZBRsmRlpKjxIBapJMgovaLFQRk=; b=RTqmetGE1mGuBv
	JsD7XkkwWrL43kSK6lBg7zQhmoEdxwMDZyR4aPlulUAF1JqNhIFJXYYVrYYgSFX8L27jfI+XALQkb
	cBEtt0rAuFapBEU8i0kGM/mFQVswYr81qS0PupxZTGRe8cCihFmz9lds0wBa4RWSe59tbech0XEfN
	dDvV4bibe2ndGQMiIPNUSw0R/BLjGpXDvordvsJRRwgrk1F3TaElhV45TrEDl7VgVfxdsl+oUb5y3
	lMywGccBkGZHvlc7tx+pRNEEnkHy3730bzHglO8v1CN+37quV91pHKX0B22g9YxR6ugHIYul5Yv9G
	eomd5o+YMzhNkNXzx2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPqZ-0000000HXJE-2E6T;
	Sun, 08 Sep 2024 21:53:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPpV-0000000HXB9-0Kms;
	Sun, 08 Sep 2024 21:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fWksfkF/dfTEvvEEssbvTf51SW/1LayFIfu3J119k6A=; b=EQEkcpn52a7drlMn0gd5ZJCVHR
	YmQ4JDwC6esRe7dqIswvh62IB59ZUp0fiwdH+sF7iC6Raz/sw62N5zpyLN1UL2d+Aio2UzxjMQf+/
	31Po+l0fOMgqn2s6Ya7ZrUjnY9hEmCUFcw+xLQ6fseBuFiAQuvaPYeBxbDbkYJ4fSwv9VCHpz9uD3
	1ehsZFu/tVg6/dPMR8Y6TEvx/mh6+AgA/aIah8cTx71BaU5Ko05aHal5mJHoyBFoo95dQC07BrQnM
	1jQK/rxfHQFlkYTzzo3TXHztDJ+mlNCTKSUMwU3cFRGrU0PG2Y5dUGOTd+7rxEowlKcYwclemyA+d
	9bWnD7PA==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPpT-0004Ic-JX; Sun, 08 Sep 2024 23:52:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.12 #2
Date: Sun, 08 Sep 2024 23:54:35 +0200
Message-ID: <3004026.A7TYtsqqnE@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_145222_140222_F8D43865 
X-CRM114-Status: UNSURE (   7.37  )
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

The following changes since commit e1aaecacfa135cd264a0db331d3ab8b2a04a54a3:

  soc: rockchip: grf: Add rk3576 default GRF values (2024-08-23 12:33:58 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.12-rockchip-drivers-2

for you to fetch changes up to 59420d8ad7809827524824a3891d6a081e735449:

  dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml (2024-09-04 00:00:01 +0200)

----------------------------------------------------------------
One new pmu compatible for rk3576

----------------------------------------------------------------
Detlev Casanova (1):
      dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
