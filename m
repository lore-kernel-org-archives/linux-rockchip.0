Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41021CD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 10:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWkzmp6EiHEx8eTxB3rAx7CXMzuXWi+7cPQB4IqVM1w=; b=o+NcwPYx3VBV7C
	3mzajx3whs0sU9thfYHUJX9XYAaEKaYEWcgFDo8gIIi9rsPPp/CqGhm1gBjDNTdi+J2J+bsMPdJ16
	o3zBn3JMubCRjyPLpGBV385gGxTsRmHOLwy7PiJKS6eZMyNBP4LmCHqkQGniuS4GYnugR40yRMj5C
	8O3Ei7GffQYtD64xipm4bRTNqBl8a24SH57lovM7k2a4UMeWtAzsaTsmiCN3SBYwNTPLxTcIb5jMM
	hjq+VqCSVZEgLbfbTn9RAmlJ3P6QikHImXdnmFSLzxcxcMLDNLQLLoaBKrhfNg3gbP26spjn+naw7
	JJOUAqMgGCQOZeskw/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPoi-0000000CLUQ-0ykW;
	Sun, 07 Apr 2024 10:32:04 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPoe-0000000CL8X-42VX
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 10:32:02 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4166d58a720so65605e9.3
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 03:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485738; x=1713090538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J2qX1t41u1T9MwLzZAGHfGyEjQdDcaTPM4SrGSAT2KI=;
        b=XQD6E/jAGdPdA3izSI1+4OJX3ryI+pOLX56CBMNnujKa0hrIxruofa4sascmhjB3QV
         R18A9nbQaiKyuV5ljdCEkb9dbzIXqY34O2U+IW/0oqekKabyRNzCn/Y/IzXkGynjgpxp
         xGqNur76zhk+EzaYiXasOUDVi1XY1jXQLjKRKBg7fRUC6/EpIGJPsMDJwszQKIvFEUrw
         +QynjXBBwCjMcKjH2oP+3vTzyFjQxc4W8maGR+Gj/VLNHufNQt46udN7fNewK0z7QwLO
         dLiawebgbPtRwFYhuPRhW/YlLpI9IL19CJ80pToLygjJKgAy5o6eRQ1aM+8gl7I4+MYC
         zf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485738; x=1713090538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2qX1t41u1T9MwLzZAGHfGyEjQdDcaTPM4SrGSAT2KI=;
        b=tuUSP9wKvko45v6w6hqZiE0jQw7G9/GDHLNwfPmTOIZTRMYchiezY20GUhrDJXS1O0
         q7r2gFNaUpBRVtSRQfVCf9w20Vy/C3QS/z71+RSDkdB3C1BiBJM0ql6AxDj+JlJxvuS5
         423genvdrvYfBD1b/u4QAp1l/veOzx14tpBEfCq3WpTtFJ4GxJqt1YcBnf+AYhI30hdA
         bU4/8Dzulw/iIaO9Gs4zhd+p1bnKMdB5qMCSEnbnqo0NEMLGNASJdYepE499VnnIEEII
         tE1WFCAMmWaMPCY1tv7qEXrerXMAc185F4i/Iks/K40Z7QEmjX0OKYW9ukDKcUxVGIng
         Sv7g==
X-Forwarded-Encrypted: i=1; AJvYcCWNWSwj5krRNrV00bU/097gv9ebt6GvQdpUq5Li5rCL17k0mp+q68HZMyKTklkEpLz34xovbn5gxLl3irigbRaCvrL2CEf+xXfinUn0d7NcdYCq
X-Gm-Message-State: AOJu0YxgFccUMvM4Dgol2u1EYdOFy/0GJ+G0mIjQBpC/4GUeFbxFpciv
	8KXKjLOZutYkCDjVZOx+L95LItGEp+o9jFn6hMa2LYy7nzXqF6dtioi2n//EkQI=
X-Google-Smtp-Source: AGHT+IFWfjnLtCEkxl1+BnC59PnN9cnn88flTr/8ui7FMcDA60fJXNXAp4TD+Q2z1JbUH9ZGPtfq9A==
X-Received: by 2002:a05:600c:4eca:b0:412:fa5f:7f85 with SMTP id g10-20020a05600c4eca00b00412fa5f7f85mr4058545wmq.19.1712485738513;
        Sun, 07 Apr 2024 03:28:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:28:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] arm64: dts: rockchip: drop redundant pcie-reset-suspend in Scarlet Dumo
Date: Sun,  7 Apr 2024 12:28:51 +0200
Message-Id: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_033201_175086_8A94A4CD 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

There is no "pcie-reset-suspend" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  Drop the property,
but leave the comment, because it might be useful for someone.

This fixes dtbs_check warning:

  rk3399-gru-scarlet-dumo.dtb: pcie@f8000000: Unevaluated properties are not allowed ('pcie-reset-suspend' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 5846a11f0e84..b9d64048d46c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -689,7 +689,6 @@ &pcie0 {
 	ep-gpios = <&gpio0 3 GPIO_ACTIVE_HIGH>;
 
 	/* PERST# asserted in S3 */
-	pcie-reset-suspend = <1>;
 
 	vpcie3v3-supply = <&wlan_3v3>;
 	vpcie1v8-supply = <&pp1800_pcie>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
