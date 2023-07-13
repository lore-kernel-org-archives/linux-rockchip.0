Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB199C0015E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqZvusp1PGSa/33N7jBBXQ/exSzTOOWHQHz4g8eit2o=; b=qfluo1yda5XjtE
	sIxtw9iUD9XgeCSSQ04Au6G85TVG1dPz26yrFAjYUriM4EKcTQSPK8ePkYjd7+gcocpGZXwlg3OY1
	uyagwRvmjTVKnYp4s7Wf3GalDUO0ME9md1jra0+PkSr+g1FGauHhpFsViLp7aCvxGm8oOdoxY539v
	6AF1wt5RKU7rG1CvVQpMgwjPvfTPteYrgd5kqvIGQE6od5q70nuH+/dLp2K2BD8cJrt8r7Ko0E12g
	ZKyRaWYyXIHIBdybhk9rMSyGLTY0yGVq450ncofM1yk3W/yMy5kot67O2b9OS4FlE9K6QRVAVcN/Q
	/4ygABxGhYAB0RhWFoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUC-003aaW-2O;
	Thu, 13 Jul 2023 14:40:04 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU6-003aVW-30
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:40:00 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-66872d4a141so529749b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259196; x=1691851196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=657oCXGaEC1qcJW0ADVKblYgk8WH34A8M/Ct3AJE75g=;
        b=Ccnm6l7dp8BUccBVmo570I2uE1NE/PoAnSeMKRPcz6vMnWStaj7AZ7WUUbn5sMk6X2
         rM+HO5CeQoNW9RoshZ8d7x+ZxDzOQUUW15aCzAHH3iadkzTj7TgoWOoOy6glkT8GbgBG
         SIwsZKb9610mQf2qWouXlKKaFUyCkPay2UMOaYLCKZbsoJw5IXbhim4V458bwqVq4d4t
         i7aDSz7yBhfq3Z5ZllbjcpmFHqVfajhSPC9MNRnc/UWnGmJ6draCEf1uOlngfjTO1jeD
         lo4HybjMoA6BLXN6t1e+dNNo/ffoxkB0VSW2nJmdUCpgiYQFOBHaM9pBdy3g+MIG7o1L
         KKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259196; x=1691851196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=657oCXGaEC1qcJW0ADVKblYgk8WH34A8M/Ct3AJE75g=;
        b=MkNL0x+6N8D4wakl3+aS3gMuj+RiH0TYNTPQ2P20PKi5Eai+62TXo+lbZuUgRmZoNY
         NfXhbqtWpKYKVhcRMC9eXXphiEHwQ70Z86CFcoWxNcArgkJqRLsBHxCDHTk0+G18F8X7
         3T1zZ8pLej+tr/98n67ycWPGg6KQdSY8Cun99bLtfFJFg+Sy7WUIMWk3WKH3U19WUap+
         WqsIChFdXi6/UWaqWpqFFIkjp8XuG3MPJMmVBGLjelCSOSYCY5Rai4KxWyWQkAYFkAhW
         yyRCX5im1gz3KAP4f/zeWASsrmNzoY8UMnzV3pBVgwwFCkZk24wgnDgzW7gTLvtFZQ0S
         kzcg==
X-Gm-Message-State: ABy/qLbiJblG2+A0ABAepYZ9tcV3rFG1VC6//IZtkAo6FyKw0KZZd/t2
	0SrztwS0bTzRFROWkS+nVINK/rGTmYOzVhcusxKeUg==
X-Google-Smtp-Source: APBJJlEv5CMhsWbLWCQQJzBhUkl2wK7p/N1rvYEl07j+cHYOj9/qbBAnaXMwfwDV8/H/wBunxU1s9Q==
X-Received: by 2002:a05:6a00:13a0:b0:66f:913a:7c1c with SMTP id t32-20020a056a0013a000b0066f913a7c1cmr1630524pfg.22.1689259196010;
        Thu, 13 Jul 2023 07:39:56 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:55 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/8] arm64: defconfig: Enable PHY_ROCKCHIP_NANENG_COMBO_PHY
Date: Thu, 13 Jul 2023 20:09:37 +0530
Message-Id: <20230713143941.1756849-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_073958_972228_8F7363FD 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
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

Rockchip RK3588 SoC has NaNeng IP PHY block used for PCIe, USB3, SATA
and SGMII.

Enable Rockchip NaNeng PHY driver.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 347307eb737f..4be8815c1d51 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1394,6 +1394,7 @@ CONFIG_PHY_ROCKCHIP_EMMC=y
 CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m
 CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_SAMSUNG_UFS=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
