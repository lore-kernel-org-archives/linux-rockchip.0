Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C64CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 09:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=loWQyqYqSj/EVy9/mVsE9b+7NEMy/sSae+3fgJFgnjc=; b=EPFUbChCNo+6Zj
	Ql6VjXBVICI84iM91zh1S7etTXYI9plGo9IAuP7OJJxmdme8205P2eFYv/NNUmeTa7nRnTV6jquJf
	KisseIUXSV1RMEqbUUQQKo6Tqfn3wxW/e4Yt2FMgjPuk+Au528XCv0OvNS5UNHOUMIO6tVnq1e0Wb
	xa6DVloOif8t8z0WA/GWN1rMaBH2siYtHLiKvebZyvW3/qVL19+JeuJdu/fdLzwshU34pJLbHFDfO
	rakuPoJ/DZzMJ6qLq1dtl5aQyBmk0vx1R3NNflBzcY9WykVnc+2VbTiHxK97KbQOorV4enK2P2gKI
	n8rpqglLEQS5kFeaxbRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gv9-00000007LAu-3ujW;
	Fri, 17 Oct 2025 09:38:47 +0000
Received: from mail-m3298.qiye.163.com ([220.197.32.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gv6-00000007L8q-16tW;
	Fri, 17 Oct 2025 09:38:46 +0000
Received: from xf.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 264523269;
	Fri, 17 Oct 2025 17:38:40 +0800 (GMT+08:00)
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	zhangqing@rock-chips.com,
	sugar.zhang@rock-chips.com,
	huangtao@rock-chips.com,
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH v4 0/2] Add power-controller support for RV1126B
Date: Fri, 17 Oct 2025 17:38:32 +0800
Message-ID: <20251017093834.331998-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-HM-Tid: 0a99f189210a03a9kunmbe68a2b91698e9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNCHlZCS0pDQk1MQ01JQkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hMuhADEPSmwP6nPasnEsJ31HuhbuNxT3etn3+hJJkFF62U7zWJC8lq+LcH/zBZZl7vGpFiijdsoOn54FZy4hlmlP7K0O+I9MNURftFqGk8K+ZAfI9ik/F1H0BPPUBQHk8FcYzX4o4naL5CW7pSQ64Kwd4wlHa9s63crTXOuFojs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LjF9ZqEFw1pOCkzkvk35rLOTjYm8/YyQQGfvrv/Wf0E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_023844_833265_52ABC547 
X-CRM114-Status: UNSURE (   6.36  )
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

Add support for the power domain controller on the RV1126B SoC.

Finley Xiao (2):
  dt-bindings: power: rockchip: Add support for RV1126B
  pmdomain: rockchip: Add support for RV1126B

 .../power/rockchip,power-controller.yaml      |  2 +
 drivers/pmdomain/rockchip/pm-domains.c        | 41 +++++++++++++++++++
 .../power/rockchip,rv1126b-power-controller.h | 17 ++++++++
 3 files changed, 60 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rv1126b-power-controller.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
