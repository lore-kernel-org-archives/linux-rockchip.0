Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6F1C61DB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 11:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bUrpr5lbPcj5wRU7/8uHXD05UkXUF5SvriRDH/efN1c=; b=4G3zGT3BPf6Jw1
	t/3qhH2ItYBC5GpATLmeRd4WhkoW/XjJbQjVjjTUPHwDbzvHiT84VdbbmhmMyYsLT8TrrYX+IZip9
	ADfsMQv66UPm2S7UpSBCKyet+FjAMOgzRRyhng2CNSAoNoHXwgrCAg2+9ZTxc6x/sBxQ684Om8rQv
	D9uUiSaV7E7dFhXfyAvoLz156H3kKiRqp12JUtPjXJzqTMjtA5MojJ/OA3QIZpIXfzRLbJ7hz6Pkf
	RZLPKfuX86naZbZKlVx+mQ/rP2VaGOWxIQW/KsjA+C5YD2FuRHPnU+gCK/4WIhMvFuYgIb2YH3Pzv
	PyzS+pA+sZvEOHkEplhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv1v-00000005fZl-00hL;
	Fri, 28 Aug 2026 11:45:55 +0000
Received: from out-116.mta1.migadu.com ([2001:41d0:203:375::74] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv1s-00000005fXK-2g8e
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 11:45:54 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=WmzJl/gDki4yCRQarSuDUHp+vGo780vLHnW9dx/7YuI=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787917550; v=1; x=1788522350;
 b=hiGTM8YHVvGCyZ/JGYFUvM/aucdzvC8iw+Axb/hY27GC5stllEqGczXKQ4lUnL9gArzWfip/
 kKRgxqV/McUufBA3s5feYb613hMKVvPZw7msSXKPap8X0k0+OGgR89DaTb3aDlb0hzidcu9Oqta
 K6eyDEdIJAwgBo+zSDABJaYHWvRqiwlu2Uk2TFZK6JcppyyO8IPTUY799c+ZTZPN/kmc2HWfY9K
 xvbLWh6luDqw9PPQxSgvY6LBEDysZEV9t+BaRsEzWq1Rxnw8v1Npz/KE+VsRO8VaWeeoLKoRIlo
 i/M2vQShocY+7lO69jJLZD5Q16U+RDOmvluT7DQuTdM+Q==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 632b3452a606ff6f;
	Fri, 28 Aug 2026 11:45:40 +0000
X-Mizu-Trace-ID: 632b3452a606ff6f
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Daniele Briguglio <hello@superkali.me>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 0/7] Cleanup DT description of NanoPC-T6
Date: Fri, 28 Aug 2026 13:43:00 +0200
Message-ID: <20260828114530.1315798-1-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044552_818188_6E548E0C 
X-CRM114-Status: UNSURE (   5.14  )
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

This series cleans up the DT description of NanoPC-T6 devices by
- Remove unneeded nodes
- Align pinctrl names with names used in the schematics
- Fix sorting of various nodes and their properties
- Fix an unneeded pull_up
- Switch to using I2S0_8CH_MCLKOUT_TO_IO for audio

Diederik de Haas (7):
  arm64: dts: rockchip: Remove unneeded vcc_3v3_pcie20 on NanoPC-T6
  arm64: dts: rockchip: Fix PCIe 2 pinctrl names and sorting on NanoPC-T6
  arm64: dts: rockchip: Fix hym8563 pinctrl name and sorting on NanoPC-T6
  arm64: dts: rockchip: Don't pull up rtc int pin on NanoPC-T6
  arm64: dts: rockchip: Sort usb nodes on NanoPC-T6
  arm64: dts: rockchip: Improve sound config on NanoPC-T6
  arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS

 .../dts/rockchip/rk3588-nanopc-t6-lts.dts     |  17 --
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 165 ++++++++----------
 2 files changed, 69 insertions(+), 113 deletions(-)

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
