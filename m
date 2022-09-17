Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52462ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z7rxXy5v/VFB1XbUPwHnrKVUyWbzlD8HUCz1vZBDZ6E=; b=A9qP1n1Y3sijyy
	jfivt6zcRtPGdssxe6zLJ6sdvHWCVFJeVuQwL1dSA/FPx0V4Yz52Togi5Ci2KzZutc1NFlMvtONEy
	JV6rOi8JfGklagIilF2dq6JVMgWzLXjgYgir/u/eZ2LxaJIsdM+ar5hOXS4RKAnCPRLFVeQc5ondN
	4SFv6ptL/cuhAG1oPLpe4UBvqUY2wwXnpEcXtZgAKZ+Dm3HYrbSpT0XG8sxnmn20i6m9lIwJ11ssZ
	vCXp9+AoJQVIm5N0r6zkzixCenu5CIDsnnm7Mj+PBQZUxSsad14DpLS44XM0mkhXuonKOxtv6NmhV
	S9pGl3fLn7+OvD3VvRPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZOZT-002Lxy-N8; Sat, 17 Sep 2022 03:32:47 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZOZQ-002LuG-VV
	for linux-rockchip@lists.infradead.org; Sat, 17 Sep 2022 03:32:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id C4A829003B1;
	Sat, 17 Sep 2022 11:32:39 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v2 0/2] rockchip pinctrl for acpi
Date: Sat, 17 Sep 2022 11:32:37 +0800
Message-Id: <20220917033239.626597-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaHRofVhkZHUxNQ0JNS01PTlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OU06TRw*LT0YDBoQSChWKTM2
	KSMaCglVSlVKTU1ISENOTk1LSExLVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUpPT0M3Bg++
X-HM-Tid: 0a83498163b32eafkusnc4a829003b1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_203245_224439_9A1170F2 
X-CRM114-Status: UNSURE (   6.03  )
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

These patch fixes to support acpi by:
1. populate gpio platform before pinctrl to probe
2. get gpiochip by finding from gpiochip list
3. get match data by device api

Jianqun Xu (2):
  pinctrl: rockchip: find gpiochip by name from gpio module
  pinctrl: rockchip: get match data by device_get_match_data

 drivers/pinctrl/pinctrl-rockchip.c | 62 +++++++++++++++++++++---------
 drivers/pinctrl/pinctrl-rockchip.h |  2 +-
 2 files changed, 45 insertions(+), 19 deletions(-)

-- 
v2:
 - add a second patch to support acpi

2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
