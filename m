Return-Path: <SRS0=+8lW=CR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23AAFC433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF2C823C3F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2020 15:05:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XCx9jKud";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="OQDgnwOk";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJHkf7us"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF2C823C3F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dEOx2U2D/b3Gz1XtXdDRDX+UDOyvDEVz3N1XYqKmAq4=; b=XCx9jKudmEf72/4BEOOR0CWUHf
	5kC9l8W/s7jmyb66yvTKdTPrCuzNCCP6Oyc45z0c5KpzU0KtTP/ZhYjIwYNHlWH5/c0tmwzB8nqWy
	W3uGMr4iG3gaTFErikSFb+xUX7GE0CxSXjrEEF+FCqlvnCOklmUInr1LVosmsTD9S3dcBg3SIXWBt
	e0OzP+L84odlN8Ni09Sb+O1nzy0DXrGo+fFbr9EmwIFAkWEj1UyC2X1j/xZZqIUEM7KYaKIiMhAv4
	HrhJaVvDFLpMZ/sxvyDLE4uxv6hctF7HdJacmLtrDf6hrVy0uLEBHaux6evI5Oz7bAnL2Xc5GXmTV
	jPsUGCQA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFfB8-0005dr-B8; Tue, 08 Sep 2020 15:05:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfB4-0005d3-KH; Tue, 08 Sep 2020 15:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QCvpU8wDeMAbygDBwOjTqrsfQc8RWle5Vd2PhRpLOiM=; b=OQDgnwOkjAAuRTD6yrvJ6UYAHP
 +/IXTA74gNNGTSlr1rg4h8Uq4yjJLSEv8stGf/feF6zKpztKCQ6sDQKlsWUwihFV3IPydvKbwL/6Y
 Ptfm08SbIHpl+IDFDaj3REr4kMuLGQNd/LxV7sKtfXf1cCa/bRHlrFFc9cSnqx1BRQHYU4Vs+BHD0
 V0HK/q6auphB3fpWeG3wu/7J5eSdhf4K3ruYEOcWrQJ1NQVzr/fsRn+3ELkAL6qOsRiD6RQ+KNf8G
 Xw+VS7FWCMp4pyU/RhodgLwgTP9MR8DA1XlSaQhH3WmxmBi8YgReV9HYi5pGdLvyNxr+gV4n3zVBR
 kkYaPO/A==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFfAv-0003c5-5U; Tue, 08 Sep 2020 15:04:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5700723CCD;
 Tue,  8 Sep 2020 15:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599577457;
 bh=r+iOPiiCSkXns7k2RkP8i4/NmDfyYnNqQ4In2aeIt3Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jJHkf7usnzFhyUf/Fa5vOLIFVRp2+pRE6BGupDSAWWzz+DSInpH5BCytIfrTFGo0Q
 vx/aeXNSevkKQNd2DIv3WBOUOUD92maIqkcwcrrzBEP+w6EJTxRQTzY4Cwr/omuHNC
 ygi6WNQsotLEetkIwpcPi3Vk+CjEr2ASBaPLKfzA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>,
 Adam Ford <aford173@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Alifer Moraes <alifer.wsdm@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Vitor Massaru Iha <vitor@massaru.org>,
 Kever Yang <kever.yang@rock-chips.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 7/8] arm64: dts: zynqmp-zcu100-revC: Correct interrupt flags
 in examples
Date: Tue,  8 Sep 2020 17:02:40 +0200
Message-Id: <20200908150241.5771-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
References: <20200908150241.5771-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200908_160452_315244_9170561B 
X-CRM114-Status: GOOD (  15.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning:
1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING

Correct the interrupt flags, assuming the author of the code wanted some
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_LOW => IRQ_TYPE_LEVEL_LOW

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Not tested on HW.
---
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index d60110ad8367..c9460693f4e9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -186,7 +186,7 @@
 				compatible = "ti,tps65086";
 				reg = <0x5e>;
 				interrupt-parent = <&gpio>;
-				interrupts = <77 GPIO_ACTIVE_LOW>;
+				interrupts = <77 IRQ_TYPE_LEVEL_LOW>;
 				#gpio-cells = <2>;
 				gpio-controller;
 			};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
