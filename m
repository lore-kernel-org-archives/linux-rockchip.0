Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2BCCDD0DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaLwKKdLp3lQbxETeWkdPZFSBj6todIBOwAGg/1wvaU=; b=DbCj8XECcCcHDS
	goGwAZ8coVLzVLEN64TGPO6qU66mL2VQslz6gqLal7tyYYFilXaWSrEhynR1YCQRav9oaKvfe6UCw
	fMzU8PFz7OfBS5/9VzYCCN1cCdRsqu4F+OnaOddR75bzIdEEEgbJd+6dF5V6vKMBEAV2Ersga7Vc8
	sYNAuHLrMsthSBtisKrlJp99JHYFxEkwpXa9WcyF8KgZCczA/wnurIh2V4nG4DQKkyjYSWQG6bL55
	EvPZUhw1smwF1esPizm+4FIZFixPjcLXYud+42KzyxbEGmeqmUuzbUUHqAySb8nAT7bZu9Hb3cjhF
	zNjWTCzdtlgXx2+QeDQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Khc-0000000By8V-2uHx;
	Tue, 22 Oct 2024 19:38:00 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kfi-0000000BxVl-0XLo;
	Tue, 22 Oct 2024 19:36:03 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-20cceb8d8b4so1158155ad.1;
        Tue, 22 Oct 2024 12:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625761; x=1730230561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cGUU/iG7YJDkLyArhva5LWM7ySXTw/bZxI0PEkU3+xc=;
        b=jMFvGaKT6O18UwKUVhc/f8mmL9emcBxASAn7vd9bXD/cMVFGpUjfV1MI6MPQUpOnFR
         vHHGQUDmk0HZDhdANDO+sABy+l73h84KdiaLilk/u5yG/L89nyoiaRRrTSZdDaSU+RN/
         FdwSNwq1XJmEEtOPGfmxOUGAjyMTwmYf+GIeHGYuJzNn7sdPlHQuIX40LD/bgRNS5nL/
         zfKBn6bc3kvYQhojRx/WC/+DVY+yBtrtXhrcmYsd4Ysn6lBvB7QQzXA833JehmpllC34
         bD5dCGBie2PQthA8fBMCxj86sqHbkwFgHowRVry7F3m25oZj7wj1T4u6D6qMJl+AGRC+
         Q7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625761; x=1730230561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGUU/iG7YJDkLyArhva5LWM7ySXTw/bZxI0PEkU3+xc=;
        b=ET2eNh9dMZq56sQlFyBUXte18zWTV22SXyifGPNzn82+YgN2iSetN/KSks+HrtXORm
         GDyPH/SLWcBtZReYwsFja8JWI7OhGc2UoKSUFHcxekOBvZKwUkYudAkSBmiNAr3OBiYX
         LWA8+YbMJg92gXtavNUqFQd5MQ1dJIEoDdnU1r9BSRz5A5a2ZKPn92D9JC+aK4oEpGT6
         zcDR2WUj7WDa59Z03fQcw+Lh3bUBIK/LnBV3rFwHBqRAVm/EB/b63imIvvXtGNce2n1t
         kvKb0zxuM+mjoH8DT5SXxktpp1TcLTDFcmxl+ul0mu9zH/S2SL3OVX6YxYwFEAtrZNxB
         4LNg==
X-Forwarded-Encrypted: i=1; AJvYcCVnxCq4mB/zRlEZDocyoOrxXfNcVvL1184/JWyuOJmCvXOGWcE4ZcTheDb/3c6xaVsEf3z67+8qQkI+Htnasmk=@lists.infradead.org, AJvYcCWihzXQS1NMMExTM0s2gMfckDHPjGNxvAKpFQcwxjiSh9ztkCotLF1qKqwybumQwjJ7D4gTJfS0N/fT1Ng5gKS5@lists.infradead.org
X-Gm-Message-State: AOJu0YyS8RSI5njqJ5t0uRQNuqg2o0pNSQGAbdfe6Tc6IK/J107pqwFx
	VfjeFAcr5ir2DWF26TEH/0CiFrbOViK1vJYTEAxfksato3NS6C5e
X-Google-Smtp-Source: AGHT+IF0hH1aKXgSZGmueQFJTPu4by03l1jAsjzPCoRjd1QS9+mDIqVHJuSSKO/3/auin2gHgPWK3w==
X-Received: by 2002:a17:903:1c4:b0:20c:f6c5:7f6c with SMTP id d9443c01a7336-20e9701dd7fmr50654715ad.16.1729625760598;
        Tue, 22 Oct 2024 12:36:00 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:36:00 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: rockchip: fix model name for FriendlyElec NanoPi R3S
Date: Wed, 23 Oct 2024 03:35:26 +0800
Message-ID: <20241022193537.1117919-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022193537.1117919-1-cnsztl@gmail.com>
References: <20241022193537.1117919-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123602_190177_38834846 
X-CRM114-Status: GOOD (  11.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Use the marketing name for model name, this matches the dt-binding.
Also update the website url in copyright.

Fixes: 50decd493c83 ("arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
index a7a55d68dbb6..6bc17f755b79 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -3,7 +3,7 @@
  * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
  *
  * Copyright (c) 2024 FriendlyElec Computer Tech. Co., Ltd.
- * (http://www.friendlyarm.com)
+ * (http://www.friendlyelec.com)
  *
  * Copyright (c) 2024 Tianling Shen <cnsztl@gmail.com>
  */
@@ -17,7 +17,7 @@
 #include "rk3566.dtsi"
 
 / {
-	model = "FriendlyARM NanoPi R3S";
+	model = "FriendlyElec NanoPi R3S";
 	compatible = "friendlyarm,nanopi-r3s", "rockchip,rk3566";
 
 	aliases {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
