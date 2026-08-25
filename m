Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E27C5DF94
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 09:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcbWj30dynYe4z/ZrNdE6Whxlqf5RP1UFvhi6ahJtfk=; b=tFEttkCqdEZqSa
	N9X02PAHMNq6gZfDNWr1+iWe5GxvsIMTbLv9hxeseb3nWtt7H6wrxaTaEWJiycPr/qOrZflGzsY3n
	0+zNEqmc/5kM2MOPa2YTFsjz7RlLvRA+Eci4BxQqki3h5U2G3nISdDAuSOLxjL4bPRvy1L1rNdLfg
	xriKO+NDfIoKx40h9sdfTmXoQ+nJG65gz3m+TuCe0dvT6zZqeZNkZCa67XXuIGbR947FXx4advcN1
	TISF44h8aSaumJezjQt6ZzQg8XzvIopY0i/mJZTo35u3MLz1gPCG8RDbP+madFJkir2NLMs6DTWe4
	WjQ0QP7aShSaumcX39dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynM9-00000000TbT-1rK1;
	Tue, 25 Aug 2026 09:22:09 +0000
Received: from mail-m24105.xmail.ntesmail.com ([45.195.24.105])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynLx-00000000TVS-0BVP;
	Tue, 25 Aug 2026 09:21:58 +0000
Received: from xxm-vm.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4b3ea0bf1;
	Tue, 25 Aug 2026 17:21:42 +0800 (GMT+08:00)
From: Simon Xue <xxm@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Simon Xue <xxm@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] iommu/rockchip: turn rk_iommu_ops into data
Date: Tue, 25 Aug 2026 17:21:30 +0800
Message-Id: <20260825092132.154150-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0aa03839bba809d3kunm5f4590cc6e02f6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSElOVhpDQkhLTR4YGh0ZHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UYKCtdkRlxVKidrHPgi4BciUkTn3NpnQ5FnpAogYE1irlUL4fx9RgGLqKHq4hX/FAnpJJt5yjQ3XEr1F/eJbD51BRnPdzTplDh1/g3qxpVqU8oyVbtkRbQMR9JsOujX0+nSYPvsT1bIwyDC07Pkv9gPGY2UyYPy+iSy+ou1tq9Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SqxbMX9H0Ng4kw/6ZytaZwsgxluRQNt2mDBI5WtPAdw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_022157_306091_34C8CE24 
X-CRM114-Status: UNSURE (   5.10  )
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

This series reworks rk_iommu_ops so the per-version behaviour is
expressed as data instead of function pointers, then uses that to
reject physical addresses the hardware cannot map.

Patch 1 folds the pt_address/mk_dtentries/mk_ptentries callbacks into
single encoders selected by paddr_mask. Patch 2 uses paddr_mask to
reject out-of-range physical addresses before they are silently truncated

Simon Xue (2):
  iommu/rockchip: Reduce rk_iommu_ops to pure data
  iommu/rockchip: Reject unsupported physical addresses

 drivers/iommu/rockchip-iommu.c | 109 ++++++++++++++++-----------------
 1 file changed, 54 insertions(+), 55 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
