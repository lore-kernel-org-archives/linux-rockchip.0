Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BCFD12D60
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oT7TijsEhudZplvwZf9+XFDzR/ic9ZoZ6PoMa+l4NaM=; b=1u/X/ZRwhf8KjK
	f1taBAu0rEpnZDx6RQiKmpgP61LZpRmGw1nbzO22JqGKw/VcXUD/j+NF9wJ4UEj72yOQVCJecSR72
	2FhV8BFH3mOZnHXmlAvfuwdjHeE+NerL0AHhIzpu1nviHX9lo8CgOkdpDy085Gl/wgRcCkmD2aBlk
	5SfFxMTp5sbz5OqXd2pgyr6W/PQNTylOACzrfglrztYnPIHyHxB7XtxOeUmd8kHVYLxjI4hbMt8Q4
	0JFdZ4C9KpvuzriTZCquMt7UJb+jyml5jPncrfOUrdbgZggApPFQ/M6n7nCPiv6peHmfelUrHXNkG
	8q86NBsdu2Yt0WTLegwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAKHu-0000000G8cg-10MH;
	Mon, 11 Nov 2024 02:36:22 +0000
Received: from mail-m17243.xmail.ntesmail.com ([45.195.17.243])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAKG5-0000000G8Ju-3CeW;
	Mon, 11 Nov 2024 02:34:32 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 258a582e;
	Mon, 11 Nov 2024 10:34:18 +0800 (GMT+08:00)
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
Subject: [PATCH v4 0/4] gpio: rockchip: Update the GPIO driver
Date: Mon, 11 Nov 2024 10:34:08 +0800
Message-Id: <20241111023412.3466161-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkIeSFYeQx1CSBkdTUhDSExWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9319126e4009d8kunm258a582e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTo6DBw6CTIjQyw2Mw0wGDI#
	HDNPCxFVSlVKTEhKSUJJT01LSUpCVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSklJQzcG
DKIM-Signature: a=rsa-sha256;
	b=Iqs2Ik+NcCDLFSg6XbsIWIUVDLf10uJ+I3F+4RKhZ8gUF1NAWIbdafEeWJu5oeSFwzbIvbF/bajJ3bprPT3BP+KP8LA6ucz/jLnRy8JlAkVma7es47nK0JljLJaD6IaWw1BLWY5ts7mdEp5nyFbiHs80wqAExBcm2RBMDFeWDn0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tP2ohGVIGmdTyqdy89HiQz2NLz+eTXxS/9PUWtKazWc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_183430_255772_F3CE6A97 
X-CRM114-Status: UNSURE (   8.43  )
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

Changes since v3:
- Give up modifying the debounce config because it is not actually used.
- Do not add support for retrieving clocks using 'clock-names'.

Ye Zhang (4):
  gpio: rockchip: explan the format of the GPIO version ID
  gpio: rockchip: change the GPIO version judgment logic
  gpio: rockchip: support new version GPIO
  gpio: rockchip: Set input direction when request irq

 drivers/gpio/gpio-rockchip.c | 33 +++++++++++++++++++++++++--------
 1 file changed, 25 insertions(+), 8 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
