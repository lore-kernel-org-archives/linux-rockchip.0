Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8577C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 16:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mP1M2LKUy4NKEy2Jvlunm2fWMefhkCCR+AxfXQJBHMc=; b=Q+olP4YUi77DH7
	UA3YIlyemF5ANYBdA22XwbKcgpcbtP9vqGhvLZopKYcIkmcu0WoA4gXwZzZ8BeHcBxdpa936K+nel
	Annl6UEhBb+RlYeHcFvhpvxQdMHhYgNC6NVSU26nLd/pJ3l+G+8f/EZKyqIn0/BG6urULFxOFcu2b
	HMgSK/2Kptdy6gtDWM9fmxKxoOGld65kTRja5VUlJlZbW1z2MYlLn2LB36VJDGLS+QIOa7YRzLOCT
	iOoiujmK2HfhOzQEZNhAq9IYu9KWp9r7Pwr8i7MzrcFdZ9h582B7pKqH/lJC+zJT6NwimA6LQp+xC
	plfxO07gDp/OrZESqNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwz4-00000000etX-1GEV;
	Sun, 30 Jun 2024 16:00:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwyt-00000000erh-1dC4;
	Sun, 30 Jun 2024 16:00:49 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719763244;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XmJ18Mk+LYsc2OZrwmpPSoEt6hQuFiTRIdWg0LXy0aA=;
	b=HYv2yLuW3JrrxIdYALONp9tkqcYqp13KBULY+SdpTVxnRG3fFgZanDJ/Ths6nlDH0ra1+8
	yWVrOg9WhJlTde4CfFc4Wk797KDyspxto3i70C2LG4BgI9J1ybzoX5UNdl7Q4iczx3cn6N
	hTO9gatbthmAzsu9Z25rB7yFCZBa0Eys5VFgF3/RQskT8QsYObM5boCpw0KZ/Y21xtRrB0
	7PF+ynzgODtA2AVgyyscFerzf9g2cLYAD+ihhde8DkNiMlCtn7dWt56euqFxnsPCDkvqv8
	4DEJKe/j7BwwHL+1lKrFV1A8xyaYb0X7cZyoJ3rUSO5rZbe+krDQLyC/9tZwvA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	didi.debian@cknow.org,
	jonas@kwiboo.se
Subject: [PATCH v3 0/2] Add and update GPU OPP voltage ranges in the RK356x SoC dtsi
Date: Sun, 30 Jun 2024 18:00:39 +0200
Message-Id: <cover.1719763100.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_090047_980133_6DFE3139 
X-CRM114-Status: GOOD (  13.39  )
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

The first patch in this series adds support for voltage ranges to the GPU
OPPs defined in the SoC dtsi for Rockchip RK356x, which is, for example,
useful for RK356x-based boards designed to use the same power supply for
the GPU and NPU portions of the SoC.

The second patch updates the values for the exact GPU OPP voltages and
the lower limits for the GPU OPP voltage ranges, so they match the most
conservative values (i.e. the highest per-OPP voltages) found in the
vendor kernel source.  This is performed in a separate patch to allow
easier regression tracking, in the unlikely case that some issues are
discovered later, resulting from these voltage changes.

Changes in v3:
  - Turned into a patch series by adding a second patch that updates
    the exact GPU OPP voltages and the lower limits for the GPU OPP
    voltage ranges so they match the most conservative values found
    in the vendor kernel source [1]

Changes in v2:
  - Dropped support for optional GPU OPP voltage ranges, which may
    actually hide some misconfiguration issues in board dts files, [2]
    but that will be covered by other debugging patches [3]

Link to v2: https://lore.kernel.org/linux-rockchip/bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org/T/#u
Link to v1: https://lore.kernel.org/linux-rockchip/446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-rockchip/b8951ac4e29184fa35919c6ab85b8f87@manjaro.org/
[2] https://lore.kernel.org/linux-rockchip/f10d5a3c425c2c4312512c20bd35073c@manjaro.org/
[3] https://lore.kernel.org/linux-rockchip/36170f8485293b336106e92346478daa@manjaro.org/

Dragan Simic (2):
  arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
  arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
