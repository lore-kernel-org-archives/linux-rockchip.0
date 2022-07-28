Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C98BAC04A68
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Jul 2022 13:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/GxyMwg0Cs09+4B+SBfgqPY/mw3OLmM6WsI8BRnn/4=; b=0tlMmH99rJ18DX
	iWutDDhTrCNXOC9DLzQT78c4Px2oploP6jSgFbovQ2PkfPTwTwGeFAKdc7ytXv+UpsgK4cPHRu9Fi
	n7QAqHnQYiKxXx0ueXoTRemxiCDjD1Z7Zho45fgIlrflAwd161756NO7XUSQYCGW33MT0k3n+mGga
	wuhJduoV57otvxexEjKCDEDQP1+pdhnwWMd0FiP9bm/cg6liMDzlyaf2eaJhmRFlaCo3X95ITdeWY
	kxHSrvHPQb87igeO7aDwG+fwJ7ifbWW+m6iLV6SpxqzBH/W8TLd8tVf1R3v6LxSdECbwlObK9yljv
	ujipDIxqg3NilH1N4chQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH3Co-009UNE-7c; Thu, 28 Jul 2022 13:05:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH3Cb-009UFf-9F; Thu, 28 Jul 2022 13:05:22 +0000
Received: from pyrite.rasen.tech (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B245556D;
	Thu, 28 Jul 2022 15:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1659013518;
	bh=JEmOw0Vyk+XDbX3u+/p8dfRLUILJaGP7HXoicnF/1D0=;
	h=From:To:Cc:Subject:Date:From;
	b=DXcIO3rXXjb+r77sLtxhZqRYaIiJLPkJywLCFq4zEEqY73p+RYLB+VduC48swjD94
	 rB+NU3cR0WDeP9uExu1Pfzkc5vwsMuVb7b0/cn9Ez3eTm/c9huFOF3Sn+Yr65jHYuE
	 7zwF7PIi6hZepO8bVQNWHE651GRwdJY+1UqqFNoM=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	laurent.pinchart@ideasonboard.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] media: rkisp1: Add support for UYVY output
Date: Thu, 28 Jul 2022 22:05:03 +0900
Message-Id: <20220728130505.2077842-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_060521_500965_9F7091B8 
X-CRM114-Status: UNSURE (   8.16  )
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

This series adds support for UYVY as an output format in the rkisp1
driver, for devices that support it. Notably, the i.MX8MP supports it,
while the rk3399 does not.

This series is based on branch pinchartl/v5.19/isp/1 [1] at this repo [2].

[1] https://gitlab.com/ideasonboard/nxp/linux/-/commits/pinchartl/v5.19/isp/1
[2] https://gitlab.com/ideasonboard/nxp/linux


Paul Elder (2):
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format

 .../platform/rockchip/rkisp1/rkisp1-capture.c | 67 +++++++++++++++++--
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  3 +-
 3 files changed, 64 insertions(+), 8 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
