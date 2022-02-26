Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejH3j+FIoe8WOxVLrrep6pif+fChj3S+6lX9VMInci0=; b=lKKsXcpKdf8iqO
	Tq09EZv82wLygn4UqCTZej0SV0ZkKgjHEZZYQxbHdPzeTUk5hQJ3TTKvebPdwtfVBCmjOMqZXJ25W
	9EhvdmEBslZBFnSSJvD3rBPO6oG9wQOCbbZxpoqfS14KS/o15MQaGivXl3Ri+Bd4v6ocQQbUS/2tv
	IQBtPyHGUOiHsTI83MzLtsKYImD03+k6fuMjvW4xiwwiBLOsfz//VEAZBtE1X9PRpd8gj5GoErmQI
	2rx+SS+a5aQFBdGMjknZnBZT9aqdRB7Gs1PfoZ7OCFDLtAkOrGu0iKQq4smLfhk1UbVxgnWGW/Ox/
	zaf6xlTrghuFzPzrhImQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO22l-008OFL-LQ; Sat, 26 Feb 2022 18:43:47 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO215-008NBk-8i
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 18:42:04 +0000
Received: by mail-qt1-x834.google.com with SMTP id b23so5532715qtt.6
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 10:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ghDZEj/NkkDjCwPou92KJHqMKUcvVac9Orj9JeFveY=;
 b=CoJLuQ9QXYuue/UED91igxeadvZxn8t8dCGl24Y8qKc1xDB7DdJb8fzg3tHjeKN3tY
 1j45CS3BKCMyP5CV6I/i6NIWDwE80hMD1TBrR8McazxO2scH1C/mDJJCeykBQJFe3nEn
 YN2DvqbrT96NCR5sVWJiIxFSIU8K51lna4LokjrgziOATuHdtLpt9d3fUoFhjIw7JjMc
 YYwWJRnGiyHSS5pG8KLCk0Z6+/ozjutzRvEpYel3rSmJL16jipVF1oD/8OCtZlxWvJEE
 6QLbqS0GwLIHqY3sxGVzoAXJuHR/oxwL0CtfiLq4MlLRjW+oZR9vhSFv7D9Edmveb1yZ
 j76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ghDZEj/NkkDjCwPou92KJHqMKUcvVac9Orj9JeFveY=;
 b=S0xIGE3EwNlB+EIgdFgNaMYUoYt3mFdIkkQRD/qqt/mcoLJAyh+ndYGF5Ug1jlQTBt
 qUbg4JD4BfG8s4W8/U/1UJvZzXrGoZqGBDvB2d+4D68rJxp1ot19sfrG5BzQnj0in2vr
 J86/yKWlUGEB/RHxBwflP2s4j3HV0SBdCbnOc7IelKsJhhHFzhjpgV1P+iUqRXnZSCVF
 5OBSS+cMEHnBcbofMEWXMLlBOIvARSRHRWN7GxXdSNGxKD0bw2ck3xKRwBeEqCoVzpru
 HxulkbrXU1kAwybnVsw/bNSjLq/jY29HGAZJcxHVCEVrWT+z14Nj/rX4RMQ0TskcGdA9
 Bn3A==
X-Gm-Message-State: AOAM533SrjFT8FqbJIa8XFUVG7XOflN3iiotI8zQTTy0Q9ZGP7md0f1O
 6UtfWpLeMHHZITR487eQVLs=
X-Google-Smtp-Source: ABdhPJzEwVSZFWS6p9V5PNcImVSS6RAQMFHr+8F7FqII+D+lzaGNJjf4jqQ550d71lqAgdgdn161ow==
X-Received: by 2002:ac8:5f46:0:b0:2de:783:5bea with SMTP id
 y6-20020ac85f46000000b002de07835beamr11367722qta.486.1645900922144; 
 Sat, 26 Feb 2022 10:42:02 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.42.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:42:01 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, Peter Geis <pgwipeout@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/11] usb: dwc3: add rk3568 dwc3 support
Date: Sat, 26 Feb 2022 13:41:44 -0500
Message-Id: <20220226184147.769964-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104203_329739_BE758236 
X-CRM114-Status: GOOD (  10.77  )
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

The rk3568 dwc3 controller is backwards compatible with the rk3399 dwc3
controller.
Add support for it to the dwc3-of-simple driver.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 57ba9427ad74..d9d1c5bfac3f 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -195,6 +195,10 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 		.compatible = "rockchip,rk3399-dwc3",
 		.data = &dwc3_of_simple_data_rk3399,
 	},
+	{
+		.compatible = "rockchip,rk3568-dwc3",
+		.data = &dwc3_of_simple_data_rk3399,
+	},
 	{
 		.compatible = "sprd,sc9860-dwc3",
 	},
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
