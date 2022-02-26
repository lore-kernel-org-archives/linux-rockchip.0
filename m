Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9F9C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BsCX1nyI4mYV15fdER6OLNNpVfErNAop5i2nSKxWlU=; b=AIgr9qfu+r11A9
	0x9KNLE8Vvme5c5hVJvoQwyc57/yuMKOzDFGp1+wVLTQPWWq8CDzXhxQl8KSfsHOXcG2SHxdt/mQ4
	ijZnjivlm4E5VUnoaUZkRtI8pXfzMD1sEnF3mNuy8lgaXhQuaS5SYaiJpp7lQNDifIPt0VeiqZeKp
	5XRsz7dlvyaJYOkKjVEDsbZElaOjyBuFMxIa4kIXhlxSnmpdUDWAA7uTCl0LWwjVHHMTsUzYDKORQ
	TDGK3NDsW70CbLXIO/WezgwmnydO6WB89/OoAgsHkUgN2GKmPw1YAG6kzZXM1Jdql5zj+6QyfydC8
	7XSz17BbRvEtaAEsaxRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO228-008NmW-P8; Sat, 26 Feb 2022 18:43:08 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO213-008NAh-E2
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 18:42:02 +0000
Received: by mail-qv1-xf33.google.com with SMTP id h13so9255468qvk.12
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 10:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ART3VPTUZNh7t0v6KbRBSIgrQKQirMcxNBZ8VtKI13E=;
 b=BGwaxaoC37S+fVgxW1fQDl1kfafaT1IfFXgMmkQOSrfm+P5E4Aw+KzcmD4DoRix+Lv
 g4rtOlPzErqWh6/sfSjAlu+CGJKXoSjRFtkGguLtvvgH8OtWmJTeIbG8c+mB4lAw8A34
 Cwye2+un5+voVjugHoUsrQx7C2cVZ4tsOw/mal87+xmnVOMvJ2vkgq13lrOmvLLWIbdN
 nlcTEywk3No8rmA5fIsL9IWVwwieIBVgpgSJueinzwrttSTmF1FRTYnzvYwOqmf3Xjn2
 VESivSb9U23X2XKlD7pWJ2U36xGRvOPOhHOyqVplYrJeTtIzcTKOi2SXCUGUKHP0mgi8
 g7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ART3VPTUZNh7t0v6KbRBSIgrQKQirMcxNBZ8VtKI13E=;
 b=3fimpqtGPSvcpMhTOYCHueiZLlWd1LmydgjSMEZQel5m4lSoZfFBdPnS2e5ycdoB7s
 InOdkq+dffGsrXdL3jZS9ORaQf9xhNFXEI+Vc6nKAiSQ/I6Zv0gMkSRy2Q6Wzg1yyo/7
 4H9jc5ldZg1Ly2hn26PDDERjKll1ALetYOsU+PvvUDGrozcaiB1Yko6f/+fIIkjh+n3e
 QCl2U5U8etPu2GCWB4xMtSLzTpYf7du9q4rv06mjt/ItcU4pYeawQyX07m+LnCuhVieR
 ICn4q1ahWSgUv/V95ylvOIcA9fo+7qUKvfHYuoAySpSlHpeabRqeBPSR6STafTQi6BeC
 jYEg==
X-Gm-Message-State: AOAM531IjUUqxrEkcjEVmrC3WYlc7cagQ0x56y9rkTWpiaVh2/bB/CaC
 WowQlUDb193QIEUHnGRhEukEA9t5lmGvfA==
X-Google-Smtp-Source: ABdhPJwZgSr/DyiHHH2vovnnZ7PAQIm+AH/LuKDHWznqObTdKXELfVozhERENSQ3MPhwqjlSTLtI9g==
X-Received: by 2002:ad4:5ba8:0:b0:42c:1046:419e with SMTP id
 8-20020ad45ba8000000b0042c1046419emr9768577qvq.119.1645900920340; 
 Sat, 26 Feb 2022 10:42:00 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:42:00 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, Peter Geis <pgwipeout@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/11] usb: dwc3: reorder dwc-of-simple compatibles
Date: Sat, 26 Feb 2022 13:41:42 -0500
Message-Id: <20220226184147.769964-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104201_499912_42CCC806 
X-CRM114-Status: GOOD (  11.34  )
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

The dwc3-of-simple driver is getting rather disorganized with the new
inclusions.
Reorder the dwc3-of-simple compatibles to be alphabetical.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 71fd620c5161..9dc6295df6b1 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -171,12 +171,12 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
-	{ .compatible = "rockchip,rk3399-dwc3" },
-	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-	{ .compatible = "sprd,sc9860-dwc3" },
 	{ .compatible = "allwinner,sun50i-h6-dwc3" },
+	{ .compatible = "cavium,octeon-7130-usb-uctl" },
 	{ .compatible = "hisilicon,hi3670-dwc3" },
 	{ .compatible = "intel,keembay-dwc3" },
+	{ .compatible = "rockchip,rk3399-dwc3" },
+	{ .compatible = "sprd,sc9860-dwc3" },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
