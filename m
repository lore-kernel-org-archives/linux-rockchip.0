Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B618C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02B7D60F02
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:05:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 02B7D60F02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sAjICJolu/6Puh/B8Yi3o05d1gHQceigJ/PChqo7Dk=; b=wyuV80GLuCcO1W
	q0dQtFJmx0Aw9frTS/tM5LEq4H9SorhScX8qCzslIu2H4EO3h89D3iDLmwfKFv73ezRTE1geJhGo3
	Ndf5l8tv9ExfLeOHaI/6k8X8HT09IhnheKZ27xSMUrlCUHBCcWp1Qxh9H93IHw5HtLWrmzwBfUpS0
	snIh79xsEeCZ5UKhUqOmoKQ71yTizjI1G375lY5SP7AHmDqdNhgCdR+86fLL5X7Tbc4UWy16cd02E
	gcTR6Wr/TF9CPuyLeMNYShVOsiGq2F/MQPUcOSunTANd6Qh54RUfIqzh9Kg8awcSZUx9hOnFWhf1x
	z17hYgLLKy1qSExMWX6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nwC-001zlP-AP; Wed, 28 Jul 2021 18:05:48 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrb-001xpw-Hn; Wed, 28 Jul 2021 18:01:07 +0000
Received: by mail-qk1-x730.google.com with SMTP id 190so3060013qkk.12;
 Wed, 28 Jul 2021 11:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r4bT7HeLBcKZhFeUiGhpGlFbEiM6IKHw69zvHFi+0OI=;
 b=k87taw6f0eEdVXbKKkk6UFP9RjT3t9HXI0prijEFlGB8eOl8fnZour12xrVFdzTfYj
 ZWysXL8dSqWJ/R1Jt3kTMcRoi8+s8Xnm+FOd1YjGWVYLaOcgdPUykIptnsTv45HqyZw8
 AUosu/VBPpV+3OagQnkAKmmXYttvAlHA6eVq1y16V3PyJbKMqSWCUa1CufXrh6uZqanC
 ccGS5YoBx8r/9NF0AIpW6gLbPn5tNS5hzvS+jG2V1XpwOo6eMj3KOFys+iV9GWJTJh+8
 gHWkumozvaRbQMT8b3y9Gc8sFx7vzkCyp1zO84VthbB8uvKPT00lk/vOzcwkxBf0wQ7W
 0BGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r4bT7HeLBcKZhFeUiGhpGlFbEiM6IKHw69zvHFi+0OI=;
 b=f9tYUvazH8e8RfnmxvULvDm4kzveekwPiWoMmeoy+CS/5y69GqH7uR43P3Jz0+CYkf
 oPf55bUc3A6Uk/htJj1rKpKl0iIbXfxIkG0w9rY8TQDbWam1V7r6C7GIb6XoGLG1MXqA
 lFfC3vjVXSzA3SXd8xMJlEQ17SoGYW01NjdBLhVDY/FcFFO3SEWS5u/vUGlxoNj4Pb5i
 Eozha9j4M52wHxmNvclDT1X3WGQ0dDE+B/TDfn9hTikfY0FCLBg6WnLWi4QY81jH+7ar
 XkvmJ41a2Vty3v8DftTkmmFr/AdYnf1gs5GfjiU6o3e1Vnio0sXsk83ZVY4EO8worZ90
 UlkA==
X-Gm-Message-State: AOAM531M8TsJiQQpUti0OGlqGWEY/rYe0oOBnqlRH2sT5PD3x7pvpX6q
 LNYpyANwkU6lXd81Dhcckvo=
X-Google-Smtp-Source: ABdhPJxhUi4M6oeb56hQKhC4KGdtinmzDqTAdwG8q8BTHFBHy8Nmr0fLMHKPJSjIi1vEdsEdq11KKw==
X-Received: by 2002:ae9:ed56:: with SMTP id c83mr896641qkg.101.1627495262173; 
 Wed, 28 Jul 2021 11:01:02 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:01:01 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] arm64: dts: rockchip: adjust rk3568 pll clocks
Date: Wed, 28 Jul 2021 14:00:32 -0400
Message-Id: <20210728180034.717953-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110104_697673_9822FA79 
X-CRM114-Status: GOOD (  11.21  )
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

The rk3568 gpll should run at 1200mhz and the ppll should run at 200mhz.
These are set incorrectly by the bootloader, so fix them here.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c74072941da1..66d1919dd7eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -226,6 +226,8 @@ cru: clock-controller@fdd20000 {
 		reg = <0x0 0xfdd20000 0x0 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
+		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
+		assigned-clock-rates = <1200000000>, <200000000>;
 	};
 
 	i2c0: i2c@fdd40000 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
