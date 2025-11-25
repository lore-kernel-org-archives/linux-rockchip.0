Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D312ED1036A
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 23:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6km/0vryZfD7tY/y8hg5RHBjStGghvAhikbNVRfHNrs=; b=lTvTSN6vWjVEvK
	Q60qSsSlcGnkh/6BCT26wvRU7X4Pl18GmcKLnh0UcoMiZ7M9MgSe7z4mqcgHw8Vf4WVS5g2AfkAT+
	+VNfARrnWb55fZkTkB9FhLC8DvTGA5bOnpKI5VemfWO52Fc13sSUxjuJoh3yOntAH70wkuX/K983F
	vWMA5Mc3/Tl/HUc4KRnpgoIEgIhLnQG7pC/juYJmOUiYgMImQ0eFbwQEZgr3TPFfwDLd0y/FuLEPO
	O/VM1gCiaDWxV9ZfMfOfsY7eo4jGV+uPltLXPQxlLnt3/fWv8Yg6O+PJ0WrR9PwqBFCNxWXES6QDA
	nbO1agUw07BY076fZ8+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2R9-0000000E3hg-3DUI;
	Tue, 25 Nov 2025 23:27:07 +0000
Received: from mail-m6032.netease.com ([210.79.60.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2R5-0000000E3gd-3Ujb
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 23:27:06 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ae234a15;
	Wed, 26 Nov 2025 07:26:56 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] sdhci-of-dwcmshc improvement and fix for Rockchip SoCs
Date: Wed, 26 Nov 2025 07:26:38 +0800
Message-Id: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9abd57746f09cckunm0d7ff06b4d7bf9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5OTVZKH09OGhgZSEsZTxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QKUl8hy2l1gEYZ3Vb0kP1lUImclzr+mnPtZUWs2txZyv2Rt0+Cq7a987iHwLdRpmAxgLhGxaChBQrHNPhrx/cYamnmR1waqt/uZHDlrScDEfC7Y5XgVaVKzXk6BiMxtTOj/QsLTBcGKXr9Mv6ZhoY3QA2KX2AGACIAR0WVzGt8k=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=sYABF2vZsyG5tO/eVEdXik09oQ3ruKdaNaX4VN3Q0As=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_152704_419278_273D2CC6 
X-CRM114-Status: UNSURE (   8.83  )
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

This's v2 of these two patches which adds ack-by tags collected and
rebase on top of linux-next.

The first patch fixes the auto-gating problem of dwc IP when using CQE.
The second one improves the performance of CQE by reducing CIT.


Changes in v2:
- rebase and add acked-by tag

Shawn Lin (2):
  mmc: sdhci-of-dwcmshc: Disable internal clock auto gate for Rockchip
    SOCs
  mmc: sdhci-of-dwcmshc: reduce CIT for better performance

 drivers/mmc/host/cqhci.h            | 1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c | 8 +++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
