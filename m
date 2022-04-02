Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66246C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 10:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVwtnWLGr7D5ewqZaf3S32wSkoif+pKXxEotm2ZG21Q=; b=szx/Gm3WLFeUnj
	OxrwBykxPJZR3RBWkleO89l0cTZ7n6Pypq9HVZIGvajJF0Ry4NiJnsLROmiMsEwGhdbdLkNjiJpg6
	J0XhafMcjzAeGS5DHS29DVTLXMZd4vWlx5oXmxZgHYWCJ7qlwsWIdyQgIT6Ue3aop8Zhf4uQTrDmJ
	xAKnYtr3KPSdJ1GFtCytYB0rS/ql3ZFBQwrMFHrWpGAkuksXL0DqyBZovD/Zt+HAeCLxnAt3twIZm
	2tEI9wkHhlcZq7zySSd/AmK2rNcKQZccvXZI3theyWjevA1z1kiccK26IVyQF/0FicIgHzpa8jtPO
	mk1Zl1sxhI4g0qUsTJVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabEx-008X2S-Ev; Sat, 02 Apr 2022 10:44:19 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabEc-008Wwf-GC; Sat, 02 Apr 2022 10:43:59 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id 6B7CE5FED6;
 Sat,  2 Apr 2022 10:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648896231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Rb93FZyk5VcvUPyEKX4EHnPX+8i+oZK4NouS1CY0eCI=;
 b=qyTmWar7dxUWgSinj9fVZT4mxA+E6r8AzyoQg6qDoEnZoLk0/yW7rQ2vLVKcnJ0soQC9a1
 Sv3n6QLJN59ve4F7CB6COWBwSGlWUyT9KIGU7F8pSmQ0hOFIVOFZoMUme8AkyFYhF4Z5d8
 XAUg8pdBB/vw6L9FEOYDszI7oAo0F6E=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 8191E403AC;
 Sat,  2 Apr 2022 10:43:50 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: 
Date: Sat,  2 Apr 2022 12:43:10 +0200
Message-Id: <20220402104313.100333-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: d7b3723d-f836-4d72-a170-ec15ef3cf76e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_034358_716833_48FA37E2 
X-CRM114-Status: UNSURE (   8.14  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Subject: [PATCH v1 0/2] Change Bananapi-R2-Pro board to match V1.0

Mainline Devicetree was created for v00 prototype that was not in
public sale and only shipped to few developers. V1.0 of the board
has some changes in io-domain and gmacs are swapped.

Change mainline DTS to match the current hardware.

Frank Wunderlich (2):
  arm64: dts: rockchip: Change io-domains of bpi-r2-pro
  arm64: dts: rockchip: Add gmac1 and change network settings

 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 40 ++++++++++++++++---
 1 file changed, 35 insertions(+), 5 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
