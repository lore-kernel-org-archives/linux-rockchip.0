Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4AFACCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8XZ0CC0yQTYaczWXH/HMayYvTcV+OS7inDEyy1OM4s=; b=cIh6VEuAjwXXEr
	824c55eIwUr/Wk649vq4mBzbxpAbhBm7JgpdK3Y6xcNuiHSvDfcBIxBqoGW6gwj/E6zR7UbsmQr5o
	HZ1rzCsUg8MJ3EI81ldeEUpkGrZqsZhf4IClPmoIUqdn5SogSZAwUiJLSvS/sZH5G9qlalZ0vBVMb
	ITTyFjZAwjNlfP/menDlLcmYFcX0HTX/oMlHNd758pnEyTSOkGysw8zGxnPIw6n5KPZjIH1rj7KCM
	MydIKt0bqpn8WcZ+/rQCBCg3OlHMyBkEkC4TXm+3QopNOWb6PtVwy/Pj/+dTe3Uu/8Jh/ZcXdXJii
	kgn5sFKxXOOqq1b8Zt/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD1s0-0000000CQii-3qc2;
	Sun, 26 Oct 2025 14:37:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD1rx-0000000CQi0-49nT
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 14:37:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id 41be03b00d2f7-b550a522a49so3084051a12.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 07:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761489437; x=1762094237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=EQuhSijZ+JedPU5KZUvXLTUlKdRPGRujOxGBPBoWWYghR19mfFhnOikeSpi/25sLt1
         wFMaYdOKDRGJHZh1hbR99RroIIEC1easIbgcNjELSDqjO6c9KOjSoICcR6Fq0TGP7pKH
         /KqDT4lMV9+FAS/D28Q2/mx1OO4n2c9pTo6t27ZjGZoVXbQPIeMh8Tg6k3/EaY0s064x
         uinriezK/88ro7LSSwJfhxp+iREyS1W+W61LH+aEtVPoIhrio7IVnxFfIGIMf+Uf/12Q
         lmi3gA0alYztKPwAWu31/dFljsHQsEfc9Lh03/PHJWsahugL9Nr+RwjkbSe+R2j4qSFt
         CrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761489437; x=1762094237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=NIHJZq13KixXfltizSuL1cEskW3DOK1qTmQCp3fd2M9NlRC1+pK4C80WKUOQvn2vru
         oSdQmI6ppQUGqTC33maF6TN5KKSGDpY3dRaUsBZ51PuUPGCMnE6aju8ijWPtQ4oiarN5
         jP439ZKxF8tETowoucgDTgVhOJyUFivSjbuUtb61+Q3NLSZoCIqyruWgK18yAS/kULsw
         JPmd2/XH4bKCqPWB9MQ1HbDOgPh73HGQKdPm6nEVOU9Z/LKdYupCjLzU5+8eGsn1R6nb
         A88cJUTrdyvksp2UFBhjVi0gFUWJEKc0iZKg5g4ArOSfq8NQdQ7GdG72qfrGqYKBmV0k
         JoGA==
X-Forwarded-Encrypted: i=1; AJvYcCXSW0QcIXzkri9oD5W3SoCycStgDP3RN9A48W2TEpfuAVDJN/eKV+hpiu5FbS9ooUoIPT98WY+OsTkQMsfQ/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk9qrZjJqQUn3jkWpWPjyNKg0fSntvY5BlOsSXvOPzYxjxCgsX
	QBJLE62XZZRRncKq40yL8Mxhkm7iT9i1CYwyhODiXGB+2+p+/j2kuUtn
X-Gm-Gg: ASbGncspHq9sEJh8f0OsCWWf4igbKNDPtcjuPF9f7F93tIHt8kdjyySsdx81hvOlVhS
	xJB210I6q8jczElnev6kKpxwnlKH4csafi04VZ3eJHmNA1A/3lecwslwY9ARVBR3LBRW/XT5AN1
	0vvbQBiwFZgvq0k0aVrq/6338S7RmeTUVJPsGHbdiMoISIPfwymn+fGhe+O65mE5kUy+Z6hP91q
	3D/yPGz8hva3ikywAMY+m5KBl61F+iaECHKuK/LGnHqJIjyOzmbBIiSrdVXAEK3D4y3hu8FRN4W
	geivY4FHyvlCQDKmN4RI/+eSc2EPIoiptu48iM9PLAKSpknlQRW9a50LFcypYOW5qIxVvowltlR
	fJLPXPAsw9P5zTSEETJ/bw+m7pUmdTSaILeEXDL13tVQDaKJUIOnsUDk2NkXC529ruWz9au9D8D
	w=
X-Google-Smtp-Source: AGHT+IEfx0AH+HyiwJ68//xsscWnnszjfjuh908GaFcgwt1A/M2fn3D2pU1eaom3Q9nzHLoe+m5ueQ==
X-Received: by 2002:a17:902:ecc8:b0:290:c516:8c53 with SMTP id d9443c01a7336-290caf831d8mr427173395ad.40.1761489437072;
        Sun, 26 Oct 2025 07:37:17 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128d4d44esm4652691a12.21.2025.10.26.07.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 07:37:16 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 22:36:44 +0800
Message-ID: <20251026143645.917588-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_073718_050859_CDFA25A2 
X-CRM114-Status: UNSURE (   7.43  )
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

Add NineTripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..37687737e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1124,6 +1124,8 @@ patternProperties:
     description: National Instruments
   "^nicera,.*":
     description: Nippon Ceramic Co., Ltd.
+  "^ninetripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^nintendo,.*":
     description: Nintendo
   "^nlt,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
