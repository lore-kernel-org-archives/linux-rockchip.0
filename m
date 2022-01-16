Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05010C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jan 2022 12:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dpau9AKoNp6s9kPNqPwXL4U8F0cKONxp8iH5IwFj5Xc=; b=wspsMFndXfwle4
	AzaYbpaEZrNL94znCeF7wqAEOqtzG8+dlv8bRLajk8QLFnqNkUcYTWSjZyjB3+9+pXKCnuayqU0ye
	BSaFT184PMV7wWkN6b9fotr5Rd/rIGQ65/Y1JZhjTcagA8Os70WRRkG3OGOKjOdMe3EFind03giXw
	NDCLnpcOMX4LmBTGHcEayGPg9TXidn3dQXMuwnRHgGI60Pd4szL7Pkax5KJhmHNukb3YWdnISvRgp
	b8UC+WPLjUR3BOxmZhG81ouD4WgUg3pxlFGrdiKT0xzkwnxB3e+F19ir+HxLv8LljntV2t0AroNZy
	8vAE+Q4GO2ywsoDJ+a9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n94yg-00CQnk-9L; Sun, 16 Jan 2022 12:49:46 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n94yJ-00CQjE-NP; Sun, 16 Jan 2022 12:49:25 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout2.routing.net (Postfix) with ESMTP id 774175FC6E;
 Sun, 16 Jan 2022 12:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642337358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wi1GdqhUl9BI6fG/qKFpAjzCROoto8ipCaIuJxHwcFQ=;
 b=QZkhXW8bD+Q4ABcQ+8JO1x0qWMnbxQkisOG/XkW2k8O9aI/1hWPwZ3ozNQElyAPXRs19AG
 1ZxCdoB9Yv0C2xpDWw1YjGiI99xwjH7IvpuquufZplspZcOnnNxvNUcvNjolRL3Hd1Syvh
 b+BWkpzwdvImxmAst7WbmbbpZNGvUG4=
Received: from localhost.localdomain (fttx-pool-80.245.74.150.bambit.de
 [80.245.74.150])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id CE73F3602F1;
 Sun, 16 Jan 2022 12:49:17 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] Add BananaPi R2 Pro board
Date: Sun, 16 Jan 2022 13:49:08 +0100
Message-Id: <20220116124911.65203-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 1f677243-544e-41f8-b959-92b394ce1377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_044924_097961_678FCD6F 
X-CRM114-Status: UNSURE (   8.66  )
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

This Series adds RK3568 based Bananapi R2 Board.

While testing new dts with dtbs_check we've found an issue with
mainline gmac0 node in rk3568.dtsi which breaks dtbs_check. So first
Patch fixes this problem.

Frank Wunderlich (3):
  dts64: rk3568: drop pclk_xpcs from gmac0
  dt-bindings: rockchip: Add BananaPi R2 Pro Board
  dts64: rockchip: Add Bananapi R2 Pro

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 428 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |   6 +-
 4 files changed, 436 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
