Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5386C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ozsnz3+kaHUy5NQ9vmC9keuM9Tzk+Xg41c2C+RZb5rY=; b=cK6UbESkUiEi9D
	jot8E0UP+DG0RgQHXiD2EoXqHNNwvjIBm5U2l8MdDQ0XhQp81ba0nmwIZPWo9HAAs89wqiAOcS4ZL
	2s4L/hfvdzPQlrbh96kFBwfoqX/y6dkCaTzkPi9nJYG1jmT9xsLVGn0tHZOAAbvkPFxnbLSyrWtkO
	P69Q2sOpxz0e1YGy0DCKJ+CCj/rzVbElO6fRtSW+PA6vwu/WmLdwg5ua0qhRwuMZ8Kx4NukAwYT5f
	3av0pdpR9RwenwarjqzJC1w4IIYFomDl+ul+z61K1Px9WUFQaKCZBXJdOsKG2ilcR9EKJ1WQgLdb+
	fMasHWFWR4hXAqB/6nHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rChsW-005ITR-0f;
	Mon, 11 Dec 2023 15:07:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rChsE-005IJf-23;
	Mon, 11 Dec 2023 15:07:13 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A6A27FF80D;
	Mon, 11 Dec 2023 15:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702307227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mCpgckyHYRCqWcLrdBFdkY7ytfN/j08qDrPdaUCnFjM=;
	b=NXtE0+6vHknV4JejSwmwtFfYY8e8PAl8atvUVbCIFhiAAGkuh57OFlS8a2lXa/Nt9mTWuC
	5nfYSVdQNaTJQ1xhCYVAllRXSMYL5Ov0pPywSpAe3ViN393GkPsJOpPCP03kmVoWLoKXZm
	KYyvDiS7IugU7ReUwOopHdiXUTUMy6hnf6SWOh/dFm5OXt635WXkVizTXMkEsOsJP5Ww95
	vYO3sUf6d3UfOcNVGPPs/w/GWuGWao65AT7cvLgTlDJUvHYUF7b0PYZhJKKWs4eaJh2xDH
	HtBvdp/5a5FAube0d/wRbUeYm5C2dSdKlSkAj3glmHf4F46/ya/KAg0Z5rYYEQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Pratyush Yadav <pratyush@kernel.org>,
	Michael Walle <michael@walle.cc>,
	<linux-mtd@lists.infradead.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	<linux-rockchip@lists.infradead.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	<linux-arm-kernel@lists.infradead.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 2/2] mtd: rawnand: rockchip: Add missing title to a kernel doc comment
Date: Mon, 11 Dec 2023 16:07:04 +0100
Message-Id: <20231211150704.109138-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211150704.109138-1-miquel.raynal@bootlin.com>
References: <20231211150704.109138-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_070710_893278_1B48E744 
X-CRM114-Status: UNSURE (   8.41  )
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

All fields of the nfc_cfg structure are documented but the name, which
leads to a W=1 warning. Add a title.

Fixes: 058e0e847d54 ("mtd: rawnand: rockchip: NFC driver for RK3308, RK2928 and others")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/rockchip-nand-controller.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
index ab1a9e8687e0..7baaef69d70a 100644
--- a/drivers/mtd/nand/raw/rockchip-nand-controller.c
+++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
@@ -108,6 +108,7 @@ struct rk_ecc_cnt_status {
 };
 
 /**
+ * struct nfc_cfg: Rockchip NAND controller configuration
  * @type: NFC version
  * @ecc_strengths: ECC strengths
  * @ecc_cfgs: ECC config values
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
