Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665B2CCD1AA
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h5yTMeiklVcLp1zOnnIoWzJmOLm1a9RSNA8I4HUBewQ=; b=kD4ha7aQqoLI0QkuelttPnTvhU
	gt9uBfzoCxYARDUrMVqor6I7FyopIkZIczNaaFfwelVT51FZSMHG/zaRszLVmBJhp9hQgc6XFouVO
	xhJaAskBqpcJcSSgW7tsF/Qheb+3P+ZbfJt3KLmOjlyaMNMC1RahMGdhQ/jP1R8EvHujnJs1wM4wu
	gq20WoR7y4Bbd7mRDvLAKI3zMcrmKvqIA4i1bPMnFH4yzx6hXDX1VIHHzbw6LF8GmNWAjxlx+I7Qa
	EObkWW+p/UjxT6RnSqBCfF6mANg4NCw4MhPlIGNhHauZsDIvTMk33j6zzdcorgJeraEVI2peu4lXa
	cfWNrsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoos-0000000DMXm-2tD4;
	Mon, 20 Oct 2025 12:16:58 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzwWW-00000005xD1-2f7w;
	Wed, 02 Apr 2025 11:44:49 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4ZSNMG2x1sz4x5ph;
	Wed,  2 Apr 2025 19:44:42 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl1.zte.com.cn with SMTP id 532Bidbx069351;
	Wed, 2 Apr 2025 19:44:39 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 2 Apr 2025 19:44:42 +0800 (CST)
Date: Wed, 2 Apr 2025 19:44:42 +0800 (CST)
X-Zmail-TransId: 2afa67ed232a199-28a86
X-Mailer: Zmail v1.0
Message-ID: <20250402194442934NKPLNa40VjBaWDWKBGi8l@zte.com.cn>
In-Reply-To: <20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn>
References: 20250402194100610qY6KQ4JPISk-4v214Qs36@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <vkoul@kernel.org>, <robert.marko@sartura.hr>
Cc: <kishon@kernel.org>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
        <samuel@sholland.org>, <zhang.enpei@zte.com.cn>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <luka.perkov@sartura.hr>,
        <linux-arm-msm@vger.kernel.org>, <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHQgNC81XSBwaHk6IGxhbnRpcTogcGh5LWxhbnRpcS1yY3UtdXNiMjogVXNlwqBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl1.zte.com.cn 532Bidbx069351
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67ED232A.001/4ZSNMG2x1sz4x5ph
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_044448_837008_21B0F9BC 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:16:52 -0700
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
 drivers/phy/lantiq/phy-lantiq-rcu-usb2.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c b/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
index 82f1ffc0b0ad..7e4e42d62dbc 100644
--- a/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
+++ b/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c
@@ -192,11 +192,9 @@ static int ltq_rcu_usb2_of_parse(struct ltq_rcu_usb2_priv *priv,
 	}

 	priv->ctrl_reset = devm_reset_control_get_shared(dev, "ctrl");
-	if (IS_ERR(priv->ctrl_reset)) {
-		if (PTR_ERR(priv->ctrl_reset) != -EPROBE_DEFER)
-			dev_err(dev, "failed to get 'ctrl' reset\n");
-		return PTR_ERR(priv->ctrl_reset);
-	}
+	if (IS_ERR(priv->ctrl_reset))
+		return dev_err_probe(dev, PTR_ERR(priv->ctrl_reset),
+				     "failed to get 'ctrl' reset\n");

 	priv->phy_reset = devm_reset_control_get_optional(dev, "phy");

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
