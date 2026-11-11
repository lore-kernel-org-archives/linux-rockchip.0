Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE34A60A3801
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WLRCIIry;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=D+aUQhGm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=HVKJKFao2uIQrDGMSX0UpNCCD/BOuJ8uTDTMrek6D+E=; b=WLRCIIryDdg4IlH1NFmpuU+AX5
	ifqwFrmFhnM6ZVEQPWeQyAiHru9Fztx6XWVci98nsV6dDh5did0Un5gBIbOJRj+we/VNM6L/Uik7b
	M89AcBb0kQhLEIG36qxB8e7qlX64SMk5O9AZDDADLje96RIgeDnsoghAd59QBaboS1YoTOa8tG4H8
	eVWj4Ee6Li/za2nJuWF6gTHBhYcyuwOWeepC3lQpv8jPnmpkS7rrZW9cqx+ZJV9Gf7vkvb1hcsVB1
	4imPzpmsgoc2vxXJPjtxy6+2RHR7UQKSX/9iojgV+ZE94pvsWA/P5F+92u2Bg8JYWf45iR2UxqQOc
	G9fgykLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR9FK-00000006wIg-3e2g;
	Wed, 11 Nov 2026 14:24:18 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR9FH-00000006wHX-24ec
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 14:24:17 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-48fd2e38825so1948840f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 06:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794407054; x=1795011854; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=SkvKw1RkLoUo4P/RmV52C0aJoH59lmWCBYxJx4Vfna0=;
        b=D+aUQhGmYPmjiltRhAfvRm2v50WOmoKZxWQHhIDs1gxoILzHMVomEaQzdXKcSIDIlk
         05YVYcEin1Uxh8PJls6dBDov/RbvxHc6lwpRrbDtPmdy/kGF1wryXqI4oh4yWuS6ak36
         lxJqmlSdGQAkA4hdgPrxfvRkmYiyLPUD856HqxhqcI+GgyM9awluHeLymj1+mpimyRO6
         NNPmlEyiKkWdZz4ZA/+Ew/42tLZ+5dei6c4do6dvPuOEHm8rguseZCQX3uSJVL4LMt/1
         Px9Gwd3Ex+T9FAvvz/D0yDINQoCfeb+xbi2oud8GWzjeF5VKUgk+Odw+SqiWl3JPvZXK
         1X2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794407054; x=1795011854;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=SkvKw1RkLoUo4P/RmV52C0aJoH59lmWCBYxJx4Vfna0=;
        b=xHWZq1lPzBrGT7pRMLA8G8iY7vAN8Qep/VznNXl54vb3GPjYTSixQHFSGaNzNdSAUU
         Int8npAoCLTC3ZJgGq5YDHza/L840mYvu9SFJ68V4NZhhEEZEoJcX3Cj1j+4fGWAKSyk
         V+/89QQ0Q/G4+HZUQPxwczm58AIGUJ7TOhQMvEq4QogQXJRSSTQnFHmUcrnKrhpmEbrC
         dJsxaHMqs3rHM0LV7O+UUEo6NxJNP8WRghHxi4NJHwgyniG3rzn/oLoBEL7K84koKYYR
         Ka3IorvAc+n3I+Dkpc1PRhMibtM0zDlMPv4mvxRqT5Yspmuv1/mPRfvbrmM8nzTB3VAD
         wKdQ==
X-Forwarded-Encrypted: i=1; AL+hErFi6mFdQNMZedZResdpuH0n3wVPfkd0HwIB0QDv57f+j23OX3+2hX7q8fe2d5AN79n3dJ7HQQY2w+X6RlHNsA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+TSjsTl9U1+rmDqgCFOKib4np4BF2YEOb0wTXlqulUa4ZYc5i5
	Mz9XX5M62f+Rr0UIe//GVnfbisYoNVmss0GmHu1sBOoqcUoVOMUJQvn3gncXc337IMw=
X-Gm-Gg: AYBFou10hVfXaBig6SZGdvEuZ2/BFEHioTJhebX9+epMcejsVaYp9HVAdRwuzUvJXcX
	CZ+qe1h/Ulbx3TRGhl6fZuFBWh4ZsSPt8gZWVKwbEZWTrdqalb9jgFRIv8JdM+oV9iSRGzteN/5
	bykGk3CIWJVzm96YKXxPoFwfu14k9PtfkL8hdfGSbqdrSXXel5TOSm9aI4nE/Ydb72IEmXTAqRr
	aH9Sc5sC1ldwJw46ihl0JGvjcyuj5MRcAsB8ImOA62Dr1nNVzpFYaaHF2Ks1XPaumXMs1+B066T
	fb5NQlxsib9DAtu6GwmrPJXFYsufG6NXiv+4v9Hy/886CdOqqfJs9eD63iHrlNnbJmpC3+g3Nc3
	xcWybpJGXhthd1nStIet5vJCn0RSqydkMj4W+9fB6Rm2xhPuZ4pdAg2f7M1iRosyC5wps8XM91p
	YuO3xE/Fcuv4alRxunVfdbUj5KsMmEaeYyHlygzhL0xp+6j/a5gwWK5OJWu4yjnDxuKFaoV7Wj+
	VqzD7oGRY4beifJrSV3cW80FR1qaQTc5AUqYZwyReBh3yw0TRa5F35st/NUbImQtK1f85pRjXNt
	DDPYvaPLKTX18hU/qe308l0HVG7tSceMqeNosBV7pKtkP8Wlc5peHqLwKDixFQ8oGf+VioRQdzr
	8NnNwQIQk4w==
X-Received: by 2002:a05:6000:5c7:b0:490:9fe2:6a39 with SMTP id ffacd0b85a97d-499c6027cc4mr4071191f8f.20.1794407053616;
        Wed, 11 Nov 2026 06:24:13 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-498363df7a5sm11352871f8f.37.2026.11.11.06.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 06:24:07 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Nov 2026 18:24:01 +0400
Subject: [PATCH] scsi: ufs: core: Register the RPMB bus before adding
 devices to it
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261111-ufs-rpmb-bus-v1-1-b07100e53f6c@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDINAtTSvWLSrITdJNKi3WTbZINUk2TDZKNrFMUwJqKShKTcusABsXHQv
 hF5cmZaUml4DMUKqtBQDF/kqFcAAAAA==
X-Change-ID: 20261111-ufs-rpmb-bus-c8e4c1c2c49f
To: Alim Akhtar <alim.akhtar@samsung.com>, 
 Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>, 
 Stanley Jhu <stanleyjhu@google.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <mkp@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Avri Altman <avri.altman@sandisk.com>, Can Guo <can.guo@oss.qualcomm.com>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 stable@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3211; i=alchark@flipper.net;
 h=from:subject:message-id; bh=rACyBhlqQdc7vEC+waUwW3Q2wxEerf4GPNn9xVrd1kk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWR9qWrhLHryfo6Zfv8kgTXmP5Ycq+UK9rIJfnTBefE/R
 eM7n25+6JjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DI10jHWMGLg4BWCq73UwMvTapVw7c+Px7UTL0o0fu0xWTvzBXzvvsdqKE/etJ54MVFzEyHCv4b9
 a2rTNWwKmWhle/3Oy5fFh30eWkzXP6YQY75960pYFAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_062415_578587_B3980D3F 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

ufs_rpmb_probe() puts each RPMB region device on ufs_rpmb_bus_type, but
nothing ever registers that bus. The driver core used to accept such a
device and treat it as having no bus, which hid the problem. Since commit
36f35b8df697 ("driver core: reject devices with unregistered buses"),
device_register() fails instead, so no UFS host registers its RPMB
regions any more:

  bus_add_device: cannot add device 'ufs_rpmb0' to unregistered bus 'ufs_rpmb'
  ufshcd-rockchip 2a2d0000.ufshc: Failed to register UFS RPMB device 0

Register the bus when ufshcd-core initializes, before any host driver can
probe, and unregister it on exit.

Fixes: b06b8c421485 ("scsi: ufs: core: Add OP-TEE based RPMB driver for UFS devices")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/ufs/core/ufs-rpmb.c    | 10 ++++++++++
 drivers/ufs/core/ufshcd-priv.h |  9 +++++++++
 drivers/ufs/core/ufshcd.c      | 14 +++++++++++++-
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/core/ufs-rpmb.c b/drivers/ufs/core/ufs-rpmb.c
index 756673337648..591e7f2e1474 100644
--- a/drivers/ufs/core/ufs-rpmb.c
+++ b/drivers/ufs/core/ufs-rpmb.c
@@ -276,5 +276,15 @@ void ufs_rpmb_remove(struct ufs_hba *hba)
 	dev_info(hba->dev, "All UFS RPMB devices unregistered\n");
 }
 
+int __init ufs_rpmb_bus_init(void)
+{
+	return bus_register(&ufs_rpmb_bus_type);
+}
+
+void ufs_rpmb_bus_exit(void)
+{
+	bus_unregister(&ufs_rpmb_bus_type);
+}
+
 MODULE_LICENSE("GPL v2");
 MODULE_DESCRIPTION("OP-TEE UFS RPMB driver");
diff --git a/drivers/ufs/core/ufshcd-priv.h b/drivers/ufs/core/ufshcd-priv.h
index 99f654b79035..4f2661036d7b 100644
--- a/drivers/ufs/core/ufshcd-priv.h
+++ b/drivers/ufs/core/ufshcd-priv.h
@@ -499,9 +499,18 @@ static inline u32 ufshcd_mcq_get_sq_head_slot(struct ufs_hw_queue *q)
 }
 
 #if IS_ENABLED(CONFIG_RPMB)
+int ufs_rpmb_bus_init(void);
+void ufs_rpmb_bus_exit(void);
 int ufs_rpmb_probe(struct ufs_hba *hba);
 void ufs_rpmb_remove(struct ufs_hba *hba);
 #else
+static inline int ufs_rpmb_bus_init(void)
+{
+	return 0;
+}
+static inline void ufs_rpmb_bus_exit(void)
+{
+}
 static inline int ufs_rpmb_probe(struct ufs_hba *hba)
 {
 	return 0;
diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index c9b2eefbd7b0..4653d497e27b 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -11687,9 +11687,20 @@ static int __init ufshcd_core_init(void)
 
 	ufs_debugfs_init();
 
+	ret = ufs_rpmb_bus_init();
+	if (ret)
+		goto err_debugfs;
+
 	ret = scsi_register_driver(&ufs_dev_wlun_template);
 	if (ret)
-		ufs_debugfs_exit();
+		goto err_rpmb_bus;
+
+	return 0;
+
+err_rpmb_bus:
+	ufs_rpmb_bus_exit();
+err_debugfs:
+	ufs_debugfs_exit();
 	return ret;
 }
 
@@ -11697,6 +11708,7 @@ static void __exit ufshcd_core_exit(void)
 {
 	ufs_debugfs_exit();
 	scsi_unregister_driver(&ufs_dev_wlun_template);
+	ufs_rpmb_bus_exit();
 }
 
 module_init(ufshcd_core_init);

---
base-commit: 793807ca13bf3072fc6d16ce6d90e9ab9beff2a5
change-id: 20261111-ufs-rpmb-bus-c8e4c1c2c49f

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
