Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E33BEC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 617A823A23
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 617A823A23
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8+RmP9n3YQekdBYMYgm5n+AfD+uuzFQsUnrIlT4QCfI=; b=s2slgKazSIm/eao9epc1HDo7m
	hYU2bGUnFoeo96Bz/CjvsKtDpqFx5HD2w1RGjm8CqJEHDL1MpAlr6Ul1TaFSeApiW4/Kbi3UhlMrV
	BT0RWk7+lbWClu0uQuup8cWA1YdDwXdcbg/XuqzzbJej9okFDseEkSyqxeB7r0qMzmtZD176Dr9cM
	pkyzyZVDae+7cF1CzT6MCODVPNpd5A1g0iq/d2gtu8z4iABLBv8hMdjpNGWsPxW5h34OgcxobAbE/
	q38aRpO6jZ12CakAivL31FVdxX1xTZLoVOOHLscxHDUNbNpQ5HRhSPM1B4SlEPFnmIZkqt7QQjcKp
	n8a92t9qg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2ckJ-0007QP-95; Thu, 21 Jan 2021 16:23:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2ckB-0007Nt-K2; Thu, 21 Jan 2021 16:23:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DC1C21919;
 Thu, 21 Jan 2021 16:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611246211;
 bh=TxPC2i3KodVBMcUvSfNNM7XR6HBVjld0zlamfiLWJnQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=suZIrn0sZe9LWunctXBnZBJmxA9qNDHr7PBhkgdM2BMTFF9PdaFlY0qzKOPauf8Xu
 9njbqikLLV3m4lsOwd7Kh3ZkqV6Wzf1JgshZKHCYOwTId/beAo3hD5Tt3AiQN6LFZ5
 WUzy0Y/yQy1ImySW9zo+n+QT8HoWY8UsZeofDCITrYL8cwO3yLzlafqlN6CNhUUPEG
 mWQOxKvlOk+DcrB5gt+PECxEWZP9UAIfUTULp6MuhXWZfe0T0SYoSK19Fy2HKshkMK
 UM4SxLGzimyEzj38vvF0SQSTGoLOkS6nFjLHPpWDBwykHBVUJ/J9wQdCTxXgImfO6j
 l6tau4ERZezLQ==
Received: by wens.tw (Postfix, from userid 1000)
 id 9F07D5FBD6; Fri, 22 Jan 2021 00:23:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v4 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
Date: Fri, 22 Jan 2021 00:23:18 +0800
Message-Id: <20210121162321.4538-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121162321.4538-1-wens@kernel.org>
References: <20210121162321.4538-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_112336_141527_B7BC097E 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
an optional property. And indeed there are boards that don't require it.

Make the driver follow the binding by using devm_gpiod_get_optional()
instead of devm_gpiod_get().

Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Changes since v3:
  - Directly return dev_err_probe() instead of having a separate return
    statement

Changes since v2:
  - Fix error message for failed GPIO

Changes since v1:
  - Rewrite subject to match existing convention and reference
    'ep-gpios' DT property instead of the 'ep_gpio' field
---
 drivers/pci/controller/pcie-rockchip.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 904dec0d3a88..a2ad0b7614a4 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -118,11 +118,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	if (rockchip->is_rc) {
-		rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
-		if (IS_ERR(rockchip->ep_gpio)) {
-			dev_err(dev, "missing ep-gpios property in node\n");
-			return PTR_ERR(rockchip->ep_gpio);
-		}
+		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
+		if (IS_ERR(rockchip->ep_gpio))
+			return dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
+					     "failed to get ep GPIO\n");
 	}
 
 	rockchip->aclk_pcie = devm_clk_get(dev, "aclk");
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
