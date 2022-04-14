Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE82EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5euHvw+5LvQzUW3tJgcy39/jvw1MW7oGA1sWD5DDhzI=; b=Gfn4BHBpSxe/pH
	ByCBqoCtGbix/ztMnh4HnSTGp6qdRBoViqAHPFwjRZTnFp52JChTohus9bAgKQSWJ8cBLnqJO6NY8
	Dv7BmOuHxN5iNDhJyB1sUTWEoQZsRKTNYghawdpkUORBzWDT8dneUHkW440hLT61K9ZXeL1hhU4eU
	Iv0xAWIoX11h5GAPKPOQlyrEyvJCiOm1emyExAn/65JfHW6vaGYE8swEWtlvQo1w8pBKLgANuF48W
	EI5MBp3EBkm841YkmqxhQATVB2irfxZUFHvYrSOYdD+/WJDgxev4105zK7bunot4pGkX/Ac8gU+uB
	a3FfuR263I7246zUE0yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq5F-003gwN-2f; Thu, 14 Apr 2022 03:23:49 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4V-003gcj-F4; Thu, 14 Apr 2022 03:23:06 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id AEDEF5C0593;
 Wed, 13 Apr 2022 23:23:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 13 Apr 2022 23:23:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649906581; x=1649992981; bh=ch
 oSBkcVUXVApD971k8AjvM5Di3IKxbalXzWvZFEOsQ=; b=NErAcTQAq1I4MEV3Md
 WOIhg8i8iNaeIJp4L23O7hjX0YoIFdqmi4UaEZXzlBsgUrQhd5Mi4CWTxszNQ7fy
 tg3LOmNdLu47VJsAJRg6KPBFnvSNn73ikGgWaadAg8yQmtWk5tVOQettPc4gbvl4
 o/RhL8NorcTeVFQoXTc3Xct9XnMRMJYhOWSkzo7evemRicfG2KW+yWOc3CLX2j3m
 ZOWxqztiDq+MfcM2TPmOXBYmqvLrjraUWTL8amAVUaGN+Sqe5aHqN+BtvgbHwz8Y
 2eJYk8dqjWuzd4jaB0ZcuTgOSFvs6At6Ui+168euwn/g2eVBHexHCv81bQ0GQoKC
 ou9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649906581; x=1649992981; bh=choSBkcVUXVApD971k8AjvM5Di3IKxbalXz
 WvZFEOsQ=; b=TiNy7nmoKHrfFn7dLPXBts4WuuvknzXOGSuIFq2y1WlmR2B1gO7
 rLEC8CqY+Ey8AaJzFYVej3p6/Fr3fq8cBVbiDfuQHDGzPjAkMEDUpQAY8OMo5EMH
 ML+114CNUkNeG7D7xSX7qw8dE/nWSiokOeyIlxfC8ndUYcvU7xZckC4pFIC/pEem
 +yGVakCLr2FAwQp7xgYmkVN7Dqz998f0tA8atWIoqPzn4HV7LAj4COAJ7RN/i+Gw
 cmLzQHEPGnVrfGmbBmV2G7oPu2B1M1vljwe5kIhFoQ09u/i+CZPQruFe0wTIahDt
 1S+n6dF3KVP3dM5Bhf6PvRC7kQpbzTJQ4Vg==
X-ME-Sender: <xms:lZNXYn-auaiSUFBdldz7ARJ2KkOqosghuL-CRTGyemFxePuitnp1mw>
 <xme:lZNXYjv-3m6f2DCCPQAoje8ewSbk2oVYTluDqqAvzRxiWZs1UJdKcAKQlGVhuN-Ar
 S0m46nzRgepFZK7OA>
X-ME-Received: <xmr:lZNXYlCZHw3WLcyhAGG9a9Giub9K9R4jaLOa7a0t7Sb03aZr84g5083yy1D-zY7GL_BwFCg1FXIFHo1OSUWmYy9693T1bg3jRd-g2-XjjMbCmWBdDMQwCtnEdMLTUfXiwH-ofQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:lZNXYjeT1fRxuJOZYa7cN1zGZMJc7v2WN_PBTUXXHloRtRL7eF15WQ>
 <xmx:lZNXYsPcKsY4WABQWPDa0xIXXDNZj8sGPyVVKzawIwr0wy4ZSNQOCQ>
 <xmx:lZNXYlnNQQHRBMF-XrT8O1STFfxCUQO0nh1cYztOfVIelKILn5DlXg>
 <xmx:lZNXYjeNwCmadV0co6SPMaBimuBo6gTjEqOXvQ6mdoX4Xa_vTNkWLw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:23:01 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 1/6] phy: rockchip-inno-usb2: Fix muxed interrupt support
Date: Wed, 13 Apr 2022 22:22:52 -0500
Message-Id: <20220414032258.40984-2-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202304_148593_91141501 
X-CRM114-Status: GOOD (  10.30  )
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

This commit fixes two issues with the muxed interrupt handler. First,
the OTG port has the "bvalid" interrupt enabled, not "linestate". Since
only the linestate interrupt was handled, and not the bvalid interrupt,
plugging in a cable to the OTG port caused an interrupt storm.

Second, the return values from the individual port IRQ handlers need to
be OR-ed together. Otherwise, the lack of an interrupt from the last
port would cause the handler to erroneously return IRQ_NONE.

Fixes: ed2b5a8e6b98 ("phy: phy-rockchip-inno-usb2: support muxed interrupts")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index eca77e44a4c1..cba5c32cbaee 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -940,8 +940,14 @@ static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
 		if (!rport->phy)
 			continue;
 
-		/* Handle linestate irq for both otg port and host port */
-		ret = rockchip_usb2phy_linestate_irq(irq, rport);
+		switch (rport->port_id) {
+		case USB2PHY_PORT_OTG:
+			ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
+			break;
+		case USB2PHY_PORT_HOST:
+			ret |= rockchip_usb2phy_linestate_irq(irq, rport);
+			break;
+		}
 	}
 
 	return ret;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
