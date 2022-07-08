Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48490C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 06:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T2mJ4Dv6srtiAQkVQbut2j+BK0P1aEc7n4ozsERZ8jU=; b=nE7dxUH+34/PxZ
	Mw9GhH8TEayBwgB3pKdVoxed4aU2Tfk4hpsW0le8cMN/YufRZ/h+M4xQtmJs5MJlUOWyE3udINKDk
	RJqdTnQLa58lxi59Z5FFNqOJvW81052KkmUxSLXHgKH+s1HGUV2EhR58qJYrWIUbKI3Z4pxMqaJCV
	gWwAONCt9tNt3cwdhJDS65UdA8cvDzqgMk+1b6OqfCzj1Ol7CfqnqFn/gAjj64FLseKntzgxBBYYY
	9rMYwWYWPqbri1AMiENEQ2Op8/IYT8rWBKZQ5JjUM+VKyHHeskdhIDY4nfEhrViTzwDTAMN8ww0SJ
	TvvC++cuPunjcqJAPn/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hGR-001x48-SE; Fri, 08 Jul 2022 06:14:55 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hGF-001wyt-Ni; Fri, 08 Jul 2022 06:14:45 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id E5FB7320096D;
	Fri,  8 Jul 2022 02:14:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 08 Jul 2022 02:14:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1657260876; x=1657347276; bh=nopVA/lnqhA2exVnToP0mAgp/
	wxD75eWlnpPSbCMmhw=; b=qLifMKaVVYCsUgU9yiikgoZJSNfJzHy2jb+u9aDAk
	9hbbzrHTATV30Bcsy3EAcNyHGSq/YkJy/w3Rg1h3QiQPPtAZSXwRH0uLDTsT7SU2
	MlCNVYE3pDR+7PFerHhcw85mKR+89fWeFbk+gwS0iRSW6Ct7ulgPbBkdUGL6AZ/t
	JhJkOX6zp4WEYWtYOWQkcqVbQgGcVVvw01W39mOnSvdfoF/zbHXXC9nsgzCHFuTM
	cxX4ASOOR7hWvfBtX6McmfdpsDGRyWWEB2qYd3sljwhtjI3P3ebEMjEjRENrMDun
	mQYFa/lBuwS+0v7HUSNH1U2L6n+hLrX8xhoUaRnpcNhmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1657260876; x=1657347276; bh=nopVA/lnqhA2exVnToP0mAgp/wxD75eWlnp
	PSbCMmhw=; b=QfZYx+0hze5fBvUiMuj+l7/XD8s1hXCbdcXO7h0X/rMKnO2PZVS
	abnxnYlIm1PdbN6LsXwwNJfAWcJvYFvEq3OMAh7jsEYXmu05/rfC3SCxj4qSysi/
	SMPPnNxxgZxLO2LIbG0j8MkSizxYeDlbDHjqmv2XYtMHp1jjh2vxfls3acOoNIVO
	/pSnhYR+uGX66623GxMxJvJE8/QSdBZ78YZ0/qZWnRUdOgwGrqhEBFJP8XQAHIhk
	05WEHpIr74EzjTQFcuvoiVDgQCvyGoZlXbNDWfr7cSUGSF6j/1CuvPk4DBAiPem+
	ot4mpi/Nf84vyqj8sf9eufw3zVNYJKOYnDA==
X-ME-Sender: <xms:S8vHYoqMDTQMHWGLTx4sPNo-Weg9pgTx7Uo7AFhli8vJaMXi9aKjfQ>
    <xme:S8vHYuruNtlz6sY7beqEHHT4vMnCL5nUz9iYNdxuqJClokr8HrtNesVd1SI9eW5fh
    sNEIxwxtM-dzkDdEw>
X-ME-Received: <xmr:S8vHYtNNIvpcOw04o5Sugtui4oxFefbFjBSlBaj62v4FV41IhIv7MJdYHUNM_yanYoCHyMqOba1d89uykysp5n91A_txNLeB-BhvY859qq4w0guGt0086PVkfp9M89mI_q30WQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudeiiedguddtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpeekveelhfejueelleetvdejvdeffeetgeelheeujeffhefgffefkeeh
    hffhkeekgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:S8vHYv4g7k8LVnEvLvHaHAAx_ydDpIiFO1kkp41ON7r2cIft0s-12A>
    <xmx:S8vHYn4EdORI1pXwVUYkz6narXRb4uz09FxV-d3XUNBuaNFNgNre_A>
    <xmx:S8vHYvi5fWrY6mdRR6qvUur3kNdA79q8gwXVkpd9clR-uSk7Q96K3w>
    <xmx:TMvHYkF95XdlQH0Fa61XApRMkJ1z7EuMK1RhTYfxoE009Eu6HiBW7Q>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 8 Jul 2022 02:14:35 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Frank Wunderlich <frank-w@public-files.de>,
	Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
Date: Fri,  8 Jul 2022 01:14:34 -0500
Message-Id: <20220708061434.38115-1-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_231444_033463_941077FC 
X-CRM114-Status: GOOD (  11.29  )
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

When the OTG port is fixed to host mode, the driver does not request its
IRQs, nor does it enable those IRQs in hardware. Similarly, the driver
should ignore the OTG port IRQs when handling the shared interrupt.

Otherwise, it would update the extcon based on an ID pin which may be in
an undefined state, or try to queue a uninitialized work item.

Fixes: 6a98df08ccd5 ("phy: rockchip-inno-usb2: Fix muxed interrupt support")
Reported-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 6711659f727c..26b841c49ec6 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -978,7 +978,9 @@ static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
 
 		switch (rport->port_id) {
 		case USB2PHY_PORT_OTG:
-			ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
+			if (rport->mode != USB_DR_MODE_HOST &&
+			    rport->mode != USB_DR_MODE_UNKNOWN)
+				ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
 			break;
 		case USB2PHY_PORT_HOST:
 			ret |= rockchip_usb2phy_linestate_irq(irq, rport);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
