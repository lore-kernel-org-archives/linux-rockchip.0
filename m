Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33CA2C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69lXbVZGHfdkb5M1qEn0DLDbitUCC2ehpSdL3oLsaFc=; b=O7Q1xvOBVsQKFi
	xxeipXjlenEVmzVvFWJPlQD+taaM6/EaPmnVwA3UisA6MLBMBQ3FCfn2vqXKsxZQXT/zytdS5lAh5
	BdCSfxQ3HJOfr3EN/QoC1Ym69uWZK1GsyGYsxrDO02GdNDg94PgcVpEnTrOapNtizsxr8meA8qrX6
	SpD30XiD4pZ8CTH5cBUoALD9/k1+3sRbQk0irW1pVHND3QKMW+WH4eGwbhKjdmOntIo9pZlzO/Xcn
	/n+8gXOVde29J5dZkUdk53VHsO/baqvBxTFrIwRADUsrwbnG3B21b0WAqTvua0KU5/zlDECO7d3El
	la4kFT6S/0Q+woDDSJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6F-0000000DevP-44Vh;
	Sun, 23 Jun 2024 09:01:27 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ69-0000000DesN-22uC;
	Sun, 23 Jun 2024 09:01:23 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a7194ce90afso87271166b.2;
        Sun, 23 Jun 2024 02:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133279; x=1719738079; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BnFNSmeXKE9Xbj/8rB7DUybiDejAAysFdgDDOjzrm44=;
        b=ipLME3hgou+OL/ZaZebuoECECgvFyt878hcMa67wAJfO41a1M//r26OheAHWhOWKxd
         E5GevCHrTX7BYe+IqOpBaOsIcgu8KBjSXDvtOPFPxsqh8B4+kBmKaMyRlXJNfnnqUiJT
         TZ4qklt1xDDzv/TcsfzGpvsTqAK9hgPeXddxjD3rQ7cS9CnTE4TItZQpTowQw7En4eE+
         ALfkIFRiwqAM0y5dbvWFU5ik/XHQyarsKoffRbWAWc/m/z2O9hkk/7pnz6bzif2+5z7E
         sfkv7gGfSpk3w04l7nWgMcBa/Owq4GqyfsARiHmEvJ4uPLQAXbUlyiubzdaCIQ8lRxtm
         QWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133279; x=1719738079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BnFNSmeXKE9Xbj/8rB7DUybiDejAAysFdgDDOjzrm44=;
        b=VgqT6Jf5OjLFiN8w9WinfDPKvuM3niEZNojSKt8YM1wGqcdO+cCI1OxwT4TbmrgrBv
         J75EJFje27aN+qV1aitR32dj6mUzdhvCMDwYhFsu1i6WjL2KpftdQUwgXr5lk4oZ5Fle
         8QPWDkHk1MlNh84zXgIWCQajBhb5x2X8kRurpzcNPiZFHrmbzzS/NbPvItglHDuHr+TQ
         xLBLpQ0JdeE4J7aThpHh6tgvmOjxf2GitjS3bsafUsiee+YDZdk1CltOSzwWXHjSQjGZ
         a8C5GmaPWmnUc9sxoszz1r35iWKg2qidaGix1hpCiyXRAsKFZUFo0sNikqD00kHZ6c49
         MULw==
X-Forwarded-Encrypted: i=1; AJvYcCXqQ3okFtqZjm12f0tJnjvs20m6bSL8DDd4sEebhMNKK8qE5SWMBREHfUKa2OpuWv4aZuKKSYDXps6oZiVx5ixJ2o1TRsn8w0LbdirPO2sNPMi6Qib01fFhvjPeeONUDVkBhnm/FirYmVkdN9nEDMl8Bq8zzWlLZ5s=
X-Gm-Message-State: AOJu0YyIXQKpMW/aKLUVIRlkIc1q4Z1Ykm7UV/bwuhCVWxlNNr29xLE+
	UnXuYBmURBlX9uoQSBZVyRael/6FMb3r32be+bsbee7yTCq2J3E=
X-Google-Smtp-Source: AGHT+IHk5b/y5TB+6CCC61uFRwDTgKVdKv1ghN5pyDe3ew++W6QJFzOjhRdHXQgvO3IimQyQvbV9sw==
X-Received: by 2002:a17:906:ba82:b0:a72:5010:bd87 with SMTP id a640c23a62f3a-a725010bea8mr30806566b.61.1719133278715;
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
Date: Sun, 23 Jun 2024 11:01:13 +0200
Message-ID: <20240623090116.670607-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_020121_578530_AF9A02BA 
X-CRM114-Status: UNSURE (   8.32  )
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

Add vendor prefix for Shanghai Neardi Technology Co., Ltd.
(http://neardi.com/)

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fbf47f0bacf1..6e879abec71d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -995,6 +995,8 @@ patternProperties:
     description: MYIR Tech Limited
   "^national,.*":
     description: National Semiconductor
+  "^neardi,.*":
+    description: Shanghai Neardi Technology Co., Ltd.
   "^nec,.*":
     description: NEC LCD Technologies, Ltd.
   "^neonode,.*":
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
