Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C8DC982D7
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 00:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Czf0EJDvzhiWT6DTr/ZzGDKN7aAyrqhmxOziKO5kAg=; b=A3Tzs8GGECCa/O
	nVCTFwiAzyRqhp1Z7QJ/32PH49Fz+egiOcQlD6DlawIBunTqszz70Cad54PiedzKOSx4w0SYbGOBf
	cknGZkgkPm+JHKFMHHDICl5pgYIZaTqafG29Php1CHqPbKFRtZTCWhErwnAYghE/n+bdPomycxE+v
	YI25tJjn2ZEEmmQi/R7ua8CfZartuCjWjY5Vh/qrkuxGklxTUKZkJfUFsyywnn5lsW6BPNAHWj/Nl
	OVKD9gKmCbB9pcHIAynUlwPBL1zvB8O0ilT/8IHZ4FpZcgVGo1uaQMr308DJo12kwG+d1msadyLPd
	jhCIutMviE3a0+UXXV2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3D-0000000Fm8R-0BZk;
	Sat, 19 Sep 2026 00:35:31 +0000
Received: from mail-m1602365260.xmail.ntesmail.com ([160.236.52.60])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j39-0000000Fm6j-2L66
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 00:35:30 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e57cbc10;
	Sat, 19 Sep 2026 08:35:21 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/4] Small fixes and improvement for Rockchip pm-domains driver
Date: Sat, 19 Sep 2026 08:35:07 +0800
Message-Id: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0b716d33d03a4kunm44a9997f1a8ede
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQkMaSFZKGUIZHRpLHk
	JDGRlWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bGDQreUecK4toVl98oJs/g+sgRC9/zYPNO+VUMnfUis9BEmyUcvX6IVYgHwPoLUpRsOYiw5ErbCswGLS6jrmFl+k88QSa/8BDILyk0zL58RnwZzxAX48iAaWh1/ehcvsSN2cxcAdSga+u3wv3QV03Y88Oq/qAjPHIRM/x2gjSkc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uue1hZ9zUDtz6zYZ4RhBB6/ukWRQjbmJjBrnP1FOymM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_173528_273341_9C2EA93F 
X-CRM114-Status: UNSURE (   7.56  )
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


The first 3 patches are for fixing. And the last one is for
improvement.


Changes in v2:
- switch to use devm_kzalloc()
- add Sebastian's tag

Shawn Lin (4):
  pmdomain: rockchip: propagate subdomain add errors
  pmdomain: rockchip: fix clock leak on domain probe failure
  pmdomain: rockchip: don't ignore clock lookup errors on attach
  pmdomain: rockchip: drop duplicated errno from supply failure message

 drivers/pmdomain/rockchip/pm-domains.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
