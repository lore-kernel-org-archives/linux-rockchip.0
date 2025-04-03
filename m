Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941BAC3601B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 07:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kOziRhpi4engIxgTf5AkfImBuwImwZaI8Rg1vFeCUvE=; b=TNq
	Wp5ctaFoWtEb9kwiWFqKiJTdCsleL5FY5wEFUtZyr/KBc1I+ywz19yZGQF0rGfLa/eZ0gxSaFPkjm
	aLfrw/Cpx7omF26bRYHY4QCSJjFmoeXe3mUTgTYL+4Weushe71e808RqjycZhO8rWhconfc5Rb494
	yXFDndgBNAWNM4zGMt2xNObTwbvTfcIPorGLTPlPXa87Ye8ptp57dNWF5D06I7VAB5rwzwokZ6fH+
	Uv/JkMr9jYd8tpyC9uNcdvvJr/iI5G3UE+CebsU7uWunyeVgkg82jCPyu5prcX1Eyv+PHQlXvLyCb
	d8ILR5xQViolvPHlZCYhKDZuRo6ejzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0FO3-00000008BND-3C94;
	Thu, 03 Apr 2025 07:53:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0FFO-000000089r5-2TQ4;
	Thu, 03 Apr 2025 07:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Subject:Cc:To:From:
	Mime-Version:Message-ID:Date:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=HDoeLyg9cxetT/ANF18FwnKd9gmABYoCDtgf1Dd6X2c=; b=OwajlCva9oJGM7WDftc0IfvVbt
	JOKF2aVW6IA9koi+TVi9DsDgsWiO9B2YV/JuVT0+4WWgWUwdx21kgIK/Dxg15W81jILiSTa57SsC5
	iqTDSqE09soEq+JNVazkYa1OPLZhek+evew/Jc56e0QAr/TM6OSfH/NylqTl9phL9Fq4thJYOBv3h
	mn4aslJKFmtKe79kd1i/dakdW2eUHP85lp0WGJJ8fJVmXv+ceD5b8p78ClFI3kMgk/INikEIRW7iA
	l+F3/OEkPsXaYwWnWpic4Uxv5CdLgmvu6m6mbBvpDWLKz0Xm8oTL3hPtd8I84dHW5QdTpSHpW1KE7
	e3KpOrBw==;
Received: from mxct.zte.com.cn ([183.62.165.209])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0FFK-000000079NC-2VmX;
	Thu, 03 Apr 2025 07:44:21 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4ZStyY3n7Wz4xfxL;
	Thu,  3 Apr 2025 15:43:33 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl1.zte.com.cn with SMTP id 5337hNMG078468;
	Thu, 3 Apr 2025 15:43:23 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Thu, 3 Apr 2025 15:43:26 +0800 (CST)
Date: Thu, 3 Apr 2025 15:43:26 +0800 (CST)
X-Zmail-TransId: 2afb67ee3c1effffffffc6e-36053
X-Mailer: Zmail v1.0
Message-ID: <20250403154326411S4luMrK8A5RXovincATzF@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <shawn.lin@rock-chips.com>
Cc: <yang.yang29@zte.com.cn>, <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>,
        <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <heiko@sntech.de>, <linux-pci@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <zhang.enpei@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIXSBkcml2ZXJzOiBwY2k6IGNvbnRyb2xsZXI6IHBjaWUtcm9ja2NoaXA6IFVzZSBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl1.zte.com.cn 5337hNMG078468
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67EE3C25.001/4ZStyY3n7Wz4xfxL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_084419_358126_ACFB9A46 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

From: Zhang Enpei <zhang.enpei@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Zhang Enpei <zhang.enpei@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/pci/controller/pcie-rockchip.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..9897824a81f8 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -230,12 +230,9 @@ int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip)
 		phy = devm_of_phy_get(dev, dev->of_node, name);
 		kfree(name);

-		if (IS_ERR(phy)) {
-			if (PTR_ERR(phy) != -EPROBE_DEFER)
-				dev_err(dev, "missing phy for lane %d: %ld\n",
-					i, PTR_ERR(phy));
-			return PTR_ERR(phy);
-		}
+		if (IS_ERR(phy))
+			return dev_err_probe(dev, PTR_ERR(phy),
+					     "missing phy for lane %d\n", i);

 		rockchip->phys[i] = phy;
 	}
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
