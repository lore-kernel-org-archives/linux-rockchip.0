Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00206CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 15:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsRF2zJH1vPF6V9EUsOb3ZjTf0k5jsNMo0AkNAyxb4g=; b=W/z67BC7gUL64m
	F58pfQ+qAt58S3Pn/hRiPqiU83aPGFqArzeJseGC4PUSQ2Z5bY5HrPWuQoNIw2C6ETa0v8zZVrXT6
	2bZDnNWP6RtjsTw1tw1ynYu74TItrLR25BD1Yw4ld0nk5HmiOkocRGlzWB5yDTTlmAccBqNZv0cz0
	ryJ0Sp37j7iNj2ZQc3mwgpmY+/jzr18JR5EKHRD283pJL+Bby6qkpuCflmXH8LOSF/OGxNraGX8uf
	KjVOIzZxQe3XS8sQ3KtOZob89iFw2mUpF09hGNbkDQ0Cyc4Wf1HkSsJXY4pz/J21+0f5TZQ0Zt/Q7
	n5RYv2PxW9BL1E1OCiMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD2IT-0000000CTpL-0JQ1;
	Sun, 26 Oct 2025 15:04:41 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD2IQ-0000000CTnk-1DhL
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 15:04:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id 41be03b00d2f7-b67ae7e76abso2799509a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 08:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761491077; x=1762095877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=X6Ne4SHSZjKOvY2zyBcGDHpcEdtHMi3dRWGZNycvvW+5CfN3vF/HbGKKLFShTTVaOE
         DEp5sd8OBGy9ZWGi5xmVGeEPgunZsTirU/KMYlpp+EjTvJRK9zAMV352nUp7nrgAfNCs
         4H9gFOJS85MgPstQlcs4+GI7xXeQOGskSsj3EOw04o9QOUFMsX0gZPIuVWUIIJThv7Gm
         8Czb4zMNhDFm2KcYyUk4gyj4S730iYOfO5ilBmeYGZXfffah3TBj16tc54TrB7kJrQxM
         /2+1aEi29nulHvDiGg23TgmLa9js3P8C7dcyb0PPwGbLi1SKEGxW1uGJPGTToptneh8B
         qVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761491077; x=1762095877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=mu3YNPx3cnFdQ15fgMBkHjEb9AKEV//frMbqgOpG59XsjZWxL9cDXz0sfevraiOHoX
         uZMz/LDdYyJmag0pyy3ghzdlgIopJxUO/jEHfBnWRSIwyvpNtE4AW8DllKkKGFTfc+kn
         PJCeCbhO+K/JvdXreU8uXzL32kQzttOld4RvmSa5fGL3nTqIP/lsd7K2h7k/vDenctTy
         WHIKWlrrBWRI0g3y3pcWCcZYaQu4/doioTE7+VNH46wID7F+Wv4Z/Nk1ZcocxdKCr+GN
         WqK0OZWruIk2GqTUfa91HTVYwtkMELX8VM75vQTL6wm0+vQUECi157Cr7brK6y2cEzQl
         mEGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeOOdBsAnAZ7ngYPW7BaHsk/m0cq680IyMsoKM532CXcsHa0w2Dq3zPZbHhfRS0k9mLyCPiuTso9M1CPYgCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbSQ0n6Ap5n8X+pRyxUhxRnFFRd+9mnbxeDIRXq2YcaDrNMuyO
	l0hsCYA9jp0hrbJwlSW7v1v3ciGFldZJKQx3r1FKkQQkziv+1XHer5Am
X-Gm-Gg: ASbGnctaEj+A/HnAejl8csvDxRqQXdJep00GqBvomN4z8E2oVrlHX3zonWPTHLCj+na
	GR39LUIjIxAO/U69tpqwTvLc1/G2w32ulsc/mIX6NXs6iFS4k+fiHmlhafaXgE8ILNutaXIfxIS
	PcydQaCghjIbQwKWlueRcEmZJHiCNP4Jcd8+deKrCpxR8Zlt57TsDG7u75UNqmBMysKsKqNL8ph
	JejjAROdhqFgNzuCXaG53ibgiIq0ZE4EJiZXsRx6N7/sC2U/JqpJPasGJH+K56r8wWMnLniL3e0
	mBbrHaA11OF2O2ZK+3ohuJgID74Bs8F+sHdroU91ddOYoRpFK2kX56WN9AHSSWu4WBvlEAYTCNo
	+77pnQSB226W46iwWpdlNxjNn+X71KcVp4We9TDYdX3bKsWWigF0MIFKHChrhg7v2oAvRUHD6kO
	XCI6ezLhR2VQ==
X-Google-Smtp-Source: AGHT+IFxsSx87V6j4xGCO/gIK9SEmLM0XVc2BXFyfyHWu6d+W66LEceiivJPxXPgqc3+OLhbzD/l6g==
X-Received: by 2002:a17:902:f542:b0:24c:b2a4:7089 with SMTP id d9443c01a7336-290ca121a5amr484987455ad.31.1761491077286;
        Sun, 26 Oct 2025 08:04:37 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d09958sm52320375ad.24.2025.10.26.08.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 08:04:36 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 23:03:57 +0800
Message-ID: <20251026150358.1078453-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026150358.1078453-1-coiaprant@gmail.com>
References: <20251026150358.1078453-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_080438_344831_DE61A5D9 
X-CRM114-Status: UNSURE (   7.97  )
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

This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..417100209 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: NineTripod X3568 series board
+        items:
+          - enum:
+              - ninetripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
