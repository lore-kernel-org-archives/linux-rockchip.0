Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B23CD1280
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 04:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nHQsTUC1Dth7tBuX6wgx4Civ/M/sMiuID0RRr2Lzbgg=; b=T1OvbyTAvzwrne
	tuFssymQ/4dtTC4oLuNST6twXUzctX/rphb4bIy9s+8GNSmotjz1FOpTSW+0WkzNRIMVNc356uJlz
	4K0Uvv6aFe8jb2ua+WH0wTrKLiU6Y46lKXvJCFBcn3AuI6zWZ2aYi7bvoJLyJmV9JnZlAVJWoSPnt
	sOn/im6hpnbG/pVXsZkceJJD3u9Swho4g5MnMcbUH1rIp0EBp1a0LYZPqQZrO/U5Z/mp8dlT3UqpL
	9YMCAnCK99wi4KZsUUsbw1I66N5WYv4gOItq7ZY1MFexQ8tPi625KgHmMSy+Q2zpXJOr2iT7S07po
	xvRNSZHwHLhIhgSg/UZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1robvI-0000000FAez-2b9H;
	Mon, 25 Mar 2024 04:27:00 +0000
Received: from mail-m25492.xmail.ntesmail.com ([103.129.254.92])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1robvG-0000000FAdX-0lRB;
	Mon, 25 Mar 2024 04:26:59 +0000
DKIM-Signature: a=rsa-sha256;
	b=Cr8F266cslnVeJPW43tYw1VZzCe+7ZQ8hKsz6tY+cx1mPkbzRjP3mTNbcbKX7AkkrrxPqn0nn/ttQVFoeH0pe1msroUelpJjilWcQls+p0Xk9dT2Zxq8xWIFsy2xqWEj4jxu3SeC0MDDEQyUs22KZFIyu4s5YDW6C6Fy6ET6h1I=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YBEeTq7OGXH4yuF3fO8G/YM9YDxHqOm8d/+z2DqcRk0=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 15AA57C0487;
	Mon, 25 Mar 2024 12:16:44 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Patches for rockchip clk input / output switch
Date: Mon, 25 Mar 2024 12:16:28 +0800
Message-Id: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0lMS1YfQk1DSE8eSU4YSx5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8e73d3328609d2kunm15aa57c0487
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pzo6TRw6PjMQAg0uMw4BNAoC
	AhgKFDlVSlVKTEpKSE9LSUtOS09IVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUtPQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_212658_445802_45C0B2E9 
X-CRM114-Status: UNSURE (   7.57  )
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

These patches add support for rockchip clk input / output switch.


Sugar Zhang (2):
  clk: rockchip: Add support for clk input / output switch
  dt-bindings: clock: rockchip: Add support for clk input / output
    switch

 .../bindings/clock/rockchip,clk-out.yaml           | 107 +++++++++++++++++++++
 drivers/clk/rockchip/Kconfig                       |   6 ++
 drivers/clk/rockchip/Makefile                      |   2 +
 drivers/clk/rockchip/clk-out.c                     |  99 +++++++++++++++++++
 4 files changed, 214 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml
 create mode 100644 drivers/clk/rockchip/clk-out.c

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
