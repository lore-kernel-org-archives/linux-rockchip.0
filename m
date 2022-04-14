Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72652C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otPXLQ+AWTi191YH5dJDVs5vBM05XaRGrQkGDLFVkUc=; b=RSNB/T/GfUI6CW
	m2o+cqliE3HkhxyKwMTdq/i3KEsQeOVPNSkRHmntUU7Q/TSciUg8CQY/L1LGqjmHKSeiGLgmXxFuF
	gkaDtgqVwvVoZDDOxjXn3y4vwDXM1G7sqYhskIyl4TW2c4btDcalW9StHyM1kQe2A79NmF/mp8tkb
	pBlf98vt431JCkOt5ZwDcBGDxVIo3TUUEPIvQiGptQNaNcQVogBY1tPy7/kiqftsmtHQuiDmvBoA0
	gu/MCeFfoZu1hpElGlpte78JwYjnXH/wRdvJAyuIZkCUms7Gw3q0FrVPRX5N2frV1VzTfZ4uyAiQO
	S4Oqfbm+Y6EEs9hJsdCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq4s-003glE-3E; Thu, 14 Apr 2022 03:23:26 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4V-003gck-OG; Thu, 14 Apr 2022 03:23:05 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 2215F5C0595;
 Wed, 13 Apr 2022 23:23:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 13 Apr 2022 23:23:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649906583; x=1649992983; bh=h6
 K0lYRCU0VpHfM5lfVwAdVPmK6VD/PuBmR2+Mxj8mU=; b=ZLmjNyaoM/AaTirGXk
 GTjzV5f0XtmBnvgYM5cB5VFMySP6qmR+v0YB9SOEZ3VwO381WqyZgxkHUKYKqRJq
 /DW+a7mhH4ZPBYcS5NGvcGuOaDUflRaAlJUoXjkNngEizV+vNWNTpipO6CvpzNCy
 cCMVmzTGPbZ1W3F1ewbvkvZW8bljingPijRmPmuqiKSUPOaJT5C76RwKsqGuHbQF
 heT022a7yvgDOyo2S9iea82p6JA+kt+GNPJquktBJ+rNaDAJ9lQKLwL+a7RSqFbh
 Z3+7xiUALBzj0n0ldvLVMUgh/ipmrXZXWv+mlVlwmDJ6s/lUIs1acke9Fx9N/Yoz
 5SOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649906583; x=1649992983; bh=h6K0lYRCU0VpHfM5lfVwAdVPmK6VD/PuBmR
 2+Mxj8mU=; b=cUMRe8qScTlSVddK1lQIOj+IgaaWe7VDQvClDey1dt1UzzzQKQG
 QcL6Ad5eBitgwOV1X76LQJ//Lrh+f4HIaRzb+yqJsGRdaSjqYBZORlKFsRrJPiBC
 7jByPa3dsPUrsu361J8d1lPbGq9T7VyNl97y2rrWwrmT/OmAlE6yyK7BpEZ8cLnK
 iZCaRqNejy53I89DIzVXYoyaOoRPIFq4ziA/XODNQ1jkdQujM/cfmPvn+czoPzwb
 dubxqdW91amAorEajrELN2i4J2nCqYVM9F+tpgdx9ZatbUkXna/cWlMlYJny0azc
 EhDBQeGXFAYu/GRYevX1ozbagDEx17JtiPQ==
X-ME-Sender: <xms:lpNXYlzm5SOjfW3NA3PvW0TDwyzXxV1QCX-GnGqyk_k7iXZO-e8HrA>
 <xme:lpNXYlTZn0J_1JXVBApJPK2X-ARBkvN51Nm_tA4jsLk7LFbcWgr8uIfDbkU-2EeK4
 ux2wRN5W24nhg7aig>
X-ME-Received: <xmr:lpNXYvVYISQMB0GkDVAEGO7BaJkFES1VA-9H2Jrbj7_0qNy2U7eJes2CzNDAqLX_gft4QRWsEXmATlz5VE3WRowCbR7LBAK6rhJqoTAjDGA93RPOWGrQXjlTF5ovonUW5XMTEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:l5NXYnhq3hQfPMRmiIBlzEAtMteT0AbA8kvdqOB_zMB6624yF3oh8w>
 <xmx:l5NXYnDpPinx6ReXYQ3CJpDZwfuQENjKdf3iCAO-GT2CMNzO3k8B8w>
 <xmx:l5NXYgKhqum43LuxRnNs8q-_FBGzl5AXSsobsdszrur7bKt-pez5nA>
 <xmx:l5NXYpBgwhYkRxFTVsJYgO2ZBdUAJsTKhL8iiRYuVJfnY0WgQ_SYFA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:23:02 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 2/6] phy: rockchip-inno-usb2: Do not check bvalid twice
Date: Wed, 13 Apr 2022 22:22:53 -0500
Message-Id: <20220414032258.40984-3-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202304_150406_3E59739B 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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

The bvalid interrupt handler already checks bvalid status. The muxed IRQ
handler just needs to call the other handler (plus any other handlers
that will be added).

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index cba5c32cbaee..29407b36f5fa 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -919,13 +919,11 @@ static irqreturn_t rockchip_usb2phy_bvalid_irq(int irq, void *data)
 
 static irqreturn_t rockchip_usb2phy_otg_mux_irq(int irq, void *data)
 {
-	struct rockchip_usb2phy_port *rport = data;
-	struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);
+	irqreturn_t ret = IRQ_NONE;
 
-	if (property_enabled(rphy->grf, &rport->port_cfg->bvalid_det_st))
-		return rockchip_usb2phy_bvalid_irq(irq, data);
-	else
-		return IRQ_NONE;
+	ret |= rockchip_usb2phy_bvalid_irq(irq, data);
+
+	return ret;
 }
 
 static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
