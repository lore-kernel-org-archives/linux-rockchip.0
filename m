Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953B1C04FF0
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 02:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yj4SrnhqlX052MF+8uPZzbIZXuSCxLxEyL0/j9kyZfg=; b=snR6cdHuLAzfmr
	5gl45HtzK57lyBGn1NXokO7zJx1khpIda0u/CBMAgqpf6uk9LrUOT6eLY4Gd5qyOdnUQAPFsu85DB
	w+DCcyCqonypZ5/Kc208NQRztI03qjc3GgPTySzW2hL7SlQJ/1/mqfC3bLuLE2OuDllIlJkcpE0Gi
	MppypJimGvzsRDlLdqRSxNp2rRobyhB0TDm77y1GBvcIKbjgmUUy6jzQIhLjEsbbhpNOXmQ2RQkWJ
	K+7d/dra6udgiEQ/izVSoZD0rj2GECZP8AMs5k14imMPep8V+Z8q/sw7E+QHgeHWUL4B7RO5JAqiR
	xl7cVfjsAn9c0kIgcWKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6nP-0000000EvoC-1AJq;
	Fri, 12 Apr 2024 02:37:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rv6nE-0000000Evfi-2dvo;
	Fri, 12 Apr 2024 02:37:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0D273620E1;
	Fri, 12 Apr 2024 02:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9407CC072AA;
	Fri, 12 Apr 2024 02:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712889444;
	bh=HiXGHLZIGVbP/4SWHBC2OKseJqgpskR3c6BxJ2UIzzM=;
	h=From:To:Cc:Subject:Date:From;
	b=GDMxaAe6Mf//QR8tIlECQQBFVTLYE1sX6P9IANcSUCFSvMsY8WJ3owa0tAe26/VaH
	 IqLMZkWdw7XVwdQy137PlUw/issDLCcf4bemQZVFpRkV0TWmLzXfMSrSndf/h84XMt
	 6KUJUvd552PDXEA12xT7BLTMzSba+yP7BCqOoh1HDYczxYwwzafFEV+ELh/APSts1+
	 iWgiP39n9YkgWqKMtcqFnIEAPl8QJG2G0fC5risa7aDgktGeOsJatEE1QD0tWPTkdT
	 lWx8TBggwuV6OwWNMMj9ucJciVvKxxxjjbdcY2piHsW1Wh7xybhHFZDuy/kQWa5/tJ
	 6WjENOQzk+ePQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] rockchip rk3399 port initialization fixes
Date: Fri, 12 Apr 2024 11:37:19 +0900
Message-ID: <20240412023721.1049303-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_193732_779995_3C19A190 
X-CRM114-Status: UNSURE (   7.31  )
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

A couple of patches to have the rockchip rk3399 host controller port
initialization follow the PCI specifications around PERST# signal timing
handling.

Changes from v2:
 - Use PCIE_T_PVPERL_MS macro in patch 1 (and remove useless comments).
 - Split second msleep() addition into patch 2 as suggested by Bjorn.

Changes from v1:
 - Add more specification details to the commit message.
 - Add missing msleep(100) after PERST# is deasserted.

Damien Le Moal (2):
  PCI: rockchip-host: Fix rockchip_pcie_host_init_port() PERST# handling
  PCI: rockchip-host: Wait 100ms after reset before starting configuration

 drivers/pci/controller/pcie-rockchip-host.c | 3 +++
 drivers/pci/pci.h                           | 7 +++++++
 2 files changed, 10 insertions(+)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
