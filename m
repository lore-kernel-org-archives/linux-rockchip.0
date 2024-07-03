Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09AC6C2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 21:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aJgCMaNZIwBWtLXpgzDMV6XHa0kfPOuCdZNbi7lpwIc=; b=cj9y9LdWbZZFKK
	4P97COix4EuH0taho/Ip7IcOrPbpT07Asy6mmexC4CK1v9g1hvTkRg3fSMklQJKvGgSWBA3oGhHyD
	y7/JtBAhY231/ovbNqsBM3jo0OO1+wQIuwo59K0UDNSR0BC3gGk6BWJLsHRnBDJdiG/bYgn76PPD+
	175gh/ACnyPifCYYmuFgqFEqpmyB8LzewQ0iev+4BXLne3U4S2CcGGRaJZRxB6Da4r0l6gP2p2hB2
	4J91+24jZA+pO2ocxzkmXgVHbdrFKIuOmXLqsTHz5cUe1aNC2xYWaMrClf1xAWWMT4KvViALvDYEp
	jJ0I+x/Is27Sbq7V/oxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7At-0000000BRia-0iSz;
	Wed, 03 Jul 2024 21:05:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7AV-0000000BRZw-0hpD;
	Wed, 03 Jul 2024 21:05:36 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sP7AR-0000bE-HV; Wed, 03 Jul 2024 23:05:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Rock 5 ITX devicetree
Date: Wed,  3 Jul 2024 23:05:22 +0200
Message-Id: <20240703210524.776455-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_140535_229070_16531199 
X-CRM114-Status: UNSURE (   9.94  )
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

Add a basic support for the Rock 5 ITX board.

After struggling a bit with the pcie3 ports, thankfully they seem to run
pretty nice now thanks to me finding the property for the shared-rx-clk
for the pcie3 phy.


Heiko Stuebner (2):
  dt-bindings: arm: rockchip: Add Rock 5 ITX board
  arm64: dts: rockchip: add rock5 itx board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-rock-5itx.dts    | 1188 +++++++++++++++++
 3 files changed, 1194 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5itx.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
