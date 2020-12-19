Return-Path: <SRS0=0WH/=FX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0699C4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 21:05:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C5B123A79
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Dec 2020 21:05:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C5B123A79
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SR84M9mNwbRbFLyPqpRE+NYz5/iW2Lp2SmyE2I6eUyg=; b=Pcj7WQlBcmn2fbFcW5hFihuSZp
	yPQwwc5+tyeBDbnzKoV7mk9YS/bUvSMgkEHw6GNDub9P0sEw0MBITdZzcoBehvJlXv9nhhVlD5EAP
	90BCZY5WbfUKEt2iz1nP6QNb1AsXsgfzRyBVUURm8p5Tw9QRUDGCybD9hsW381mGp1eu4PISBjPxx
	dbU+bopTavySAcSj2ynRThhh4a1rlD/UBBPsc1iYTetaVRva5qirICRtjRnZx8K8me+srD4O4/XgK
	lhYgj1ZNwWpusES6/9JhxZIN6lxouG7rKtj+ia+8qQBMpjlOtkOal0ObTYh3pNthd/oWiVBVbVYWb
	PiX0qhSg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqjPd-0002wr-QJ; Sat, 19 Dec 2020 21:05:13 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqjPb-0002wN-Rt; Sat, 19 Dec 2020 21:05:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id c7so5921925edv.6;
 Sat, 19 Dec 2020 13:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yCg0N5XHLdcvyzB8XtbsgLX0uVCGtu8p9OhsrWKEzmI=;
 b=ZOayuf5MpYctakbG05R3dem09hHqfNfXaxDYwUfuhENiSfcdDzV3Q+uRqNh2bfMTQt
 BAQQii6h83kwUyA+i32ljQELwP1RoaAdFBGJs6JGE9cFfbweOPT07zGKGE/Ge57mp6i9
 ocI/L0hJJdnpt1k2a0Q1t4PlMcwZKI2gosI9hSLLwmm/cFaFsoxq/GPG0Qdb6uB0fgBt
 cVfU32+72cdvm5WpU4Bi5B7rPrR1rHlImJUAec4fMexLk1/mjH33cuKU3HRVa0izDac5
 +XsDXAoDot7+qF6OwcvnN1MeOr//aCRFvNRcy5vmin6n0to87FT20uTOt3e28BgDtwDY
 1NZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yCg0N5XHLdcvyzB8XtbsgLX0uVCGtu8p9OhsrWKEzmI=;
 b=LnYpaFhl+iHF0nckdJ61TeNwt5oMrF7Bz+YICCf62lShaW7zLaE6k63F9oUZj7smRw
 3WkkgGoG5yh3+/AjmW4Or9hOn+ynDTnoE+bk3g1gK5xaFTPGw4W7vw0bStgyTA918TQn
 dejPXYflAoH1mhO5SSZP15VJ3p7Khplp4w8qCvLRMfz40pIs//P/OjYXa47kV7jJabfo
 HMqvJko+sj4a0DKuUBeayc8F6SMJjn8yyCyKSzZbgVfTPWWy7DIWww3MjommocxlKiao
 yuN2QMi5t5R2B/+YPCMbSNFuCWyPeMKI+Po3z1XEFkgHbMxv82zgKaArKi6T4NTc/fdA
 ftNg==
X-Gm-Message-State: AOAM532i8KU7StXPdQBvloiet9NeItB7dejufLLmnvriyd8wHsfikI8o
 bPRE44qUjGznk3waI9MBRFcyC1hypRPNKA==
X-Google-Smtp-Source: ABdhPJwUOLxMqZHFnWA+AM/Mc5tNkY09FqSU8RHM9licxpTkUPDZ6d6Rp7YMFP1kyyvbL2MzBmbfzQ==
X-Received: by 2002:a50:d491:: with SMTP id s17mr10004889edi.169.1608411908228; 
 Sat, 19 Dec 2020 13:05:08 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a6sm26960419edv.74.2020.12.19.13.05.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 19 Dec 2020 13:05:07 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: assign a fixed index to mmc devices on
 rk3328 boards
Date: Sat, 19 Dec 2020 22:05:00 +0100
Message-Id: <20201219210500.3855-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201219_160511_965017_C1E432CE 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs
are not practical. Use newly introduced aliases for mmcblk devices from [1].

[1] https://patchwork.kernel.org/patch/11747669/

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 957ebb70b..1ae129793 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -27,6 +27,9 @@
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		mmc0 = &sdmmc;
+		mmc1 = &sdio;
+		mmc2 = &emmc;
 		ethernet0 = &gmac2io;
 		ethernet1 = &gmac2phy;
 	};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
