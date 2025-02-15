Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16B0C021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K2AiM3wfrWEqlDD5YO9ViUxyu3GsnqHsVBDJ7mIHnJI=; b=p2wzjfS5e6LupF
	2KzR8gQaN2s17DMyTphSxg6EJkHPjHXCFJg0U+uXDPPM9maeBo8fXWbBAuhvGkwrnJo0JPnwTHimM
	724af/4G7QHyRWT1aSG78e5+5OsfGzfybgGJUT+WgnQgiQTb05hGJzdSkv8F1U6BwJZaTsi5XmsKi
	punbLZrzPihBwSlG+rAnGm5euzlnP4Jovs30FdYdk2Ng/8chQPWvA/5yT5KsQPOpAGUfOzvVWaVdH
	gPHnQZr7YfMEt6sKOBpwMyi/oyOsZcaw8FOuu2CWs1wuYUFi8sllQJhCnGS1mduWDEfAwMBa+p2Vx
	6KZ/7yTB+A37IK9WOUKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRzu-00000000vYQ-3cWe;
	Sat, 15 Feb 2025 23:54:58 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRzr-00000000vY7-1TIT
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 23:54:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739663682; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OB8jNtOTdSTvBuuqCwbu3QUtCBdL9cp+7fnRodE6I2Yb2JP6X0psSdQutHCRIQfOJltgip7MssM7Of/J3ctEBsEvoE57nXuYTu0ZT/wSd1C7s5uXMnjm9M5o83qc1ZlWKZi4K5WNa6/GYBBRFxGtHZeAe5lcmnmLpN5yZVkVHX0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739663682; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=XX8SVPjXGD/M5xwZb5E4iQN2OwwF5DZ+dOEjFgE5/DY=; 
	b=WY1OP7aPGw4XaDQj9yfTVSXewAKKZscrFxljswdn4wlcNwMzlyXP4zkPLyhSd6MpBzJX5pab1uBYqPcSpQyS3snmB2R7A+SEPUN2GlyT3I0Dt1adhZH4QFdeVmiKkpIju54bt8tZAgx/vN0fKs2Os9XUU4Si1VUJa8EL9qA9sr4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739663682;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=XX8SVPjXGD/M5xwZb5E4iQN2OwwF5DZ+dOEjFgE5/DY=;
	b=I+Ys1hJK0P4WcWX+5P2t8+2v1Ng8vYYa9/5uG9pR6MD4Mw23LTFg2cH0wYPoZarl
	CYyIxb+vTbXspYMOcPjiBiS937wR14eIGfYYactlKhjEOZE4iY8kF8re6r8uqvjpZeb
	N1GbaLuYwKXTRaLPeWiUDJHutsxn1KvClLsfQsUw=
Received: by mx.zohomail.com with SMTPS id 1739663679905558.4270282900428;
	Sat, 15 Feb 2025 15:54:39 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/4] Add Rockchip 3568001/2 errata workarounds and enable ITS on RK356x
Date: Sun, 16 Feb 2025 02:54:27 +0300
Message-ID: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_155455_457279_7A5FC91E 
X-CRM114-Status: UNSURE (   5.93  )
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

Enable GIC ITS support on Rockchip RK3566/RK3568 SoCs by adding
necessary GIC erratum workarounds and moving RK356x PCIe MSI to use
ITS instead of MBI.

Dmitry Osipenko (4):
  irqchip/gic-v3: Add Rockchip 3568002 erratum workaround
  arm64: dts: rockchip: rk356x: Add dma-noncoherent property to GIC node
  arm64: dts: rockchip: rk356x: Add MSI controller node
  arm64: dts: rockchip: rk356x: Move PCIe MSI to use GIC ITS instead of
    MBI

 Documentation/arch/arm64/silicon-errata.rst   |  2 ++
 arch/arm64/Kconfig                            |  9 ++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 14 ++++++++++-
 drivers/irqchip/irq-gic-v3-its.c              | 23 ++++++++++++++++++-
 4 files changed, 46 insertions(+), 2 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
