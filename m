Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EC2CCD187
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 05:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3Skz2oIA27dcgVCywm6wYW0SGMBNeqpRgsSyi5la0E=; b=UQwQEvIvV/tMjE
	KLcT2RR0J20EJL5s5dF+G1hKuuFZ+4Yxd39S0/XwMYtd+nCLHcVcpNg8iRrYWJdxw1nkyyT+eTCCT
	M9eJhFsmnWwFu8UXHtQWVF8VSvFnz2lm3/SByb7ZaFM+RaL9Awmr3YP6kI42BE/vCOV23mMov9C/4
	AFobeOhFxPS1jSBqMfMCTHbCG5VTLfqABXJCl+vSiVJPLbUTjZP6fA2JJZB4PafbdNG9FljXAQR78
	d35Xgth1ihym9sZjgg5osTehArD/+b2eT7f9vXXokSHNIIS8UDxjeZDRg/UNLe64Mq4Dq/3zjf5CC
	UrTATZMzgOKsUFlD4JHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLh-0000000FB65-0n05;
	Tue, 14 Oct 2025 05:13:25 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLe-0000000FB3q-3Cnp
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 05:13:23 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-78af743c232so4423787b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 22:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760418802; x=1761023602; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=C/7NJUSG3rmYTlFlb6SqTqsIhJGX1XKNKITCNSIr7iad5rsF7y8Z1gPDqhHBeQN6GY
         a7LgUuZ8i1BBkPtuJ7VWXEJAI/s0YH8Kvgc4j/w6yyOjVw+nEFIsPp41s+oBT/Y1vl5r
         oXO3zfL/Ae4ch/3MD3M3P8q2yqdh7ScwF3zkPkFy+79d7TMy4q0/B+PQIsX0pDD5Vhyp
         qxACG9aR2gmccPYOh5bgP+cRWpkoAeknahXnyr2NN+vKFs64VseQNjaCSREBHkxJr2pS
         LpQA0q3f4vwG18hO05ODtjrWkyICaiREQHr0bjW1g8LK1n6ak0WO7L0DqDT/gAesxBHU
         Onpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418802; x=1761023602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=Q8g7/JKbd1PT2cjiynNbdPTHy8Jw+y+/bz6ewHQDU3CQB625OlQrFLLwCzkaYvfWJO
         c6UfeqSbibhsOGqdEBtvNSffC6gHEL/YmhH7KzXct5r22W+qxgIZ0ftPIcC2S/HWrnMi
         XMMXMSUa5u76Av46xdChwY9jkkw7KYlvGH+ehbGF6v5KZ8zwHmgZqkrAnLYqp0Zae++F
         vyJGxjv02CaDZoIcM69o3x4uBQ2GeDmndb+vHHIauRbr7uJd0ScnRKgbh5GWIHrcKofz
         8p+GdxZGj4p6FNxEAN+i9objenOop9zz9PjmZMvpTFkMtodhmxNrR7RZzvNnPjgmbJ0/
         L3KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPVmn4wGz0QCjQQIXknOPXpueBjB682PaDCSfOsl8qom/vr/EwDq4wJOAjSfxcrv5u6iaiDjD4mtYTdZ6hkA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqXxCwmRskzBLhQRTm7sD4CGNqYCUkQsl8u7AwTD2bLKdKO2do
	9+SRTOmOKPA0zOKshdj9jmsK5i5/wxe2Q22US/0FDsdDu/3Fwf4inRne
X-Gm-Gg: ASbGncsea+VNjqCnpUKgHlPYidhgFf5jQM1R78i/UB29VXZ/2FPkzrLiDAkXw5KNNbt
	+WvmsyUjKSJ/K82YCjsMoB+Sj2vuMRTyhVGprUm78hHWl+P/cGAMNv6s8szS2bHi4J1Jp9ALngz
	j4rjd1GL6of+WKjzqmE2LvXD5Z1n/JAj2mmvqSdF0/6+X5tPjCYYtppmHXWeyCEH/4nhM6ckU31
	btLW5kvWdHe3BsvF9rufwXUVUuuyz9vS0gICWXRLKu/WhDMqkUbrshVoRi4F5rgHp1zgHYkG2C6
	dXKeOswkF2oGz+YHysejKVb5gNE5NpGOI4YKShskDJGL8C9dvpDdPZvKRd8e3BwYSLX2Bo4O1Lp
	Xapl5Q+VIvKq83igqe8OnGtve403NhLifh4DRFJCjzBR5TPqB4SaIv1CrzmdVcnnpiWYLrLUYtP
	rZCdxHGa1cx7k=
X-Google-Smtp-Source: AGHT+IFdGEyJI+FP+jgDwvUb1DBtqjAdgYlnNf0O+uLevyNOD0Ahuubh0DHStrxuGa26n0WttHzXtw==
X-Received: by 2002:a05:6a20:12d6:b0:2e4:9004:52fb with SMTP id adf61e73a8af0-32da813449fmr28943523637.4.1760418801797;
        Mon, 13 Oct 2025 22:13:21 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.51])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddce4b6sm10902353a12.13.2025.10.13.22.13.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 13 Oct 2025 22:13:21 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Tue, 14 Oct 2025 13:12:25 +0800
Message-ID: <20251014051226.64255-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014051226.64255-1-jjm2473@gmail.com>
References: <20251014051226.64255-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_221322_807009_15026706 
X-CRM114-Status: UNSURE (   7.81  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
