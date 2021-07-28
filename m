Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF45C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6778760F9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6778760F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jtQq9IlMBC1gYIjIeCYdITCc7AigiI328qIQRHh9J4=; b=PhMy0+MXQZHF7O
	/nhyxKc+8EXOfibOJijcCk2M8CrVRZ2lrvWxt/tqmIyJb1LMzTlQWTyoEAmGYdBF45hiTQhTgcl1Z
	SCdzZ2Bm5aob4+l9Av1uT5Yd+BIBLPOPI6THyNDAt+D/759F6AyNfbtv7vWmJ/3VDN13DPf95Aw4/
	RWqY+lJ2S4J38dnnWBOr8I3vlt1+xsCg2TlzEOy6WCND+XHijeQKkNq1QguOPYCl82fzMaltKvHD2
	ToEPtoOAaGcn2ulzCey7m7mwJqhWvTogdCEJ4zUkH3UufhUf+liY6lBk10cyyMvIUpO7L4o1+ovBi
	VD18L1zyOLFZUQv0rk7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ifS-000dLy-U4; Wed, 28 Jul 2021 12:28:10 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idi-000cel-24; Wed, 28 Jul 2021 12:26:24 +0000
Received: by mail-qk1-x733.google.com with SMTP id o13so1930316qkk.9;
 Wed, 28 Jul 2021 05:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ggW256M3SIcZiGvGqGuspKz5dguh2TkojKgtWRP6iJo=;
 b=HSmAocoULMxqdBe+Mx9uXxKQ44OgPTgw7kvx+SHAGhr4/9dAqyMGgpcmq1mRetpVvx
 CXcABsudaaeuf+JB29+OKe4cn71JOzr3Ecobv/L6PKM1lv99VpS2iqTu0WNLJIZF3SvQ
 HdUhsMNN/ZiMya2WeSAW18mExVKEBjm9qP7tnO90431gM2s8qLFGRdXWw9ECD0n8Guxa
 hakJzONVvCpc+18DmsRbv1wdWYX5a0PgRapWfeYj9P6zfdGEFonkIElCOTqvu8+suHp0
 0MPAs/Q48yAczoK5GZzCG/TIJBxc0d63gjKAP4Npm/9IUTQ9WJjzza2tY5lkMxqhVMio
 eBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ggW256M3SIcZiGvGqGuspKz5dguh2TkojKgtWRP6iJo=;
 b=S9ROquNpscZ59n8vJ8sdig0LFgTb5Y3YDmqRVwBeaL4N0b3BuslTfC7+J3hOXfMrIZ
 9ZBPpqbGz7svRQFWUpTPwhpaaPDYwtI2jMnrdQ13CX5s3Ha5GyJN+wxDj6dxibyEGrT2
 kZ1qtcCGMUOmxH3dh8pNH78HJHLHFXqSE38C4nZJz6/9ZrNs9SBm8R3hPK5Pd40OGe+u
 FGZOZLXKsM1XazMsl3zz3JQpHK7s2LUDIzNXuXCkE5g4RYh4NE6EEYPp0d3daZAvwyVn
 PqZ628bk64p/nznHNLc2Q8E/3zmgwDszy+uWk7C6o9hxaiAS7l7f4XWqlLfEyukG59Ey
 xXoA==
X-Gm-Message-State: AOAM530ZIlRbKWPNBGKfR+LdaMDUF+o772SXeOerGosgRWa4eI1cgjPd
 ZnuNdGJr3qcONkvSubsVymc=
X-Google-Smtp-Source: ABdhPJwG8Ql+7RxbtSJJqgwHW1eAPquMhI4GLv3UHYkGkUDR486INGiDbWaRkvdgXxBr43JSUT2LaA==
X-Received: by 2002:a37:dcc2:: with SMTP id
 v185mr27461633qki.167.1627475180767; 
 Wed, 28 Jul 2021 05:26:20 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:20 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 4/9] phy: phy-rockchip-inno-usb2: support #address_cells =
 2
Date: Wed, 28 Jul 2021 08:26:01 -0400
Message-Id: <20210728122606.697619-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052622_141043_E5EA5340 
X-CRM114-Status: GOOD (  14.54  )
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

New Rockchip devices have the usb phy nodes as standalone devices.
These nodes have register nodes with #address_cells = 2, but only use 32
bit addresses.

Adjust the driver to check if the returned address is "0", and adjust
the index in that case.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index beacac1dd253..5d2916143df7 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1098,12 +1098,21 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		rphy->usbgrf = NULL;
 	}
 
-	if (of_property_read_u32(np, "reg", &reg)) {
+	if (of_property_read_u32_index(np, "reg", 0, &reg)) {
 		dev_err(dev, "the reg property is not assigned in %pOFn node\n",
 			np);
 		return -EINVAL;
 	}
 
+	/* support address_cells=2 */
+	if (reg == 0) {
+		if (of_property_read_u32_index(np, "reg", 1, &reg)) {
+			dev_err(dev, "the reg property is not assigned in %pOFn node\n",
+				np);
+			return -EINVAL;
+		}
+	}
+
 	rphy->dev = dev;
 	phy_cfgs = match->data;
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
