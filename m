Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E2DCF884B
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 12:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmCLwsagVj0s6QYn/AjBV7qpgV1hpaXoFcEktm8Py6Q=; b=11GvMe1+r0BtWv
	nrrpDzgC8x+7pX7NYa74XRSeXg/MXpmaqoq/UBj8h+bn7TwBRzgB+gfOYwjCW8daIWZm5Et3qrcXY
	Ua7BkJ0iI6nvrjjWcclc6oogSnO+apISsnQiSE/4KQEMfX+d+6WUIK46wzguZww7daAGSAVT4EEkl
	RMViG+cYxwzRKFtRPqOQqa1dcTabFUSIOytCwDZnCstNvch1VVnrBlFeRyp/lk6AlpB9f+ChFBSD+
	e6ZOpCEEnROzaGwh4KjUOkM9XKr3zZMPSejWThvq7rfIqIddlFoUJ1HW2TzurKbVbC03YJhxS6hzc
	y/opWziM0FADFwe6st/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM3L5-00000006cNo-15CV;
	Thu, 20 Nov 2025 12:00:39 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM3Ky-00000006cLr-1xmC;
	Thu, 20 Nov 2025 12:00:37 +0000
Received: from localhost.localdomain (unknown [116.25.94.95])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4b77142;
	Thu, 20 Nov 2025 20:00:20 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: rockchip: update 100ASK DshanPi A1 support
Date: Thu, 20 Nov 2025 20:00:06 +0800
Message-Id: <20251120120011.279104-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Tid: 0a9aa1230cd403a2kunm2d0ac75b4ab40
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHxhMVkMaQxpNHhkfSEkYSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQk5ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_040034_678098_1BD9E362 
X-CRM114-Status: UNSURE (   5.05  )
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

Changed from v2:
  Remove merged patches
  Split patch for more details

Chukun Pan (5):
  arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
  arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
  arm64: dts: rockchip: enable button for 100ASK DshanPi A1
  arm64: dts: rockchip: enable USB for 100ASK DshanPi A1
  arm64: dts: rockchip: enable RTC for 100ASK DshanPi A1

 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 93 ++++++++++++++++++-
 1 file changed, 91 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
