Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26DE2C77B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRAwtw5IJbzJfWBK9MPi6HBq4zsN7vK5GsHbS4y2xUE=; b=HieMe/DVu9TpyS
	Rs0EV18L+81P0e6OmpJ0FNblD2hg9wbIykBX8pRIm4BVa3hPnBr3+vYzqgwegZ3kJDPxHFSrzemIU
	9jVoKeooE+2BOAANmlMxkFofna/cIXGwztUvqD7OF5uo28I+qy1sRKPpS+DkkqWxD+Cv5eoQWKScu
	oa4NjmojBVm0Hb+EcUnwQtsdhpYB4tCbf/YvBEyM8VKMGf//1zhgVJI/jwjCB90VfbrBt10JHH+5j
	kh/f7UxX/fOEKomBSgIXP+Zm0GZJM+VuOy7FsAVHRyCyKd/Al6InAoSzM5zi8ExUoEcrPAz4vNpVH
	uuIQJ5a8e8tW2ISDxKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pomCs-002PkM-1M;
	Tue, 18 Apr 2023 14:21:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pomCp-002PiD-1p
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 14:21:17 +0000
Received: from jupiter.universe (unknown [91.248.213.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 592C9660320E;
	Tue, 18 Apr 2023 15:21:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681827671;
	bh=ll23Gil5LaleEG/Y/J2yGHu05FB8zSy5xWoGgPJ7WLU=;
	h=From:To:Cc:Subject:Date:From;
	b=RKWtWzfVtiuLDbkEEiMwaqtjxGFX+pL93U8HTPp38zbBsq5v9fP12PoPCIEgGwgCI
	 WF0an6ib9Vip/4hhBI4DlHma92HbJkZpiI7uIOLHyrqQqkllnZ2YfhoGNJGToB3vWK
	 FB2o4QOSpgkXkdJ6dWgbECKCDaV0XWp2Kxd8akOrdPjXVlk5ltF9LBwODpIqWW/JsE
	 OtPGr8LW/tlQzihEDK4IAkoRrj9gqKELkYbro1emErzXixKRayusjPJ7UQkBBwtQKJ
	 vshV4MNT6soQVDtfQAgBLKW9u/g1bDGWJRZjz02Piyn2JDd6n+YQN6Pi9m903OWZBy
	 nk6pjGdM5ZVCw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 85AB2480072; Tue, 18 Apr 2023 16:21:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 0/2] Add Rockchip RK3588 GIC ITS support
Date: Tue, 18 Apr 2023 16:21:07 +0200
Message-Id: <20230418142109.49762-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_072115_840538_A61222DB 
X-CRM114-Status: UNSURE (   8.32  )
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

Hi,

This adds GIC ITS support to Rockchip RK3588, which is affected
by an integration issue effectively breaking shareability support.
PCIe2 support will follow in its own series.

Changelog:
 * Changes since PATCHv3
  - https://lore.kernel.org/lkml/20230417214035.101190-1-sebastian.reichel@collabora.com/
  - Add RB from AngeloGioacchino Del Regno
  - Update patch description
  - Update Kconfig description
  - rename flags from BROKEN_SHAREABILITY to FORCE_NON_SHAREABLE
 * Changes since PATCHv2
  - https://lore.kernel.org/lkml/20230417150038.51698-1-sebastian.reichel@collabora.com/
  - apply changes requested by Marc Zyngier
 * PATCHv1
  - https://lore.kernel.org/lkml/20230227151847.207922-1-lucas.tanure@collabora.com/
  - uses of_dma_is_coherent() instead of providing errata info from kernel
 * RFCv1
  - https://lore.kernel.org/lkml/20230310080518.78054-1-lucas.tanure@collabora.com/
  - uses 0x0201743b IIDR for quirk detection and misses errata #

Greetings,

-- Sebastian


Sebastian Reichel (2):
  irqchip/gic-v3: Add Rockchip 3588001 erratum workaround
  arm64: dts: rockchip: rk3588: add GIC ITS support

 Documentation/arm64/silicon-errata.rst    |  3 ++
 arch/arm64/Kconfig                        | 10 +++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 17 +++++++++++
 drivers/irqchip/irq-gic-v3-its.c          | 35 +++++++++++++++++++++++
 4 files changed, 65 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
