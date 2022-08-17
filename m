Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DBDCC28B2B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 02:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mIVHu3VzpwiumMewq7u0S9yT22FeBRz7/+Kdd62iwFA=; b=SCshALDW8h7V1V
	T3+8A9hEXpXV1Tnzqp8kQFUpBjQULTIik0oLxrlX0NQ+XoDI0P4NZVEvcPBi3KdN1woZFqERrGBTt
	CSYtPAFEAQNF/kAPYYDbPLKjNsRkU2fLUfRFNcLpSOZZze4G2HQLzlJbXnGOfz5TSN+4z2TeRsazn
	+HR4knX44OAnUpqHCHzpId6ynosU51yCVDZcSKi6Soku1oj2iC47r57MoVjIoQn9iIRktXHhH8BoI
	enERDdoUQxjNpX857Yd0RX7Vt2UiG5ta3KUrCyEqEKfnyNUDaM68te4w5V2T0kykhEl3aeABQ5p5I
	TNEkLdctE6GrKhJLkahA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eM-0090v1-2e; Wed, 17 Aug 2022 02:19:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eG-0090ol-Dp
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 02:19:15 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7BBEECC;
	Wed, 17 Aug 2022 04:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660702744;
	bh=p6YhSLc/MbFiHL92Bsw4xKgsyTThualgTp23OJPrJI4=;
	h=From:To:Cc:Subject:Date:From;
	b=o1g27KOt7z77qjV4n4wgveO8LUo9tP3lA6kiigrIifa/7v2pBcq7DV4w0lZPvChMT
	 +I2llpS6if7Hv0n2Q7hPgOjdwvHxeNcvhp4D4VhuvUuAiTSysokUwHgG7XaWbE+2k4
	 Ae6JZ1kf9EnfpMiRQrmZhPUETgE1qxxXQSygSudY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 0/5] media: rkisp1: Fix LSC initial configuration on i.MX8MP
Date: Wed, 17 Aug 2022 05:18:45 +0300
Message-Id: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_191912_693636_2CF0BA7F 
X-CRM114-Status: UNSURE (   8.93  )
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

Hello,

This patch series fixes the Lens Shading Correction initial
configuration on the i.MX8MP.

The i.MX8MP integrates an ISP8000Nano v18.02, which unlike other
versions currently supported by the driver, gates access to the LSC RAM
with the ISP_CTRL.ISP_ENABLE bit. The initial LSC configuration being
performed before the ISP gets enabled, the writes to the RAM are
ignored, leading to incorrect results.

The series starts with four small drive-by cleanups of the LSC code, and
patch 5/5 then fixes the issue. I'm not totally thrilled by the code
architecture, but I'm not sure why, and I have a feeling doing better
would require a large refactoring of the ISP parameters handling. If
anyone sees an option for a better implementation, please say so.

The series is based on top of "[PATCH 0/7] media: rkisp1: Fix and
improve color space support" ([1]). Reviews for that base series would
thus be appreciated too.

[1] https://lore.kernel.org/linux-media/20220815065235.23797-1-laurent.pinchart@ideasonboard.com

Laurent Pinchart (5):
  media: rkisp1: Clean up LSC configuration code
  media: rkisp1: Store LSC register values in u32 variables
  media: rkisp1: Simplify LSC x/y size and grad register macros
  media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE() for gradient
    registers
  media: rkisp1: Configure LSC after enabling the ISP

 .../platform/rockchip/rkisp1/rkisp1-common.h  |  29 +-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |   9 +-
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 378 ++++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  20 +-
 4 files changed, 239 insertions(+), 197 deletions(-)

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
