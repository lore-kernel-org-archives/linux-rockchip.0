Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37634C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjDRdOe5gytdCbP2P970M2APTQkldVYsy6oRZsKHlZU=; b=iyuh6uV2mApHRY
	ZPyFp01I+zxbwjA0tMrGiJw5ZU3zfKM8ZZ2f51nIeWiwQnk5O99fOFFEf2AKrUEEzWnDIRro2EGng
	g+ex+dkHXxDLJEqO5U9DSdXxk5QKogb892HXlWb/9polNWzfFj/gFIAr0fajSH+P9BIt7Eug/oFwB
	kwm+kBhOMl6/CH6tspVsdv2f6T3GK6WvcxK/OYa1xMYrM6GFUNDFDKuesvOy86vCAneaXSH5obwah
	pgmSx7Wg5S4BvJOnFQCa8gNk01u8zDHjmDwfRlY0KWDSvAnwO6DfLcpgfUiAEHz5JJJxg35u1zxMQ
	5TFEqho3M8RkzF7E+/fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLW4-009ZfA-Bj; Sun, 27 Feb 2022 15:31:20 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLV9-009ZBr-S8
 for linux-rockchip@lists.infradead.org; Sun, 27 Feb 2022 15:30:25 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id e22so10546192qvf.9
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Feb 2022 07:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=QjB3W0OjDdzllkWrrmQj4sqoi50Fvkt6qRrBwOXAUqncAhnM0ubVGdfmosWjbSAOqK
 SpjC5XeVyn5sxZftrpPDEzXijzLQ9ppZ8G6omobntjgUBWZIpiCLnJyuzAhU+MKn7oHh
 kUWlbpdTh6XP7k5W8A2VwZnyymPSpt8eHgqNQNo8I+sU7wsVkLjl+bmEUEyus35F0rKd
 6SlD41h444MhU13w3dyabf+U+dhquTPZ3cYjqoP0BL7XRcYXg5Arae4LlA0IgsCv6aKf
 9wkJXRm1b2DbU8uXh1Q8vq6/VdC/TmvyJQV/2Ss+n5LxBcYIjBY86U7EFC0pCFPkRMgj
 AXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=v8fli++/LKOb6hpx075frVYrAnjvCltMCQBTe0R2F77vaBZNfj1B90Bc72yyEzwfyB
 X9I08OnPX1sfSrm8skhBozwY8UDxJ3eQFUvZ4IAf4ZctKPeegGJdxbNIMRb6ToODRBLD
 nsQi+Zd5lQtaqI+XHpiu6FrKAM0Z+ezIFhBvJ9Y4SHBkb95MNcbis5s3y7VVU2e83hFm
 30cfBOh7CIv1yPW7Ejg+9+lyWU7tlEei+t0tVDH6vnvjRNG7wHjj4S2opYPjsLT73E4Y
 urI53mayai/I1TfLfDmZDj/hMynbMXF7TrdADazHXjqvkS4W0wnJ1nUG26h+cjTTfmtV
 BirQ==
X-Gm-Message-State: AOAM532SCUwmsQXliAZgc/EZtblpXrQP/p4y2ILPFcAKWY+1olDbwvNe
 Da7DT9iXK+BHgo6P2gxG5/8=
X-Google-Smtp-Source: ABdhPJwkNiMKD4sq0eim8Kc7aMuv/O+aOeFGkOcC5q2lyFBzrPzgjJY5l22E0FN1OyJTUxaIQic55A==
X-Received: by 2002:a0c:e04c:0:b0:432:4007:b7de with SMTP id
 y12-20020a0ce04c000000b004324007b7demr11520611qvk.53.1645975822748; 
 Sun, 27 Feb 2022 07:30:22 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:22 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, jbx6244@gmail.com,
 Bin Yang <yangbin@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/7] usb: dwc3: core: do not use 3.0 clock when operating
 in 2.0 mode
Date: Sun, 27 Feb 2022 10:30:13 -0500
Message-Id: <20220227153016.950473-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073023_938700_1A91AF6A 
X-CRM114-Status: GOOD (  11.15  )
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

From: Bin Yang <yangbin@rock-chips.com>

In the 3.0 device core, if the core is programmed to operate in
2.0 only, then setting the GUCTL1.DEV_FORCE_20_CLK_FOR_30_CLK makes
the internal 2.0(utmi/ulpi) clock to be routed as the 3.0 (pipe)
clock. Enabling this feature allows the pipe3 clock to be not-running
when forcibly operating in 2.0 device mode.

Signed-off-by: Bin Yang <yangbin@rock-chips.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/usb/dwc3/core.c | 5 +++++
 drivers/usb/dwc3/core.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 18adddfba3da..416d83a055fe 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1167,6 +1167,11 @@ static int dwc3_core_init(struct dwc3 *dwc)
 		if (dwc->parkmode_disable_ss_quirk)
 			reg |= DWC3_GUCTL1_PARKMODE_DISABLE_SS;
 
+		if (DWC3_VER_IS_WITHIN(DWC3, 290A, ANY) &&
+		    (dwc->maximum_speed == USB_SPEED_HIGH ||
+		     dwc->maximum_speed == USB_SPEED_FULL))
+			reg |= DWC3_GUCTL1_DEV_FORCE_20_CLK_FOR_30_CLK;
+
 		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
 	}
 
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index eb9c1efced05..ea3ca04406bb 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -259,6 +259,7 @@
 /* Global User Control 1 Register */
 #define DWC3_GUCTL1_DEV_DECOUPLE_L1L2_EVT	BIT(31)
 #define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
+#define DWC3_GUCTL1_DEV_FORCE_20_CLK_FOR_30_CLK	BIT(26)
 #define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW		BIT(24)
 #define DWC3_GUCTL1_PARKMODE_DISABLE_SS		BIT(17)
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
