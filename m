Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24CECD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uOjQ5tM0e6GiypOyGOnXFpfrr4LuJZsqXDfbLb04OEI=; b=FOvNob4lMo+cFk
	vFf3xp+DKcoLMtyAsLcXax8nxx5a5+mcN2UUsg+tJnjUDkcM98koHz2Qh07KNB+X3+YUI0QOiQNE4
	FKIxuvNZBI0zzJ02kfL6YovYHcXZM0kRPt9XgVjd0pQ9rrqDOAkjSuqXOkojimLaTTx8pg7bXSoS3
	pKFwnGbd2b+1TAyLJPyB/0AV6cvuD/woF4cDpG7twy7gOKzC+IYA9UY/8QPy7wk8Qwlnhn/qCSTZ3
	4kRhfUsSvyWd7Wbl5QDS3Fg3kB/Gae1qCbkWy+eFnqb85uyDAI9HOlutROjXvgw+UKcEg51GNMxVD
	3kN5jWI1K5OPjGzooZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOCP-0000000Gjhk-2EF9;
	Tue, 03 Sep 2024 07:43:37 +0000
Received: from mail-m6039.netease.com ([210.79.60.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6P-0000000GiK4-43dJ;
	Tue, 03 Sep 2024 07:37:31 +0000
DKIM-Signature: a=rsa-sha256;
	b=VfBjbu/G4Zhzvb/kuPYrls1VcUI/FDjJPfg9g8uLZe2eq0bZiUgzDjpmQ+4Ntq8VpJi+j2fhDSaH+yaBTAo/9ZAQeeLVkyhXbQtNg2+RzdqbsZQhtFF1DTbQIAhoP+OpyCqmhPDtVOG0SqD7ohr90OX5EnF0jQQr+cObq9Gptn0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mu4O+2UrPgqXaxroJrztwkPwlplzDcAtYXJiR52xTfE=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C58307E06EC;
	Tue,  3 Sep 2024 15:37:01 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	linus.walleij@linaro.org,
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
	elaine.zhang@rock-chips.com
Subject: [PATCH v3 00/12] gpio: rockchip: Update the GPIO driver
Date: Tue,  3 Sep 2024 15:36:37 +0800
Message-Id: <20240903073649.237362-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtCGFZJGh4fT0JKSh5MGktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0cb2d09cfkunmc58307e06ec
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6FCo*FzIrMEk4PBJNFR4q
	AQtPCjxVSlVKTElOSE9CS0lIS0pPVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUNJTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003727_112570_1AC078CB 
X-CRM114-Status: UNSURE (   8.21  )
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

Changes since v2:
- Optimize version number comments.
- Modify the GPIO version judgment logic.
- Use devm_clk_get_enabled to simplify the code.
- Use guard instead of mutex_lock to simplify the code.
- Use irq_hw_number_t and irqd_to_hwirq() in the request irq function.
- Since list_first_entry cannot return NULL, remove the NULL check.
- Temporarily do not add support for ACPI.

Ye Zhang (12):
  gpio: rockchip: avoid division by zero
  gpio: rockchip: release reference to device node
  gpio: rockchip: resolve overflow issues
  gpio: rockchip: resolve underflow issue
  gpio: rockchip: fix debounce calculate
  gpio: rockchip: Update debounce config function
  gpio: rockchip: support 'clock-names' from dt nodes
  gpio: rockchip: explan the format of the GPIO version ID
  gpio: rockchip: change the GPIO version judgment logic
  gpio: rockchip: support new version gpio
  gpio: rockchip: Set input direction when request irq
  gpio: rockchip: replace mutex_lock() with guard()

 drivers/gpio/gpio-rockchip.c       | 151 ++++++++++++++++++-----------
 drivers/pinctrl/pinctrl-rockchip.h |   2 +
 2 files changed, 99 insertions(+), 54 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
