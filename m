Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4433C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 13:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QJGpS+CsZHYqYthmfgRZQ57lKDa6EHYpF69M/pVvzhk=; b=AmkjbjQpHsV9th
	ybArTIKMWd+C2PIk0WpyaPf8a4FGP1DG+zgE6GtNoWoYSVkYDbdIJwpbtGPOsA24PLlwmataKsuxK
	eO+wBZhZnzONi9+Fkp7t9bVSgrsos5NkoSAsyb+TQxqhQtKVfX9ZIPi/k5D9sUJMHo993tkTyMaBq
	9MJ3KjyXe4PhjY6k6ITSFlfeT0k+YXv9Y9mHFWiUyOoJNce8voDoJARUcYUuCksh2pSuPq4duGvJj
	hRQ9jZh3shfXtQXDdR/Kmnwr+L1YiNGKM4+buWeMVWoI+EiEcR1jduyRigivQjaNT0zYvVUkTf11A
	KQM3W+VcPccSR2dfJ3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRXOY-0000000AeSs-0IBU;
	Wed, 10 Jul 2024 13:30:06 +0000
Received: from out-179.mta1.migadu.com ([95.215.58.179])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRXO2-0000000AeEX-2ZZW
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 13:29:37 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720618171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kQvGNQXCeiBTKU15PX+2I2Ocw+0QTKnwDGP4dLx/c7Y=;
	b=EoPvlERgYzGZi+JJ7gFmd8Kk/71EDszDXteapmJLxVN5CFTXELY5xWm5lkLDQb5gD0KVzj
	ywwPYDyJVHB8vpcj+AQxxo2UxPC6UyvxnRFEITfIwoOdZ50ZPUo/EKruLXjjYCEUbd0gwp
	CHAxXiMc2MEZ5zA2y3TCxojSdDcCMw+nYqz+GibfzlRcisqwi2Fk/7Y1QDpUh+3ZW41C4i
	dEQON0nQQs56t0Qzf/zOmdBaX/YXn6JDebwpRiH4DIJ77aCpVqYCNQWA+emRdpzhC5/nlk
	466PzlUfhpkdkXgeJcy/jwWXADPxoptycDOjZN3eb6x+xdOJBajUZ0jK9/SdBw==
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jbx6244@gmail.com
X-Envelope-To: wens@csie.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 0/2] sdmmc/sdio/emmc improvements for RK3328
Date: Wed, 10 Jul 2024 15:28:10 +0200
Message-ID: <20240710132830.14710-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_062934_954346_74DCA969 
X-CRM114-Status: UNSURE (   8.33  )
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

This is a rebased resend of Alex Bee's prior patches which haven't been
merged even though there doesn't seem to be anything wrong with it.
These patches have been used in LibreELEC for years, which means I've
been using it for years on my Rock64 and I've also added it to my
latest 6.10-rc7 build and that worked fine too.

Link to v2:
https://lore.kernel.org/linux-rockchip/20210623145918.187018-1-knaerzche@gmail.com/

Alex Bee (2):
  arm64: dts: rockchip: Add sdmmc_ext for RK3328
  arm64: dts: rockchip: Add sdmmc/sdio/emmc reset controls for RK3328

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)


base-commit: d79d713d602e8b32cf935ddfdf61769cb74ba1dc
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
