Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE4A6CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 15:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8XZ0CC0yQTYaczWXH/HMayYvTcV+OS7inDEyy1OM4s=; b=VeKm+aZ3hECh+z
	bWmzUBuw7Zqx3+aWC5C5LRlesx+ayybZCzU+oC7+ovIQg1d7Xgoc78VzucFNOWn2gycUlITv5eBWY
	I12HcAIB/Sl2B43yacZrAj4vqyv6ZfIeNWUpUocahtftPgoT2r8EzR7lGzEIEQUH5Gr8dlpPjZJzC
	CUCOc6qdlHmoTeEjkNmbBDUMKPCdMA3JKoKYrq9Pgtd4RaOUTECioFBGGKRTlNQW/mBbEv0WyurjD
	bPZhChWmn18QZrTVxVIhAI3jnGwig3ZfkIzeRQ/FW2r/MF7x4HqQb07T+ievIigRTgUQ71QWxn0JS
	s/GCCzteGAfhY+2kS3gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD2IG-0000000CTjV-1Epa;
	Sun, 26 Oct 2025 15:04:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD2ID-0000000CTiO-14FE
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 15:04:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9443c01a7336-290d4d421f6so33565915ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Oct 2025 08:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761491064; x=1762095864; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=ncjtlyHZ1J2dw52S4Smcu1pVLZXh2ViDLoVqPw7pCMJvZT5HvFkpZ1TkgJkE7PDaF7
         OY4NfHXMIq7ouxmvwhzxukyQZbrQo0t5oMWf+gBODrc7VX+xqIhwAnHXDtvGvdFqMNA0
         4KLQmO2km1qQp+PaffAGDaW6Pwg/9UfLe6JL62V4gaD0DvH/WRruxmM0RackBlmtWWA0
         xjlSXSgdaHUTfyesL31fR2vpmqrubtlGC4Sa/E4rgoRxu1BlQwhe3iBNQQTyOfDQG608
         P4YH28hEY6GLw2aFGcxvWG9vh9jZGZhwEITXhVNN2xJydibdMNY4g2zPBHO7pCKMtu4Y
         LOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761491064; x=1762095864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=nb3EUw5beIIgC3UFVjpCHXfnQVde7rSDH7lSpHd+LxhdSUtOPAWYXX5odCjT4OB1By
         8YRaco8xZUYbzv92leN9WYXfZCeOrmabKFuKjlws0b+UGHlpNUqnqAW+yUSlNpolRezz
         Jg8sDvocWYyb9Y969IDZFaGM/PhAIRX8+JNQ8/M0Qtt8+bc3kFgeOwnMwtUmSBYCZ9ga
         I2ego2hFwWskmr85jK7W36H/hoig4UrOveZle4c8ljeoTStXXfuolXZ5KygWIP0cd07J
         scODlkpKYMIUOSZYXq6AIot3p7kRYI1Ru86IuJiUKHDlIeOtk8+S56vOa3b/LfQWlM+g
         sANg==
X-Forwarded-Encrypted: i=1; AJvYcCWHsg4Kunab28+GEwNai7u/uKoJ8EeqJbW3PUET2gLA5mfeWqpSkNFtbsIisBhoMx7wMQFGk/xiu7VANkFq1g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1gKlw8w7SVxOQt+wOtuA06XliE0BJ2RNTfAmAtCOT6TQWNdN0
	9EBl296C4UqGwXXsP6ic5mplz23uY1Ku3zPpCJXNPpxLipg2Oy1AAukk
X-Gm-Gg: ASbGnctyLWlC2lisnZ9xvNN66vvQSK+zZoqg3SSV1cedYrfEqTbdc2joJVoi1LmiTzw
	YjWHOwXNMcm4v5nWZRX1YqT2cCan0ufC35EtOd465UKKfkgEPpPCpgZKwn/BlRC7uWNCirjloR/
	K58KNmu1uCUnhQGNkJK3z6PLmlu2OaMKRWsYDHWEgWzhLmqJCurAkZ0umlJNOLWzbAUxzUWiGoB
	DEVEauUttA+8g7r6PXunUj7CQzfkQMwloGf4RY1XqjcMzlMFgbZHQOVlr9fNtMp1+MHJcxVD831
	fOh8DXPzOTUZtIjLZYI4V8bgbsk8kMpB5tR6NrzcvLZjdq9tBdqs/Nwnctb8dL7UE68XDHtUpCP
	UivXxN8bT4Rk0bQGVQI67CLYB7YZtNtcfbzhSqWPu06sIY9hGwFut2WmL6xrQEWa8Eev7Xdd+Xq
	3DT1RbhrrV+A==
X-Google-Smtp-Source: AGHT+IGL4spg1O0mDgF7D8EgJ3Ni4wTgAIJZGQLvD5iwsaPiYkWPvkdowdH8iIGlLOxo0R0ZBTdCOQ==
X-Received: by 2002:a17:902:ce0e:b0:264:befb:829c with SMTP id d9443c01a7336-290c9c8a738mr391932175ad.9.1761491064394;
        Sun, 26 Oct 2025 08:04:24 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d09958sm52320375ad.24.2025.10.26.08.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 08:04:23 -0700 (PDT)
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
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 23:03:56 +0800
Message-ID: <20251026150358.1078453-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_080425_289175_C6ADD08D 
X-CRM114-Status: UNSURE (   7.41  )
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
