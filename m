Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE3DC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 00:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8UUo0lmHwWakn9FNfx7YAcwC3Bw8iCl/nOY9ZssvUQ4=; b=iOrw5pyfxe9nBH
	V2+OIfMRd5bQLjo802qmtGx/iMdxFdPx4LvHwfyZJhCG96ZPvrK0F/unKKMTINUDhEFCapXy4MYG1
	Gx8Ifzx0Wl2C+TsHgB90CeDOS1qVvMpzGSgIL55WqERZauJ138BPMCaNKXfWcPXymg6RcgTjueqxo
	kDL4qtEwjiXoo7Wk8Do2trk0UNkfwi4g4nKCems4aLWjMu34iD2sqKuTkTLyJ7wfmlpuAT4ANDqkT
	a38t2F6pEkCNzGn+WxeacaxbJVnKx6LS1zo+rGxka1os1ly/9sNkz2+t5sAcjhFv02434FBSwUDhQ
	3HuTz62jtvG+j8z8y/qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSj-00000001rH7-0Bnf;
	Sat, 13 Apr 2024 00:41:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRSW-00000001r7Q-3g7G;
	Sat, 13 Apr 2024 00:41:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D96A6CE3BAB;
	Sat, 13 Apr 2024 00:41:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFBC4C113CC;
	Sat, 13 Apr 2024 00:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712968883;
	bh=XfleRWVDTCRQj+kJIUPQXXmcjo6dZHce4XUmyc7jW/E=;
	h=From:To:Cc:Subject:Date:From;
	b=VwljTYxv5KDWTkQnYGJwIjLgyUDUfsfOlLlodoeGXk4Exz4JyUub0Y/e9L+npahCp
	 M3SJ2iaLCMShG4Syh1xj65+hSAy6QZ+/iwbR7BUjYkLQRQYKNfLJipZLqjkQdpQHK/
	 39yMOo6m3YTBqCT0YZBlkpKk99J4RypGN56WuwT/5wXYznMoXnkmrDGRp4uDROPIN6
	 NS2sTCHO25ardMP83yY0xJD7/8t76+o5twe6a5sTHdsCz7rQ++0OIHbSgCcOh5ScFi
	 nZrH9qhpx08CH8y7swQ075+XIwdntWTciLHfAXLRLCy7vXYlCKEgEkiX2UJyYm21fV
	 xP2akDN0zed8w==
From: Damien Le Moal <dlemoal@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] rockchip rk3399 port initialization fixes
Date: Sat, 13 Apr 2024 09:41:18 +0900
Message-ID: <20240413004120.1099089-1-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_174133_180617_9F4FB20D 
X-CRM114-Status: UNSURE (   6.54  )
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

Changes from v3:
 - Fixed commit messages as suggested by Bjorn.

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
