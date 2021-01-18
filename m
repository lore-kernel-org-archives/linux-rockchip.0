Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2D7C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EE5B22B4E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8EE5B22B4E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4RrRZRYsTBn3HYqTw2tBm6M2PaZBur8m1dJGdnHLxhM=; b=Sq1EwT4BtJncFhpjNuNyZkZ3yb
	JJXBF5UZ2R6OTlamDq4rEDxWHzdSk8JtUuh4CrshVOmBKlf+HSK5CgA7nqfa05lXuCb9O896xPFLQ
	Mzi36TY87sKfDEaRhDwtn/y+t+rLnpZv8cKTMs8/aKasTwlXdOjTuI4PBlJ893tV3OwWomSNWByBz
	p9QsyoE2KG0xLn3ZN80Kxgg/fX9l3qf0zBzyJeIGcouDi2ebfLEWnvcevzZg+QHRA0iYAISRQVEZ1
	SvHHEr1+hXpR3zVJxNfTZvF+lRdxe3um+LVFDQH1V1Ry0YOU8xHBvSFYJ+HixjCXE6WtfNM8/jZ9g
	Z/YMMKug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Wpv-0008Jk-W5; Mon, 18 Jan 2021 15:53:00 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Wpq-0008Gv-Hn; Mon, 18 Jan 2021 15:52:55 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ox12so47151ejb.2;
 Mon, 18 Jan 2021 07:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6NAvJviXVZqdWGL+2+dI4d8031tgmcjGj8ZKOUc0HB8=;
 b=rWYkNV5HGZ5dU9sQCsht4/cxGBzMDcOf1sp4XBycj3BiD6FU3KOV3sbPeEVjD75rWc
 /DNHtNSJB7eII5qvyYyabeXL3FcIz98InMwGyHBs9mhtpspEK//FQ0lEqO3aO3nJ/Awx
 zFcTa97JWMC7MqL18mI6Fuj59PdQAY5au1I4t3qnBnie10AV9iE8fKhEsC6WqY9efPQG
 DWo418IkDLmwUE/QEUuyBelqX2OvOcQfNzPmCIRBIB49BXG2LJ3cqC/a6H45NG91mVCy
 HXLIM9v+1pIoTVc04Q9gwsX8mOAPv60CBw6jyKWg+Wlp4G9ALl7yZgSdtDjAu/yIkm7r
 5Q9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6NAvJviXVZqdWGL+2+dI4d8031tgmcjGj8ZKOUc0HB8=;
 b=QshOOPkwHMSB64eUcmhv6wFH+DGt3KQgsxzsjbnPpmMYDU5S8W1hvtJ6sQXClZ/47e
 7QMbtS6x2lyYCwaeE3Lw2MvCEjcYCkPmDtpmepkdieYj63ejj+l8vzIKHZgbSB/i0qgV
 uD4pbVS3QGPirbPWOHNApSV82eyXw/Ok1SJJjRCq9hWmDY0TlJl9U6ZyJUpFpBYTN4Pc
 TWelxfuSVo4tvKUHZBMIujO8SbiXwa/S8F7WArfJVYUxJbQCpQpU1BN3LKAiKgFwFaMN
 B4t/XUXjNnPNfW/mZu7qwtWYiStvJ7MHwoZg+jJX8F8u0lGQzhcyWRkhag0fFhh9b526
 tvDg==
X-Gm-Message-State: AOAM531pZ2nc47WLQxadPAtJK+TfJgsPYHRELzzGFAtSmuRPYT0KsCnO
 Y++IcrjekaMYWqHLpksRMOc=
X-Google-Smtp-Source: ABdhPJzQXHpE4mBL3eBAs7p3pXkRjMXNWmwTKN+Fsv5dFw3ptmhIIaEeAmwQLKPO45KskZDycYJbJA==
X-Received: by 2002:a17:906:ca08:: with SMTP id
 jt8mr220991ejb.368.1610985171523; 
 Mon, 18 Jan 2021 07:52:51 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f13sm9561694ejf.42.2021.01.18.07.52.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 07:52:50 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc devices
 on rv1108 boards
Date: Mon, 18 Jan 2021 16:52:39 +0100
Message-Id: <20210118155242.7172-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_105254_624585_BDDDBF87 
X-CRM114-Status: GOOD (  12.44  )
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
Pin them to fixed values to ease booting in environments where UUIDs are
not practical. Use newly introduced aliases for mmcblk devices from [1].
The sort order is based on reg address.

[1] https://patchwork.kernel.org/patch/11747669/

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index bec47e0be..a754851f4 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -19,6 +19,9 @@
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		mmc0 = &emmc;
+		mmc1 = &sdio;
+		mmc2 = &sdmmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
