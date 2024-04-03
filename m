Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3014CCD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 13:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0CUBXj6kWvNQkay0UEtrTmeRLQp1Y9HWY3m+DgUduk=; b=U+DlDXG+sKNGmU
	RVgNmI2YH2n7N+0+lQRmz51Gecne3njKUduCk3eHZpkYIIlZuZ7fyzytev4QkkwqVI+y8bbqhdxBx
	f4yMnfXTRQlWxLEgQlwe6w/IRYQBYtOhoST/XD/PAmXiXJNEhd1fxKro69jRVWp2n7sn5nbSb8n91
	2LsSEjB8tjbiz9p8XyX8BgojFq7dnnKPeBtBGdFJiv1v9ZS7M5ViYY8YGzSmaOPU/zRyxgUucCjx9
	9dC5oH5DZVAV7Rt0ml1wMOxYxHEdDizRQRyuovEc0zH2eIUECnt3CLf+LHlpXA0bHXxbpZrNPMxL/
	k1hU32tyrLcD4ksY8nWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WM-0000000G8F3-0lKB;
	Wed, 03 Apr 2024 13:19:18 +0000
Received: from mail-m12794.qiye.163.com ([115.236.127.94])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs0WH-0000000G8A9-17k2
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 13:19:16 +0000
DKIM-Signature: a=rsa-sha256;
	b=kiu+WDGMWW0Zqm8Wc4WRUB7U+gnsBn3gag8KuwWdeTUJu8+pGfxmZ+zU710CS1Sqo66RjwujPrvEf0G55Rsyz0Y6dpHAndNfh57rMgxbGl2seh83Ut1vcYdzx6gUQBrdkQGO8w/fFJrfen92MwP0RvP6tXKF9NJOCw7i4BucJKs=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5ivLh8M4acymImJP1Q9OUpWegv9iApTGSSCamSY9LFU=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id BBEBE7C0399;
	Wed,  3 Apr 2024 21:18:38 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de,
	vkoul@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Patches to Add support for audio interleaved transfer
Date: Wed,  3 Apr 2024 21:18:21 +0800
Message-Id: <1712150304-60832-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkMdHVZCS0tJH05CGBhIGUJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8ea41c8fd209d2kunmbbebe7c0399
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgw6FBw6NzMSATUPTDccHg4T
	QgIwCUhVSlVKTEpJSk5LSEpCTkhKVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSk9LQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_061913_966854_5DA578E6 
X-CRM114-Status: UNSURE (   6.09  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support for interleaved transfer which used
for interleaved audio or 2d video data transfer.
for audio situation, we add 'nump' for number of period frames.

Changes in v2:
- Add the pl330 interleaved transfer

Sugar Zhang (2):
  dmaengine: Add support for audio interleaved transfer
  dmaengine: pl330: Add support for audio interleaved transfer

 drivers/dma/pl330.c       | 169 ++++++++++++++++++++++++++++++++++++++++++++--
 include/linux/dmaengine.h |   2 +
 2 files changed, 165 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
