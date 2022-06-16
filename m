Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC54C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 16:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JQ9vcJuOK6dp6QcJ6yDk2enEmNHSbNlIcJnToM/p90s=; b=xoE/uyr+ahMGuY
	PKc7DlNYSEXd7LSQvbmAyK+ABbn76ZKZNYfu1fXk7A946Vjb29h7WZWMkn2KcsRZOqTlDN8N9Lvzk
	TiuHnBHHSc0Q9dP1pHLVrg2VroMujScurh/nV0k+jKigVlh2WUPbv74zuHI5/WfsY/fbM0FWoZ7IK
	m/Mj10eV0nYb4vLlGUCwU7vR6wPYs+WG8nyQbjU+XWGgWAknLr6+un0DHKBKGBH4x7JcRTQIPc2LI
	GP9N3UjmhHs028K2EJbcw39Inn9s6SI21LnK9BMKSVGAdbmIAWBcra9EfUpxz36k625Dd0EDsxsAn
	eY7RQZjXBAA23cJ0uUbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rzl-003Jvg-N9; Thu, 16 Jun 2022 16:05:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rzi-003Jr4-Hn
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 16:05:20 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3E0BC415;
	Thu, 16 Jun 2022 18:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655395511;
	bh=sfgjD71mMMO2VKPZ8D/w2A2VjIx3RyrU4ZsbPNtOwls=;
	h=From:To:Cc:Subject:Date:From;
	b=V2X45dtxil8hUJgHpw+70aFLvpL+o9hq6riHi0+anGtNIkaEIjsYkPljW5ILRCl+3
	 g7NGbhMhYlBlxvEdcty7f5/ScKKPAtrYrcoBCIYOFLPbUSYXkh4Ws7cWwW+5VzHb7/
	 LlvK+jrJKKrp+ipmPkGavL3Las4+TOm0/Ib2u3xQ=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 0/3] media: rkisp1: Improve DPCC configuration
Date: Thu, 16 Jun 2022 19:04:53 +0300
Message-Id: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_090518_780726_C1134E55 
X-CRM114-Status: UNSURE (   4.24  )
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

This small patch series improves the configuration of the Defective
Pixel Cluster Correction (DPCC) configuration. Please see individual
patches for details.

The series is based on top of "[PATCH v4 00/21] media: rkisp1: Misc bug
fixes and cleanups" ([1]).

[1] https://lore.kernel.org/linux-media/20220421234240.1694-1-laurent.pinchart@ideasonboard.com/

Laurent Pinchart (3):
  media: rockchip: rkisp1: Set DPCC methods enable bits inside loop
  media: rockchip: rkisp1: Mask invalid bits in DPCC parameters
  media: rockchip: rkisp1: Define macros for DPCC configurations in UAPI

 .../platform/rockchip/rkisp1/rkisp1-params.c  | 52 ++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 25 +++---
 include/uapi/linux/rkisp1-config.h            | 77 +++++++++++++++----
 3 files changed, 104 insertions(+), 50 deletions(-)


base-commit: 4d846800b527933a46ffd5ff48b87f5a03ca087a
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
