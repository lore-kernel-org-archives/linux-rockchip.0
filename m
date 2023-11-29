Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B424AC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wstTUJ//2LnDWmDNufU/z4TfeX//oF4v4m4ERzuPVgw=; b=JJqsPzdqGow7TJ
	ZVvoHRTpjpdcRrTfGrsu3juYHkilfsOel2E/vuQKutjxhqQ52BwU82c96FhMDmLfOAtdOwUkQyKwt
	bGz8zhr7pch+lKTii3p8T0Lqp9oSUEqKB/E7+zi2bRFW40GzKd+Msg5CN6wOE2cgq8FmK5cV7XM02
	Aszih8zAdDsUXzvd6JSdIsCiYVtOPkGpDVPLyM1hF4Nc0KXF/82R53VT5Ujeo5Y2zyH/YFFNJ/6zE
	79v4HWPXmA1BwhHIIOnnY1NV/E+92zDVKSJdCvYka6TbVHqcNFdxSIIpIYdG25A7FwDuWEn4M2SRV
	7I0uk93UmV4JUHRz7Qaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Gtf-007fPv-0m;
	Wed, 29 Nov 2023 09:30:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GtX-007fGs-0g
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 09:30:13 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-135.catv02.itscom.jp [175.177.49.135])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F1F992B6;
	Wed, 29 Nov 2023 10:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701250174;
	bh=nqrEqQSOhAYlctX57th3QWKSG0vRwgH0APQhoICNfyw=;
	h=From:To:Cc:Subject:Date:From;
	b=IOha4XHTmYtNB8c3y3F5DeulKEGuCSkmkxazasAoy344UW4ZFfecosnIVzoAlesHV
	 uLeVVRe6aDPM+kTeizkMBDBZjZ3jx2eHKuLGGXen256NtXpR8ZQlaipFvuILsilbYQ
	 0yzWjwRRwgzeRC2fmaGwb7pN7nHyKs3bOgm/qf2A=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH 0/3] media: rkisp1: Misc fixes and debug
Date: Wed, 29 Nov 2023 18:29:53 +0900
Message-Id: <20231129092956.250129-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_013011_461393_82AF86DB 
X-CRM114-Status: UNSURE (   7.86  )
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

This series adds a small cleanup of the register definitions, as well as
some additions to the debug for the rkisp1 driver.

Paul Elder (3):
  media: rkisp1: regs: Consolidate MI interrupt wrap fields
  media: rkisp1: debug: Add register dump for IS
  media: rkisp1: debug: Count completed frame interrupts

 .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 20 +++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  2 ++
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 +++------
 4 files changed, 26 insertions(+), 6 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
