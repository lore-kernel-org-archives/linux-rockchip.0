Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEC0C19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 15:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E21J8Ke7zGGt2Ft5ua3DOzsby6iLwkcWaBsZMGvqRBk=; b=M1nyiEycIJLC+E
	Zhs05Y3Nd/y1a3UXXFHfGiSzAQKHchjgluevxcNxdekyRQuA4ZzQfJxckVlPUWDIv1MmW/Dxt3k4V
	zegfih9ZTmmw9tBgO0+TRbzZg+gtdCOTZxc71C7Xp6ip2z8eNAj9uDGke6yt4A3PiIlYXIoHaWQ3n
	YXF4uUCnTr5O2mAMz6kpAOJ/0vVXGAXnHBbsraGOfiN/UrehXBByqn9/5WBvnlUlfkHODd9h3gjPV
	8dkLmIQrMS0tUpPP4DAwXQmAW7AsmYRSIcdWOFP2rKnaTE1Fp3I8NER6+gPJ0h21671djLkp0ZFjY
	ZmLkGJDy0qHut4Zre7Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to1qO-0000000BMlN-186N;
	Fri, 28 Feb 2025 15:00:04 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to1jq-0000000BLBE-1ED8;
	Fri, 28 Feb 2025 14:53:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740754395;
	bh=wdIQ7vUQ7x92S2Va/xZB5CNU6OC3vUqW5+VjhTMkLJo=;
	h=From:To:Cc:Subject:Date:From;
	b=gc0Zx0+K0yAfUIVS1KGT1nscNtSaU2c0+JgPWBomF97LobjS18ILBHWe60X0Uh8uN
	 V2SJ73ZbvNibCJIgQzskhV6MWkhk9h26hs6IA1QRP8JTTUxrh9ZQBJzzLz1d0vOJOy
	 XTkqgXAGV4QyVvdkWuzBMcOuC4YXR/SyKi3Ae4lhXgxoRtma0MSE5HIkYU1prp2dL9
	 Ij2W39nTBMLAjecKpCUTyhGcaqyTo6M5EALLeBUC7NgBOYey9pIHp+naurRdBYiNi9
	 OrsDINbS/Fdyfe7sm8pHXEIYNzjuR20H/WBesWS/eJwuZm0lPLwBTZn6U5PrJ1Y9VV
	 uqSoVWPofNmJA==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4388117E0AFB;
	Fri, 28 Feb 2025 15:53:13 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Stephen Chen <stephen@radxa.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 0/2] Add SPI support for Radxa ROCK 4D
Date: Fri, 28 Feb 2025 09:50:46 -0500
Message-ID: <20250228145304.581349-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_065318_490347_70F834CC 
X-CRM114-Status: UNSURE (   8.56  )
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

The board comes with a SPI NOR chip connected on the FSPI0 interface.

Add the SFC nodes for the rk3576 SoC and enable sfc0 for the Radxa ROCK
4D.

Detlev Casanova (2):
  arm64: dts: rockchip: Add SFC nodes for rk3576
  arm64: dts: rockchip: Add SPI NOR device on the ROCK 4D

 .../boot/dts/rockchip/rk3576-rock-4d.dts      | 16 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 22 +++++++++++++++++++
 2 files changed, 38 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
