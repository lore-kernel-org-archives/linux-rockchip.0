Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503DEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 15:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/pBkyWPij1Ra+pXvs1gCZKOBoEQHpfplneMZ1LW/hk=; b=rmTWV8ICZoeI7b
	RsXaxpT2jVLfCdQyCg7iftEVn+eQhhSBvzZqa1VeFDz1/YJPXtH+SZ5MkGC4HuYxH78+9S/n8uccD
	GuhzUHnPBMKiPPk7+ysKUUGOiv2ymb4gPjJq4IBzT9zoz2ckN2GuLZasGvZgmywahk4ZDphIln5Tp
	PurYQ0Uh/P2jF30Xa9ZSrVdruawchpPDYNulu+a4aY19kzIzqH3f3GVM3Mvzkh2fcoDdUOZ+1fq5T
	XeNPPWIkVg/ijg7YgR72dLHCzao4AqiOUJ81hdQmF1SQnieRemmd0PY6N4cdyj1z/Tinw1qDyuICv
	0Pz33FJrvpUEHh5AGXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4Nx-00HIZR-EA; Tue, 01 Mar 2022 15:25:57 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Ms-00HHjJ-Br; Tue, 01 Mar 2022 15:24:52 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout1.routing.net (Postfix) with ESMTP id 5592B401AC;
 Tue,  1 Mar 2022 15:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646148286;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EvM/I1oBTjBlwWa4oI6EL2zWGeQZf22/TQ7on05EAo0=;
 b=tcABabNGeU9UPyXoSKOwdEWXcE5qvwx01hME3ZuAnkOp1GQj3PC8hklda/MrvDDz7Hexvo
 X7XpYnzYjRCs03sufxg2ekXhCXgcv/+bq9LaPN90McOlO/zsIn0pG6QvWl7B6W3t1dmGGZ
 q2K35Yb/zVBj2hRSdZtv74yDIqQOYig=
Received: from localhost.localdomain (fttx-pool-80.245.77.190.bambit.de
 [80.245.77.190])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 2EFF010011C;
 Tue,  1 Mar 2022 15:24:45 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 2/5] arm64: dts: broadcom: Fix sata nodename
Date: Tue,  1 Mar 2022 16:24:18 +0100
Message-Id: <20220301152421.57281-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301152421.57281-1-linux@fw-web.de>
References: <20220301152421.57281-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: aa3616cc-85b9-47a9-bd4f-f6f08ce454ab
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_072450_625077_58B4F51A 
X-CRM114-Status: GOOD (  11.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Frank Wunderlich <frank-w@public-files.de>

After converting ahci-platform txt binding to yaml nodename is reported
as not matching the standard:

arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dt.yaml:
ahci@663f2000: $nodename:0: 'ahci@663f2000' does not match '^sata(@.*)?$'

Fix it to match binding.

Fixes: ac9aae00f0fc ("arm64: dts: Add SATA3 AHCI and SATA3 PHY DT nodes for NS2")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v4:
 - new Patch
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 2cfeaf3b0a87..8c218689fef7 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -687,7 +687,7 @@ sata_phy1: sata-phy@1 {
 			};
 		};
 
-		sata: ahci@663f2000 {
+		sata: sata@663f2000 {
 			compatible = "brcm,iproc-ahci", "generic-ahci";
 			reg = <0x663f2000 0x1000>;
 			dma-coherent;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
