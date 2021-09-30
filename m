Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35A8EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 08677615E5
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 08677615E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D0xBGFqNOYezyoV4ZIwrHBXnoCO3/kTqoh9nbQo5Og=; b=ZKrTn5sd/hRePK
	9ULeA2EGf6at24jaxesS/TWafk4iU29nDZwPiKi+PrYKjIuprbr9oQbnjm55NPK1DKvrPVsRAYKjz
	DLG0/p25xYOAim2OoPAL8P3WkkmKJkeb97H8D6kylt9+8+vm8azquj/Lu5lBixLI1oVeAV8Cg5Boc
	p8JswLETUxMGJ2V4VyHC9lIdHshBOej3pZ7Lnj8Xiv/DzxSs64YRKcFRWFIRpUIpBT1PcOHXxEwbW
	p7VjiIs0jmF6ydnJzAQ7Mm44FMDRAIX4wlnz1N7jX0YNFJ4UxMX9ua82suTxW7Mc/hEjEBHR/gUj7
	w0xtncNaDUK+Ujw5JZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVtt7-00Dz5V-KH; Thu, 30 Sep 2021 11:06:05 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVtsW-00Dyvu-Ma; Thu, 30 Sep 2021 11:05:30 +0000
Received: by mail-ed1-x534.google.com with SMTP id dj4so21007115edb.5;
 Thu, 30 Sep 2021 04:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J5rWzfawpu0XOsLyVwwYFgYCCr8KgHSAplCrfWcEUCc=;
 b=YIAyiuXj/TtHZgfD2uNj3qmZAlvslgwfgTNImQjcTdmg+Y0ntcaFbzPyE9bkbxkgAN
 M1ASIms+oiGJu6DgPXnYDYGFcGuhw7XKUf/d8oW8XpG/uj+r23Klbf55Ztl73wo08hoT
 U72PM3uKbn25ZloGgWDhNv6s1jnsujztSXFgPaxIhjHWwkFwfLSSyY+VYTKsYm1YFXsT
 soB47kM8dNuT5XZaQzy1oP6v2YzhJtjW6ei2LLj71QUvIkxzfF1QOtqOLuR7m5hPmGNv
 +rREb7AzVX29OMe3HXeg0CnDZ2ZYHHMBau41t9PJiLNu+Zr67jCrfAGBWbMii0HYO2h3
 +p9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J5rWzfawpu0XOsLyVwwYFgYCCr8KgHSAplCrfWcEUCc=;
 b=2u3UGd0OffIFNTdvBEiwHlvSn2ar7KEXyiodtoqm1H9c8jlxLQ5OV4v8A7CKizle0r
 YsiRzGIJAC59WXw8p15NzYj+2lzc7up3Q+iTWPMIAo1GzuMdUBgYx31l71tprZfuvO8X
 lrguHtZEX+N/1QLubp3a4Tz54XMwYmSFv3Fe9RaBY/IjTI700dubLNpguUNiYuc9REZ8
 vhHwGgcGP1TjvZJtQ6Hx56ujN2Tt7KMK0sBouDyHhC9vNDNJmzmANytP6Ufb/nefFwpP
 5FbCFskjfCn9xwd9i+NBGxWaF3b8ir6h3r1Awj6PxhuUOddG2XaTqUDV6eLfBkT36AC/
 1HdA==
X-Gm-Message-State: AOAM532wAMfkoYgLtAcRMQ95Yer0yt7ic0p2g7f++56udanW0ke8kTni
 1ITcGn+P/YHNG4Nds7omQKw=
X-Google-Smtp-Source: ABdhPJys89Pj1f3j26d8H23T31HD0TxjB/nOFlM2aklDPRJ+eXJfAdNX+76pkVAgrcgwul3T4YRm/Q==
X-Received: by 2002:a05:6402:203:: with SMTP id
 t3mr6332502edv.69.1632999925589; 
 Thu, 30 Sep 2021 04:05:25 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i2sm1305158edv.7.2021.09.30.04.05.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 04:05:25 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] thermal: rockchip_thermal: allow more resets for tsadc
 node
Date: Thu, 30 Sep 2021 13:05:16 +0200
Message-Id: <20210930110517.14323-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210930110517.14323-1-jbx6244@gmail.com>
References: <20210930110517.14323-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_040528_797596_99394DF9 
X-CRM114-Status: GOOD (  12.70  )
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

The tsadc node in rk356x.dtsi has more resets then currently
supported by the rockchip_thermal.c driver, so use
devm_reset_control_array_get() to reset them all.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/thermal/rockchip_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 657d84b99..dc3a9c276 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1383,7 +1383,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (IS_ERR(thermal->regs))
 		return PTR_ERR(thermal->regs);
 
-	thermal->reset = devm_reset_control_get(&pdev->dev, "tsadc-apb");
+	thermal->reset = devm_reset_control_array_get(&pdev->dev, false, false);
 	if (IS_ERR(thermal->reset)) {
 		error = PTR_ERR(thermal->reset);
 		dev_err(&pdev->dev, "failed to get tsadc reset: %d\n", error);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
