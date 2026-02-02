Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE08E73157
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 10:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lApl3rsLIE7kGwatFrOBqT3rDSWumAP80TYn3H39MsU=; b=ROlEACzxClj5S4
	4yr1kZDxe8ZFRa/ZnVYXRR1lvB0oBqzzo2ZLpSwf6wj/oUqZIXMaDUspii7RYINdBQfEpAPXvGp2A
	7ZwmAsKm+Bee9bNFaOIdRFZr4D/UMTnzkqt6Xl6buEHziKFKB/z25Fbzr6uPOYsW3IM+JaLMSZQVt
	FmwOtIfHmixcgfpSa6ymkL1Ic+l7RS5nZ9eKfrKeQ8bDFo3yF+CAN+Yn3wXH+QFCF9n07iDbBG34P
	KlQaC41ddF4kM0FgbxD3fjHJsllWkkX3K42X30cX/yvZKHSirXK6HXSegfEfbs8GCr4JvddgNt5J6
	eQ/A76m4FVUg2495XG7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmr9q-00000004p1k-3c6Z;
	Mon, 02 Feb 2026 10:27:50 +0000
Received: from smtp-190b.mail.infomaniak.ch ([185.125.25.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmr9m-00000004oxi-32Sh
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 10:27:49 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6b])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4f4N986l7Yz8n0;
	Mon,  2 Feb 2026 11:27:40 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4f4N98059bz5sw;
	Mon,  2 Feb 2026 11:27:39 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/2] arm64: dts: rockchip: fix Ethernet PHY on Theobroma
 PX30 devices
Date: Mon, 02 Feb 2026 11:27:24 +0100
Message-Id: <20260202-px30-eth-phy-v1-0-ef365be64922@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqAIBAAvyJ7TnANLPpKdJBacy8mGmGIf0+6D
 MxhpkKmxJRhERUSPZz5Cl1wELB7G06SfHQHrbRROCoZSwfdXkb/SjMZZ3FGQjTQk5jIcfl369b
 aB+vsMXheAAAA
X-Change-ID: 20260130-px30-eth-phy-676fa181e116
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_022746_894306_A69E86E9 
X-CRM114-Status: GOOD (  11.34  )
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

This removes the reliance on the bootloader setting up the Ethernet PHY
for the Linux kernel to be able to use Ethernet.

This is due to the HW default of the PHY reset line being active and the
MDIO auto-detection mechanism not controlling a PHY's reset line such
that we need to hardcode the PHY ID in the compatible property for it to
be usable by the kernel, regardless of what the bootloader is doing.

We only ever had one PHY (DP83825) for both devices, so it's fine to
hardcode this way.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (2):
      arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Cobra
      arm64: dts: rockchip: fix Ethernet PHY not found on PX30 Ringneck

 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: 4d310797262f0ddf129e76c2aad2b950adaf1fda
change-id: 20260130-px30-eth-phy-676fa181e116

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
