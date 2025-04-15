Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F80BC369B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 10:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NzYWQaDmcy8K+RMWE7lxfHEG7MZIVmHI59gLQWSgmNo=; b=FFRsJHnpanymqQ
	qrSyNwCl87Cn5iaIfVwJM5RwfV2cvlLnyhIxWUYoOmz1PIfaB/TFuZHfaNYw99P4YGGfKHCsmL0Kx
	Vs3p6lOn/u+2GSrtxTBkfWmFxCD89TfgHjTrLtV8Z34bXZ5jrDtwMb3YSuHKWIvDgQRwIZ4r7YnnO
	/3STMI8eDeAmRCMajaq8MTOSulPXGJXTzPmWM+9SK6aYdYaIOP0Ya53DEAly6qQHc9ACRLuq3457l
	zL6aaDi0BGW2MyK4Ei8vE9EuNC8MKJeSxqsXNXhbcDzHYbxOHuzEQiLOESvBtaFPyGtjxpBNXRwvi
	eOJU1fB3Rz2l9fAEVWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4de7-00000005M4F-3abG;
	Tue, 15 Apr 2025 10:36:03 +0000
Received: from mail-m49230.qiye.163.com ([45.254.49.230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4daM-00000005LIu-1kOP;
	Tue, 15 Apr 2025 10:32:12 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11f2f6006;
	Tue, 15 Apr 2025 18:32:05 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] rockchip,otp: Add support for rk3562 and rk3568
Date: Tue, 15 Apr 2025 18:32:00 +0800
Message-Id: <20250415103203.82972-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCS05LVh1MQhlNTE9OQ01KHVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a9639018e8903afkunm11f2f6006
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mk06ETo*CzJPChgwFBgfIh0a
	KgkKCUNVSlVKTE9PTEpISklMS09IVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUpNQk43Bg++
DKIM-Signature: a=rsa-sha256;
	b=gN8ATPk/Qk7NuJZSb99RyAosTa0SNhsPLVPDO94KcjR0p67UdnUyCcw5Um9Fqb/ifZjh0wuVLrfTv8PF/mtZpFC+OcHh5GeVtjnstvopOHtdSx2RFvbz7ZkEs5R53swR9diw6dFjV6FpD+SNdgh73OM7kSEmDNi3qLDqvYijvGw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Z8C3TOj5YRTsNIZ01Pq49wCWG7FBy3BSOQXn7JlMxQ8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_033210_949166_DC64F592 
X-CRM114-Status: UNSURE (   8.91  )
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


Rockchip rk3562 and rk3568 has the same otp controller, which is
different with those already support in the driver, add support for it.

This patch set depends on Jonas's change[1].

[1] https://lore.kernel.org/r/20250316191900.1858944-1-jonas@kwiboo.se

Changes in v3:
- update the clock name from "usr" to "otp" and re-order to sync with
 other soc.
- rebase on rk3576 and rk3528, changes suggest by Jonas
- Use rk3568 data structure for rk3562

Changes in v2:
- Update the commit message and add maxItems in schema.

Finley Xiao (2):
  nvmem: rockchip-otp: Add support for rk3568-otp
  nvmem: rockchip-otp: Add support for rk3562

Kever Yang (1):
  dt-bindings: nvmem: rockchip,otp: Add support for rk3562 and rk3568

 .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++--
 drivers/nvmem/rockchip-otp.c                  | 73 +++++++++++++++++++
 2 files changed, 119 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
