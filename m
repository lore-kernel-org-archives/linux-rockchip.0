Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1557FCF2591
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 21:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeF/or8+x0ZMiGRTG/cEMDbMvhknluskfbEYHeCnMbE=; b=i6T2oAZE864hMt
	TJSTHYh1LDb89yyIZT2E0QDJaMSrpRe/Du1C8porlhhqKG1jfciIiuYowLGd/HQYocCgoJ02/bJU8
	VbjIfop7lSvzRNP7Dd06FtG8EBNztKXuWTE/epvTZ8ykKOoYtd7H0vnxNg/491dHNWBH19CwdIFQX
	Yv/3Yc35lOoNxQdanSoX75pCb9JtL4P2CHKtmdSaQuUV1b5PcoOPl1YyVc1580tuCxj/erbc2ybWR
	2P3dJBFKs+TF74s3S9+4lwkVabcix9z5+SIntkc4ycAXKtvenNQ6Y9ABJ8VAt6Yaj+QhrOnKupRPB
	mt4xLkZFtFaSO0WVP+sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t06Xz-00000003JX5-2KIP;
	Sun, 13 Oct 2024 21:54:43 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t06Do-00000003HG6-3SS9;
	Sun, 13 Oct 2024 21:33:54 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a99d1b7b5f5so251364866b.0;
        Sun, 13 Oct 2024 14:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728855231; x=1729460031; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sytY2FNkkLBnOCAcfUv9hkr9CctUcl1zNo07NA/NCoo=;
        b=WewYbhEejalgmoyfFzsP8B6z8s95zYTP3+0tUmbAEesElIXxa3z84Df4SQTkwb2KNU
         C3A+5gwOZOtUIGUm6Sg1ZxJF88AKnNaOAbs/zsXfuEJ/Uz8lHOE+veDY1hbeDxIoOhGY
         Y94GzrT4u6i7r7PJjmbdiT5/5Exi8kkHbdIzri0j+Wzj01Vpzu5tKCGkP81zt+fnmEKQ
         wuANACubfEWJ9FwmHtgRfAj/vMF8v2IUwC72qDYtt4nzA2trFZ0Mluv+2jDeHN/hoCEq
         D+m2bxV0ATxLXIZA+3xMIUNhC6T1E+rwEMT0fy+f+n7lfW0/qQ2HAN9a8qpSXzzPlRw7
         F8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728855231; x=1729460031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sytY2FNkkLBnOCAcfUv9hkr9CctUcl1zNo07NA/NCoo=;
        b=mhR3xnIMe1R8k8n0tRDj4OOCGSM/8NvEF9iwscv0QBmQCWDSsOiY/OYDLYYOS1ypnb
         OE6PVhIRNUUW7uNLS2PDiXgs7RjkY0sB9wL18kYlBlQCiRIBZBcfRpPNL9qJKP4Dp9kf
         goyvBEE+mP+BLdRq2SJgSI6f2yQdJcxPWvAVJrAf0jQmftg25duOu8gD9q87EwLk/BRV
         DF9l4IVmt7YIzZQC/Hidnu/xTx7G3uOkiBihCqbHL7XOEaCghrSu1IuwYjY7sRVvjriv
         fK5ogHg2qjHiQPA7D1hduCdXWRWokPrdZGfzTxl4Ii90zE+8HMqw26dyOKswYb2coUWD
         1r6w==
X-Forwarded-Encrypted: i=1; AJvYcCWfWDmgr0I5Pgc9QtRTD4TnGbUrUEsSrQ+AOkhg8NZP1ywbSyzsc+FylXDu5Tk4LCsTqrRD8uD6tA6pLQomS/4=@lists.infradead.org, AJvYcCXGKpObDGZlo6K956ZqwUMoZdHep8xKfQuBhrRJJpmJTGCwqOHUvDBWPhn3QV49VEdbIvwgwrY6wjHoRKQDWRmu@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3QxBoZIs+g1aSbWMn6ZPgV8plkaE3OZvV8Sxz3hkFK9QZeA2h
	fju9R2Ip3Pb9U3qAepoIGYHznErD4x67LxG97XUrCPB+vYqSi9a0
X-Google-Smtp-Source: AGHT+IG7ExnbcS3+M2fgUbQl6n1Tt8baiJ5a7KWvoXfWNem7QdFcbv71w/NQPB0td9aTVoU+aU5Jug==
X-Received: by 2002:a17:907:7b95:b0:a9a:d2a:be39 with SMTP id a640c23a62f3a-a9a0d2ac035mr162886066b.25.1728855230903;
        Sun, 13 Oct 2024 14:33:50 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:ba33:7ef4:2f9b:8303])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80f2752sm492798166b.213.2024.10.13.14.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 14:33:50 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b
Date: Sun, 13 Oct 2024 23:32:37 +0200
Message-ID: <20241013213305.310844-2-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241013213305.310844-1-cenk.uluisik@googlemail.com>
References: <20241013213305.310844-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_143352_878251_C3001626 
X-CRM114-Status: GOOD (  12.08  )
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

This commit adds the Xunlong Orange Pi 5b entry to the device tree
bindings inside the Documentation folder. I know you said I
should extend the Orange Pi 5 one with an enum, but I made a whole new
entry, because looking at all the other entries, they also create new
entries in a case "like this". I hope this is okay, or maybe I misunderstand something.
Thank you in advance.

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..130f6ccc1658 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1053,6 +1053,11 @@ properties:
         items:
           - const: xunlong,orangepi-5
           - const: rockchip,rk3588s
+      
+      - description: Xunlong Orange Pi 5B
+        items:
+          - const: xunlong,orangepi-5b
+          - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
         items:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
