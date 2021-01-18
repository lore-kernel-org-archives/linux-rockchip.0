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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E364C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 652D122C7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 15:53:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 652D122C7E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KhH1qnaHxuiaKfGiEFoA4xma93e2b2p2LKUra3xdX6M=; b=1XdyzxLNkQvUZmo1QPsxQjjcPU
	e695+7en3JXIB4gEm9qpUcvv/egXA9ehy7tvd2QOLF560/HGbzOC01p+a7o/S3yWAKc3rerelEdxJ
	LpVT0inR/WFai/QqosT2ld3nSZvUcjwEnxUXota65MJMKeuNxMFaO6GJqU0I0ECyf8SqRHprssCSH
	sowZWmpad93J8NWnHX+BhkzGNoKc1WXKFDDjHceyLwW9JTcBTlr3E0bbk/aiTdgOW6y3wbjQmjO11
	7vCOVatbQjN4cXl1hHSSQp8iMc7c9koF7kuH2eovIOVIi/t0FRM6jAOh9CpyvieL1P/PVBzvUT4MO
	hPzkgVbg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1WqP-0008Sp-GB; Mon, 18 Jan 2021 15:53:29 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Wpx-0008Jo-Az; Mon, 18 Jan 2021 15:53:03 +0000
Received: by mail-ej1-x629.google.com with SMTP id g3so4957291ejb.6;
 Mon, 18 Jan 2021 07:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kpb7JcnZpNDj5y9zvo53/o01BgnayqHJFM7Z2whUwSY=;
 b=ho3KVEAACbgNJgVVB0IakErAZc0DXTvi79Cxq2MPxl8e0A0VkVPQJPDxNYVOTbl/1e
 +gqbzCh0oFFxGp/ImKv69R+L74HvLkzx5mHurEf4W/JshBdcyJZ2vIsLYVyXwyA2vPoX
 Bra3qOtsJEwLpy7j+1ccVwElfYB362xbhINdCJ2wb/A9HB21MLOH70rOWwq4cTVVECaK
 fjkAGe3Rw4mWcavDcArReCA8agJ7pvy62MAkE8yjxlfsoY1anSw32Beq5bqpGVpGQYVT
 puJfp6UG2JyctATvP8y7ij1InfqMUWbFws84BDWYJ3wxAm9JM7sed6KB0rpexXe53zFi
 qmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kpb7JcnZpNDj5y9zvo53/o01BgnayqHJFM7Z2whUwSY=;
 b=Ffkag2PNXCO7LpivT2DV5BxpKVB1kMTeRG3zA7qKyVP7QsFhQesZQxqJ2jHuf72NfM
 qTX/f6U1fiTDA4LWjtPpg7fEp9UDjpjEafvXoODU2QImXGFj/uYQdDycVlwPaxkQkmUE
 mv+dQk05cQHmrOyhYAPX00r66ou44jqPDVVdacf5/RdHd3wCWtdfP6jwXyw3ZlXZ7dsF
 n9/22vpQnickpJKf+NB1QzTCNBN00S9gT5BnifC7rkSznqb0Ih42TNa1ACARWbBsZl6y
 0XmAabwwWJ4RveLwTu29xWLM/ceZ+QCZDiDrkOLvU8H8NZpjqOK/42Y3ouBfS4kxKR94
 r/xA==
X-Gm-Message-State: AOAM533QLmkxZkyh2hygZ9R9jCOXMATIMJUKNMboUWJ2T3nVvJzHoPrp
 FCtL5L4E3eSGMpFEprJhTmc=
X-Google-Smtp-Source: ABdhPJwG5lsKwya6yX/0XdsfQ+c8vOnv1SnLgugw8ymqhik/gq9wQJUTuib7KzpGEkYuGoWxU47ykA==
X-Received: by 2002:a17:906:4003:: with SMTP id v3mr252682ejj.82.1610985179834; 
 Mon, 18 Jan 2021 07:52:59 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f13sm9561694ejf.42.2021.01.18.07.52.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 07:52:57 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 5/5] arm64: dts: rockchip: assign a fixed index to mmc devices
 on rk3368 boards
Date: Mon, 18 Jan 2021 16:52:42 +0100
Message-Id: <20210118155242.7172-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_105301_436939_65500A3A 
X-CRM114-Status: GOOD (  12.42  )
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
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index cd8274a35..b00ed0e74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -25,6 +25,9 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		mmc0 = &sdmmc;
+		mmc1 = &sdio0;
+		mmc2 = &emmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
