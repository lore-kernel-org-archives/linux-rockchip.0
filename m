Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8924C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 07:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yx5xnEQAqv352sMd/jiENn3z2WBJQJjsbx+7ppNf78E=; b=kFQbnjkQhi6jG4
	1d8JWCAZFCkkX03qTtLvvYASZo+W6Vvk8u1Us4fjmYDuvSSheR3xCyANArMv1Z6zYoRoBXdbdIxt4
	niOCImwzfiZrx88d/f+C49lxjii74Yg+nCcX47o9Ri/3lUrZB1QwtXy/+QwaWGqXNTV2bSET+/om/
	2Ybw7OybeeY3u64vcenXYr5vRTvNT0Twd0JHwJLt4dQ9QbVwVxu8eQQTIIBY3z0XXT/tvPikrEXsi
	7nuuAcO4X9ZOjq568hEQ1GKntP36IoZIEMx+EurPAl1YWhBsYSHdwO8DlbnPlXsDIJkVj7g1gpy7l
	/9EhSJ3b9XOkpEwaUU9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUkV-00000009FW4-3Uj1;
	Thu, 15 Aug 2024 07:18:19 +0000
Received: from mail-m19731109.qiye.163.com ([220.197.31.109])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUjp-00000009FNm-3M0I;
	Thu, 15 Aug 2024 07:17:39 +0000
DKIM-Signature: a=rsa-sha256;
	b=kDMz1WBBsBfHQZV2b5BpKoJVgnMAPlDDoxOl9sEKiv2VY0x4ceyMeQc1A9V/UlbzV8GAR3R7ONPbfsL14bK6tDS1UeMzGaAaPsRyGAvzOHI9n2yd4g03yLnPbOFJyawP3CWSvYatoQCjkycm672VBrfcb0waRX3bzDJyEhNJsOo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nRi56lvQd1lb/9/v3V4eyAuo18seJA3Hj2x5njyEgPU=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 157447E0193;
	Thu, 15 Aug 2024 15:17:18 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v1 0/5] gpio: rockchip: Update the GPIO driver
Date: Thu, 15 Aug 2024 15:16:46 +0800
Message-Id: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhJH1YdHk8YTxkaHUlIT0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9154e5e70909cfkunm157447e0193
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NlE6FCo5CzI4NUM*QyoeKEkD
	PkIKCTZVSlVKTElITEtNSUhCSE1CVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSkxLQzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_001738_276700_EA66AA3C 
X-CRM114-Status: UNSURE (   4.42  )
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

Ye Zhang (5):
  gpio: rockchip: support acpi
  gpio: rockchip: support GPIO_TYPE_V2_2
  gpio: rockchip: Set input direction in irq_request_resources
  gpio: rockchip: avoid division by zero
  rockchip: gpio: fix debounce config error

 drivers/gpio/gpio-rockchip.c | 286 ++++++++++++++++++++++-------------
 1 file changed, 180 insertions(+), 106 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
