Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BCBEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjDRdOe5gytdCbP2P970M2APTQkldVYsy6oRZsKHlZU=; b=MNMjI+xMkKWM5d
	/BTO0XFdJPROlAtak2zh42o3Lux3arSCWbeN0seGj450DeJeCMSXfWv+0NuQ/2SusDtV4vkSaRImH
	Dhz82YO+RxxScNmvnJMV1Uz5lTA0QoZqNVQN8sVSXXjeXoPhDhD86DuTCO8UpBwda82bfl1wXprou
	4irmGm4POPYPeUMVzkyGsGTxha0PixYQLaSmT/C9oE2ERnvevRrFUh7+uf59WInAEtrfgah/JTWNz
	SCAA7fUw3kdW+RqKe8TpBetvI9oyZ3PbeODsXsJEMrmL4mtEZwcz8Ev9WGwJF9u4iatWHE+nnlshc
	u1AadulJNeCVdTU0+xug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO227-008NlU-2D; Sat, 26 Feb 2022 18:43:07 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO212-008N9w-JE
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 18:42:02 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id e22so9277331qvf.9
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 10:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=ohRGljgT9n6KnhWzIuhLOYMf4bAC0dxu6b56hKPwmyQR2gsWwMTrz14Z51YO4pyzTp
 iLnS19UfDKhkgkv/iN6+wX8hVbk9GrLjjR1XSU/zfMnLNb4TRio7YbcyLP4Qxt1KQQQL
 UQKbxD+rgoKozrjZwohwOnOROk5jpDk0ma0XXbOqCoKJFcYwzVwtuIJptoOUvcpFz9Hp
 xpwShpVieevWiy289bGM3OikL75ksOKsxT4g8p0dNGP5ygFWTo3XhzBzME0n2Tz4U7V8
 bUnv7P/jvEhCjy7m1d3ythOsojy6Dt3RpC9udGp2AecZfpx6YRnFdxXiam/qzTVqKdH4
 Tr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=m3JveMuZIuXxjwWsLSPeKgZw0Fp0HsbUtk5ZJkddPEkkCsgTVK8tzeMo/x/zMJFawt
 tx3BABzN3IHZPtUAhqkirBOxG/yqV1TrAEIAaA10gWf7rDel+w4zaPHLVFS6CAtZzgsC
 JETKoQQVeMlbYrp775WGuICqQUc8Vn/VquS4oXjeWv5zv3AVUBUofXTfJCEPX7nwsGCr
 oE1Lqf5t2FgtnpGHaHSKNr71aqfqnYvRtcHr/wgoiZ/0Xi4X809sNrk0QGeBabYnsUPc
 kNUP4jEeyAECYDaG30hyRssETsOgogS7ublx4TZ5HST8etWgUXq8zRxhlsFUbN5bh59f
 zrcA==
X-Gm-Message-State: AOAM532SJJ03dhyNqkaD/cbPff01y+pXrPi4ZZVm6pSysOvbPzpFxLtq
 cBoEpcgewR6EAgfg1tq/MXo=
X-Google-Smtp-Source: ABdhPJwJUDRCCIp2NWBMNr9lFrQqnh7qaiYPDRkqrxmJD+kt1LzNR99zq5nU9nI+38qgTE3HZz9VZg==
X-Received: by 2002:a05:6214:1c8e:b0:432:4f21:aedb with SMTP id
 ib14-20020a0562141c8e00b004324f21aedbmr9584724qvb.74.1645900919471; 
 Sat, 26 Feb 2022 10:41:59 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:59 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, Bin Yang <yangbin@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/11] usb: dwc3: core: do not use 3.0 clock when operating
 in 2.0 mode
Date: Sat, 26 Feb 2022 13:41:41 -0500
Message-Id: <20220226184147.769964-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104200_681908_19EBB3D5 
X-CRM114-Status: GOOD (  10.94  )
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
