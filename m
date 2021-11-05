Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F12C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:46:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02F9A61212
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:46:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 02F9A61212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxrN47zLLNxReuuzLIfYztz91bkoNc0DR1pu2fG6R9c=; b=NL7CsPkwZOLbH5
	GS+DmY2h2E2P+x9Wcg9u5nzf7v9YT4ANpB3I/VpxLnQ7X02GLNsNTvQAcq7TmmHZ8+QXcQizyss9q
	d31OZ4xfD5y3r1EFy6u+HDmPYErI+19JtCOertT28FWE9sY3RqsEZJ08srE56qWxQ0FWaUsmRqakT
	cCo+UemNobiLDsSE73IE2JeWexTUsbU0xBpHq+TwMXpUEgDdKK9sgyljiBditWfwuknt7LC0qtWMN
	RhL6raHKpkNNDmyldHxER2l8tCCO8g0BN3sW78j012D1QbRm1QKd3ceMz2sFgNkUDUZ0gl9QhocZn
	jzqaj+91KgjnED8HZo0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miybu-00BIPr-Gc; Fri, 05 Nov 2021 12:46:22 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYp-00BGX6-AQ; Fri, 05 Nov 2021 12:43:12 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="218789428"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="218789428"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="579644682"
Received: from black.fi.intel.com ([10.237.72.28])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2021 05:43:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id B012C825; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: [PATCH v1 13/19] pinctrl: st: Drop wrong kernel doc annotations
Date: Fri,  5 Nov 2021 14:42:36 +0200
Message-Id: <20211105124242.27288-13-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054311_444077_753B94A2 
X-CRM114-Status: GOOD (  13.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Kernel doc validator is not happy:

  .../pinctrl-st.c:59: warning: This comment starts with '/**', but isn't a kernel-doc comment.
  .../pinctrl-st.c:73: warning: This comment starts with '/**', but isn't a kernel-doc comment.

Drop them as they are indeed not a kernel doc comments.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/pinctrl-st.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index 1482a01dfec7..ae8783b34ed2 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -55,7 +55,7 @@
 #define ST_GPIO_DIRECTION_OUT	0x2
 #define ST_GPIO_DIRECTION_IN	0x4
 
-/**
+/*
  *  Packed style retime configuration.
  *  There are two registers cfg0 and cfg1 in this style for each bank.
  *  Each field in this register is 8 bit corresponding to 8 pins in the bank.
@@ -69,7 +69,7 @@
 #define RT_P_CFG1_CLKNOTDATA_FIELD(reg)		REG_FIELD(reg, 16, 23)
 #define RT_P_CFG1_DOUBLE_EDGE_FIELD(reg)	REG_FIELD(reg, 24, 31)
 
-/**
+/*
  * Dedicated style retime Configuration register
  * each register is dedicated per pin.
  */
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
