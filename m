Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BD41C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:18:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64F0E20754
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:18:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JOq/NkNs";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Il2JGDEK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64F0E20754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zhuI0KKm+DpRkZ545/ua5rs/aQZc/+3Q4ic1WGwJLns=; b=JOq/NkNsf2JNBHbUQqP14YK20
	4+qQSxE787YOG6OXkjDzttNQJxnr83I/q1tL1Fa2NgF5MQNi0v0SI4vDbniQyWoREJdJ9UA0C03eT
	T25Zgy1RFcRTKUMxTYwaF7bcpyWB57D68kz5HLx8rHy0MfNe93fK6SLdDkUiXq1R14VAEzL38GGWp
	6Fyno15RbftJ2sKkL1f32R0QYHjcTXfht/vMlw7Jo0U80vLf+xzLV9HxYqiGRa0Y4G5JmmcjEoD6J
	MyykpkzJ+Jt2Tc970DdTH/LPcpKFVESbk3rqJbEUszmzmFmT9Erzya4eQnDA/Iv5hteGsq/3O1tAx
	RX/qvhCeQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbzg-0000Rl-NS; Wed, 30 Sep 2020 13:18:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbze-0000PN-Cp
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:18:03 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u3so949111pjr.3
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+tUr4DLqJ5Ez/uJit87xDsQ+1XaeUWN+STmRQVQ4B8k=;
 b=Il2JGDEKb/GrOGD77ROyak2ieuV+t5YNuIgx+ObkMWh1NwDBEFLIOwm4+ulApxzk0H
 3KB07/D1l/M/c3EzqZt5G0Y1S4qCbF6r+EIZFU6m0NNHwMfI1OBlkISGCUt0k3CAxDXR
 Pf8n1FP8aA0bFkcHVlr36OE4v4JMPc5gllaEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+tUr4DLqJ5Ez/uJit87xDsQ+1XaeUWN+STmRQVQ4B8k=;
 b=lBT1QYNFxo8bsw5DyYU8t2+KtcGSnF5CvNvb3DgL9XzS7k0RD+7SAJm01uLa7tEdcO
 YGyjlzwepAnlbMvURBybgNCbs1/traVYpKX/MyUrDfURk/y7fI+WD1FnZSVWqA+WG8SR
 2W3ybg6RpPNSqxx/jWlNzYuiQlysfLdVJXy4o6yjXTrwVk5HVAn0PAJ8kUXPT24vo8Ku
 +a7lfP1W9xB9x1/ApNyDVlrU+DB3fVlGAxlMNCF71UmaUWZn/znMqrXea2OcQZp/Ntik
 lWHz3idPYdkxmZqiMFLeZknO8m5SRRV8irpy1oPysUGB1yMTWenp8ZMfA6cdnN9AZnK8
 2YfQ==
X-Gm-Message-State: AOAM532ckxyGgJYWsHHaiE/59xIU/UhxSDHy1y55eIsgXamtSqLki3Xk
 Ip7+vdMHTpSmVQlLTSo/Iasf6A==
X-Google-Smtp-Source: ABdhPJz18KaQgD48FpDsU6U2qtZho6JgdAmM/SYT5xxNfbeIZbsqbJK55JL2JmNiFmTSGcaaO5s1nw==
X-Received: by 2002:a17:902:758f:b029:d2:ac2f:3a79 with SMTP id
 j15-20020a170902758fb02900d2ac2f3a79mr2393072pll.59.1601471880455; 
 Wed, 30 Sep 2020 06:18:00 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.17.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 8/8] doc: rockchip: Document Rockchip miniloader flashing
Date: Wed, 30 Sep 2020 18:46:26 +0530
Message-Id: <20200930131626.265206-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091802_452126_80C53FEA 
X-CRM114-Status: GOOD (  12.18  )
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
Changes for v3, v2:
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
