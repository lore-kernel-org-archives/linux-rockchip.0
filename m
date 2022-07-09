Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD7F8C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWmb2zjr8d6W7DP4pAVvBGsQYBZYDj2UnFGevlPXNpk=; b=KdGdh1QvthDCKT
	jMCsbbt3p1LL5n9+vbyuTy0q3WXudi3bHFJc3XTQ/9Gx/0sxEIWuffXMLoxSfoe/tOOSbMcbP61po
	ETM4qJSKjiam15teFmaSIWhvYwPV3K1V768yB3wTE779tYsoQ9tTOz8+VDwGVrEEwZbTRvkKP8b/C
	g/c4v5nj/lcDXxbJzAbiWgc2DNaV1oHdJHQe1kZHf7hU1gEHEyqqzmCDLTGcJk3ClXxa1n8AADzey
	K/mYSp/+uE5HiA5kivzqtydimc8xszoGlMwFF7Zy/oSyfr9whIjdzn7uSKycG3ZyHic0aRgnVjiNR
	a6bMfj3LcLU3RAVaOl8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVg-008xVj-Nv; Sat, 09 Jul 2022 18:48:56 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVe-008xUK-6N
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:48:55 +0000
Received: by mail-ej1-x630.google.com with SMTP id d2so2712159ejy.1
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=D6ZWROrOm5A/72vvn/EnqIlXf/wR4eKjCaY3Xoecv+4=;
        b=PSh47ZiWf9AT7uBET3RVnRvAsMJ5a94/WfriQ6FiiLJ4B5YQnOvH6u5RBdy9yAARcv
         gUwlLAmsG8uJf+suwAtWM9+OBKUewSPK0JMYpgoLHlK8nrfdVXev2K4SW7UygbQ5vHG9
         rByHK5Gzxq44tCaKGjcuevbOgVhlb5HhG4BMv83iWYzuW72xerBt9GRMzbLFV5Hb1ofn
         ji/g6OWtKtqZnOPKEqK/9ztCpaik4Ae3Vs2o4Y259krDl6ia2xpL3qX6d7z7lImQPsxJ
         OcdH03CDiHI2r1BIarzqkBY2QzQyhnZ4xfOwBTjvhnKboO29Sph0YfUOqkM0DA4A1z6M
         bY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=D6ZWROrOm5A/72vvn/EnqIlXf/wR4eKjCaY3Xoecv+4=;
        b=o3CPq6msAGymJ9lVm/mpv5aIjCm8I3TtBKXOFYl2nbxSRKyJRB0pM8Z3qdqHMIAaS1
         69LERR/2M2vmfSDG06duJEzNPr40HmFd2H70AFO9tAeI7QvC9nZ7bf5ry4oSGjqnCaII
         bn08vLm/rDzcp+PcKvE7uCRL2OHICd0N5aJed6vyFokkm8uNyjLgfZkXf+Hj90qJWxah
         ImULoa/kIqc7eOf39wZxQ/0RKUWuon5wxp0Vfigejm9jiWzKW7kuv9ZDgUnWDtjaiqIn
         WKsDw98gGIO33MNRjpKeT/eqM9vHWi1HcViflBrtN6ZIbkERX7a0d9Ey8fuqDJomks5X
         GGrw==
X-Gm-Message-State: AJIora/0b+DEWanYLKGI98uNK7IHsd/yG52kywZlswRO+VQ/tSgM7FHa
	JuZvCT2SQaoWu38HO0+TBGc=
X-Google-Smtp-Source: AGRyM1umqiMDdVMRHxQaPnIifsVbxgBEEClzqsOrFJwYZd6szSp5UpSFNrkI4W2VHZVBB7Ukpnbs6A==
X-Received: by 2002:a17:907:3e81:b0:726:9615:d14d with SMTP id hs1-20020a1709073e8100b007269615d14dmr9844756ejc.517.1657392532066;
        Sat, 09 Jul 2022 11:48:52 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id m16-20020a056402051000b0043a7cdfac46sm1385819edv.23.2022.07.09.11.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:48:51 -0700 (PDT)
Message-ID: <31b26006-d3fe-21c4-ef8e-f7347a29595a@gmail.com>
Date: Sat, 9 Jul 2022 20:48:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 01/11] rockchip: idb: prepare IDB block device
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114854_265633_BC8E2242 
X-CRM114-Status: GOOD (  13.17  )
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

Prepare for the IDB block device by adding some constants and
function extentions.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/block/blk-uclass.c       |  2 ++
 include/blk.h                    |  1 +
 include/dm/uclass-id.h           |  1 +
 include/efi_loader.h             |  4 ++++
 lib/efi_loader/efi_device_path.c | 30 ++++++++++++++++++++++++++++++
 5 files changed, 38 insertions(+)

diff --git a/drivers/block/blk-uclass.c b/drivers/block/blk-uclass.c
index 21c5209b..0b5f219d 100644
--- a/drivers/block/blk-uclass.c
+++ b/drivers/block/blk-uclass.c
@@ -32,6 +32,7 @@ static const char *if_typename_str[IF_TYPE_COUNT] = {
 	[IF_TYPE_EFI_LOADER]	= "efiloader",
 	[IF_TYPE_VIRTIO]	= "virtio",
 	[IF_TYPE_PVBLOCK]	= "pvblock",
+	[IF_TYPE_RK_IDB]	= "idb",
 };
 
 static enum uclass_id if_type_uclass_id[IF_TYPE_COUNT] = {
@@ -49,6 +50,7 @@ static enum uclass_id if_type_uclass_id[IF_TYPE_COUNT] = {
 	[IF_TYPE_EFI_LOADER]	= UCLASS_EFI_LOADER,
 	[IF_TYPE_VIRTIO]	= UCLASS_VIRTIO,
 	[IF_TYPE_PVBLOCK]	= UCLASS_PVBLOCK,
+	[IF_TYPE_RK_IDB]	= UCLASS_RK_IDB,
 };
 
 static enum if_type if_typename_to_iftype(const char *if_typename)
diff --git a/include/blk.h b/include/blk.h
index 9503369d..a73cc577 100644
--- a/include/blk.h
+++ b/include/blk.h
@@ -38,6 +38,7 @@ enum if_type {
 	IF_TYPE_PVBLOCK,
 	IF_TYPE_VIRTIO,
 	IF_TYPE_EFI_MEDIA,
+	IF_TYPE_RK_IDB,
 
 	IF_TYPE_COUNT,			/* Number of interface types */
 };
diff --git a/include/dm/uclass-id.h b/include/dm/uclass-id.h
index 3ba69ad9..38a227f0 100644
--- a/include/dm/uclass-id.h
+++ b/include/dm/uclass-id.h
@@ -104,6 +104,7 @@ enum uclass_id {
 	UCLASS_REGULATOR,	/* Regulator device */
 	UCLASS_REMOTEPROC,	/* Remote Processor device */
 	UCLASS_RESET,		/* Reset controller device */
+	UCLASS_RK_IDB,		/* Rockchip IDB device */
 	UCLASS_RNG,		/* Random Number Generator */
 	UCLASS_RTC,		/* Real time clock device */
 	UCLASS_SCMI_AGENT,	/* Interface with an SCMI server */
diff --git a/include/efi_loader.h b/include/efi_loader.h
index c1e00eba..44d42603 100644
--- a/include/efi_loader.h
+++ b/include/efi_loader.h
@@ -141,6 +141,10 @@ static inline efi_status_t efi_launch_capsules(void)
 #define U_BOOT_VIRTIO_DEV_GUID \
 	EFI_GUID(0x63293792, 0xadf5, 0x9325, \
 		 0xb9, 0x9f, 0x4e, 0x0e, 0x45, 0x5c, 0x1b, 0x1e)
+/* GUID used as root for Rockchip IDB devices */
+#define U_BOOT_IDB_DEV_GUID \
+	EFI_GUID(0xadc021df, 0x5f24, 0x464f, \
+		 0x9a, 0x88, 0xdb, 0xee, 0x3f, 0x1d, 0x14, 0x0f)
 
 /* Use internal device tree when starting UEFI application */
 #define EFI_FDT_USE_INTERNAL NULL
diff --git a/lib/efi_loader/efi_device_path.c b/lib/efi_loader/efi_device_path.c
index 171661b8..b7535373 100644
--- a/lib/efi_loader/efi_device_path.c
+++ b/lib/efi_loader/efi_device_path.c
@@ -28,6 +28,9 @@ const efi_guid_t efi_guid_host_dev = U_BOOT_HOST_DEV_GUID;
 #ifdef CONFIG_VIRTIO_BLK
 const efi_guid_t efi_guid_virtio_dev = U_BOOT_VIRTIO_DEV_GUID;
 #endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+const efi_guid_t efi_guid_idb_dev = U_BOOT_IDB_DEV_GUID;
+#endif
 
 /* template END node: */
 static const struct efi_device_path END = {
@@ -574,6 +577,16 @@ __maybe_unused static unsigned int dp_size(struct udevice *dev)
 			  */
 			return dp_size(dev->parent)
 				+ sizeof(struct efi_device_path_vendor) + 1;
+#endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+		case UCLASS_RK_IDB:
+			 /*
+			  * Rockchip IDB device will be represented
+			  * as vendor device with extra one byte for
+			  * device number
+			  */
+			return dp_size(dev->parent)
+				+ sizeof(struct efi_device_path_vendor) + 1;
 #endif
 		default:
 			return dp_size(dev->parent);
@@ -667,6 +680,23 @@ __maybe_unused static void *dp_fill(void *buf, struct udevice *dev)
 			return &dp->vendor_data[1];
 			}
 #endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+		case UCLASS_RK_IDB: {
+			struct efi_device_path_vendor *dp;
+			struct blk_desc *desc = dev_get_uclass_plat(dev);
+
+			dp_fill(buf, dev->parent);
+			dp = buf;
+			++dp;
+			dp->dp.type = DEVICE_PATH_TYPE_HARDWARE_DEVICE;
+			dp->dp.sub_type = DEVICE_PATH_SUB_TYPE_VENDOR;
+			dp->dp.length = sizeof(*dp) + 1;
+			memcpy(&dp->guid, &efi_guid_idb_dev,
+			       sizeof(efi_guid_t));
+			dp->vendor_data[0] = desc->devnum;
+			return &dp->vendor_data[1];
+			}
+#endif
 #ifdef CONFIG_IDE
 		case UCLASS_IDE: {
 			struct efi_device_path_atapi *dp =
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
