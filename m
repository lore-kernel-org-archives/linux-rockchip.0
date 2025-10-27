Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B030CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mXDypc3SHpMv0IzEP0aiyB748bHsRJQplWF6ft5LM38=; b=Ymcr0ofgDmh8il
	LpKgT+pL+JItsrjbv3m2ZU+DvOBoB0Ldaz+ADlAjG9vP+hA+QE0dReFRIKe/qZca5GNaYRMzkfU5C
	Pc62GDw2GgJJ+jFVFalKhhxhdcrF6zQA5sRxNIwgRrEHs+cB5fk1/BDyaWSsWaz0axMiWx+9MrhYM
	jsPhOdYBCWn6onK3msDITAKlCiJOUf03YyDjCL4pIRh/RuyWcVmfMXdamqFzvHTGFgaM3GMqEps3v
	QTmF79d66M+DxxwmuOXvM33O2Z8Xp/KpYenKFDJ+F82NZED3raqS7M97aaCGXqCxld+SKW6MRP11G
	MK8jewkkKgQgoat92gpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJh-0000000DtLy-3df1;
	Mon, 27 Oct 2025 12:27:17 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJe-0000000DtJs-3bcy
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:16 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqX031809;
	Mon, 27 Oct 2025 21:26:57 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/5] dt-bindings: arm: rockchip: Improve descriptions of Radxa boards
Date: Mon, 27 Oct 2025 12:26:36 +0000
Message-ID: <20251027122641.39396-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052715_116214_F182F28F 
X-CRM114-Status: UNSURE (   4.89  )
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

This patch series provides the following improvements:

- Fix board names.
- Reorder descriptions into a (mostly) alphanumeric order.

It also adds descriptions for the following board:

- Radxa ROCK 5 ITX+

FUKAUMI Naoki (5):
  dt-bindings: arm: rockchip: Fix description for Radxa Rock2 Square
  dt-bindings: arm: rockchip: Fix description for Radxa ZERO 3E/3W
  dt-bindings: arm: rockchip: Fix description for Radxa CM3I
  dt-bindings: arm: rockchip: Reorder the Radxa board entries
  dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+

 .../devicetree/bindings/arm/rockchip.yaml     | 118 +++++++++---------
 1 file changed, 59 insertions(+), 59 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
