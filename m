Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF84C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=md8WlkGrQM5dW3OrORpDjpPruQ1aXJ4e/TFzxSpEmrs=; b=pJPIGpBhHljhID
	/aHJ05iFeVOb9nzL2fUUZNfJCnbBJAD+6mIkknYyHvaU8xAoXmJwOxvo/i1MLLbKDNVu9l2RJJ4CC
	gy5cKsTjhkQ/CMAkCfxCHb5ICNUiun+C6qdV6dkn3rQDaqlxPkr7j9F7kYZYclCrk00oLSv3cq2Za
	Kvgz46v3FvRfNyQ8BDXQmSDBBXOzPuVjDyHC6K2tvpNApaR++glTh3eIXVyZ8jpff+3UgxIy2fwij
	o+y4vJglM5sbDYjqQKphyQffFiQbEfNkELv1TVZcu6vtsL/0QpwRo0zJa6/ZmEKqQ1xMfgU7CWs8N
	wgUFr9kN88FxnaiE20qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyIT-00EDy9-9q; Wed, 08 Jun 2022 16:12:41 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyI5-00EDt5-67; Wed, 08 Jun 2022 16:12:21 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 3B22C625BA;
	Wed,  8 Jun 2022 16:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654704730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vcRXrkxmByG59E3QuDmo3RcMks52bHHiQMdDLjicSqU=;
	b=b0j9rveDPlkXL3I1zkUEsw2Tzqx4iWa9VTtQYFTS1cSlKV4VPHFqbgSLxAn6XxrMEZ+C8r
	IG/2t4zP85mDpIafl/rgL7WG+A53j1yiFQjCH4yHEgLwD+JyGQIkeZZ5MWJFoXJF1PTxEg
	Rc53GeUTLS+GPyJLK5fHUuNtKS+QG7E=
Received: from frank-G5.. (fttx-pool-80.245.76.43.bambit.de [80.245.76.43])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 3E67E10021A;
	Wed,  8 Jun 2022 16:12:09 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 0/2] Support RTC on BPI-R2 Pro
Date: Wed,  8 Jun 2022 18:11:47 +0200
Message-Id: <20220608161150.58919-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: 22b3b44b-de0c-442e-8bb0-8b92e72ec305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_091217_724594_61FB7719 
X-CRM114-Status: UNSURE (   8.28  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This series is updating hym8563 rtc driver and add devicetree nodes
for Bananapi R2 Pro board.

Frank Wunderlich (1):
  arm64: dts: rockchip: add RTC to BPI-R2 Pro

Peter Geis (1):
  rtc: hym8563: try multiple times to init device

 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 23 +++++++++++++++++++
 drivers/rtc/rtc-hym8563.c                     | 11 +++++++--
 2 files changed, 32 insertions(+), 2 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
