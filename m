Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B8BECD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 11:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G+yzEXJZVeh+LwAJVuXvgtl5v3HZm7uJunAJccOW3I=; b=Ajr2pyR0VgqwcP
	dwYMmPoS1NiPQbacb1kuKEg7II4M9S+DY+0WTtqo7X42Zs2VuLhkHgcClUIvPgd3OvSa7tyfOd/zn
	pQgltQatTqRanUgVUTTQGR/EYy8Putw1xLoMkeNvdp9ebV0dfQ3ASxxxKvMlla02XQoPyP8SpLYmd
	6PU0ygiDpZpDetLNK5UwyonGa7FHjbk1F4NTfHxtc7Ff4Nb9oSozHA6srzKLKNy0oK9BL3pap2qKa
	dnGHmE46twKFE00RA/4pH7me35WCZX2tCImkakoZJwlYJld4dSJNS47YKDakdZEr9DRChjOw3ZNVC
	tH/n+5soS6FameZOlD3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtQj9-0000000CRB6-3tzd;
	Sun, 07 Apr 2024 11:30:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPlv-0000000CL9r-1ArQ
	for linux-rockchip@bombadil.infradead.org;
	Sun, 07 Apr 2024 10:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=w85wUQFFRwhr768wNwa60mAcNSboWTs5qbhFvFElJwo=; b=U8a9PS4a0cB0phMUDPkWa1rN7r
	GbSopoELMmkFEDSP4zggtNFe0Q56eGHYFjAq15WcDqtdfGJ9NMAVDJALiTFuaWb9MIuKR8/IqPoaJ
	iOYuOqJXJ2bDyfXKM0zUfbNcRqNWSuSQvPnrNE2O6xyomFKqoTUKyET8M8JrCrb6U8pEx7xyK6WJL
	zERR56DxpGJqkPbuDCv9L1SuuXXzNCC/xAay24CfeLo19qAgjxPtSZN7klHSBHKnPFqfpBujcaEZU
	/Ar+0AP/Z/HGOPssUoPnoxJmGGAFNec2t4/yw7vSNe2w3M9LSTz+Hmf4nbIZV/U+UdbWXxwyapOAf
	2YuKTLZw==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPlp-00000006cVC-23zU
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Apr 2024 10:29:09 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4156c4fe401so22789315e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Apr 2024 03:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485742; x=1713090542; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w85wUQFFRwhr768wNwa60mAcNSboWTs5qbhFvFElJwo=;
        b=dFuCg5WKcamEADpAnpnEXGeXF9YPBp+AFoyiEEpydHVKmo+ZhMPF33BNfaWIb/yumG
         D5eJrzbw3MGUrTCKpuJXtj1+D+V5hUFIUlOD4aRfr66jwTzliR1OBwz69jhgAkPwDJQ2
         dulWzmFm0hA+dsWc1xwfHRsfNQ2MI6VsHn6lK0Z5zoBezJIuqeNz6B418yb5OqSmxS6o
         vgAlFEZUld0Gvye3jXTXsgG77jCYAvgdJFJM2QcFhG+JITjOZTQmJ+sWYfIEXJ9JrZEA
         JZrzn8cYSIBjxMRq0yhVfTl3j+fFBYlxBsfrriUKWqaK3xEthjmF4PwcpNhM2j/tW4yP
         UxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485742; x=1713090542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w85wUQFFRwhr768wNwa60mAcNSboWTs5qbhFvFElJwo=;
        b=YSDcp/PbadPvVvrs17GzXZAJteCfeQqCe0P7UIvpflIJ6KM484N6WiPzBdAny3N+Ic
         VUp6m4WqPaYlBJEySSPiGc3HuWZH4zTdeb8KhbEx7KHflyTcSsY84P+5/WpbDLc9+B/x
         40+gumxVFWIa9UI6S1Y6K5GC2BGD6I1gu1pt7rX1/GKEd3HsG7crDO6CRnlxCBTFkhG6
         /2qVf+pqT9myiKKSH72TLLruhOieTChcsovhrwz68puwiru0v6dYo4mLRIc/O55pEPu8
         SddMRiaOK2Bda/LxAODtQPL1sNiHoYYODjycEevsCpyI1mYbQ+wf3de2rzfgrZp8w5wp
         9rhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiXKE+roVUHkYUopqrdBxqQ+Ge+ZC9wGZLLrMt3w7yL/CG+Y1BpiJ063YQe2ktM31K0w1VbvQwWcPr9wsPakLoPikYzRdQld7FHNKIzux24afJ
X-Gm-Message-State: AOJu0YxTuEz+hIYK7OlrOH4Y/5isUm7Vxgcy7bR6ytbScPUIZi/0tfZm
	t7Os7rB3NmIXlmMiY5MAyyWA/YdMUKpHnC2Gk1+kN1Qo1SsixJsn6I+gDDMIG7s=
X-Google-Smtp-Source: AGHT+IEQe5/Bsm/TQKB4qX1qxV3uy3cg/WeLuTUZ62g74IaNk/xxpRT2tJ2alsoOZP+5w8I13D0dUA==
X-Received: by 2002:a05:600c:35c3:b0:415:540e:760d with SMTP id r3-20020a05600c35c300b00415540e760dmr4728605wmq.5.1712485742523;
        Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
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
Subject: [PATCH 4/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 2
Date: Sun,  7 Apr 2024 12:28:54 +0200
Message-Id: <20240407102854.38672-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_112907_910055_538ABDF6 
X-CRM114-Status: GOOD (  10.97  )
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

There is no "disable-gpios" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This property looks
like some real hardware, just described wrongly.  Rockchip PCIe
controller (DesignWare based) does not define any other GPIO-s property,
except reset-gpios which is already there, so not sure what would be the
real property for this GPIO.

This fixes dtbs_check warning:

  rk3568-lubancat-2.dtb: pcie@fe260000: Unevaluated properties are not allowed ('disable-gpios' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
index a8a4cc190eb3..a3112d5df200 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
@@ -523,7 +523,6 @@ &pcie3x2 {
 
 &pcie2x1 {
 	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
-	disable-gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_mini_pcie>;
 	status = "okay";
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
