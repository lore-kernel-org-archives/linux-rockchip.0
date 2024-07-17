Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81EAFC3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 09:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuIq5YZrVUy3mX1R75rJJPMZTwd9mLLzcPTpTT9M0io=; b=LBngjvbMFm3PnL
	JuPKYfDrDvuag05pr2Wd9NM0W6Hb8gwXhXXQ8SIBFGtjvzJNBtxBHotw107bySfpmg+c5uqGBRE/H
	OZc5ukw9BavAx31a7ivGuj11xRUGH0+mJa/S/f4QYDk5BBok2f/AOZpBJMCiifKgHx01pzkTpenLa
	4HUw2BbLK5WVmP9A5YDkeexSd3rQ5zkqQvailk+5/+tJabQl+e6777yrKrprIWbYNNRcWv3NNbjzL
	y9niE+Sc2FDai/0e6hNTrBLY89bVQ0e8CvTGo1n1O0DcClN51dtmD9BdVvndNW4igjuME4oYPWv2e
	slw+VOslggbGFf6RvMPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU18C-0000000DM2r-1CIN;
	Wed, 17 Jul 2024 09:39:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU179-0000000DLWs-2YBs;
	Wed, 17 Jul 2024 09:38:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E87D461435;
	Wed, 17 Jul 2024 09:38:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0460BC4AF09;
	Wed, 17 Jul 2024 09:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209102;
	bh=kvAvf3K13By68WYYkU8J/NSbxi+QzftdA8TmLyuxtq0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dT7QjkcLSQyTYW+upkHxZPkqByBL2o8ELkc8voWPr2JPTBJVqWgrjKDUy0zA7f1M5
	 LpmBztk1tru1WTy6CVfQGaBkZQVzjTQ17LwFXYhoKWGKFcDbXAjMCQjx6hpGTfCTUj
	 hHecFyKnDZup/UZ8X5qXvrGrdP2hQLRJNP30XMzpuvpJfbZF55q9axNy1k9xeNcFGc
	 yuZ6XPb3mQyHZW4KNzsW4RDRx6XB4J9FuP9LotQgiCP7asnQhiBF3oLKYbKTy21Vhw
	 0DDU3dG7m+2f/sSAYQsF3vfghyLn3jScF379FhG5+D4PhifvoYUK2k3Yl5P0liblNy
	 Kb4rypoeHK6ig==
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
Subject: [PATCH v1 3/4] loongarch: dts: remove non-existent DAC from 2k1000-ref
Date: Wed, 17 Jul 2024 10:37:55 +0100
Message-ID: <20240717-preacher-sandal-2aeffa322b9f@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=958; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=jfLYO8PFemfCqGXNrh1eFKx07e6y8OVxxug9hg0F1C0=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGnTJ3wU+s7fvKRHVGz+tenHhQ6u+vrlkYLe4hNn2rVXF HV2LHmf1FHKwiDGwSArpsiSeLuvRWr9H5cdzj1vYeawMoEMYeDiFICJJJcx/PdJF2lX6+VKeudx xv6ec7hVzOGt+8qki78ErNwe8JdfKZyRYVF6v9Uj3+6GPcdYu8PPVBh1pk+61dXt/W3ajAMVs9I 0GAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_023823_769781_68F65274 
X-CRM114-Status: GOOD (  11.00  )
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

The 2k1000 reference boards do not have a Rohm DAC on them as far as I
can tell, and they certainly do not have a dh2228fv, as this device does
not actually exist! Remove the dac nodes from the devicetrees as it is
not acceptable to pretend to have a device on a board in order to bind
the spidev driver in Linux.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/loongarch/boot/dts/loongson-2k1000-ref.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
index 23cf26cc3e5f..3514ea78f525 100644
--- a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
+++ b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
@@ -90,11 +90,6 @@ &spi0 {
 
 	#address-cells = <1>;
 	#size-cells = <0>;
-	spidev@0 {
-		compatible = "rohm,dh2228fv";
-		spi-max-frequency = <100000000>;
-		reg = <0>;
-	};
 };
 
 &ehci0 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
