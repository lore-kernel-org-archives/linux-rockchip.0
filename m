Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23A2CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 13:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3zxjCZ7NH6enZpLhuAhniIuyltpVUzutpdwKcpTfRk=; b=tMYSmnhgVr6WXH
	aI3yRd7hHfguCRCpltAmm/+XYCMX3HkPvrBeKXbdXLqUGY6rXrHzv2qVo8TA2a/ki0I8nU9lgioft
	fdwesZKDiUkrtdn3K3QkDJwa5q1KNxrxZUg+MFkGBVazbJwmZ5berY90XJ5v8p88OVyGgfarndK2H
	n0BtjDHoUmLMJ5Jg/p6HcipsQzEFsoTwCyZgT2L7ks0QB7RIwPoFoLi+dl00xlmoA8l6bdWS4XFlm
	vXtosrpKv1Vxff7Dbu+ocHF3B//UI+A+qKkhxNn0++9KqtGzZbdSWzjM5Bm96REtBp+OF6P3MSjTU
	iudXHAZkm0AjZx8TdNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo05S-00000007Xlc-3RHe;
	Mon, 18 Aug 2025 13:39:46 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unvnR-000000070f1-3mi5
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Aug 2025 09:04:54 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-618adbeff22so391381a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755507892; x=1756112692; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDZrxtQNL1cjju+DxpVQbK6Cw/4VhJ9hB52KbgYlXK8=;
        b=VOPHhyy6fiEC5dM2U0In84doDBvEddqFIDoiDZI8zg3UEHe0f7b7WYrL16tSaw4F2p
         0NMFPK7svOf0e7aRhFaBXdOMCSVBMLNN93NN8aZgnYZu+ogs/d3vfRw4YV5/YFV++QDF
         AWLEEQ6KZQUzSvgsIFZkoZa7VwPDVxokvtwaBwLcE2ggMSyy1XqzaS4r3N98Qj7E1Bps
         85Os6I4A3slYqGmhLlWxi5Cra6loLEz7X1lFt3LlsrPiLQlg+kq5nAEg5sRGubwWhogq
         cOa0TxSLwoV3z4LGNEqFzdTZP88IUkjc+qL/6j11NTdKMROQsGxQH/dh/YQ7K4Ox5yTa
         k+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507892; x=1756112692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDZrxtQNL1cjju+DxpVQbK6Cw/4VhJ9hB52KbgYlXK8=;
        b=iF7JnL8HwE0fj0O5kqNNUxgfw2hfByB3rZFdRaa1ppy+xZfymimSL2RK6uCKg62D6j
         cJGCuT+t9d5GG13wqS8YCWxRpLt5wCgRKP5P2SmS3Gx4mO7gqmjmmT/rkp8zd99EkutC
         i1NeNgsPdgDNddhnA6ZX0ot95h+QoGpmEHJE1B18z3QYbYDEBtAXQaILGdrWu9QaU7qi
         RGQSUMiiOvqkMxf3WJ66u3kT9iMkK2KIKHMIiF98iRvvkjbKXu4fgXS3W5RKzFQA9cOs
         WpuDH90t4LVMzGhjM75v38lzs12YI+pHjNKEqHzROu8TLT6uhQm/gSodFhhvKaOXxsaJ
         E8Rg==
X-Forwarded-Encrypted: i=1; AJvYcCVr7MteQrqHEhFUeXd2pkcb5pGBwMJHrfjKCoakZmXG5h/LFFtakTlew/HCTtFGbHCUJKd57kU2guc4XxR+Ng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7esRrkG8r1SoNgHpc5lqoLUqjRjII7WFLeNMqjmVaiDmoR4ro
	vTT61THsaln6u4Z2sy55LZbqbPOBaz26M0ejBakSSM68tPn1evRItaFD7tbphJXQBv0=
X-Gm-Gg: ASbGncvKTt0sz9aN/hyZ25rSVi8TgbcX3bVmJJqX8KkbXmENKt7FjQOKFKCtBWtsnP3
	vkhA1E4Bh1lXWAOUmUDVwvGvjyX/imZ3NjWQxZXjTFF4bi3K6yXwgCbz9PkTlQkYQZ/0QbRmuiz
	jpBIlll4QDqWbFbW9wV3sHznSFFr5kqRM9BZwff1aToUdn4Hz0l2G1LqDh2uV1yohvQDcN3mcOI
	a3n2ay7zVsN8o0FdjFRFFbBO7xCBvEdKWec7/iM8GeXAYtU0Nk1SXCsXdqxr4ogTI4iV1jaaAqW
	AitjCOL8tWiCcs0XUboAyRvh5WXaGQHVGDKvgD+Aqy1D1e7Pf1y93WqcLhAmwveyqUaRPjfvjA5
	Uj5wG/gsHjxfdMqSWG1jZajquL9YeHg+ggQ==
X-Google-Smtp-Source: AGHT+IGq9lztDokuEp0O51njstSDbd3e4FseAM46gupWoCcNAfFZtIUknBul7pcS812ROxIqHMTIfg==
X-Received: by 2002:a17:906:9f8e:b0:ae3:63fd:c3b4 with SMTP id a640c23a62f3a-afcdc1dbdcamr526558166b.5.1755507892088;
        Mon, 18 Aug 2025 02:04:52 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce72cbbsm767622966b.35.2025.08.18.02.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 02:04:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Alex Bee <knaerzche@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable+noautosel@kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix Bluetooth interrupts flag on Neardi LBA3368
Date: Mon, 18 Aug 2025 11:04:47 +0200
Message-ID: <20250818090445.28112-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
References: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1424; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=pwru74nUBrj/6jwTNjLAYELApPWZA0ydTt/S7KryGzI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoouyuJwWXWjg5+9nddxSx+zw45kGmYNImxXL5p
 J1ew0lu3MWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKLsrgAKCRDBN2bmhouD
 10TnEACaEmyQoUlWyEpk/aLUCrVBW+9m7xj5cp+3+QItxmClOSA+H9SVkSbX8zLDVfFtPLcz73q
 DwqHWhEwRIPtnnb9FFQhoUgv8U+Tw9VaBT6W9nDPTDoz/i25OpcPaTO7rC0l5V4d9aCvn8DJWdt
 3x4yTymHn7ecUhHsdyqqa7kcJXk33bSbimkLAyyju2371kQL7PazjayfKZ4D9Wm58wt4Nbt8Pj0
 mYT3bM/Os6gEy8RIgcMKgj/AUeI62mimpDk63gdcTyZvntzmTlJVtDfC+G9Zy7TutOj+uVSHAAj
 wWOfa6eRPxFTWtx/KRVNEceInusTlt8JwLXUCcdxXSQtXApEWc6lBGIG/EELojAODWH7o4c7mYL
 YS7Wz4FhRXxvoEBjNNl4kCYPLsTlgNDaGjfnv+dUzel8/gDcNXXlu8E4jm1Dl8vCI4bZv9ZjCt4
 hFbe3uwnykPX24ZoqRDKl+Do72SQ1Xqt8VKfbm1pcAIpZVp53CKp8gv2C1eX1MgXRoMnqxx+jlg
 4IPTPJc2kun5tDxZRK80u4CJmQ0HtMoA06ewxyMJ+FNTU1fLDEeBzVAeMe97mOap7DeGdbPn/rU
 pQH5d29nYK2bQhpK/ui+nG6FoZL9q7nghi7lc7gRzBZFfi2xf/ELQ08ndvDzr8L+WTYLtHaVqB+ KZvYcCNg7/RJY/w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_020453_947674_29D9FB71 
X-CRM114-Status: GOOD (  14.20  )
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 7b4a8097e58b ("arm64: dts: rockchip: Add Neardi LBA3368 board")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please kindly test... Not cc-ing stable on purpose, because this might
have impact, so needs actual testing.
---
 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
index b99bb0a5f900..b9801a691b48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
@@ -609,7 +609,7 @@ &uart0 {
 
 	bluetooth {
 		compatible = "brcm,bcm4345c5";
-		interrupts-extended = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		interrupts-extended = <&gpio3 RK_PA7 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wakeup";
 		clocks = <&rk808 RK808_CLKOUT1>;
 		clock-names = "lpo";
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
