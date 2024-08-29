Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A0E0C83F15
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J0VO7xCfxXgF4h5NQNhdYzxgGINuYbyZf4KB0Aqxofc=; b=gRAQs+pblCImhK
	WUOxuouuoUWmo4LEthMPqb49wbgBUS10W7f5qS8w/VH0lOFKv92QMXhCtDtI1JY85ui4B1RoAjUUq
	HvM5X6T5XRbDZoZNocwIXC+Bky2BTN5ahwVjVQWQA01tkwZZlKFXSWrn1CLIG/xd4qaN0Mm9aqruS
	ZG+A77lpZFodn/qCH/W3F7e9q6M2NJxFpikFRR0lO02+TfPcZTBHcS82PPnnPxrUEKpLPaJCH0eXs
	U1sohSohulEstkrv/0cSn0zKTFbbkUtc/2b/ITqDQyj/o7G8Fxfo2JeuWDdy/2dMLf8j/kQlKGji7
	g57fpdKwbrT2cN+Wct/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf6A-000000028iE-3WVQ;
	Thu, 29 Aug 2024 13:22:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf5E-000000028Uj-3q5N;
	Thu, 29 Aug 2024 13:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=brmcxwtAotg+1xovsMTzeCOtgzWWgY3Zhg/CvQpmqMQ=; b=MUHGcSA5xNYCeaC2HmsuK8Kwb9
	70WABBaZhj7Tyg0Va92k2owPk8NU25kDcXfH3QKFc0zRrwG3UsqOX7myCL51DFsct0voMJogelvlx
	iRVwWcG+r/lK4v0hd1Gv241MoWmWqDLiXVYNP0tk3LwigXzm2LKmvRxNPDPHuGjwJdM7MxTjdtgjh
	APrjl+yKT7pCr7FBLroT23tR6dZsU9MTID5vT6a5zh35H+jvyeL1c0iS7Y3kp1K0gtL3ovp8wCYJb
	jRv5ce/YxBpKm/Tfu59gu/FXB0WHuZedo2BYrrd0hg9f8DAfrBkg4Hr29ZZLnpweF/k9hH4u/R+Qx
	Gy/2i4xA==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf5C-0004Es-57; Thu, 29 Aug 2024 15:21:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: marcin.juszkiewicz@linaro.org,
	didi.debian@cknow.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Some fixes for issues found by dtbs check
Date: Thu, 29 Aug 2024 15:20:57 +0200
Message-ID: <20240829132100.1723127-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_062104_995064_A9106BAD 
X-CRM114-Status: UNSURE (   8.31  )
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

There two additional warnings remaining, hopefully I can motivate someone
to look into them:

_build-arm64/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb:
    codec@1b: Unevaluated properties are not allowed 
    ('assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks', 'port' were unexpected)
        from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
_build-arm64/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb:
    sound: 'simple-audio-card,hp-pin-name' does not match any of the regexes:
    '^simple-audio-card,codec(@[0-9a-f]+)?$',
    '^simple-audio-card,cpu(@[0-9a-f]+)?$',
    '^simple-audio-card,dai-link(@[0-9a-f]+)?$',
    '^simple-audio-card,plat(@[0-9a-f]+)?$', 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/sound/simple-card.yaml#

Heiko Stuebner (3):
  arm64: dts: rockchip: use correct fcs,suspend-voltage-selector on
    NanoPC-T6
  arm64: dts: rockchip: drop unsupported regulator property from
    NanoPC-T6
  arm64: dts: rockchip: drop unsupported regulator-property from
    NanoPC-T6

 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
