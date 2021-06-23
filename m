Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 198F4C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 15:02:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DEE6E6115A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 15:02:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DEE6E6115A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtb2CF2tNSTW86BeQ2nuK94UIxQzmMv38Vp8u3s7OAQ=; b=RfYDCTRKdKlIZ/
	Npreo2TwRy6KKO5AUj465hCz36vyDLjgMblLBtC8TZB3qofjfiw21/WORvFNZz8C+6nWBTRtyq5sy
	N0uAWQjqhKFoDZxdHwsosIH099uCRjJacyfN9QIeu+Rty3eofauJyhIun1B2GHB+7x0rH/PTQ3FGB
	gJLCgCY4Hr9UnGdLmj3AUw9OZT4SPNlXv3MGCbZkM9WOZVDedoWfMLcJ7LYmTTHPnXcJLZE8ghXXv
	epkEmOFtwbkc5QLytNTaq81ezbbJees/OeU4WiAwOdkyK5+AWXL5oHvbZlJ3jy/wx4kJZg8RGzFrp
	1orzZcWV6xf/gCJh5Aew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw4Ob-00B5MS-A4; Wed, 23 Jun 2021 15:02:29 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw4OO-00B5JO-Os; Wed, 23 Jun 2021 15:02:18 +0000
Received: by mail-wr1-x432.google.com with SMTP id a11so2986211wrt.13;
 Wed, 23 Jun 2021 08:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S3hVmf9aigJiJe+G0nwlGCjbRNQ3NnCl05yym4RSiNU=;
 b=Dqarz+0+st1+sDQaaJCsLBr7OvLopq+iBh64AufUyJt7seHdV2ZNUi9fl16Tfr/K0N
 LZYg3apWXPI+X6UovFLcvG8OGzAE8AkGRUUkI+pxGLmsmVwdx/D8Q+se4RczqLGVqJsR
 7ndxWq+DJRlQxuuUX5+jaWFUTEErGuUYRQzx80MPBxghSWEro/l+xgaoXF9ZSHXmfyET
 e81YpYYxTTVBMLSyoXJkBYI1yR5na4yadhFwu6hp6daG6Op5BkUm5qMvHGOPDdQ3/Gcw
 mnynGB8ZMqn7Hwhz0iToTtbWOyecQ1LXc3uAZH4wZhc6dzhcYhnutvZZ6E7fJK7Tbz6G
 1org==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S3hVmf9aigJiJe+G0nwlGCjbRNQ3NnCl05yym4RSiNU=;
 b=I9BP5JIhlWjWG16nt5UuyKyHio66Ci0Ra8k7qUOfCWb+2XcjXcgcYiJCoaH9Evir8Z
 6twDGDR69oz2Z988SwFZq6juwWgPsRNIcSv2gLexEkK/yTdSeEsL9eibrVnAihvHpqpL
 tfDq5QEBkJVjd33Nx6QJUthAtz3KSl9yl8nkj0NrOfT7weypxNAuwK9ALOCXsoJ0pJqn
 EnkGvycD+aGvKNAYBI6c+ku/hR/t1ZFOVnmf/EQ4D6BsX6zaE4z4UUIEmeoFSOYKBS4f
 cu/9E9teE9NiwBA1+s4j2NcJWroHh20a2y0wGnEUu1lWC3ZkMwcqLjlzFg2iadPK8+s7
 dbkQ==
X-Gm-Message-State: AOAM5334HooqXSnOZjjuBCreYpyc+jPTVzTTZWTlr5JIuzWvem6xIWrF
 KnTWH2PRwxSHSv8aoa+HKw==
X-Google-Smtp-Source: ABdhPJwR6NAgHi9WhWSGr2ZJf47k7RAykEWoVlHDEM1hQJCl8B5SmvBzxYsqiMWvFytiJYNTsmW3jw==
X-Received: by 2002:a5d:6783:: with SMTP id v3mr494015wru.217.1624460535385;
 Wed, 23 Jun 2021 08:02:15 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id h206sm5954863wmh.33.2021.06.23.08.02.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 08:02:15 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add sdmmc/sdio/emmc reset controls for
 RK3328
Date: Wed, 23 Jun 2021 17:02:08 +0200
Message-Id: <20210623150208.187201-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210623120001.164920-1-knaerzche@gmail.com>
References: <20210623120001.164920-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_080216_847611_6BE8C4D2 
X-CRM114-Status: GOOD (  12.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The DW MCI controller driver will use them to reset the IP block before
initialisation.

Fixes: d717f7352ec6 ("arm64: dts: rockchip: add sdmmc/sdio/emmc nodes for RK3328 SoCs")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index aa11bce576a4..a0321897bd5f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -858,6 +858,8 @@ sdmmc: mmc@ff500000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_MMC0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -870,6 +872,8 @@ sdio: mmc@ff510000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_SDIO>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -882,6 +886,8 @@ emmc: mmc@ff520000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_EMMC>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
