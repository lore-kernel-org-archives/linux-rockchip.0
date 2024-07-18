Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 250A0C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNeDaLx9hQuUqRZ2k1Am83eU8CZwkpTc3+Qs0SvMEC8=; b=mqWn67MMZsr5cA
	I6WGbJ+Gpw6jTL2rCNMUCePJ9tfC1ZVtVHtPyKueZYoS92qE1NjC+nqfqD2yyzZzYLZan/qjBxF6S
	OFmsQEBzbxnd4sFiVlhomrsjlZYn9ZbqjRsQ9GIw8hwk94yQMo8acmbcePq8v0a5cmCuprYbyGRsz
	o+I15SCe7v4bNY/vit2VbtDyGVlYBWmckz7sKXDZqfLaErukhlMq5Zd5qrsCtBkn5hPySRY/ujh8q
	v3oOYnJubXGiQNXpkvSdXsFCQNeRRmFcuEvN8AAKDJ18lO0wxbL5G+GaLwPR2+EjPIh2O2MoWf5+1
	DeLnUVdIJb/7me3/Bfgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMhI-0000000GQd1-1e75;
	Thu, 18 Jul 2024 08:41:08 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMgw-0000000GQTO-09ah;
	Thu, 18 Jul 2024 08:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721292044;
	bh=LWPDNQt7jaDmjYGG8OeyUBMlJOqBeBXguSQsTVETVnE=;
	h=From:Subject:Date:To:Cc:From;
	b=cZsqkc0DvtIIUS6+ljEe8K/DBe7T47JaEYKECmQQo1VJg7Kbf/13hlsb2OP4A8S80
	 etdTlQ4J0E1D87jxdMV8wBezbuGVO0GtCqNoToDcfVHXjVlInfsBA/ytdGc/IK5fld
	 0eSWIs7F5lcpi6vSQeLPsF/jEsJdmMFeYsaOaSFKpIy+qxYKh9fLn4ALeWRK2ypWrq
	 Fvz63rl6Mn6yuTG4kXv8PqCBjjd2oXtRhjl+rLxe4pxeAcc5fc5ZlxDUWhwjkUGDqu
	 V9w2f9Z5PoWyofHvMxKESyRl9SNZWtdTWMtreR9XmtwNTGbpUlIuNmzhCxYfnN3dAN
	 1jy2vCdZ0Tktg==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0DBF33782167;
	Thu, 18 Jul 2024 08:40:44 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v3 0/3] Add support for Firefly Core-PX30-JD4 SoM &
 baseboard
Date: Thu, 18 Jul 2024 09:40:23 +0100
Message-Id: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPfUmGYC/4XNTQrCMBCG4avIrI3kv9aV9xAXMUntYG1KIqGl9
 O6mXYkgLt8P5pkZko/oE5x2M0SfMWHoS4j9Dmxr+rsn6EoDp1zSimkSg33YFgcyjIKSBqNvuom
 o2je2Fk5XRwnldigzjpt7uZZuMb1CnLY3ma3rPzEzQomm1hknKBdGnG3oOnML0RxseMKqZv4pV
 b8kXiSqlWRGGVVL/S0ty/IGAtuwAggBAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
 Collabora Kernel Mailing List <kernel@collabora.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_014046_245591_C78F982B 
X-CRM114-Status: GOOD (  10.19  )
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

This adds support for the PX30-based Core-PX30-JD4 system-on-module from
Firefly and includes support for the SoM in combination with the
Firefly MB-JD4-PX30 baseboard.

---
Changes in v3:
- Rename px30-firefly-jd4.dts=>px30-firefly-jd4-core-mb.dts to follow
  the existing <SoC>-<brand>-<SoM>-<carrier>.dts pattern.
- Change the compatible names to firefly,px30-jd4-core and
  firefly,px30-jd4-core-mb to follow the above pattern.
- Adjust some grammatical errors (with=>on).
- Link to v2: https://lore.kernel.org/r/20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com

Changes in v2:
- Split into two separate files: dtsi for the SoM and dts for the carrier.
- Change devicetree compatible to match SoM/carrier split.
- Change device names to better match vendor's name.
- Properly model baseboard & SoM regulators.
- Properly model baseboard recovery key.
- Remove DSI panel (& related nodes) since "sitronix,st7703" compatible
  is undocumented & hardware is unavailable.
- Remove unused audio-related nodes.
- Remove unused UART nodes.
- Remove unused PMIC pinctrl nodes.
- Add node for baseboard LEDs.
- Link to v1: https://lore.kernel.org/r/20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com

---
Christopher Obbard (3):
      dt-bindings: arm: rockchip: Add Firefly Core-PX30-JD4 on baseboard
      arm64: dts: rockchip: add Firefly Core-PX30-JD4 SoM
      arm64: dts: rockchip: add Firefly JD4 baseboard with Core-PX30-JD4 SoM

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/px30-firefly-jd4-core-mb.dts | 179 ++++++++++++
 .../boot/dts/rockchip/px30-firefly-jd4-core.dtsi   | 322 +++++++++++++++++++++
 4 files changed, 508 insertions(+)
---
base-commit: 51835949dda3783d4639cfa74ce13a3c9829de00
change-id: 20240716-rockchip-px30-firefly-59efc93d6784

Best regards,
-- 
Christopher Obbard <chris.obbard@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
