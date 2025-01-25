Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 280A6C02181
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jan 2025 01:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OJOOHeS2J4MWAkWFzTYjxOGYxkPMp7SaKAWUsEBrDAQ=; b=xH6NnpbHo7SzoL
	eUi5faNweG2bcvpBIr5cXpKUVuXzDkCo5aR2JR7Tajp7Ls19LmS8ZQmqhiRgzsM7Kldq0+0d8Wd+1
	gPkvpeDAO+ratsYHtvwQBu1zGp4ypGJl4a4oOxhXZEkPfpU8sL6pM8+poGQbWB1uOHOkHUFB+vdLZ
	2XKyHQbIX/PkiCThPD3isCtLDqqzaaox1c842VDwe7XtPA3D+GxcjHK4vpJz1Job39BTy8hSz6GZM
	hp1Nz4qojhPCJQ0wvJ5okZzwBBGiZtVxSbm2hkAqDeehFrCdzklgazTzsBuSnOD+3+QvcIluxqeRA
	nZvLdN1/p4CdYj4CmtNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbUmF-0000000Fql5-0m5M;
	Sat, 25 Jan 2025 01:15:59 +0000
Received: from mail-m1973170.qiye.163.com ([220.197.31.70])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbUmC-0000000FqjJ-1INH;
	Sat, 25 Jan 2025 01:15:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9a2d1325;
	Sat, 25 Jan 2025 09:15:49 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] clk: rockchip: Fixed some incorrect commits
Date: Sat, 25 Jan 2025 09:15:42 +0800
Message-Id: <20250125011545.15547-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQktCS1YfS0gfSRlJGk9PTR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a949b07876603a3kunm9a2d1325
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6Kww*CTIKHhoRDS0pPRIO
	Ok9PCypVSlVKTEhMTE1MTE5LTEhDVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5KTTcG
DKIM-Signature: a=rsa-sha256;
	b=K4VBheC1hN2v/qacAVCQWtPYBSMWTpKPIcWw+9BuZiCPy2NcVs7oAhq+fFnJO5FcupKMQ4gbxdsuMrBJxpB/A3wv35AipuUjMK22AZWcvMxZiZ6hNbWhOshskMzfVtXpMSdZFNvec2ADNq2vglI9i5JKJZd+GOYMDM9WsNxMs20=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=elHxKod4Hi5MljImJZeO6gB3g83rShkQGqnU/7J2Q4Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_171556_533157_17CCA2DB 
X-CRM114-Status: UNSURE (   5.34  )
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

Change in V2:
[PATCH v2 0/3]: NO change
[PATCH v2 1/3]: Update commit message
[PATCH v2 2/3]: Update commit message

Elaine Zhang (3):
  Revert "clk: rockchip: Set parent rate for DCLK_VOP clock on RK3228"
  Revert "arm64: dts: rockchip: Increase VOP clk rate on RK3328"
  arm64: dts: rockchip: Increase VOP clk rate on RK3328

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 10 ++++++----
 drivers/clk/rockchip/clk-rk3228.c        |  2 +-
 2 files changed, 7 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
