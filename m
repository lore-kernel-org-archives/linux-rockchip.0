Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCA81C07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 19:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1IgAgkx7byCPweJmzE2WsXfRg8sfK6w9lFBT64G26mg=; b=aM6p8vTsLMO2Y1
	UhXu/s+h2Wfc4CRUGMjBAe4t5qZHUskTBGPCk97plxkbyUHc5qpz3BNTbCiTlQivn3WqUGaw77G50
	V/hYe3yO40P6Hv53K+PjS9tXgZWQIi1fSo92kZk5LIkwB/Db2syTFOuxGaXivH0R77tuXXwlP0bdn
	2Ntx3WCWi3p21wUsSbgWEM0AZBGuG6GsiG2Xuvqr7GvOAkxOwZ2XkAAnDDbkBXyRB7CRzDa9/blqv
	zQ0Z74He/aDJo3hlksNDQWc0CL66X3+ctw0miVLancoMrT1oxy2+uFaWRp7SdZ7QlEis/dRjqdoBd
	ojqd5fvZ/fhs2JJMQATg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAO6-008e5d-Uu; Sat, 24 Sep 2022 19:00:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAO4-008e3X-AW; Sat, 24 Sep 2022 19:00:29 +0000
Received: from p57b775e6.dip0.t-ipconnect.de ([87.183.117.230] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ocAO3-0001iI-11; Sat, 24 Sep 2022 21:00:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.1 #2
Date: Sat, 24 Sep 2022 21:00:24 +0200
Message-ID: <3790767.LM0AJKV5NW@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_120028_394241_7091BD4B 
X-CRM114-Status: UNSURE (   8.50  )
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

Hi Arnd, Kevin, Olof,

I was somehow expecting more driver-stuff so while this
could've also lived in the dts branch, I put it in the driver
one, hence the separate pull.


Heiko


The following changes since commit 6541b424ce1dda616d3946e839f015c984df7a99:

  soc: rockchip: power-domain: add power domain support for rk3588 (2022-09-09 19:06:41 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-drivers2

for you to fetch changes up to adc4f190260a6c004f950992d8c9ee3aec8da38b:

  dt-bindings: soc: rockchip: grf: add rockchip,rk3128-grf (2022-09-14 10:50:12 +0200)

----------------------------------------------------------------
Some binding additions for rk3128 and rv1126

----------------------------------------------------------------
Jagan Teki (2):
      dt-bindings: soc: rockchip: Document RV1126 grf
      dt-bindings: soc: rockchip: Document RV1126 pmugrf

Johan Jonker (2):
      dt-bindings: arm: rockchip: pmu: add rockchip,rk3128-pmu
      dt-bindings: soc: rockchip: grf: add rockchip,rk3128-grf

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++++
 2 files changed, 6 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
