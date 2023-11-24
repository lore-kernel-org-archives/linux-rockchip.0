Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF5AC61D97
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Nov 2023 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JbqiRT+Nb8mxWv7V2SkPWavcrVoWiTj/qOB3svWNDFY=; b=aE5Ar2m/DeQcud
	kdmRhFVbZVrYYxQp2oYWiOb5XqQYnlL0V9Q/LnxL86YE9b0/6A5qj/uBQW0REOQCjamXcY+HJ2116
	GYMAfsN1Px/NX5qDwvSe35Tgs2wT12iZJwGQJ0ufQkNC5QeAnRt3L/hYcklU6D+xpcvdCtyBwOXBc
	34rIWQyhyKVEgpqGv3yDwXQpuTm6DKFX+4lBX1ujl7PrUb44R4aRnzHyQbKmgX0XxHtk+PrZE6p0m
	HfKh5onaoevwgBrvbDa7k4m1nrvl+GbEWJxWApUb5Q3V48sIqdQF12iHB96IcitWr8/6kkyhIUngw
	ndWrNAETpU7M66FYgAXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Sph-006jiA-1D;
	Fri, 24 Nov 2023 09:50:45 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Spd-006jfF-2x
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Nov 2023 09:50:43 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54afdbdb7d2so368728a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Nov 2023 01:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819440; x=1701424240; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ipY3/C11wlWpNcl3AyIHNU7jnDg0Af5QAKeD+Eh79Rg=;
        b=tp6dDUh6ytZBMxCgKDYcaHCmcObnuaRK0DEjMFU2OywDFPH3TrqJAVsEo54qq670Hr
         pU3Eu/AFHI8IyRNx+gwB1qw+MpLqbi8Wb0XgAmILP3nYAqj0I7JvEQ6fSnenLomNK+An
         l+jacAHz9KeRlOnZEe1Qakjp4xk0iNAg9dklHrSnFVnjZJs+0nzLhUVMO/HEzlsWM5SB
         X0AC3s9FHM7FpaDbP8O4lf5FH0bkB25Gjei9Oqh4iC4NsQMKp7HoUOmJBT/anoWNr+h+
         xdjn/yoiqtXrHEbFl9CZobd2G5QwKd1t9sxXAUuD0K8FLc3HhKqnvIrdoWRCykcLkC++
         H63w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819440; x=1701424240;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ipY3/C11wlWpNcl3AyIHNU7jnDg0Af5QAKeD+Eh79Rg=;
        b=pV/9YTjpcqZEPSGXhF9Di297RmFcEN3+2tpZu9wzMd0pNuipojY1Fgzu2Z3IUwLmwt
         AQS9l1ZRNgYt91zoLNh4ScjVi4aFKZryH94JkG2JtYI3NBBjKVUmMGBq7zfeU1F643is
         uoW3zA7/a3VpU9kPTzhBhlTHo76+CW1+cCbBP3d4Bc6V5SHY6bnYKzmvzwbtVe9tfx7m
         WJf/iJyIB2/ecCsaufWfva6YZDXXkweqkzKUmokPWGVQAWHx70e4W6MM1NhLrwe2/k63
         Gs2PLDCkVEIyPq0kipVCc4TaA6fSgnFhyyom5Ig2lsZyuxvHAoyaq2XXDNthQgYkUHIo
         tyNA==
X-Gm-Message-State: AOJu0Yx9sMuhEM4x360IHWrN6vVmf7i5tsg+SYEudZg+Pw4k+kCraADW
	jjTOkTS58wbfGv5PO2VQ63sB8A==
X-Google-Smtp-Source: AGHT+IEmARKMJnUzbOvvqp8KC78B3+K9XcNG6iIKeB9W5HTjM7QawfwIsZAAWWaQUzkVTIwm99h65Q==
X-Received: by 2002:a50:9f87:0:b0:543:75cb:2149 with SMTP id c7-20020a509f87000000b0054375cb2149mr1693627edf.38.1700819440405;
        Fri, 24 Nov 2023 01:50:40 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id g20-20020a50ee14000000b00548af940701sm1612755eds.53.2023.11.24.01.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:50:30 +0100
Message-Id: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_015041_953698_3B577A19 
X-CRM114-Status: GOOD (  10.38  )
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

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index ffc16d6b97e1..a721744cbfd1 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -215,9 +215,9 @@ power-domain@RK3228_PD_VIO {
 
 			power-domain@RK3228_PD_VOP {
 				reg = <RK3228_PD_VOP>;
-				clocks =<&cru ACLK_VOP>,
-					<&cru DCLK_VOP>,
-					<&cru HCLK_VOP>;
+				clocks = <&cru ACLK_VOP>,
+					 <&cru DCLK_VOP>,
+					 <&cru HCLK_VOP>;
 				pm_qos = <&qos_vop>;
 				#power-domain-cells = <0>;
 			};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
