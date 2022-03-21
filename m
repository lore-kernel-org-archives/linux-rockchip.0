Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA6BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwKCKXLGJ3v+2itIVSlaKGexmssh8bfN/DUdAKTxtoY=; b=YMAuAYJyu6CIgR
	Sy4jfAgHpceGAqd0eh3RjisVtjHxYYWXuC/lpkob9TtMc/ubSFx08OG1gtLFlHietG56Or37jncC3
	TLlic1Z1ITfDAwBrVYhSSUX17JQREpnqnFFPfcVvkk7F6A5wPP1s3qMeb9FbYRIXbsuClbAwaS8m2
	U55lNY9ekBEHm6jF+9WjUvS2K10G+tb7Wrdbiltbb+7CnhNT0vzTuwE1hKy5UomPpapTi8H0UZPJb
	na7a9OA2uxcYiWahvmWZ+34ntDqbhRnuRi8Faxfk+sOrm5mJrUB7dvYkRoePolwpQdofGUyrhsjL7
	NmjjY31WQTAeFcJJH30A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOWW-0090mu-RV; Mon, 21 Mar 2022 20:21:04 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJy-008tbX-C9
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:14 +0000
Received: by mail-wr1-x430.google.com with SMTP id u16so21214860wru.4
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=glbkwheqgo+YAwXKKccRcXjFIyD1/ids9/fwj2aHXuM=;
 b=IIFdmZFGMTy1XTsiFJ2yuqXCl4xUkZYDLDbpk+6xncAzjuKnt6aj29k14JEwZtQxcT
 q9iZem4IhopHHo2Pi25oKJ5SGuvfeQBLl/gneyZ22nthVW0TOqxNEFibVrf2TWeBOigu
 6NicvGvRoHntUToJ0n0snGfypZyo2f/OdxCLh6rBUHcwpIJRkXC1GGyq//bX6MUlHq9J
 Mbrv+brDGYH7J0c+BwIzgFLX26OOLAgUoTbAOKXNLUEuEosOi0lFGvrVmNvNb6EhZRNE
 IwuXCSte1ffXtUE4wxgTyKSlbwxn2ow0fCODAo0hi5WGjmDCLMR18NcyYERWnR6MfKlQ
 /Jiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=glbkwheqgo+YAwXKKccRcXjFIyD1/ids9/fwj2aHXuM=;
 b=0m+20aqhhqQ2OhwNu1Ba8jdlUvBRAK6CI0erugrheCjXgkcXoChT7ky6CjIrCnsf4q
 MGTNNw52oDTEkklDE0jc7ooUYBhhnTh1voNDf+HBRvL/Ljg72/IMtZ3VLYmcHMuKfnGD
 B4pj/eX1e7UUzx+sAS6WNWaarhfus1NxlvwDppkEuubIzqjuP1+29Y0s2tSSZf+2a30I
 ZOJu+cHT50BcXU0sNSvjP6qIAmLZBXda6wbYjGHxNpLLHnRLCN51XGjHSxw7OclT9xEg
 9n2aSnUcjptDDdCCp1eog0Lg1m1xWakG0Z1/qGvjkihZPZ08oJBZBO7xdNelM6DnOkDl
 b8yQ==
X-Gm-Message-State: AOAM532N3d66vVirindOwiDRPMAc1wTYkW0DRUbWA2AoghbDD5WyVfGm
 SHRnkjrUTr5JeXOyvgjgr2xmaA==
X-Google-Smtp-Source: ABdhPJz7fCs1t2aqp8p1p2t3TcSgtujQDHRA0ZZy7GQGPnJaxekip2TbpedVAZt8pxnpLiZRg9JGPg==
X-Received: by 2002:a5d:6483:0:b0:203:801e:ad1b with SMTP id
 o3-20020a5d6483000000b00203801ead1bmr19292641wri.30.1647893285166; 
 Mon, 21 Mar 2022 13:08:05 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:04 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 20/26] ARM: dts: rk3288: crypto does not need reset-names
 anymore
Date: Mon, 21 Mar 2022 20:07:33 +0000
Message-Id: <20220321200739.3572792-21-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130806_463130_D58FBD15 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

reset-names are not necessary anymore for the crypto node.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 26b9bbe310af..50f0890b3f6e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -979,7 +979,6 @@ crypto: crypto@ff8a0000 {
 			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
 		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
 		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
 	};
 
 	iep_mmu: iommu@ff900800 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
