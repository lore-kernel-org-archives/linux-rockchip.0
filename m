Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A69FC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 00:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4G7Vnb8ZmpR4arTn2mgFbb7Bug/Qg1bg6p7ULqAmTTc=; b=v25VxOs/CdCW9t
	SRWlTFXUWlCmY8mTCqjtfGGzIAVQPpXemY14H5LazJ3jdQ7lk9az1JaWCoc/kCbUvqJdASwnhnjzC
	FaPb730iSC6vc4cTbS9mEPX7vGOl0Bu8C5KUpfZq/ly66ML7al3ZvnJwbM0xThx2/YfcLTevjBDN8
	l6p5AaZL5SzhuGbuQITpQCX5l1P7MXAcEb9IQHR9bska8TUTHH5d3nAud59r9+JLvdNqMFY1rZVV0
	y6uktUxWewv2iGCEW+yChZiTUkRI1kq3gJ380j9N1aKEmRScyOzSxQSJpJTIDK9aak8SFD01l0ppO
	2v3p9UyZvfhygBHsM7BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whcyC-00000000fry-0Iwz;
	Thu, 09 Jul 2026 00:50:28 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whcyA-00000000fps-0RJx
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jul 2026 00:50:27 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-8143daf89c7so15405397b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 17:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783558224; x=1784163024; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MMeVGfxElC0Lxj76VZe3jY3LwxYN+PY2gW2pcA4KR74=;
        b=spVcR9dQQ4YoSXk/aU1KbjWOeER6fT/n3ywDMLdYk3oPrxsKGNqDJua3IZjZq6gcK+
         Ld0flbqeIWeEcyNJqJer0grgCD1VG05IfvQbgD0CcdkhJ0LVnFnEbW1bLNc4pEPQr+f1
         EsVd4rQZbPA+SfVqAnrxK069sTOjzpERu5XxB5aTj4kxrtdF0uxv+mdO1goDUssk8twO
         jA/hgiI46JcYm2kFQHB6hfxrymPkPVscgEkeuvuldl6b/Cy7CeRBwP3cPrYsJlH+eH9k
         VuPGtjXHI9RJTDRLJkC1zz9PCS1S6BeHR+jwnFhZTGSRWKWsmd33ufBDfKgyHEfukuwu
         Jsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783558224; x=1784163024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MMeVGfxElC0Lxj76VZe3jY3LwxYN+PY2gW2pcA4KR74=;
        b=FyYSavmnkLLazKGqzh6/VllpYl7IyYbkcUGfoBk67U+AkE6CMrTLdWxdegsoKZn95x
         xmxDrbxDMOWoCJUd0L0XXKXLIGpDJMebSacKDMMMPQLrYMEOCZnCjbtTQm95BjO5DMQ1
         /6SA/RV/+m9lqOsU03FyYLKdDCW4sexpF/+VtSZV7s9HEaJyPGQsPQxjMSalR+DzHH+k
         u1SWwcX11BQZF1xGi5/XtRESHVmw19oLrtI35OL01zqJ0h98aCmctPX34wiBr76+TzPu
         NQFm9YnG8DBofa3fRfxefS3v5fwInN50ER/s4YVD/T5uDBljfKE1d/rv0bTa9JqJEe3i
         Caww==
X-Forwarded-Encrypted: i=1; AHgh+Rr23PxPljvvUF31PIVLAUVzZASwqsJw0LZO62Jg/94Vj8hIm6ECxMscxLxKF0lQY/T3z1ZQGT6bgHvCPwT0rA==@lists.infradead.org
X-Gm-Message-State: AOJu0YywicgVn5DFrqxZtIEdyjKdEa+FNBK9nwTUBrMrEPxNDFnHfb46
	4wTzbA4NlCj66fkIftacYLWerKFJFXsdZlR6PqWFO8ZYe//LOdIL3F0L
X-Gm-Gg: AfdE7cnUqtCZFzyf1Cbml6CJWrI0c+27+WBbqudjasoDAnMj5eXDRpZMOS0JGt8TJyP
	z2qYOj4U99T28ll4mtX5h3J7F0YQ1s567QBFPE61lERjVtUqroKhXHFBJuliLlmc+fNqaElJ+pp
	ZRJd2DFfe8qky9eAG/aipwB9iCU9mKtMIY7odfhIc+Gji7Kinbm2F3aRa5NYNYkZ1//d5qR/u6b
	vlsCnzIO2cXzb2nKXx+Ht3figpxZj4IWM7EMqMEVGfR3RX5Iqx/Mb6qP50Yv5xeIIcTyRQiZCZX
	oDpSxIZgMZDD3FVWdPgAfigsUlHEOymPTiCHpokJhgkeCKUi6bLHb3dxuCboRjZRoUWDxdBR27e
	vm0tvK6DTIpuBJAOIaMtQYIwZzIy01BBDn+xMBOAzqEOxvADnWjO49wXoLHGDFsB4Dt0IKP/B0J
	HGXrBpWg0Xl26Pj650cLg+lH88r5T1sOtA+mbuzf8J4gvp8p9MWvXZYUDTtg==
X-Received: by 2002:a05:690c:60c6:b0:81e:6a10:f90f with SMTP id 00721157ae682-81e6a10f9edmr12376517b3.17.1783558224268;
        Wed, 08 Jul 2026 17:50:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a800:b434:bc3c:5012:1fe:ac7c])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e6befb688sm5645667b3.14.2026.07.08.17.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 17:50:22 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB device mode on rk3588s-roc-pc
Date: Wed,  8 Jul 2026 21:50:05 -0300
Message-ID: <20260709005006.413145-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_175026_151435_B1ACFE7B 
X-CRM114-Status: GOOD (  10.93  )
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

The USB3 OTG controller on the ROC-PC can be used in device mode,
but the board description only enabled the DWC3 controller and USB2 PHY.
The USBDP PHY remained disabled and the controller had no role-switch
default, so DWC3 did not register a UDC and USB gadget drivers such
as g_mass_storage failed to bind.

Enable the USBDP PHY and describe the controller as a USB role switch
with peripheral as the default role. This lets the controller register
as a UDC when no external role provider has selected a host role.

Tested on a Firefly Station M3 by binding g_mass_storage to expose the
eMMC as a USB mass-storage gadget.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
index 99853880aaac..7150d5f7684d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
@@ -833,6 +833,12 @@ &usb_host0_ohci {
 
 &usb_host0_xhci {
 	extcon = <&u2phy0>;
+	role-switch-default-mode = "peripheral";
+	usb-role-switch;
+	status = "okay";
+};
+
+&usbdp_phy0 {
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
