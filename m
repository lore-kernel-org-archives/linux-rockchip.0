Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C28C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 203B764E59
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 203B764E59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fBtGb353wbEji6pfvTcFJl93KLHw+8VXApNngGPazoU=; b=D6srjzJjtGUebr+4080/V28gKW
	1DEHgFfwnMJ26dqdEcDKh4KDjEal66FHZ36+zRP4neHV7luDxb14H6Whhillwu+r+6jmsp92B0bBS
	uSIznMnt+d44bxZg4ioc9UDqaAI64GY1HiiprfeFkSgrdwJwfGQy+jDVyGWiv3JhuOsk0Zistf249
	jDjNV2Peewg4AQyZrAvIrGSELC6Q23YvVCKMSsxZZR8NW9PiBRSVy6Pe1+VPylWdplWrTwA0AU4fJ
	bzpnynagQZGIsuGoBMPY4XP7w+cw5YibF+zv3IKN6LvMW0+H8meOuZi2BH0Db0w/lM01TF4UyHzAY
	1YZm76Zg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8SfB-0003vK-Ge; Sat, 06 Feb 2021 18:50:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8Sf7-0003sm-Lj; Sat, 06 Feb 2021 18:50:30 +0000
Received: by mail-ej1-x630.google.com with SMTP id sa23so18365770ejb.0;
 Sat, 06 Feb 2021 10:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pyReI/BEuC4BzvSRo5mXE3P7CpFBNp0uOKqtRDtZmz0=;
 b=d7wIQg/kQKPuJEe8XMCa0Omf+k5pPZh+R36O+btiduVd5PhaZ1p+gD2X75swaupmpB
 BXwilOhOTs4C9n73ONx78+2EN+9wzfmnvep2w3n9OjTtf1PqaBOQaFMgE0Qse5edElwF
 1JZMLGTSS9r/mxmz0v+vfEA7L2956FsfV4vN73TOS7SxZ+RVWfFOkWqS7+nb1qQxkkSw
 du3CmRNW2oAix/YkFgEI/5KYBqfy4arjDwkV0PSHiUmlaUM9dlUBxeZh0I1vIIY0ShRw
 Ur5xsv3e9yIuLxgSMZfss940PDX8rmnGnQfMGQAhnk9aCAqOlmJv0hqHJhfAFXQGMB58
 QK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pyReI/BEuC4BzvSRo5mXE3P7CpFBNp0uOKqtRDtZmz0=;
 b=sMyijr3+1PxXUC6hl6ndxUChiaX0hA0st3l9n+Pk31j1C6wNSvWquEd+iku96Ht0zr
 uVYUXxav2oKUXl1U/Z1cMkKBLy7fLasM7kwBjL/j4Qysy0MS2FF6uY5bjWG7YVZOasZx
 zp5zbjQLWQaAXwRLng91941rzFgWfo4pS09eYD4VqrDWMA3Sv8L9hMAIf8jCvLDdtSXw
 VPjvRfPO0fJ0ND+pOb3fU6Ui+kpQzXkbY817RssbdHxXawmH+fUjJx8G0Eicf/JinQav
 kI8DPfZWlCIj7UKvggTdBCRQjzvyrr02eeCNGZvK4Roe0ihfiT5+UNwYoCH+jslS+iD/
 k5EQ==
X-Gm-Message-State: AOAM530tIRPYGCVfT4zCRPML0dvCxQ17gL2rt3LHJjPrv8z5BG3mgY3d
 bafaE3GdxCa34KdWRtx25GQ=
X-Google-Smtp-Source: ABdhPJxcZiMzgDmxsI7jNur/RIOnbyFQ+m01RdhWlPqPCprgIJ3m5eJiGBrYBHlEQKvUC3rLb/24lQ==
X-Received: by 2002:a17:907:2897:: with SMTP id
 em23mr10065424ejc.550.1612637426909; 
 Sat, 06 Feb 2021 10:50:26 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cb21sm5890005edb.57.2021.02.06.10.50.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Feb 2021 10:50:26 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 2/8] usb: dwc3: of-simple: bail probe if no dwc3 child node
Date: Sat,  6 Feb 2021 19:50:11 +0100
Message-Id: <20210206185017.1817-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210206185017.1817-1-jbx6244@gmail.com>
References: <20210206185017.1817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210206_135029_726522_3CBBA159 
X-CRM114-Status: GOOD (  13.67  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For some of the dwc3-of-simple compatible SoCs we
don't want to bind this driver to a dwc3 node,
but bind that node to the 'snps,dwc3' driver instead.
The kernel has no logic to decide which driver to bind
to if there are 2 matching drivers, so bail probe if no
dwc3 child node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e62ecd22b..347b4d384 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 
 	int			ret;
 
+	/* Bail probe if no dwc3 child node. */
+	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
+		return -ENODEV;
+
 	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
 	if (!simple)
 		return -ENOMEM;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
