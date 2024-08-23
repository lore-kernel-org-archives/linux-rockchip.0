Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E2DC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SiEw+Ezef5cadXcHvIYRjS2R4Mfxof5PvKejWJ+eVLc=; b=SojhjKId3tCLzo
	4LMFj0blpq7IspKY7+utBawtiBYoKkPQM6cqCUPeDxzXsF7af2jGLi7dmOdnI6oW9t3CffnKffzN5
	7TFsISSNwvNDArc3UHx8YLCXCXcRnRkj094Oa8GhQBwbVteTHKQmgCTkqVr7xDCoVhCbocoWEuRI8
	JtJVZzcwNnwFxIagzcFpRNzmdxXDGdvdlp91dEmUsC8BckYoXDmD0B5sbrkYnRO5T4+IIezfb6GFP
	pvSOsRM3T7LzCqnoYc72Nxqse+acZLb2TlcLRzZeXTQcMOFz3bReraIOCgeFH2C838k/dKnXSNRwx
	ubcN6pMJ3rhi2DWaqagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLHE-0000000F5iH-0meY;
	Fri, 23 Aug 2024 03:47:52 +0000
Received: from mail-m32118.qiye.163.com ([220.197.32.118])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F4z3-0sEZ;
	Fri, 23 Aug 2024 03:45:25 +0000
DKIM-Signature: a=rsa-sha256;
	b=gPm/GQSHAAxzH797ORe9emB7dVOvZbhlLMwglem7R6bcBK2S+qBaOzh7tPZWMkeHdJJ90mqvPtZzprKB0z/o3Espjj9N40MF6qssd2h5rZoA/N2iKQuSKR9oNNAhJq9oGrx9Ib5OMUlWFVVD0Ngn6XZ/2ASgJC0wA7gqcoI0lN0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=F5H5rNwV6aJTfLYYBUUqm2z4cRjXCUxTyxJDgnGMbc4=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 22DE17E02A0;
	Fri, 23 Aug 2024 11:44:57 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: Update the GPIO driver
Date: Fri, 23 Aug 2024 11:43:03 +0800
Message-Id: <20240823034314.62305-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgYGVZNSUJDSBlMQkIaQh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d565e0109cfkunm22de17e02a0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORQ6FDo*PDIwEiwwGTZPTggt
	GEwaChpVSlVKTElPSENPTUJDSExPVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUlCSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_699280_BB9B835E 
X-CRM114-Status: UNSURE (   4.71  )
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

GPIO driver support acpi and new version, set input direction in
irq_request_resources, fix division error and debounce config error.

Changes since v1:
- Split commits with multiple changes into separate commits.
- Adjust backportable fix to the forefront.
- Modify messages of some commits. 

Ye Zhang (11):
  gpio: rockchip: avoid division by zero
  gpio: rockchip: release reference to device node
  gpio: rockchip: resolve overflow issues
  gpio: rockchip: resolve underflow issue
  gpio: rockchip: fix debounce calculate
  gpio: rockchip: Update debounce config function
  gpio: rockchip: support 'clock-names' from dt nodes
  gpio: rockchip: support new version gpio
  gpio: rockchip: Set input direction when request irq
  gpio: rockchip: support ACPI
  gpio: rockchip: driver works without pinctrl device

 drivers/gpio/gpio-rockchip.c | 297 +++++++++++++++++++++--------------
 1 file changed, 181 insertions(+), 116 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
