Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B8CFEB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 18:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ic7+8bta8VPMepSR6pPWAHJ+EMpdKp646RYZiOEOTc=; b=OaFVTNDMa8s1RK
	R94AU2q29YQco4pheL3F29R9ezCoNq37ev6gRxn7h+MGs7Hq1uGJF7gvxQT3bPhwGyi5cEEYaCuMI
	C2vm8LPrf46uXtMVu7TLT42H2eBtoBGc1PGBGuYeBe3bGFMM9YY2fQCxB0+8crnLlnuYUXGEq4Ii1
	fauyc1zHPtFTSBSd4ADVec0V9YzXOwb3KoTTq4HL1snQ+Srpm4wJ6ubULATR0NqACXFliCcXPRZUP
	LK4avO9yEWOvqQQWz82AgX+9lA7jrjqhP8gPheTctcgabPJMKxzuejbZln1yuObIW11c1glh5/rgr
	zNOfqK/SPm90uXlYy1/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBgOc-00C5ll-1n;
	Tue, 20 Jun 2023 18:48:06 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBgOY-00C5ic-0D;
	Tue, 20 Jun 2023 18:48:03 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687286875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x5Ty4pCnpwGR7JhrU4QbNphR7Ex1qOB/BOQRkHNf7iY=;
	b=TsqWWY2qIfNlMBfSe+2Mdfr7D45iOXSDGrxYIRYVSZlkNZuaAvrJHTUFsDS5U7UvOH2p81
	ubx1lhwY3veyGiD6yO7unhOQfSiU0InRti1nMdAgwynfAg02keW/m4Zb+Ba4lQP2Z8S3PT
	TJGa3z9lUDWZcuY4G4YbWK1brohjK8en1rm7uf5FeATS6h2nWvRctDYZ621RB+kF9X6SPg
	wDIOCHBUpBHc/VwWV8RH65ji8Ao6tfsJk0G36QeK/pjwxGaLlFKGJ4ky18bRfpaV6HEgFP
	sWCE7N9L6IpnlxQx31qA2xU7JFanZ+EC+LMOVkiWjplg6+hLJ8KGWPPJfexgLA==
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
Subject: [PATCHv4 0/2] Add support for Firefly Station P2 aka rk3568-roc-pc
Date: Tue, 20 Jun 2023 21:47:44 +0300
Message-Id: <20230620184746.55391-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_114802_260914_F0ADB747 
X-CRM114-Status: UNSURE (   8.25  )
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

Please review and I hope it is all good this time :)

Furkan Kardame

--- 
V4: 
- Fix indentation
- Remove unused regulator nodes
- Add space before the property.

V3:  https://lore.kernel.org/all/20230619184856.23066-1-f.kardame@manjaro.org/
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
 .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 654 ++++++++++++++++++
 3 files changed, 660 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
