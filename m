Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25073C5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 04:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T6opTFH01t9WLlGcgzmbyAKnhFNMZtbrJQcY6MUbNRw=; b=L8IPj8MJVcyWxy
	z8OpKXjC8CyCFNqejN+ufzJ0kUu9i2LHfpiW/KNSa2oZnJrzTM2o8KgwkR46ucl00FoJQsAhbo8UM
	yUuX+lDkFUqHFYuxJOhgHg9GPqArG+OvIuYDybO7b0DI2b3EXx6Srf9G8KSsUUhjjrvxHz4OkVeCL
	zLujBjBjW2ET/PrzyRQMc80K8IaPaRxW6QR3zHpcSUFMTI564twysDtUYGMnlFnctp7KfZr2aaoQr
	OnyrBJV95nYge6ouRbdoWgK8gpiXDgf0Wmy3bMJydm2Pl+L68ExFd9pJTi4/JglatTxDUewGQ8yLV
	4JKs21oCVzzbRme4j44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtdnk-0000000DEqW-1YpB;
	Tue, 11 Aug 2026 04:09:20 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtdng-0000000DEow-3iv2
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 04:09:18 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2cc73e322dbso28985975ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 21:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786421356; x=1787026156; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DJlEafp6iccF9h9o6L+laBWKHv5r162wbzlbDYkDTLA=;
        b=JRbOyMMsiT2BD98w7H4QiT8J3KppJJQdIT2JM7plIDF6vymQnyNtQqb8AK9Kc91/kB
         owVcVO3J7wBQYjxjcfVd3La8KT1ZGlOaODnYyAKrMdgqMbEtdp35UHGzmc6VeBLYCxk1
         EHenAQWxb5MUnX2HVD3Vohhh7xWbHlV25dC9GSO14FBKSw97XplJz/Hn6Hj+DLJtPf7O
         nfTL8mYbjbJPR/iOkeuRTqUrrpP+QhZmMx99gmXmEhD1p2YYI8wEtyFJvTqyfvkXZBQ/
         OKKAAhrdQrWqXM7Ocm7sQQT6ZSnSXZbnbUTEk8kJdvo6Nl1Qs18zGjZipjHB62s3NNoJ
         Lj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786421356; x=1787026156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DJlEafp6iccF9h9o6L+laBWKHv5r162wbzlbDYkDTLA=;
        b=p6IfngwYbqF+gDc5wiS+6hOaxzartMs/qV4Vf1oQREP8pr0QCd4XGtNWqH2U0eKCXS
         R3sy1BUA3YGs5Ks76oq2YR4tPZwQBwbXavFVyJRazA4eir0/al6AmET8VmPSQvLISeyZ
         u5kjNVAlrDPXkV0U48PAMbMvaWzxGxwtCuErvagjZFTiLheyyy5pQ2iZ3xpvHITOBPzV
         2rZDGFXxnrESCkGenSNbCQ5fY1PvgZUxrgkPtFTKckyJNGLwAAl3iqLtlsgj1pUNWHOK
         IU9AS7BHKZuPpzZeGnt+OmG+a0kPDvdJ1alWhJN3+86Vgb2VXhkRSq7GGQmjDZoLoKh2
         pk9Q==
X-Forwarded-Encrypted: i=1; AHgh+RpVXaMruqnmPgzpo5m5DjSKrZ/NQ+il1W1sU7t3LKzYmWC8VB6p9vaLdjMJ9xrCHWQG5HRxxiETiEExMnhY0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwrdqioYxQEDlsNY6ckdeR+SUNOFG4nrmXYwCJii3/d3+XRDru
	cUnK3a/8hhsmJxYNMrzgtpGwbCMFLw4JvcVXF7JSHDfPqc0WGDk3Yli24Wrhkg==
X-Gm-Gg: AR+sD12csu8i0nLpxj+kbaOAvH4Cr1off47eIlO6z0PiUG7S+m9LytdTpeRfpOcojms
	KHIrU4Sg4anZd42/2A6rJB71bN8XaAWLD7TVxlFfrXb8GweHyZFbFC3r2BlteudQsJ2aXptYwd6
	Z6KpFtfxOkD5qQ6Wen7eHo2slL4IWG3wgGkJc5LtYAaLzVWJEO2VIbDdgMEkusVNnOrVGQ6AcHm
	QSW/hUYdm9mTkk00vsqdls5zYBqBGQLy+hQJFf89yV7vbyj7Eitzr8Aql+dUsDLK51xxljAkaL9
	rl4ILFiCcUHEVPxOpKy+TsbRWZv94YewHOj5i3WmNt+atW5g9YLBke2QUTRRL97fm9SSbk+IW/K
	m/XoytWzPcvFW1Bp/9a4z0UboNEzIEkxXbC5U9/QH/h6k4Uf8pJvsh8vEQPvidDx2hjqyDX2Cby
	bx6YzBdcaxYPMYLYISVcXqaNB6sr0OL3MfnqKiKJinCym99FEvR3bBjns+8pVoawI9xcbgp/h2Q
	IjVMNmBE9w+VoZp1bjBCueJtgRzAjeT//Y1j7gfcBqH+WZNYhe789Uu2Ytr++x0gZYKeNdm6enS
	ML5EE9o+h8AtjbU=
X-Received: by 2002:a05:6a20:bea6:b0:3c3:66c5:68cc with SMTP id adf61e73a8af0-3cc2bafad57mr930131637.21.1786421355638;
        Mon, 10 Aug 2026 21:09:15 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cbed8e74420sm153602a12.15.2026.08.10.21.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 21:09:15 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH] phy: rockchip: inno-usb2: Handle errors from optional IRQ lookup
Date: Tue, 11 Aug 2026 11:09:00 +0700
Message-ID: <20260811040900.7151-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_210916_929582_37787014 
X-CRM114-Status: GOOD (  11.77  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

platform_get_irq_optional() can return errors such as -EPROBE_DEFER,
but the driver currently stores the return value directly in rphy->irq
and continues probing.

Propagate negative errors other than -ENXIO using dev_err_probe(), and
only assign the IRQ to rphy->irq when a valid IRQ number is returned.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 7d8a533f24ae..6079e776b4bb 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1390,7 +1390,12 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	phy_cfgs = device_get_match_data(dev);
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
 	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
-	rphy->irq = platform_get_irq_optional(pdev, 0);
+	ret = platform_get_irq_optional(pdev, 0);
+	if (ret < 0 && ret != -ENXIO)
+		return dev_err_probe(dev, ret, "failed to get IRQ resource\n");
+	if (ret > 0)
+		rphy->irq = ret;
+
 	platform_set_drvdata(pdev, rphy);
 
 	if (!phy_cfgs)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
