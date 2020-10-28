Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 799CDC388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B38E24650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="X876oO7z";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hbLyAVAX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B38E24650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P/2bR514gP3wMqIuRwXcl7+PEKc5UBu8mzLu/HigTQE=; b=X876oO7zZC2BK0T8TT1Pj8NPN
	l7XCLhbJKxEvPx4UlX1ltn1Y9eCJJgu6LowOWx+Eg78Q0eG7t8jv8uFqoOTX9A0p8pPkfMYGrip+w
	UyQqm6SBMhyKcvcGN5fJREhQRgkmw3R+noIpoNQv0BsVXNQZACVKIMBq6UrByEbE3ippOIGASHksP
	vfmU2ZrS0ceQRygMeakXoXG5qHZhf2Uj55PS5TFBkFcuhn9b/xKJCqKEjPKjgkLJaS2jyVnD2tyGH
	rvDKQLrQU9bQ1zG5jQuF4rnZH29Jg0DD0SwWmKxn2Jv+3JX6fXr/B8cuaW+R1F9issVY6D3bk8ddj
	a1Xqw8+Tw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlbC-0002vy-Of; Wed, 28 Oct 2020 13:34:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlbA-0002uE-JF
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id p17so736632pli.13
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Meh7zQ2a1imDEFiBWXxptjzBWdacC0VbNRyMb7TtM/s=;
 b=hbLyAVAXrJT3wnLD2PA/vBmyOt22WhQf+2sGUCoq71sOG6yqr1hAsLmQjJrSXjgrSb
 +kNg59/Mo51YYHWlKcGZ3fa/caPSDyt2lS8+5WhZAxBvE42oFu3lpHv1oJrTTU7JW+JV
 tpeunY50jTUepWNGk3kygAzoAMwVXXVZY7xlw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Meh7zQ2a1imDEFiBWXxptjzBWdacC0VbNRyMb7TtM/s=;
 b=Dtvu+hCfjJQG+y4JLbXHosL0pI/ALNzGqIueOoFDQQrsnor7x96fn+fa1H+u8awiXM
 FmNJJy90Wh1xdZMQvlI4DY0ThOqqilAbIMqMKE6wISBaMGioPLVn/VifuxhJ3oLgBnjw
 xfTJR+n9JQ5bqf9ro0Ccz0GwPQENmXqsiJUnsowBxGKRU+s9M3uy9dkxy4tAXsZVqhqO
 RaksL4w9KVFtJwpedAWBSWVakyk1np/oDSsxu1A6oZawKj+BGDZCtS9sm91t7jCUJ3xi
 qKwUox9qFOv9ECdnk7MW7zSdea6dHSXuR0ImBVe3dx4MwFcHlIQcn+V3xyQfCemlW5gz
 U2hQ==
X-Gm-Message-State: AOAM530Lk0xtwugKYsj26v1g26IERxFlEYXxoOFyaX+8dQj7rppq0zXP
 Pqq8Ol7gGo7Xva406DsRzj1eqg==
X-Google-Smtp-Source: ABdhPJw9ULxNaJiXRN4RIZ8WvJcXZFTEyqV1aU5kvtbvnBWkrg63AZyvXWmSmhGVA9OQMm6z1AG4Yg==
X-Received: by 2002:a17:902:b7c6:b029:d6:336:5373 with SMTP id
 v6-20020a170902b7c6b02900d603365373mr6622943plz.67.1603892082525; 
 Wed, 28 Oct 2020 06:34:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 8/8] doc: rockchip: Document Rockchip miniloader flashing
Date: Wed, 28 Oct 2020 19:03:48 +0530
Message-Id: <20201028133348.241839-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093444_686898_A8742B67 
X-CRM114-Status: GOOD (  12.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This would be useful and recommended boot flow for new boards
which has doesn't have the DDR support yet in mainline.

Sometimes it is very useful for debugging mainline DDR support.

Documen it for px30 boot flow.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- none

 doc/board/rockchip/rockchip.rst | 40 ++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 8c92de0c92..955e6858f2 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -123,6 +123,9 @@ To build rk3399 boards::
 Flashing
 --------
 
+1. Package the image with U-Boot TPL/SPL
+-----------------------------------------
+
 SD Card
 ^^^^^^^
 
@@ -187,6 +190,39 @@ Copy SPI boot images into SD card and boot from SD::
         sf erase 0x60000 +$filesize
         sf write $kernel_addr_r 0x60000 ${filesize}
 
+2. Package the image with Rockchip miniloader
+---------------------------------------------
+
+Image package with Rockchip miniloader requires robin [1].
+
+Create idbloader.img
+
+.. code-block:: none
+
+  cd u-boot
+  ./tools/mkimage -n px30 -T rksd -d rkbin/bin/rk33/px30_ddr_333MHz_v1.15.bin idbloader.img
+  cat rkbin/bin/rk33/px30_miniloader_v1.22.bin >> idbloader.img
+  sudo dd if=idbloader.img of=/dev/sda seek=64
+
+Create trust.img
+
+.. code-block:: none
+
+  cd rkbin
+  ./tools/trust_merger RKTRUST/PX30TRUST.ini
+  sudo dd if=trust.img of=/dev/sda seek=24576
+
+Create uboot.img
+
+.. code-block:: none
+
+  rbink/tools/loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
+  sudo dd if=uboot.img of=/dev/sda seek=16384
+
+Note:
+1. 0x200000 is load address and it's an optional in some platforms.
+2. rkbin binaries are kept on updating, so would recommend to use the latest versions.
+
 TODO
 ----
 
@@ -195,5 +231,7 @@ TODO
 - Document SPI flash boot
 - Add missing SoC's with it boards list
 
+[1] https://github.com/rockchip-linux/rkbin
+
 .. Jagan Teki <jagan@amarulasolutions.com>
-.. Tuesday 02 June 2020 12:18:57 AM IST
+.. Wednesday 28 October 2020 06:47:26 PM IST
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
