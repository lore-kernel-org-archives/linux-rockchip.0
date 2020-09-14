Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A76C2BC11
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FF0920756
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="n/sc/ENF";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jxAz9HV8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FF0920756
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imncIYpA194EiR5zUFXB4qnWnta54kMNU8JpWKu7iW4=; b=n/sc/ENFMG7CK44xQ2e2u3YpjV
	9YNpQdxgne2bo2oDL2ETuO1n8t7ABa2Zvq6/3Cpr4a6F3lzqx+A5yzNPsGRYde0bl+XwbeaTjnstC
	dhUAfQ4alTrNLWuuS6HvCMwUU2IFOmGyEBB4No7EyCp9zSyj5LuaxVA3D9T5ANpJyZhJGgR25/LQn
	XSOMneq7DkMnbPQ/7tbv3MrAyKaiNMSfccX4kTikj6Zhb8s/GJCax07X2era2Cq0bcvBdmq2HM8Vf
	C5UPY1ivneRiLIk1Pb1/thSBftDpxVn9iNnLsqMnQnwpuYrxhJTBH+q3TyvDi4kZ9ll2Ob2X5NhsT
	GBDDNkzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXj-0003ue-TG; Mon, 14 Sep 2020 15:37:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXh-0003sA-0Q
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:37:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id l191so79767pgd.5
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HFvK/wQYg6h17KjeQ4QP/IzGqKESkuSFTHfGwGok+0M=;
 b=jxAz9HV8yJc1MlOdZIrYNYph9SL/mo0dDM1vCYN8DRtzenPdDx8Pa52FOga8rh8fBm
 gWl2faKM8wiJZ2Rv911/CLzJCspAlKDzfBf4n8LBl/sxjUdBLXjZPl4TRM3ua8UYklXL
 IAxUtEDxGDUA3AesfQtmlsyck6HjDVaF79lvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HFvK/wQYg6h17KjeQ4QP/IzGqKESkuSFTHfGwGok+0M=;
 b=dWujZPcgFSXYHyKveJUc+DXdCUoYWEwkiImxh/TG/Z5dCCNt8J9P1YCX5I3NZlooWm
 gY8gEAS717ZGFCc6552gYe0dj/IiI3OcYl/5aliQ5UtXfcwlH7XUwJF0ctNzGFvH/AT7
 d6zG8v1PtNitecr7DESpY7Iw6e8wh/YujTt1MNRnbIGg7FUh82w5Yja+jj9JNI4wj9iC
 EgjsW3n4GS/B89W0pNBBa38C8KazZSxloiTE1ugfNUfdOSQWQ9bDIpoKQel8KlfE6GSL
 Ai7So+SCtB2+HuilK0GG/phrDT+2JUQBbcRB3yb3/W9nKScrgMYAuFYCC8/SWQKfhFS+
 qChQ==
X-Gm-Message-State: AOAM531NLMb2zKtuk8MLGDR4woK/nNwQg4l4Sl+vYv4wAZGIveal5Bad
 5ItNPAIRTf6SdfWbir9x7zQwlw==
X-Google-Smtp-Source: ABdhPJzdYnCNyXlT7L5p5yzeTZg29MW+mLrrdTcj7Qn8PdqxEdilUyeeD8gJSgi0NorUVB7r2W37iw==
X-Received: by 2002:a63:2c4:: with SMTP id 187mr6653742pgc.127.1600097838912; 
 Mon, 14 Sep 2020 08:37:18 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:37:18 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 7/7] doc: rockchip: Document Rockchip miniloader flashing
Date: Mon, 14 Sep 2020 21:06:34 +0530
Message-Id: <20200914153634.18121-8-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113721_068976_B188C618 
X-CRM114-Status: GOOD (  13.35  )
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
 linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

This would be useful and recommended boot flow for new boards
which has doesn't have the DDR support yet in mainline.

Sometimes it is very useful for debugging mainline DDR support.

Documen it for px30 boot flow.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- no changes

 doc/board/rockchip/rockchip.rst | 40 ++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 8c92de0c92..ea061ad171 100644
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
+.. Thursday 23 July 2020 04:50:22 PM IST
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
