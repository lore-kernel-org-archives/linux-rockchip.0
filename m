Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00827C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 11:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N6vSiQLaQ8f5ENaf3eIbd+XrGQ9HRPTWB+0QHV2XiY=; b=ZDdWI5RJojdP4A
	YGqFKbDzYUZqsOc29KdXmR+hG9H7ha+xhFvMjBNhjfkdgJ7EPyheGGpITCO6abmPZn9OZ5sUiseBE
	1To8qIIPzCUfKcJj1fgnAd2DZE5q/+oROOg6MS4BeF/iAhY7RdIHSiPBfKb0bcTV1Lr7ktJIHFspE
	fV1RIzojF3sSZGPUDST74bxmZ+wGs8w5kxFdVWFBopwrKE8fQYkAJIwYaS5XpQTdyc6ovajiE6ESh
	TWAyatoYoCJlkZVc/qX0CHN8EjTnOS9ooFbx6Ff15gASGuX+oOaP5/PF703wUPcqMLYc+3Eu8dfEq
	l4w6A5VNW08TgVTsoAyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMm-0000000EWNY-0aQc;
	Wed, 15 Jul 2026 11:01:28 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMj-0000000EWMC-3wTb
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 11:01:27 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-7ff05e5d009so70529447b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 04:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784113285; x=1784718085; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hROTv1MESU0wRbBCVmMCNh5kpYIBCNcs0XYVMcDeAfs=;
        b=lkp44RMGKCqqUl0hvySVFWrh8sJxoIa3zUBJkU3CpitgGTloKN7lpnDNosyRTNTFq4
         EkxZ+2PnDxrmg1fisui/XSiXqSpEIaZMBlXrawqn6IBen78hXGsrwydaDzlxyGgGFqfF
         M0X0tyrsN5yVEQQDR3Fk5N2abAvODSM120okvfUf5wVd2Qgo6W4ss2cjA3GO7K/2Nfec
         j6nOZvU3FZd6wCcJjx5ThQBIFRKhk4nGdY2rZmbb92OaW4e0P1lHWSp8HcWXYLJ5Y0vh
         HzhfISrW8HH73ohvDAj/14lTHVLDcAjoXVZR4Ce2+AL1+OLbKsonsCz1iDmvCWiGDjuL
         narQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784113285; x=1784718085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hROTv1MESU0wRbBCVmMCNh5kpYIBCNcs0XYVMcDeAfs=;
        b=oNHbQoGdZNV88564jV16+TetBCT3WLX8PnOs+CMLAF9phweyJD9yQgy6m3qoP3P3Yo
         DV0ZRXGbLn07Il1rqvLTXitdenT+WZEqbQ6A41ujwuWxP310oVP/R8ZTPgYDxeIzCbnD
         c2Kj8HuBiI8icAdb+Z9wKPsLtviEpC2YJjwUGGWOlRO6NnfSUqQsQ0FrppIOvOqrZF0W
         f2CB8oudNoTHHUvkYqe30yQHFAhQB/QbQEZtFbFEhw9QIqr3QG/DDxu+0cws4DKVkP1N
         r+oini53WQV+n2VaVkyWWL3cigIvYRnN9USR6TfdI2n/s7X9WODq1powUr/oKOkT/i1A
         Mheg==
X-Forwarded-Encrypted: i=1; AHgh+Rr3bkTj3b2+B/U1Oi8xFrAdafJJuxmeo0dKRU4gcxs+UdWYjztGTAvQj8undxOxaIAbtIYmmJ6pUp4xpW9jRA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9/y+u0FkR36gn+ypNRuPuoANtyjSYad3tGOtFHYTdUQmsOdMK
	ExiAi6MA2yNzqNJ+AfEkq+HNrI/mjb08uJDqRTBWeFcPviMkwcGiduSt
X-Gm-Gg: AfdE7cmYCJJtkukGR2n4NOfS6i9jWWvFBFKa0OMHkYyqydUhyoCZMWI3UDkHY8Evnim
	qCkgZzCuMmZm61KRIfXMAIR5GEGBpMERPXGPqd1sfF1uMpoqSCxJ61d7fxAnQBJVcexWmmxVFb2
	R1G0bUcqbEygmN6bwtEY30jWY2ET2obl8fowG1tMKPiuGEZOE/ms5yB3VuwUjM8wffZ1sz1Lf8Q
	J40zQTZcQMOqdxIELja/O5ClGO26qg9RGjUbPgUQslS745qog1H7Ya8hwBggAyMO9MIf7NNyZKa
	TimzaupfmWDDrgc6jjBKSKEjkff5RHjdf0JGQvb81mnjBhTlFhwQ8nSjrPrVoHYZcx36roPSvOS
	wDapB95a0bq6G0NgGDhbaxL4oSZAYnLUrlGub66rjZQqSfrWTjleWpTr9WUf1Zg+EgCZ6/xwgGp
	yPpuNvosIjd5UpUMKKVYwa
X-Received: by 2002:a05:690e:1c07:b0:664:ebb9:60bb with SMTP id 956f58d0204a3-6680774b5ffmr3712168d50.40.1784113284751;
        Wed, 15 Jul 2026 04:01:24 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6681fbd8c5esm59066d50.3.2026.07.15.04.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 04:01:23 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: nvmem: rockchip-efuse: add rockchip,efuse-write-enable property
Date: Wed, 15 Jul 2026 16:31:06 +0530
Message-ID: <20260715110107.409204-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260715110107.409204-1-hrushirajg23@gmail.com>
References: <20260715110107.409204-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_040125_993236_65176A78 
X-CRM114-Status: UNSURE (   8.80  )
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

Add an optional boolean property to explicitly opt in to write (OTP
programming) support. eFuse bits are one-time-programmable and
permanently set once written; write support must therefore not be
enabled by default on arbitrary boards.

Boards that intend to use software-initiated eFuse programming (e.g.
factory key provisioning) must declare this property and must ensure
the required VQPS programming supply (1.8V to 1.98V per RK3399 TRM)
is present and correctly sequenced during writes.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 .../devicetree/bindings/nvmem/rockchip-efuse.yaml     | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
index b80fd8d1ae5b..8a7195245c84 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
@@ -46,6 +46,17 @@ properties:
       this property is defined.
     $ref: /schemas/types.yaml#/definitions/uint32
 
+  rockchip,efuse-write-enable:
+    type: boolean
+    description:
+      Enable write (programming) support for this eFuse block. eFuse bits
+      are one-time-programmable; setting a bit is permanent and cannot be
+      undone. This property must only be set on boards where irreversible
+      OTP programming from software is an intended use case (e.g. factory
+      provisioning), and where the required VQPS programming voltage
+      (1.8V to 1.98V per RK3399 TRM) is guaranteed to be present and
+      correctly sequenced by the board's power design during writes.
+
 required:
   - compatible
   - reg
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
