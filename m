Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E97C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1yuyZ9XXGB08ZkZVl6QNStC2SWZW23VlDRM7MOsxeL8=; b=P6Uzkid8RidVmx
	OY8KtKRd6dpNRqQozN06fR3HHlGRmedIQFyo9Abgna17EgRRYzFFZ84KXMV+wfnsYKrC5eZk+r6kJ
	yEoFE0W0xk6zio2q34t++fRt0XEGLOlxxYwS83DpEdXJxJzGt9NupRUNlhCxWSRY1em3EnDlsCEjr
	kqYHPY+S2/Gu1TOqu7orPVH+gxAHyf2xaygnSlITQ52kcJxB5mefG/Zb3OkmLkPovEAZ3tYlKlONB
	BBByf9jcmIoZzX4xM3rL3dUKf1KwvR3pUBVN7HRWDnzBFkmBWpDLYU9Lxt2rnSOGjJMHIeKGRulln
	dYVFUbD4KCzgDbpu1puA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabVG-008Yfj-8R; Sat, 02 Apr 2022 11:01:10 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabV5-008YdN-4c; Sat, 02 Apr 2022 11:01:00 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout4.routing.net (Postfix) with ESMTP id 4D71A1012AB;
 Sat,  2 Apr 2022 11:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648897257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=AzwyT+mHzC7B+wiMi8w60y3FU2UPOMZ1lb1gM889PVM=;
 b=CuQ/AgBl9PPPDb+yFe4jDBtgKKbTdvqHxbCd/Fb54e7J3hPLno9VY4LNdGzQ1TIxoerzvP
 xR9ifnMmuEjvVdgGjyEjxlRf9OrPfgDOtC+O3wbql08KiyNrKutgpY7zEyZmwNfjNyJy23
 oSKjR3YP0G72L+h6ty5HQG2HUFhARis=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 7E6AB3602D1;
 Sat,  2 Apr 2022 11:00:56 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Change Bananapi-R2-Pro board to match V1.0
Date: Sat,  2 Apr 2022 13:00:43 +0200
Message-Id: <20220402110045.104031-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 43103d1d-1e1a-412a-a386-c44869064607
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_040059_365200_7039A74F 
X-CRM114-Status: UNSURE (   8.31  )
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
