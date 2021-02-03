Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 599A9C4332D
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5A6D64F84
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5A6D64F84
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qKFwTFwz9rTw8DERjLqmTAwhDnb6IBeDKZUtVxkw+7U=; b=NAtzWCqJO9AGCWiXpYYB9Uh0Oe
	OMNKQIkwNaHCKiYRjvdMADWv8bKd/Gn1JOzrTPTs+nBq9BMJUoFK2EsbuN+cVKiHQ7sI1+WrQ7lkJ
	dPJrgF9fZ/QMFqbnuWjncs+bSL8djiT1dvwuOuDk6bOQ4XPVdCi/pVc54NYgMgrxyRIrLllSLPQbJ
	KhOItHsLO+dAVY4o1uL2bjzRbT6osrNVVWZ0SOP/uR39vWNfirWTKs62k9Z9JqM+618dSiMWJwcpI
	WuK+01OSZUIHtpmXx+a2fF+PBHVhGS+WTVTQ7ZfPF8TDJEyhtFa449MsHkaAnJmHQNklWea6kst5c
	p2/TvmYg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7LOp-00040y-7y; Wed, 03 Feb 2021 16:53:03 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7LOZ-0003uH-An; Wed, 03 Feb 2021 16:52:48 +0000
Received: by mail-ed1-x529.google.com with SMTP id s5so372136edw.8;
 Wed, 03 Feb 2021 08:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=o8/fzD2S/d8LoSZrTQrPH9tV5gx9H7WTtioRDMhBmVkPGxm6j/s92sxTsLrkEjY1vH
 LnU75m6o6ba5aPfKJUSFfPOEnD3Di8qQVRS96xUilv4kHsws9LXqOXtYxO6N4atUI30y
 kj2CfK2OtvnnlYQiEkJW0AtengxgJVo+fKeaNiK0Z5J24qTVdnvGJ0VFzIPoLb5YnauJ
 yuebdd7xxu3ptQWQ9zaw0TdIjVihaLn/OyP7YjpTcgV0dS+/tqa0rF4BADUU2C3ZH8t0
 LZfPLSHtmxt6q7DYoWkC7wrO5FKWC/tQZjWrcsQripcPxidp3UTTZT+8jfnrPb5eUBM9
 OXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=HZfHSFmC8MTSW9PMUSTfsS/vpWbqx7J8U1+K35rVhYmftVSQsOE/4LdI8cSVCkniwY
 4xlyOkmwOghkVZBqqrqTmfu4DyXbww0Rx4yLKf3yPqGThH0q52NDGWI5n3PrBUPBZDhB
 X2xni1Ra3yZZZjJOPN19RXedHmKWmmo96emD404LrBZXNG54NoMXvpohRBFyUncp1pur
 mgpfVl0Xf7MMKf++3Mrxdd/yd6PAtsZwnnqhtuS9Y1rztfuv2CA3NSOO+GmYp6Aw9xD3
 ZzM8GyKnkp2bl0jDiMyGLm1HXiMCin06mxe/+I9C+nZUTqBiyBhzoTvxpprSTDsCr0kn
 zArw==
X-Gm-Message-State: AOAM531DZq8ZDCnAat3rAI+mAaEglKWitLYuiTnJzIOK25C9Vn2DgM8W
 MRIouN7RuZatsFcyfyNxE9Y=
X-Google-Smtp-Source: ABdhPJzTgDqt1ssHuoUoFiEUrOATMDbYckqfoEHbqtFgG8DiQ8X/zQJTy1QpJaV5fm9ul+FVLXn2iQ==
X-Received: by 2002:aa7:c34f:: with SMTP id j15mr3958007edr.120.1612371165676; 
 Wed, 03 Feb 2021 08:52:45 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a25sm1135471eds.48.2021.02.03.08.52.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 08:52:45 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 5/7] usb: dwc3: of-simple: add compatible for rk3328
Date: Wed,  3 Feb 2021 17:52:31 +0100
Message-Id: <20210203165233.22177-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210203165233.22177-1-jbx6244@gmail.com>
References: <20210203165233.22177-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_115247_413640_FADA0D4C 
X-CRM114-Status: GOOD (  16.13  )
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

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e62ecd22b..93bc34328 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -171,6 +171,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
