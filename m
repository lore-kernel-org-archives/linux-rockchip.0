Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CDEC4743C
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:19:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20BF36128C
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:19:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 20BF36128C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EtafEMZzGbdpHBfbkKkUXLtRM+b7Ve3YyQHIO8WRvok=; b=DhsuDqpYGfiEkz
	MwqDGhSKG941dqklUgXZEq6AWUuO96ZCFLCPrkNCkXVPWCpehULCK7zFoaWpfsBk7tNFtBlGupxPx
	hfolFLMIUg1WskazcCFqCpH7sWW7yZXsZOaf7BZIotNmD3xZbwOsabjruIG9jc6GdjMfNEltbDxgY
	+cfMfY8PzlRgwIWttIiSXZw+ztJ1CEu5CoO3hSw0sAK9ONXJ4yaUGHS5lBNwTzaDrr1g3xHU8XDYH
	dqIcaJGLzcwYnuwUwEEvRL8rk/lHUvnYBo6oay3k9lS7P+3wMn5ASY8znkDmFRnldHC0jx9oTGEEO
	CsFSjAnyPeKEW1USk4jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lspIi-00F4La-EI; Mon, 14 Jun 2021 16:19:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsol2-00Epiz-EY; Mon, 14 Jun 2021 15:44:16 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:1f5e:e45f:238:7e73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6F44E1F42B13;
 Mon, 14 Jun 2021 16:44:08 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 pgwipeout@gmail.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 0/4] Add USB2 support for rk3568
Date: Mon, 14 Jun 2021 17:43:55 +0200
Message-Id: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_084412_719741_D83C4EC3 
X-CRM114-Status: GOOD (  10.13  )
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

The original pacth from Peter Geis is here:
https://gitlab.com/pine64-org/quartz-bsp/linux-next/-/commit/cda136f853628259198d6f70c3e14c9e5c8e097f

I have split the driver part of this patch in two:
 - one to update reg usage
 - one to add USB2 support for rk3568
I have added patches for the bindings:
 - some clean up
 - add compatible for rk3568

Benjamin

Benjamin Gaignard (4):
  dt-bindings: phy: rockchip: USB2: remove useless #phy-cells property
  dt-bindings: phy: rockchip: USB2: Add compatible for rk3568
  PHY: rockchip: USB2: Allow 64 bits reg property
  phy: rockchip: USB2: Add support for rk3568

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  3 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 85 +++++++++++++++++--
 2 files changed, 78 insertions(+), 10 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
