Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87460C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWnQqN6Iov95fBSGVNxoGTvK5O//ek+4k2s9CNqfS1w=; b=i4d6y4VVOuxBo5
	vSnx8fnuiyKeXzTEQtFJ5zkxJlfnBOwmDlzMkUzfM/AQMi/PbjTm9YzqKTS8y60FZDRbvA+cjBJuc
	gn2pNA2JDLCFrwEsy8aVSuiE5gVFj4qwOo64s3XQLqLvIjAwxPXiRDXvzhxhIiROamUSYthwMHp/q
	vjoXfSouCToYIGB2gB9EpPHRVHypuoclnKiww74CZzIDyhvH078Rj1MC/syvYbgj8V+7cfxIwMAl/
	7mD8DDbCwR3LnhwN8X2AK9PELgw2wu6xkrYb4nDwfVI2qHLV8lElW1nQPUijy7qrzWBliTXj37faF
	/5SICBPsgJR6f+RnQNRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVZ-00000009MjX-307A;
	Fri, 21 Jun 2024 13:40:53 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVI-00000009MZf-3ViF;
	Fri, 21 Jun 2024 13:40:39 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-57d05e0017aso2522261a12.1;
        Fri, 21 Jun 2024 06:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718977235; x=1719582035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=Pw0hsNXYg9IvUAi4Hk9VOxkafhGCtrNcgbTPX7nPsb2Ez5/FKqLLgEYOMKFRIdt2xd
         sRMzlxExuz5y8V+DEtASsrIm2iU2bopDRbOXxtPn/wnanaBuLxyx2Dz2z3hSfjt7hRKq
         cdrae/cr7pHlY4SYSbpYcZuWa+rKlb0XhGzHzrYFKJKZBxDM37MMY11amzZV0N6VuO/m
         RFzwNl3/kW5cfJv17OQJFFRwyeglgIwgcS0nyb/wa8pQ4QzPeiCpkZGbmkVwmyIqKHdk
         0GqRdZakMncT9CWfluXnMk4XOkvnQu+w+9/E5LuS6mQvQVFsyVbr+F5cePaVQRY/eG5E
         meuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718977235; x=1719582035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eFkUozk7tb7flvFcyJ5JsIPbVaD8NWPVa3/c5jb4Wl0=;
        b=HCf15LKWEykakLpQqXgN3jTqkThDNe9kkdgjyuoAk5x2RT9SE5QUC2+VzbBDHcwc7y
         Oqt89AEPZqu1VN6vHdViYQxUsYnn4hB8xGlUa1gtPx+v1PuBlr253IjXzXAXIfGgTjy4
         QqbQroxbpqk8fV7dQywk+uF8H4ColzlhC0t9AE4xmPJdETEnRI8YDTP3pmdKBWY0fJ8o
         xQYdfSOu8lFD6tmKTdoroxKIVoreajxFRDPFoqWOAqHFVH8x3rxhwMPY4hoBoUhhQHg7
         6y0PdluogvHyv6XIpGObGHsY1ny7ULeHX5Uk3Ezk62yNRWHIyKyj0UrY2+LTtGkGCbOM
         +AMw==
X-Forwarded-Encrypted: i=1; AJvYcCU2cOUWIPxhutThlYvieB3gAai/DvHOot9v9zrmtj7Gi+XIZ9qkg6gOq1jDBau1C1T3xTuUua6/aWbrqVs2utfDyZ8CLAOezx2Kpk5uKlejB1vg3ryNrgLC4+u9By39d8whE9lgsnTeJG2GdsZ8aYiAhG+tu7L2pZk=
X-Gm-Message-State: AOJu0YyBQl+znJJ21k67oZLQz09+sdF/Bdv9JiQ9rsdLkciflhdrgvgG
	09TEv67bcaoCKJ9FBiTRxN0MXQN9bZNTn2A5KB7SDhb+fpw7ZbGkUcYq
X-Google-Smtp-Source: AGHT+IH+aNN8muxQBOlF2geszNuOMMwlp1muSzceOddFFHXJA2gZbdkBNxw9WjwtratXSkeYf0JVZg==
X-Received: by 2002:a05:6402:14cf:b0:57c:d4e9:4a03 with SMTP id 4fb4d7f45d1cf-57d07edd5f8mr4634436a12.41.1718977234727;
        Fri, 21 Jun 2024 06:40:34 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1b6a:5399:9a4f:7217])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d30562cb6sm962059a12.83.2024.06.21.06.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 06:40:34 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add sound-dai-cells for RK3368
Date: Fri, 21 Jun 2024 15:40:29 +0200
Message-ID: <20240621134030.243646-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240621134030.243646-1-knaerzche@gmail.com>
References: <20240621134030.243646-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_064036_907897_42F36A7C 
X-CRM114-Status: GOOD (  10.71  )
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

Add the missing #sound-dai-cells for RK3368's I2S and S/PDIF controllers.

Fixes: f7d89dfe1e31 ("arm64: dts: rockchip: add i2s nodes support for RK3368 SoCs")
Fixes: 0328d68ea76d ("arm64: dts: rockchip: add rk3368 spdif node")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 734f87db4d11..73618df7a889 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -793,6 +793,7 @@ spdif: spdif@ff880000 {
 		dma-names = "tx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spdif_tx>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -804,6 +805,7 @@ i2s_2ch: i2s-2ch@ff890000 {
 		clocks = <&cru SCLK_I2S_2CH>, <&cru HCLK_I2S_2CH>;
 		dmas = <&dmac_bus 6>, <&dmac_bus 7>;
 		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -817,6 +819,7 @@ i2s_8ch: i2s-8ch@ff898000 {
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s_8ch_bus>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
