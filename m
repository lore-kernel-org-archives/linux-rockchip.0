Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3747FC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ynej94bHDgbIxg5kQf6be9m+9YorClF47IrudIyg/Kg=; b=Nu2Kw15g5QNovB
	DMljQWUbdA3wvlKPw9lrgl2Z6FqA1p6yY6myHofpg8z0cARY2vfFEFTorQLLhAAVKP1wlaFpWFGwN
	FUx/dXRcHR5FR9114qH/DFPWdrUtdBK5TCcGdi/kZGtivBG5UWe/cG8NF6izf55AC2qhhIbiRsL1o
	utRaJdjEIex5oPs5ZfqfAj0Wk3rii1f9gGj9devjmW2KaAYxxCMgWM8SzY7n4r2/lsPv1viUXft+Q
	ouKeg4TLr7VrsEYR21lywDHQwu36hWKrXJr9+fwS/wZt9oANtXb8utbVOt3szBQiLDmAc6q1LPVZT
	QTiDEhWvLztNDY6oJeiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Lw9-00000000DqI-0jth;
	Fri, 25 Apr 2025 16:30:01 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpD-0000000013g-3pVx
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:49 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-acb39c45b4eso369755266b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594326; x=1746199126; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+M5rdkwGZu/VDL8llLe2S9tCSCM0PahPEImRhTBfwfY=;
        b=I2IdT5/vrf+jStCAnxN7YfhuhUf1XBPfHiQ98IZenDYJYoczvBu5h9By6uZQIsBB36
         MmfBF0OpNp4KJYx3oQn7WxfrUvTHgSS/ajJFcgvEjEZXiaN9YWuvt5d5p8W1OPal/y+4
         gIrXsA3HCuBZ2dE3YzelxoINpiQsIslO2gmOVLK21RaraYEm9hOVVbp36ICSkHMZn6a4
         zcOWtcx+BAzbo1u7xez8PP4EAtEBoXo29y5Gd5LJMxuri/IUn5rddhH3VVnp9WlKWnnz
         vZidDBOPvwIJ2YcCvcX2wiSUsookfxaHxqDX1bl3LNh5e1AsPCGxUI4H85Uc1qE2MjNa
         +xqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594326; x=1746199126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+M5rdkwGZu/VDL8llLe2S9tCSCM0PahPEImRhTBfwfY=;
        b=n1+G9p4vKzaDxIyCHqyvhNGMOsnEmnij1Xj3TpPOffl/UA2lF/ZELQd9yYqvjhA33P
         DOndY4IUnkmI672kv0hw03S2N2uXSQ3mXoTgRb23kqndoANG375T9NqOTl9Z4jtj4A3u
         jgRyIYmRxzE8ZP8VCTIsXO8giqdsDNdG2u+qMAt5yC5Lv83cL4WmFKzyf6rPR43aFkcU
         uhuy1ScfGNsymqCyEJ+CnnFIiqotzqlQ+ih/TgZ2NRulikJC/MfNve89BT/J4WeKvRsh
         ExDM7Doj9ddtXnPfsadEn83Zj3da72KZJ7xFW0Cxb8rbt5afX3on1yDVLt5WP6x2/pev
         VbXA==
X-Forwarded-Encrypted: i=1; AJvYcCVDAs0CTb7gWrHSFSI++amVn627/BbW1TLWLQLoqBTdTHD+Nbe3A31WO6DC5qi1qV/OTH84vBQisQYCTcOhAA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz54IFxNnlhxr4PFiqfK5lriK6a0vWUWY9FU3eaq+afQEh4LWnI
	SP5w9manYlarYtPzW9pPB3GxmU/8EyL7Kk9G1o0HDFcICstd58Nu2rR11BCPC+0=
X-Gm-Gg: ASbGnct4OrXj6gIiUwhNflNJAiUXOHTMfoQSucYPeOpMh5RpYdqklphcRj4CjS8esnV
	IcaC6LSZlVxF1jpLgQdSpc4MhIjeLRqB5Q/8x5aur1dW+6wj/HBVK2xXsUVuJvtnODJ+ugE9wCh
	C+mb8s1Sz3Z0HwVL/ojQEd9DXDpwE1PZdHS0oo136iD0ExZ3lHamaREpk1jVYol4C7Rj8bEx6Hg
	TR0hPs2egOAzbzmIPrGCFkpecQANxuVKuOwNh4aDyJPHia0YHUV8AJSL9RCcJDjgMN/z8O6HvSm
	1GofCv8ldxDpI0Rq4en2Hq/NCr9lzh8Nhhuulq25nkvWupC5T+bOLkZ7BAuNk4DLx+kF
X-Google-Smtp-Source: AGHT+IHaoG8RjUwrvQSyvJG6aKSZajj5vFrhmm1pCthBlIn1lk/zpPP3YRLIRhFmyc6BfcY/0PDTEA==
X-Received: by 2002:a17:907:1c08:b0:ac2:9ac:a062 with SMTP id a640c23a62f3a-ace73a45d0dmr248025266b.23.1745594326097;
        Fri, 25 Apr 2025 08:18:46 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:45 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:06 +0200
Subject: [PATCH v2 1/5] usb: misc: onboard_usb_dev: fix support for Cypress
 HX3 hubs
MIME-Version: 1.0
Message-Id: <20250425-onboard_usb_dev-v2-1-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081848_053342_784CD386 
X-CRM114-Status: GOOD (  15.85  )
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

The Cypress HX3 USB3.0 hubs use different PID values depending
on the product variant. The comment in compatibles table is
misleading, as the currently used PIDs (0x6504 and 0x6506 for
USB 3.0 and USB 2.0, respectively) are defaults for the CYUSB331x,
while CYUSB330x and CYUSB332x variants use different values.
Based on the datasheet [1], update the compatible usb devices table
to handle different types of the hub.
The change also includes vendor mode PIDs, which are used by the
hub in I2C Master boot mode, if connected EEPROM contains invalid
signature or is blank. This allows to correctly boot the hub even
if the EEPROM will have broken content.
Number of vcc supplies and timing requirements are the same for all
HX variants, so the platform driver's match table does not have to
be extended.

[1] https://www.infineon.com/dgdl/Infineon-HX3_USB_3_0_Hub_Consumer_Industrial-DataSheet-v22_00-EN.pdf?fileId=8ac78c8c7d0d8da4017d0ecb53f644b8
    Table 9. PID Values

Fixes: b43cd82a1a40 ("usb: misc: onboard-hub: add support for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 drivers/usb/misc/onboard_usb_dev.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 75ac3c6aa92d0d925bb9488d1e6295548446bf98..f5372dfa241a9cee09fea95fd14b72727a149b2e 100644
--- a/drivers/usb/misc/onboard_usb_dev.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -569,8 +569,14 @@ static void onboard_dev_usbdev_disconnect(struct usb_device *udev)
 }
 
 static const struct usb_device_id onboard_dev_id_table[] = {
-	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6504) }, /* CYUSB33{0,1,2}x/CYUSB230x 3.0 HUB */
-	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6506) }, /* CYUSB33{0,1,2}x/CYUSB230x 2.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6500) }, /* CYUSB330x 3.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6502) }, /* CYUSB330x 2.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6503) }, /* CYUSB33{0,1}x 2.0 HUB, Vendor Mode */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6504) }, /* CYUSB331x 3.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6506) }, /* CYUSB331x 2.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6507) }, /* CYUSB332x 2.0 HUB, Vendor Mode */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6508) }, /* CYUSB332x 3.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x650a) }, /* CYUSB332x 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_CYPRESS, 0x6570) }, /* CY7C6563x 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 HUB */

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
