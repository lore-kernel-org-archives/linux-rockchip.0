Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F6E2EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 18:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w3Vc9Q/xB9EtdfJRnuvZ8p3h0p+eskMbxCDIa5jvgdY=; b=nLHdjC3mluCjiO
	9ka0ucpvylVZqMH73mwdIESx4tj5L5bwZqxUC/B6u8upX19J85DywpkeIpprG6AfhdDQxMBKOZUZe
	uE2KPyi80TQOC14UPXjCNYZPv5K7m03qqG0SX9cnI2W5kCER7b62/vS45+IkNfiQygtNUIK63hs0w
	hDLGlGYiDNMHwvhLBvstpIoSdrqP7JyTPUTYpVe7FHTvGOpEXh402LfRcixgzEKF2b9c5FMh5eCyF
	SC6ByrrRyMzlZPqxNooo0vxTFtsTbw6FC4NsPu/W6t6bpBZkWRecxFEBRpUnI7hf7t4ZSzwJC4iFe
	ox30/zDzWACKZzhuNzbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJwA-009EHc-1A;
	Mon, 19 Jun 2023 18:49:14 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJw6-009EFT-1t;
	Mon, 19 Jun 2023 18:49:12 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687200544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ae3ENTYqA6QaF2da+eLhQOSZLm32/u2EEfpTMqxtDYQ=;
	b=dQoUXm/jQerMgBPuN0QfirrjC30PWjQWtbcrjt2qMFKE2lU6SAKpnzqMM+Ymb+ql9lj9wg
	yDNWN1KMbdAZb5qC+7s6Ij5+dK35GelJYKvHtvE3mFfeKwRYHRYlUwqTJz/KJYZGS5IXnL
	sYIfhQ1mqF+Eum7fw3YPeLNuC5Ni4BGJBy6bfgUbRKbcM4wzEN3J5ZHAcwspC6WM+HuftQ
	DVxgVmhzX3qvoZFfzWs/8LZxo/kawREvfqcnze6fn9l8m0ImorBAh2eFP5OOk/iifd5+N8
	MYms3iwhTa9tEWRyq4Nrl0EwI+SMgL8+E2sDIxYEuCs5wVzDtSELQCkxni5Pyg==
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	broonie@kernel.org,
	deller@gmx.de,
	dsterba@suse.com,
	arnd@arndb.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCHv3 0/2] Add support for Firefly Station P2 aka rk3568-roc-pc
Date: Mon, 19 Jun 2023 21:48:54 +0300
Message-Id: <20230619184856.23066-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_114910_800894_6B107962 
X-CRM114-Status: UNSURE (   8.39  )
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

Patch 1 adds the requisite dt-binding.
Patch 2 adds Firefly Station P2 device tree

Apologies for adding tab in devicetree binding in v2.

Please review and hopefully should be okay to merged now :)

Furkan Kardame

--- 
V3: 
- Change tab to space in devicetree binding.

v2: https://lore.kernel.org/all/20230617135315.25441-1-f.kardame@manjaro.org/
- Add regulator suffix to nodes
- Fix indentation
- Remove sdio_pwrseq node as it's not needed until sdmmc2 is added
- Remove underscore from pinctrl node name
- Fix dt-binding compatible name

v1: https://lore.kernel.org/all/20230616211020.55755-3-f.kardame@manjaro.org/

Furkan Kardame (2):
  dt-bindings: arm: rockchip: Add Firefly Station P2
  arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 673 ++++++++++++++++++
 3 files changed, 679 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
