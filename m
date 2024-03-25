Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73B97C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqNd8joTlfJ8Tapin3piQtPHOimVfuny9g0cq4L3TYE=; b=zGj6Um7YQEvnGR
	0rPAeQh3o8liRW6UfeM/uSP09hwhNYjMA2kIuwiNDo2VE11x+mMGAjkTXwJ3XhIKylIV47M2fjJDL
	Oij/B+R3WjCFkIYV7RpB43gORE5kB9X4ZiX+qBMjrCD6JuPFqyfHFhyvZ9KiMucSeA4fqL9ULzJSv
	QsgJYj041Bds2jN+wYZJ54g3iThxvIPeZWjmqTFoAR8jlnWb/ak/b/YbqtlwiCTLMuxn4Z24l2P9L
	K3GVhsaoy5ZaSrPdaTbxIE+mQpbgf+Wc5hOssWq/hVTWkr4jvSPTgunRW3U2wrQ9xj2vFXYUzNYES
	SNsvbK/qkDuRX6omzbRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooUK-000000019PE-3N2t;
	Mon, 25 Mar 2024 17:52:01 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooU6-000000019JQ-0ioh
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:51:48 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3c36ecdb8cdso2224664b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389101; x=1711993901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4iEjZp14Ze75HGg5CLvY1SvFiZY0bmm5mEpNFtWs9I8=;
        b=U94gasP54gkbF+DjxneL2bkstmbryHJZZB2S58zhrwHSwzLHX25uKzjE9zFpZMWKXw
         t8U20Jd11BXvfMPo2kczWJJpbUIvaNt6yy4OD+eFwWlDiaVPnyf2Vkaz2eqwuEoLRwbY
         2+sX3r2zc1KKniqH3EewrPmHu1JUZzOeXIQV4mktspou2lF0cBtz6pse6nE0uQpoOEtP
         5JNdgdLX9CShQhIPi5sIy1zrH0WwWTu9ZU/OgoyP98u/7L/69fX3wN8q1YSxjyvqXAaH
         h3EWb5X5emevrbyrP15ZWQAT2RUgNTbu5raUF7WDXK40nEGDoXi1q6Ill4RtdY4/zxHw
         C23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389101; x=1711993901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4iEjZp14Ze75HGg5CLvY1SvFiZY0bmm5mEpNFtWs9I8=;
        b=IxpNlHOg4F6o2+NuV8pQUc3UHgjCT7kcDu/FqkDKuCdqAENR0+qyb23P6M5RQXyZCE
         DQznBqoqy0R9+ID66S13Oj4lXurBvOE/SQEGzgiuAwuVsl5aV3G4tFAt5SrnGYW+DZzQ
         Mi2HFnPSs++HBo+86As+mUazhZ+ZtUMaH7xHhgro26vFZ6fmUjUDXGeE5uMjmvDtuQkh
         CYlp7W9shWbN1HRDcSJlaLBelc4QQXcw4bgn2YrJKuDQTkakkRGVEraoo+JP3frx1RK/
         3MHr7hRKxiCqXmc7AxTRVE7Pa/3VHEkGRkhJH+OWwsxYLgXFdxs+u7dJ6FvMYQXyphuX
         Mu6A==
X-Gm-Message-State: AOJu0YzSILDLSi7B80Hhkew47AYM5SwNPZm+vBgD5Cw73I5sMKu3jQW5
	k16nMMg2QA8FH/DQzlaWnL8CepK2FAiwS9b79a8iMYQSPOTBN7B1FiXah2B6
X-Google-Smtp-Source: AGHT+IGe5fnkBgAeGgLCnuEU/YLCbxuD4rjpNPbjtM5QG8hVGZUHf293djgjCEwRKUMtphzAoWlUzg==
X-Received: by 2002:aca:1a17:0:b0:3c3:bb59:f543 with SMTP id a23-20020aca1a17000000b003c3bb59f543mr7898176oia.49.1711389101601;
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
Date: Mon, 25 Mar 2024 12:51:30 -0500
Message-Id: <20240325175133.19393-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105146_833999_9CF02FF3 
X-CRM114-Status: GOOD (  10.18  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the optional node of chasis-type for Powkiddy RK3566 based
devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts     | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index 3ab751a01cb2..bd332714a023 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -10,6 +10,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "handset";
+
 	aliases {
 		mmc1 = &sdmmc0;
 		mmc2 = &sdmmc1;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
index 4786b19fd017..5a648db41f35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
@@ -11,6 +11,7 @@
 
 / {
 	model = "Powkiddy x55";
+	chassis-type = "handset";
 	compatible = "powkiddy,x55", "rockchip,rk3566";
 
 	aliases {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
