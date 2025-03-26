Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CFE2C3600E
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfDyqmpQMSfWCVHuHrfNs9mBjW2VilpDJCyTBwFV3zo=; b=nYv5AlRBSUMDgW
	VzfOwAX5r3/JfExta+z//gU1a1YJ7+ex2T1KUxHVcIi+/FnPF0g0fjHEPu+0TZn0aG8htG57OUMFJ
	dwDthbk2UR2I5KkycWLiaVhPxXWgSWXWyIrFZ8E3Lno6weKJwQQ3bX9AWOth0dVGOHY6V8MtF+1W2
	RyFwylxsskeEIjsKnUk2V0CzmxZ4puakUx0ejDjn0M/aUf0kM/EBaGz7K/BCh91+yDBIiZncmi03C
	/S7hnffqL0rw7i3sZsMGhltgj0Vvt087nYJCtE03e+RgySZbISFybYuZWS0js5jJrrfgNEQgtkpdE
	3Y+oEbb+MtelwA0jYWeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTbD-000000091A1-1Rpq;
	Wed, 26 Mar 2025 16:27:27 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXk-000000090Kl-06Om
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:54 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so11370627a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006230; x=1743611030; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G9tCKOxWlZzVo+LW0OfZaKnD5ARH/KKbqzp36dlNLJM=;
        b=eS9D9kxjo4hHCY3SBangGByZ/jQTeu0wXkMDgPgUwFdRi7rNJiZKZiMbYjwk+Ya1fx
         xgexYI1tXDflknq3NhE4t9lNbWdDTqaUqsTNzuiX0dYKBawX5Wfmx2K9eCrzzVdn59gM
         ir4q/xaR8Y7+gfiJDKj+29/7WXteFLvOc4GzlzCeclsYvACNL5NFPs1EgRd+6W8d09s8
         bwpmeZSXG8wA5XilnsI+uXZpXZRGclUm4rk7KuHW3iOK2zG3Djv50xx1s/P5dULeYLVL
         Qu+Hy51VlLLlKl6ocEIToMN0JHYBnhuQkgUgTtSFLKteGaYNWgZkKz/IfNZy/SsC4qDg
         R9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006230; x=1743611030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G9tCKOxWlZzVo+LW0OfZaKnD5ARH/KKbqzp36dlNLJM=;
        b=BbHHAlL8uQnqN1oTjx48gRi1JxulG877EQPSPU0Uh7mg/OrLDXTosyPtXkL4I15SgN
         muP7cd1myXqc2VSl+UBaWcjb7wgOefu7n88/JHKEkNUek9g+2T9znrFmct4vd1buDemn
         vN7rneyf4hQvrFnrzmJPtpZSEKFmNpA4883JcE7RTI+Trg3Ok7N7KWgAr5W/y8Edq3uR
         PZMHJev1OwHfs+pwR1slIrsE/WvbO+d1NPavwiHuVvTp16PTLnaqvDhcK2Ih2uv5hA9w
         +IOCO3zAeN6LneFkCNeZV6NEEedF93H6B5n69iLYZEJ+k9CdYcNkBSvyFtjmkTV2DO+z
         SISQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAsVyOJismikKwgHsWpD+NSrQ/kvlm5WzNy2JVU6mQipfQ6wlKLmSVkK5zHMxM3LUw/hKQ9RnpyG2rVt7u4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7m7TF2yDBDSVUabPLUeot8mVe8vHLHTX1lw7rDMUMsTxKp2dh
	GIi3ns4RfKOL3gMAzL4qjrcrNJCmLEmPY/3zMbr4vhVOJWkIPEJcEoh97aZ5V+Q=
X-Gm-Gg: ASbGncsM764sGJ4ep+GHvCOQNIykR/gJCHRAholuyfBpWIqgLnLBzyLUg+snqUPBBQ7
	aVK92jJBAUzNVcmdll0g1UZVONQu05wJFb1XY9TUakiSxmLvJetwv4Vgd7Va9kE9qBPS3Sd0wme
	98E+qAwsWmtdm9CYikqAolPGPjsy2W1n0NhIiolnUY4a2nDjoAHVkqKBEwnUf0T5QYQlMHnQ5Q9
	ml2L6sUuMHrSRmAAQGlQraI2bndFZrEwN1G035+hI4H6dCfMPZ3B1rIZrRJNRO5Aywx/yT0TWU0
	Zuv+ss4law/cuAIbkzt5GmycZCc9y3EH74t3shqsTNB6FvGVI7s1dVeerA==
X-Google-Smtp-Source: AGHT+IFR7MKgek1aYBM8pLPyUk2XklCCGA9XeiQoGfN17QwCt+mtrdcAqb3TA1eUWqsMBXRD9Qv/5A==
X-Received: by 2002:a17:906:794a:b0:ac2:dfcf:3e09 with SMTP id a640c23a62f3a-ac6fb100848mr1832966b.43.1743006230250;
        Wed, 26 Mar 2025 09:23:50 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:50 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:22:56 +0100
Subject: [PATCH 1/5] usb: misc: onboard_usb_dev: fix support for Cypress
 HX3 hubs
MIME-Version: 1.0
Message-Id: <20250326-onboard_usb_dev-v1-1-a4b0a5d1b32c@thaumatec.com>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
In-Reply-To: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_092352_132645_E44D5421 
X-CRM114-Status: GOOD (  15.79  )
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
HX variants, so reuse existing onboard_hub_pdata.

[1] https://www.infineon.com/dgdl/Infineon-HX3_USB_3_0_Hub_Consumer_Industrial-DataSheet-v22_00-EN.pdf?fileId=8ac78c8c7d0d8da4017d0ecb53f644b8
    Table 9. PID Values

Fixes: b43cd82a1a40 ("usb: misc: onboard-hub: add support for Cypress HX3 USB 3.0 family")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 drivers/usb/misc/onboard_usb_dev.c | 10 ++++++++--
 drivers/usb/misc/onboard_usb_dev.h |  6 ++++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 75ac3c6aa92d..f5372dfa241a 100644
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
diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
index 317b3eb99c02..17696f7c5e43 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -104,8 +104,14 @@ static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usb451,8027", .data = &ti_tusb8020b_data, },
 	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
 	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
+	{ .compatible = "usb4b4,6500", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6502", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6503", .data = &cypress_hx3_data, },
 	{ .compatible = "usb4b4,6504", .data = &cypress_hx3_data, },
 	{ .compatible = "usb4b4,6506", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6507", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,6508", .data = &cypress_hx3_data, },
+	{ .compatible = "usb4b4,650a", .data = &cypress_hx3_data, },
 	{ .compatible = "usb4b4,6570", .data = &cypress_hx2vl_data, },
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
