Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C6DAF01807
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmG4qyF99j1GD6gVhT4v7L2LtjGSZ8toutLEhloKWG4=; b=3ZW2b0S46IQzNX
	89+S3kgISup+AnahXBKUUfGEZ0akV38o0IW9SW0Lcar3BuHnqH3tB0yUjD5GmwvNPOQCGbM+PZXHv
	2HvbOXxcHWVIikzo8WBTu90w8oigB5WB22tGflbxWd/KoUV/9iGdq41ruXBEw3fSiQ5HaF+gsx4BQ
	8tXJYnQYng7w4Cidz88ceQQoPfI7tgo10vGZtnsKYGUxEBwvgPah17qlbrFSgTLwuZuUdkTxgRAZm
	kvgU3g5UW0baCFSwoT5xvZmeY6TSxoUBrOqKGDZ3HsdJP8Zha/jS27+Dop4sWhCNfhLA56fojip9n
	5E59Cgmu5pBZLrqwxlhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPo2-00000003ASA-1nen;
	Fri, 06 Mar 2026 07:41:06 +0000
Received: from mail-m1973170.qiye.163.com ([220.197.31.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPny-00000003AQP-3pht
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 07:41:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35fcf41c7;
	Fri, 6 Mar 2026 15:40:48 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/3] Add shaping support for Rockchip platforms
Date: Fri,  6 Mar 2026 15:40:29 +0800
Message-Id: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cc21786a709cckunm7894a4e01405b5c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJLS1YdSRlLQk0aTh1JSUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hMxMq6NTdtGQXcm34cBu1ZOamzPkNApDLENLq0mCf7Czd+PoegEtWivxlmnF9HjmcbNCyMZDvWEKS6TCD2c3S9Ogz9eYIfkimmvszD8zYL7DBsuOG2uRBS9Vzo5O09FBFtKgNpCj8LxUfwqborBMPsRzA+MLfM88dRbAqTSMijE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qACK77M8imd6tMfzuiqSbpPVRZC5FMb2GQ7Svv8vO/M=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_234104_223204_5E482637 
X-CRM114-Status: UNSURE (   9.10  )
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


pm_shaping is introduced for some platforms to throttle the outstanding
burst requests of each IP to prevent bus monopolization. It should be
saved and restored along with the on/off of pmdomain, the same as pm_qos.
This patchset adds support for it.



Shawn Lin (3):
  dt-bindings: power: rockchip: Add pm_shaping support
  pmdomain: rockchip: Add pm_shaping support
  arm64: dts: rockchip: Add shaping nodes for rk3576

 .../bindings/power/rockchip,power-controller.yaml  |   8 ++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 139 +++++++++++++++++++++
 drivers/pmdomain/rockchip/pm-domains.c             |  97 ++++++++++++++
 3 files changed, 244 insertions(+)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
