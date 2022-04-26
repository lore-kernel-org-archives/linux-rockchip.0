Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B57D2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v90ZIlA6t0xNs2dTxauQjxcpxAz1WaR6uwbkypSODjI=; b=kS05EsscoAZOH8
	7FHkAo94MaDOHO+h8UrEokYd5Yx+R+viNPw69NHO/prI/qxJdF3r0RMEFuNow7nG6NQL2rasPAj38
	dTsG/60vO1CvkjbP8KsY1NdIjKapEhdpoKNFmmNlotBtcrgbwr6ZkhnWlmvniIx2DsH1SBHe22Ajh
	YyrCAgyW3yk79knwqtmOXH9+yvAIpekDpGDLi9QGL5WfcfNP+T8Gb3Y53ntXdC5mXKeGELNFAvlNu
	I4rzCltsohcrWd6v1dd0998wqgPUDWvsipWcA3N675kTGdUGcdU0jJuQuQNea8386gOLOCBOjaOiU
	y8tPsmXy4m+zgmy8LvaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLbG-00EkmK-Pp; Tue, 26 Apr 2022 13:51:30 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njLZP-00Ek4c-Pt; Tue, 26 Apr 2022 13:49:44 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout2.routing.net (Postfix) with ESMTP id B5E135FC22;
 Tue, 26 Apr 2022 13:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650980973;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=dSlDPKAzzaq/bDB/Mgjeeep8HHzSjpH4wNIELJEgfLY=;
 b=LBiqkBfyO3csDUhz/CIEgnSBcuuuHGsWvMRPZhVFTXREB4nAuAtBCmuvSAmJMdixMLlfwF
 yJ+gxir5TiFHoD8FZhza5dtT3Ea4ieFA88Hr5yKcLVR4uVurPxRdpyOocrR8FOuA237Mg+
 Tl1ug0CnEWkG3QuboucXbgvJlRseWSs=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 5D074360630;
 Tue, 26 Apr 2022 13:49:32 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [RFC v1 0/3] Add MT7531 switch to BPI-R2Pro Board
Date: Tue, 26 Apr 2022 15:49:21 +0200
Message-Id: <20220426134924.30372-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: a0cd959c-79df-41a0-9cf6-bfb567398990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_064936_090876_5BB407D5 
X-CRM114-Status: UNSURE (   8.37  )
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

The Rockchip-Board Bananapi-R2-Pro has a Mediatek MT7531 connected to
the GMAC0.
This series changes DSA driver where needed to work on the Board and
adds necessary Devicetree node.

Frank Wunderlich (3):
  net: dsa: mt753x: make reset optional
  net: dsa: mt753x: make CPU-Port dynamic
  arm64: dts: rockchip: Add mt7531 dsa node to BPI-R2-Pro board

 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 49 +++++++++++++++++
 drivers/net/dsa/mt7530.c                      | 53 ++++++++++---------
 drivers/net/dsa/mt7530.h                      |  2 +-
 3 files changed, 78 insertions(+), 26 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
