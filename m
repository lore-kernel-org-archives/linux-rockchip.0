Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330AEC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjDRdOe5gytdCbP2P970M2APTQkldVYsy6oRZsKHlZU=; b=xqcGf6kQNa76Gg
	iH0RkyIYjNsF70msuDuNeN07PBwMnhfQ/Ze8J9xckjITQupcS2UK1l15xQ7iHANHFgvOGHICgVZs9
	DPiXCR8OHvywgBjn1lJOlSLzY7B3/ZlNQnXhCdJt1CVWeilHampf0DjcFDlg7nPq/wRmV1o2gZie0
	NkcVYApHdzlueB/RTVlQKyj1E8IHrsq8eH0zuL7Me9qVSjK20tY9yEL3+9pHjrwDeaCNUttqLEDKh
	b7sXNY3r5eH3uHRtljOYSnGupfAZgTpXGdxI32mKKHvJOMbFLnS0eySkfA556tP8tECp0hDqtUn/Y
	g0ZsIEm+kLI07rm8iEtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgch-00Ckm1-04; Mon, 28 Feb 2022 14:03:35 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWY-00CijP-BU
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 13:57:15 +0000
Received: by mail-qk1-x72d.google.com with SMTP id q4so10278345qki.11
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 05:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=axLq9ESk4KLwkRhxFwrsPb0IhXxAtdnSMp5bxmAzIv9jg7Ka+soIzf8ERaxP1neUMI
 x5AP662tSuRGrmnrT2/XP41iPtF0c53qMrnUAInWhVqdK5WK8i3tsGzEL3hTrVEobJ0s
 DlD0Wqa5Y7H1CmQEEJxiq1q/L4S+GS23T03gXXgzad+j40I1VR/O+Blqb8R7m/4qxpdP
 3j2kccWHmuoG8sCn7iNlt2c4hzleWmscG3jBeZ0id02XjkHXlZROaGU/DKvi709oLp7U
 5i8DRBkPj4conLmXDexlel3pRFEHcPn+9+J3bJcgNR7Hpq1Q9Kj9lH9/r3VBLNkbFJvM
 mKyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPaFw68OuUtIuwUUWQ/YAMH/m6245D2UW9piC4irepM=;
 b=Kicjv7qH2X577QZYs8sixaOQSBPZd5yyL2a7h1AeO0RSE11oQc2t3gzL80wNZfUq87
 33bTPp1VrcM03doHe33fWC4GbJX/v3X0TOi0smGNJ8c+MCCxalDCsYDWxZsQJXNuvqi+
 gCCItXfnPL9gy5uW7Ja5Yrn6S7NduCXL/zrq03Z/OIx4/WocYLmjdqbm7HDRffios2cJ
 cBHNlRBzZy7Wxvd5ggIw/3mE7FXlN7+Z7uYuKwI9zgGheWVadJ1EUx3Z3yfba1THGfD9
 +trks4tY70WgX3qyOOn0l6dgvpqcsOFYjJ7CpMrqL0RW4eOnnxwic69dxXLCiX8FpuLz
 g20Q==
X-Gm-Message-State: AOAM531tpcpqLdhn9om5EPpGVH4y+m1xazw7N+18r4I09FI6APAopBFB
 G8rwnIf1DMzqIJr11SA4CC0=
X-Google-Smtp-Source: ABdhPJzG6wOa4TN1QLaAMRRFyvPIWxUudagzxS54MIfEGeVgC11S4FrJNmCjk/EhdBzDgihkBBzPzA==
X-Received: by 2002:a05:620a:138d:b0:646:d79f:84ea with SMTP id
 k13-20020a05620a138d00b00646d79f84eamr11333629qki.501.1646056632345; 
 Mon, 28 Feb 2022 05:57:12 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:12 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, jbx6244@gmail.com,
 Bin Yang <yangbin@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/8] usb: dwc3: core: do not use 3.0 clock when operating
 in 2.0 mode
Date: Mon, 28 Feb 2022 08:56:56 -0500
Message-Id: <20220228135700.1089526-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055714_459414_46BC5B58 
X-CRM114-Status: GOOD (  10.71  )
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
