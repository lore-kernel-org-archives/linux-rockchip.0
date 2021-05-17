Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CFDC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55AE361108
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 55AE361108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gaBrAKRPcl/R1nCNDOBtwvrYLI46mEvvOPEAjLXmBiY=; b=mkPY+wtz/HqegETtHRfXPneQN
	i6vX4nx60+5PO7CwfpOaKGQxxrsYd/HSkyDuGuG3+4g7FtBZGu1EesCo7L2k42ulSl0NPWdPPeZle
	dRQ/vf1RQDE11OinPWgubn7kvzVLxMwvXy6Ayru5d/RziXgDYEfkAhWvx260Q3owjt7ozx96aYrEK
	YBw5nzHSz4CJBuag6NjDH4bLTGXCFFpPiJ71Xvjrbu9iu5PpsFAsURtWW7DJuuTPvEaiBFkdxeNxC
	MTMCyL76+FmAaXgV+KdMyfLK0liZdNS802nXbgPkh65xcx32pnv2IO8m9rmmUR1RMPZd1ASpRo9gA
	2z/V1MSXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifMZ-00FRMF-W6; Mon, 17 May 2021 15:41:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMY-00FRLr-2S
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 15:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=sdrl07gKaMpUO6Gphj9s3ynLYbNBLTzPcWa3OaDRiPE=; b=xI+gL01LQFMqrgxtnzhX7vs7sF
 dpRj6Sq+J6D45C2BkXc4J2iXk7mSJlnFV5Ab1wSxq/xJqHuqySDDXkmoRC7NNA0kxOL4UPMZCjyr1
 uN8dqQyWP8AQ3wtzfJxujFtGcLcyHDYz/JH6HSURgtb4JqaClCmns6c/iA8z/YAWImObanhayENV+
 XOBLnwwjlGjFjz/xhAuc0HbeAvJq3DB+A2emws0s6njSVLAnBIg34ikdYpJTAVxVWCKH9XXyrt+q+
 2crLeTqt6bksNp5KQ+4334DK7IApXZko7nb613QyQhnAf8LpBATyjaGGOEIMKR6HeSKAeEuNDtYdW
 s+ebcpeg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMV-00Dw1B-KS
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 15:40:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DCA571F423BC
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens213@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 net-next 1/4] net: stmmac: Don't set has_gmac if has_gmac4
 is set
Date: Mon, 17 May 2021 12:40:34 -0300
Message-Id: <20210517154037.37946-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210517154037.37946-1-ezequiel@collabora.com>
References: <20210517154037.37946-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_084055_819324_8F8D563F 
X-CRM114-Status: GOOD (  10.67  )
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

Some Rockchip platforms have a GMAC4 core, and therefore
'plat_stmmacenet_data.has_gmac' shouldn't be set if
'plat_stmmacenet_data.has_gmac4' is set.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 584db4ce6e39..56034f21fcef 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1448,7 +1448,11 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	if (IS_ERR(plat_dat))
 		return PTR_ERR(plat_dat);
 
-	plat_dat->has_gmac = true;
+	/* If the stmmac is not already selected as gmac4,
+	 * then make sure we fallback to gmac.
+	 */
+	if (!plat_dat->has_gmac4)
+		plat_dat->has_gmac = true;
 	plat_dat->fix_mac_speed = rk_fix_speed;
 
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
