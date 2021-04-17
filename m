Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15823C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8ACE9611AC
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8ACE9611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SyBNXb2r6CSjixmp2q0Vr/A1MIXB4S9n6riuhD6trRM=; b=l5qe2ZY3r5g8Z4wSQttw+7mIOL
	D1VuKxyxC48cr9IJe7Zy16YfKAn6qVxhxZDOMpE4iyzBRez7JVXKEVr4S7nRhATZ8CP1DO5TgI0mI
	JFqvCCjKrjKllWwv1fNiyd5YeSbuxxTGds8HtgczE607eRuqVku8O9sZX/ZKi+whG5L/fLS5zfeVy
	+vUc+kzNizQ0+O2DSWYCFKhFISBk1fI9oQaqTIsZX8jDmsVkG2r8V5vpojKfUEKJFrCgQCfMTuK6R
	359P/U0eIiU2dB/3erdW5Ma7GKOOu9+xd5HrQJZb5OtXJSZC4J7wuY1dVDUY/OOg7rKHMYt0m7Ce5
	jqiqbILA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjCX-0059j2-ME; Sat, 17 Apr 2021 11:33:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9W-0058OU-Sd; Sat, 17 Apr 2021 11:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=; b=dSnFSZ+xPxEYdrBbFOFc9eb3Eu
 lyCPCFQBoVLBb7Lxwzz6LF0zxGZDMnBkIWBCAQEvpus/iJI8vLUf4v5Tgm0h3s+wTpLirhPatCNj3
 7J/pKV7KPzm92jN1U4xCjvBQ9eZrZ0kIaLei0GhF8PEaGPtaQPcY0NLfzPHMLI1CWN7s7Q6M01nR4
 F25NQpQh6/8tB5CT48xZ6WYGNoGRrqEn7NTyE6MpNGKlwyHucEVI8Vl2avxBn/z+NGmX7wRJCFZkF
 ylxJdS0BPdhnJhczlVb88qcbT0RQ0lq0z8GvYV/0Ll0/WsZWfJEDrJXG/sZunF15fszg0NP9vVcFp
 vOwg0Wmw==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9T-00A0E1-Jg; Sat, 17 Apr 2021 11:30:17 +0000
Received: by mail-ej1-x62c.google.com with SMTP id n2so45809085ejy.7;
 Sat, 17 Apr 2021 04:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=;
 b=UxWpkQZTVCLbvHFEZEnU0eLmU9PmJkiTiGud3ua3H5TUUuDboNjUZU1wvVA9Vauvmz
 q8H5nlYTFr61FSWWW+oMxCErulReHvStoHZXm4a9YimMQNaMFV2kHzEj0DTkyPXnkHAM
 aG8ST760j6b7rSWPCEW/NFjHWltTsW3LLfDVhXBU0pDyp5fdovYsvpe8uoOlkuOsKYDn
 5VN4/KcYfAV8GAdB8nbSzQL30JFP4S3XPBZ7opVohHSabPWOGGy2gTETcOBQArrg5Mz4
 HrJhLIF8Ap914URwfnlUwLrPKVbQCNh2ESV5lxZr+9uD7A4u075V+9QNAS281h4I3Zbt
 Qq4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=;
 b=sXjm0NMKRLWZEGgvdnnyWmfbZQwhSE/kaACceE4Rq5NMEMntZYmtXMS9unne/pQch0
 c6W/8Cnbdc7IKpcABvEOMrKXPcPwKAdlqlAWENcOzGeBpqoQ8zdPTOHRsC7djESh31aC
 jEEE4nNi9iQWaXWrO3KmHtDQ3NJPKMbIJOH2Oo2j5DuvRyyKfFfHeZVx3j+wQueJTxkd
 azXWDgw6Upyhm0m0xH4Moy7MXBYY9S6kvT9E3HyiYkSFP9kbzyaNML8nsFqloidxU+Zv
 vqjoCnLEL6uvwyn7hdmBPxf0DQcoVRTC70zv9K5bm7+7WzgTsJIIduRPP0A4ckSTqeBG
 HJCA==
X-Gm-Message-State: AOAM532RP2J/9cJkmSiO2xldHDZvEtMsVT2FTiWnzF93gPCcOBy61cDm
 Y2cLIPRkHiNQy4snCc9jbgk=
X-Google-Smtp-Source: ABdhPJz/BvHl5h8iOnTT71av4QuClNlMfDbXbT/HEfeUKCP98y5JB7MZ5urAlVG9xJOe1kslFYkC9w==
X-Received: by 2002:a17:906:c419:: with SMTP id
 u25mr13021703ejz.332.1618659014468; 
 Sat, 17 Apr 2021 04:30:14 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 10/15] dt-bindings: add power-domain header for RK3568 SoCs
Date: Sat, 17 Apr 2021 13:29:47 +0200
Message-Id: <20210417112952.8516-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043015_664169_0F6B2AAA 
X-CRM114-Status: GOOD (  12.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

According to a description from TRM, add all the power domains

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/power/rk3568-power.h | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3568-power.h

diff --git a/include/dt-bindings/power/rk3568-power.h b/include/dt-bindings/power/rk3568-power.h
new file mode 100644
index 000000000..6cc1af1a9
--- /dev/null
+++ b/include/dt-bindings/power/rk3568-power.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3568_POWER_H__
+#define __DT_BINDINGS_POWER_RK3568_POWER_H__
+
+/* VD_CORE */
+#define RK3568_PD_CPU_0		0
+#define RK3568_PD_CPU_1		1
+#define RK3568_PD_CPU_2		2
+#define RK3568_PD_CPU_3		3
+#define RK3568_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3568_PD_PMU		5
+
+/* VD_NPU */
+#define RK3568_PD_NPU		6
+
+/* VD_GPU */
+#define RK3568_PD_GPU		7
+
+/* VD_LOGIC */
+#define RK3568_PD_VI		8
+#define RK3568_PD_VO		9
+#define RK3568_PD_RGA		10
+#define RK3568_PD_VPU		11
+#define RK3568_PD_CENTER	12
+#define RK3568_PD_RKVDEC	13
+#define RK3568_PD_RKVENC	14
+#define RK3568_PD_PIPE		15
+#define RK3568_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
