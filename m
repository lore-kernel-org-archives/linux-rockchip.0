Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90673C4452F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 03:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eeu9v7JRiOWo8VpwqQ3ZYDMYjpebu5Ypby0kZZmMi9E=; b=4FYlMZs4B1IpUS
	Hx4t7niiYnAb/zNz3caaH7GJnsPw70DrnaAJS2LBbuetCAm4tN4kHV5Ub3QSCRvd5/mNQ8x68pRsP
	AIHz5LhalvK/jqL10s+XISO75B2mWsB+XBXQ3VB2OfI0H01jYviBkUcEcU87LFrgmAaUFF4riIylD
	G0QDNkWBau9UaNPPv0lNBD3hUB5IXNyCgNjwUMxVQCZGU4PMqZKk6Fg9Yc53tHCrjHZWdjll9YOSR
	GcYnW0j7tqquY87dDzG/8nt2tHUeb7p3fsZo9+oG9EyhJk/QSw8iIdc/0MHjmfRbzloYpWbaHWLip
	K1k4VlLMDZ1aNy7GvdEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm0j6-00000008I5R-24bl;
	Tue, 21 Jul 2026 03:01:00 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm0j4-00000008I51-0Om2
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 03:00:59 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-c99eaa1f020so7456666a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 20:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784602857; x=1785207657; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pAe9oJKs9rYe/I0ehLfgHAp50htWUaPZa7ALyKO6fgY=;
        b=F5GckKgGjpocqmR7mtBDxruID0FPcLfV0iGBotbCSrp1bWO8A59TxiqjbMuqravVEV
         mCPQQccI/ZvDpDa/tUtaFYMKw63w67oNKRKbvwSVulGfl7rLPpBzZOFMohDFuzSRjITl
         tjQIKavF+KZ/VGC0AFSZlM/0W+i4FDEMIVBvK5mIceb3BcnvvAd5Vr526R00W/dy+S3/
         CY3Q7zlPNOPm8Zz1JfCBWaRl77dLBkQB59OdH+Xc8E92oliI6i33PaMFWo0gyAUscZq9
         1N1nNTaHI6E4hQn/AXmREToaLYXNzz7gYBqJP9te6sc5feNFaSRZhRXEgh40VJKhb9MN
         2xxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784602857; x=1785207657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pAe9oJKs9rYe/I0ehLfgHAp50htWUaPZa7ALyKO6fgY=;
        b=pAOYlawDjCFa7WQBsJ10NN5vU1vGe7iDgqCijPcWbjfxhQg02rDTtWyfBnce60hZ7t
         SVg4TbqlbYTdSfhJlXtutMEhcYDPril7mntt6h8j09/hhKD2uFUkeOZuxH+IRfXXtLfO
         b+l49jhLtv/eHVgvbd5gbDFV22/qW1ORRaO/j3tFeKUfcQJP9HUk7ikXORFV+glioN/6
         ycgPWueC6dLGQs0/cUQh1vf10Qyjwru3bIUhWIZZ/7KpUvrjjUwvN/DcQOyBbaaKa0uX
         eKg4Mg5xn9DYXrP+BVSrYkT0mdZDwqruC3VQoVc9yd1884xnFVP9H3KZ4sWTzNmOFXbZ
         GddA==
X-Forwarded-Encrypted: i=1; AHgh+RpsnZ0APwOMKrNfoXlZ88AJnxtvgbGrTotlWuRNRzjVtHnpc8ENq9mXxwd0GZIloc/8/HevENEMZQqtsFx8Bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrbP7d3A4J4h9LXDcfaa+QYhQq5ndmvV5q7KoHbC/bSjoaKz/w
	fppBWlcUmi61E7q/MQr9mOrbB+x7lIRnSjjDSTCwnPKdgl3PAqP/DvxQThK3XA==
X-Gm-Gg: AfdE7cksKpcEVQfv2UpGK3Wo8ZcIzczJRKe2/AYoxLL5vrFYGknuV/CjjNINXXUpFLX
	peAMBmKZDiEnhLnPUuO8pGpJAYyYaNdzWkcAXoAiqUw5CH970+/WTPoHxZ/XRU/gPkk94nV0MBk
	BFCjcNJUTcP5K/7IXfHhdsW20azSe6poW6LKmYitbd0kx1EUmu9VmGr7yt0yHWvN2I6yL4ai0XO
	hgZb7fI7nyQeFTeG8xJA+bUgPBWp78DQPaQfXn+lGkvalv7jETJigLhXThMdZvUsDgHmVmwoEZI
	dL0PWi5+h7+TdItAe5A2X58ZJArMnwD54f7oLDzQ8+fQ3ZDtJybnUV1grBAFWn+Nymv44brDwU5
	bzubcPo4tozUY6BDYqxNRcLcLDWHU1U67AOLTIsw9K5LvDDZjQiRZY4e4zOnLn64y85jc4azs0s
	wEHlI53tLplTbEquI4k6yoF0yINh01VQVSQMqw08B/GwM9jkQT+w==
X-Received: by 2002:a05:6a20:918f:b0:3bf:6c08:2847 with SMTP id adf61e73a8af0-3c3ad973f7fmr18112690637.54.1784602856639;
        Mon, 20 Jul 2026 20:00:56 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:a24:2dbd:5df3:bcf7:deda])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a1bb8a4sm44786669eec.14.2026.07.20.20.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 20:00:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB device mode on rk3399-roc-pc-plus
Date: Tue, 21 Jul 2026 00:00:43 -0300
Message-ID: <20260721030043.84691-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_200058_186487_46F02109 
X-CRM114-Status: GOOD (  13.28  )
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

From: Fabio Estevam <festevam@nabladev.com>

The USB3 OTG controller on the rk3399-roc-pc-plus is forced to host
mode. As a result, it does not register a UDC and USB gadget drivers
fail with:

UDC core: g_mass_storage: couldn't find an available UDC

Describe the controller as a USB role switch and select peripheral as
the default role. This makes DWC3 register a UDC when no external role
provider has selected a host role, while retaining OTG operation and
both the USB2 and USB3 PHYs inherited from the SoC dtsi.

Tested by binding g_mass_storage and exposing the onboard eMMC to a
Linux host.

Fixes: 6d9a7bd6a13c ("arm64: dts: rockchip: add support for Firefly ROC-RK3399-PC-PLUS")
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 7e8039b19be7..c733429fd5d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -270,7 +270,9 @@ bluetooth {
 };
 
 &usbdrd_dwc3_0 {
-	dr_mode = "host";
+	dr_mode = "otg";
+	role-switch-default-mode = "peripheral";
+	usb-role-switch;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
