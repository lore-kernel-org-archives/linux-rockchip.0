Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CB8C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 09:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pY2y+YlGZwOX26MfSS8ny6NR1Mw5sKBYLfhIytgRwU=; b=rxq17fLJDCcFBS
	kbgM0AJuTeud330J6O4LrJiMJXu1P3wLefnUboqZjnMVEe8srlAY5mdqQGQDwxuAtrG9tSum15kbM
	aV3kn7ihg21Fpc8hp9uqLuSshF50lZd+rueoMMEPcn996h/Etr2N4yVHV9Gpcfx9LOze0wdwgCPtg
	6s0zfn/AQIp3jXJqk8OUWedjX5+DoOCLI69Fd2ZTYHJHDNf/auksymVW+U/wDs7Wiikw+V5aicsdf
	De5pE+vqHN+Zppx6XuaGIpz2DLa69YhnHceNAqZZkJ8lIwRVDIZi9Z9WMjPoyR2rzWY0OPnVUKLM6
	GCuh/Tn+/gSFjXpev69Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU17X-0000000DLiT-3hGc;
	Wed, 17 Jul 2024 09:38:47 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU16y-0000000DLSa-2L3e;
	Wed, 17 Jul 2024 09:38:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AA462CE16EF;
	Wed, 17 Jul 2024 09:38:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C3C6C4AF0F;
	Wed, 17 Jul 2024 09:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209090;
	bh=ubP44NuaGuAY90GjTboVKQYzq7RaHydSJd5UcJwCg9w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U56LELKcbq6iDWxH6yGU5DkmtU0YvxhK9MJhlwBfbqw6xKV02nzIlPuAuF4KNjZqH
	 y8Cv227swF7p2+VP/eR5zV08eYKkqjgdxBuClvaR8ARhvnxLwfKv5tTO5ONm3sFSGy
	 mQNRtxqXVGHckwWcaHJTedH1/WuA6h/wZyYFU+nv9kpmdWfM7V8RTEbqA1aCWg2Wpe
	 IyqeWo21mcd26X1CRJFrCU7A+ortkj2oof0AnuMbR/Nwe+XnKi2UHD7G6Ykb8Pkrrx
	 HnL538xZXBAxTA42/rwXOJukM76egtIHilXAw7aBmIsx18Q1rm8+4LaGUB3fjLgaaD
	 UGFhebyC96Qag==
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
Subject: [PATCH v1 1/4] arm64: dts: imx8: remove non-existent DACs
Date: Wed, 17 Jul 2024 10:37:53 +0100
Message-ID: <20240717-alkalize-bouncy-83e748284bc7@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1626; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=sKkWMQCF3ZOs6V++WZsAxf1OgaX475Y80SVGf7Gc4Hg=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGnTJ3y022HU6njk6TlvlsxsNff2Ob/envY/rbfonqXGG h/x18tvdJSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiduwMf3jC9q/ddzZoY/TE KDXdpyz3cvUtY7b29smoGJi9q1g7j5WRoc9rQ859nrX/O4W/mXDNaM05/VfSujnKJ8zGtq3RMec VHwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_023813_069557_365AECBD 
X-CRM114-Status: GOOD (  10.63  )
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

Neither the imx8dxl-evk or imx8qm-mek have a Rohm DAC on them as far as
I can tell from online documentation, and they certainly do not have a
dh2228fv, as this device does not actually exist! Remove the DAC nodes
from the devicetrees as it is not acceptable to pretend to have a device
on a board in order to bind the spidev driver in Linux.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 6 ------
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
index 1a74ac3ee4ee..4caaecc19227 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -722,12 +722,6 @@ &lpspi3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpspi3>;
 	status = "okay";
-
-	spidev0: spi@0 {
-		reg = <0>;
-		compatible = "rohm,dh2228fv";
-		spi-max-frequency = <30000000>;
-	};
 };
 
 &iomuxc {
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index 778741dbbb33..3f0fd147bbd0 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -287,12 +287,6 @@ &lpspi2 {
 	pinctrl-0 = <&pinctrl_lpspi2 &pinctrl_lpspi2_cs>;
 	cs-gpios = <&lsio_gpio3 10 GPIO_ACTIVE_LOW>;
 	status = "okay";
-
-	spidev0: spi@0 {
-		reg = <0>;
-		compatible = "rohm,dh2228fv";
-		spi-max-frequency = <30000000>;
-	};
 };
 
 &lsio_mu5 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
