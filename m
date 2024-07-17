Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F70C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 09:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BxjV20nw7Q/d8BtuLPkLdJ7hzsnQLrr7uabqQoZ+mEw=; b=dWil/2s19Xj2rW
	4y2FqIDsyw4AJ3yYzKNOuhyV5DEoxtAhC0Z9WSxrk9KxucrNbj9ZGIg9+f1n6bbrAFgXTbYpZF6Ww
	kn5O6Qb+LgQoRlKI3zRJ2frcp5HZTpUDPSDTH7DRY4G9wjFmguTTek2ifbFgiJtmwADo1N60w4Qo4
	cJGcRWqmcDrA9quZYAAD2O5pcVKjLzZJxPG3XwTzELlOj6PGAce/OMcvA2/SJAKs1bH1LJ8Q6HBak
	FUti7Fqh+ffQjd6EzyjDssRsToOsG0NLbK9OglQLEcLiXvKYS/cw3Zw6q6LTQXhmW8pzZo+7LB+NL
	pqnjp4A72qpsFsfKhFdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU17E-0000000DLZG-2nC1;
	Wed, 17 Jul 2024 09:38:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU16s-0000000DLRn-0o5l;
	Wed, 17 Jul 2024 09:38:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57EAE61435;
	Wed, 17 Jul 2024 09:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D4EDC32782;
	Wed, 17 Jul 2024 09:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209085;
	bh=KwABkoRC4NHxGqyD41TdUDeSlwt8lkJ5FHVYu3NQ0Qk=;
	h=From:To:Cc:Subject:Date:From;
	b=tNhZvrWml/ON035dM1pgyvB/gEMyfQmpAtG8uhSyjPWsI4iwVCW5NHaTKv8BZtaIC
	 3LvXWCiJloC7416UYOkb+bDbQFyn7DNKreuORtOfs3nhETAznr2yzjy1bbCZeWXYNL
	 oOP7TeMaE1x9h7a3j7cjvK5YAsYCJrLAzXjgAZWsA4w7zcGCA9sTk0MgsbgHm3O/XK
	 cadCk1hSI5IEtYbi3TotYKGQtzZ4sTVzPSkkN44To15XbDy8ZslgD9RKlz5OXH62PC
	 5oY9Pb40bwnb3DHEdIkBeNA8m91EjT1NEkhfmN+qU8/aVxOeKIQ1N940aJzbzQyjFl
	 gH+ZCiYsAQ67Q==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	loongarch@lists.linux.dev
Subject: [PATCH v1 0/4] Removal of non-existent DAC nodes
Date: Wed, 17 Jul 2024 10:37:52 +0100
Message-ID: <20240717-anvil-ashy-544e80a1317c@spud>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1842; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=4e+rXBXLqQqSSHVIEfEJhU6tlJcG6qGYp0VGcEYWqUA=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGnTJ3x07+n9FSmZuEFwahLXo9MLWjzyLBx9tCcstVk84 d+GXVmLO0pZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCR1VwMf7iSZSUnTgyaq/ek XOt+E8ue0wYrhe8c9f2XGaYmt9GmtZThF3My88PT6loSutwznp1/VD7druJPippXCJ/aKfZfpXO TeQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_023806_397616_9D2F8D0C 
X-CRM114-Status: UNSURE (   8.92  )
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

From: Conor Dooley <conor.dooley@microchip.com>

Recently I've been getting triggered by abuse of the Rohm dh2228fv
compatible to get the spidev driver probing in Linux on development
kits by employees of various silicon vendors (like NXP or my own
employer). I had a look around the kernel and all users other than the
original Clearfontz board added by Maxime appear to be similar abuse.
Drop the non-existent nodes from all of these devices :)

Fun fact: the dh2228fv isn't even real, and was originally a typo! The
real DAC is a bh2228fv

Cheers,
Conor.

CC: Dinh Nguyen <dinguyen@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: Heiko Stuebner <heiko@sntech.de>
CC: Shawn Guo <shawnguo@kernel.org>
CC: Sascha Hauer <s.hauer@pengutronix.de>
CC: Pengutronix Kernel Team <kernel@pengutronix.de>
CC: Fabio Estevam <festevam@gmail.com>
CC: Huacai Chen <chenhuacai@kernel.org>
CC: WANG Xuerui <kernel@xen0n.name>
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: linux-arm-kernel@lists.infradead.org
CC: linux-rockchip@lists.infradead.org
CC: imx@lists.linux.dev
CC: loongarch@lists.linux.dev

Conor Dooley (4):
  arm64: dts: imx8: remove non-existent DACs
  ARM: dts: rockchip: remove unlikly-to-exist DAC from elgin-r1
  loongarch: dts: remove non-existent DAC from 2k1000-ref
  ARM: dts: socfpga: remove non-existent DAC from CycloneV devkit

 .../arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts | 6 ------
 arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts            | 8 --------
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts             | 6 ------
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts              | 6 ------
 arch/loongarch/boot/dts/loongson-2k1000-ref.dts           | 5 -----
 5 files changed, 31 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
