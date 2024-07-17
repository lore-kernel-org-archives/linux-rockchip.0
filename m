Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB255C3DA60
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 16:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3JxeT/lGQATEpflQ6pQ8Hdx2mVfBp/+RaFj8YT6KYZg=; b=4U9WyaHgaG+XVh
	MW6wVFye8AUwhdSa2PxywDNwdUzcvYKHfc2+eTzq+Dizvby4VFLqK9gjTGZ3v0HJ8BkksJLWnyNZj
	Rq8OA7q5lt8czjH5y8nNOVqV/tpeudjrNDSYDnozJavj4X5dyhK9DlJanXfF9h1bkeMl1Zu0HxLtz
	rpDx0U1OSMJ7RIOOKloZMEOSJccZauiwTua+MmyJq4/5sBMRTwOjkNHgdVhfDFBtp3QibN5mHhBkB
	+R740gpAQDdVDXaRojDS2tAz6uw+rcRN8OUOlsackdEmlmM68lv0LGu+PhK03QDEq2W4413sr2uxt
	vSHoxzRf/1odBGScX4Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7op-0000000EOgP-2Png;
	Wed, 17 Jul 2024 16:47:55 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7o8-0000000EONz-18ew;
	Wed, 17 Jul 2024 16:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721234828;
	bh=7/VlwMrzZKcazhdqh/NYPmp8rydn7Fr3YpN/2btgZpk=;
	h=From:Subject:Date:To:Cc:From;
	b=kFu+FVTFofSadoVStjEIi4dKZvSejWuYgtv+izA/T4vLz5G/SEjzZUFGs1cTxMw7K
	 Isyrx94TZuPnEAwHVfkEj/WXUlLYxoLBFh2SFu+9XVtmN1CLImPrYLAwuJ4FK9/ChR
	 2IZ5tyTeGwcbOox89fTaAtWw8dkbBgiIlenK78TmnsiSW4C0d2TNaAMrkr05U5sNCx
	 8sEuHRaE+sQYBUbMLMdSRBNNljJr07aYnsIKv5HpNEgH7C/43pCpjVfZAaLVhMekBv
	 SL0fhknv2dbfdsOigHk5uiMqD/m50PYthWQLKR7iZdXT50IaBvfJjCBXMXiULjKG0u
	 wo+K3ZhLb62cw==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5BB143780B50;
	Wed, 17 Jul 2024 16:47:08 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 0/3] Add support for Firefly Core-PX30-JD4 SoM &
 baseboard
Date: Wed, 17 Jul 2024 17:46:58 +0100
Message-Id: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIL1l2YC/4WNQQ6CMBBFr0Jm7ZjSIggr72FY1GkrE5GS1jQQw
 t2tXMDle8l/f4NoA9sIXbFBsIkj+ymDPBVAg56eFtlkBilkJZqyxuDpRQPPOC9KoONg3bjipbW
 OWmXq5lpB3s5Z83J0733mgePHh/W4SeXP/iumEgXWgow2Skil1Y38OOqHD/pM/g39vu9fKN20V
 74AAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
 Collabora Kernel Mailing List <kernel@collabora.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_094712_499341_948170F9 
X-CRM114-Status: UNSURE (   9.49  )
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

This adds support for the PX30-based Core-PX30-JD4 system-on-module from
Firefly and includes support for the SoM in combination with the
Firefly MB-JD4-PX30 baseboard.

---
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
      dt-bindings: arm: rockchip: Add Firefly Core-PX30-JD4 with baseboard
      arm64: dts: rockchip: add Firefly Core-PX30-JD4 SoM
      arm64: dts: rockchip: add Firefly JD4 baseboard with Core-PX30-JD4 SoM

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/px30-firefly-jd4-core.dtsi   | 322 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts  | 178 ++++++++++++
 4 files changed, 507 insertions(+)
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
