Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89098C55ABD
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F9BF222B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DXA/W+BE";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV4UAqJ3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F9BF222B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OHbRum3Z+BUb038BfJh98KJuvY2YZgDvYGfLYwjZbuk=; b=DXA/W+BEZNyEYyIDNrWTYJfZ8
	diXRZbuXlofc/DFOb3lC/B6Xw0ql7egb+aMFB4SwL1EQsF1xwwuXwak1MnXZhsf0t87fZ9sxm4O6f
	RfwZvrO7o9WhW15v1sYHOL4q1UM78wmLCDbRUN6Zq7erICYoMH14iRUQuoMMCuoTGuDcnmGqd4XNK
	A11w4T2rTE/wWoJC6+2qpBUCAHoYDs1KUds9c1/uFDASBNsKJ3m4A/cFL0BPaSOO33Dsgshd2oiAF
	W4N/25jxFYNhbHIFiDquIf7lw0iym/SDAQhkPI1g6w/OQ1dSaRJvK1zFclVpXppo/WLywkb6lOn00
	2ZH5QV8BQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keZLs-0006Wm-PE; Mon, 16 Nov 2020 07:55:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keZLg-0006Rv-EO; Mon, 16 Nov 2020 07:54:53 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 985612227F;
 Mon, 16 Nov 2020 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605513290;
 bh=OwKfTuKSKYuNfz4bpxDopuSuiAxbNH8GnCNtt3jnfq4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SV4UAqJ3/GvudI4C/bJtccFBLeCbmt5tfhhoqzeIjrhMCFWXJeSa5bncjlXDA50Tn
 uUglydtauKc3wdHaHZ1Nkgf9OwRKvxJZim3ymWdDDmd5O3tQn8bilD6t4bRyj9CqOc
 W/SAAPttiWDEE6K6yeFJnDnePqtrALkukAaNWitw=
Received: by wens.tw (Postfix, from userid 1000)
 id BF4845FD7E; Mon, 16 Nov 2020 15:54:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/4] PCI: rockchip: make ep_gpio optional
Date: Mon, 16 Nov 2020 15:52:12 +0800
Message-Id: <20201116075215.15303-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201116075215.15303-1-wens@kernel.org>
References: <20201116075215.15303-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_025452_636012_C1343509 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The Rockchip PCIe controller DT binding clearly states that ep-gpios is
an optional property. And indeed there are boards that don't require it.

Make the driver follow the binding by using devm_gpiod_get_optional()
instead of devm_gpiod_get().

Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/pci/controller/pcie-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 904dec0d3a88..c95950e9004f 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	if (rockchip->is_rc) {
-		rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
+		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
 		if (IS_ERR(rockchip->ep_gpio)) {
 			dev_err(dev, "missing ep-gpios property in node\n");
 			return PTR_ERR(rockchip->ep_gpio);
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
