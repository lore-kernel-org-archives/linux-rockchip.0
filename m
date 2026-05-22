Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA0BCD5BB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 17:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHUVJegbCxdjh+pBM1gyV1P8+z5Vycp8oe3P3uKgsjc=; b=AGJSd3ByKqBDhK
	254QwEurFk2O3sg9rWrfHz2t4Ul7alSihMJKdGtPVhzstqtnSyP2fY7bs48zWYVRfWX+3ReVN2m0g
	BGHCZ6Kpt+2e43peCzazAxr3eq9Du27KFPLn9MxNaS02OSVavy+Bl2oFkQiF2Tg/l7DEAoetXYnpv
	ox8qPCaotgZ6EsJmva7o7FllGhH/XgHxgOPOlNPBoWdb9gplIIC1L8lfD1CGZLAprWfV+qIDb071A
	1Pwt8S1LKw9V2mZF5+fkft8t+odOd716FtR4jFM4OMZCAEhHZDyYe8GYWQpk8VUK68eTPezeL+/0P
	g0gonR/305k5xUZkRiUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU09-0000000BbYF-1TbO;
	Fri, 22 May 2026 17:49:37 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU06-0000000BbWX-3pLg
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 17:49:36 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-bd3eb594960so909347466b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 10:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779472173; x=1780076973; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huSUFU6ip7GkC8Ccc+ugSGLD8hr2PM+jnPbb2q1KoI8=;
        b=cyr707CHdFgTmQ72JaCjfemvnTkrIPkeI+O7w582maVOg3BQbczGINjgp5W2zlQXv/
         y5QV83SlPv9e90b4aHemO42BOnOXRhUobVBEAsIbl/wvoLUz4m2Im7wdXnIrL1gdLgnt
         lcRAY9luXMnFZj6P7jcD8G9WElSBiAuMl3tYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472173; x=1780076973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=huSUFU6ip7GkC8Ccc+ugSGLD8hr2PM+jnPbb2q1KoI8=;
        b=cufAHCtz97rVKlZClHu1PREbeLQ6tqf8eY/qgI2IrpIQzaF9CMWNX4FBdt9ft5LDBw
         Bi6SyxFVx+ZuaH3R/fmWZdNJJofKJstPT6MqZRGCf7f8p1oHlO3r+7L4/M91shkLfDZK
         qJ+9wHrYjCgAh9+eTtQ/17XXTKqDdOpq/HyYAjP7t98BJvrBERFi/HLKCBox9e4pKZNv
         wob4aa4O4YsXby9dX0W40La4+ecE+b95KFHZpqrNT+myZ7u6i4eYme+CRuk8tksgoNM5
         hdgu+3q1mbEuxhKbf0FPk1GYUvbbE0+VKLBH2I4VP0lMQ5/tbhCgBDbeHV1f1MxY7vX7
         yFLw==
X-Forwarded-Encrypted: i=1; AFNElJ9ap5UEc5RR1NkW9webnUIG6agzcBYYKw4O/sEaQoSMtYE1dmDrkcqKWNPTN1/X+x8EfWYnGrt1XPT+pZp80Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzyh2EWz9mPWKRsY71s4tj+3YskIER2AMP0XCVY52sOcmm2jbk6
	WNuFt73gFBlRlNTsMybTZC5f+9rvh7rrC7FfP7IUFQQo2spbZtomyRXQDisXkJvycdY=
X-Gm-Gg: Acq92OHttqLCDXt7Ph49xJzaRvg+gFV95qfBQ4aSIAg5f/P3AUyhC0DF4RwihbXfZnB
	GFIOls5QlUqRgohwW26BTcxX0rsMJTIccfen2NUQvnJmzIdUssY0neumnBDxBXQifZHZGOTkM2d
	ynIXI2ZbSkWVNusNla7vzxHG7Iycoq0ps7CePbEnDoobqpMe2+3dNs7gCnlEMprRuvnYIkGrS+7
	iBs4PVdom+A7bBdlekDzP+zuzFpBqkygt+7zuQX+FD0eELP4WfprPN54OaXwP0lIkHSdPY4ZqRn
	HOTOBgipdZWd6QJgUkkTJY+vj/nGdjRVd4H21wMoPfn1pXNgWznGPA4f/y9IthxkFT4RGoAlaLR
	aoLelSQXR+kaIecY7k/aZiXim5gLdzdswqN+EsmMeFtickUqmgYmrXHesAIT4clg4vUAqNgNEfW
	a7dcIzNXuAJmgpKiKjREMGwvml7KHTI1kaUc5ktSpFcnW5jeXnQv5IArgl/+7Iz4isOZOUWQ==
X-Received: by 2002:a17:907:762a:b0:bd5:151d:2d31 with SMTP id a640c23a62f3a-bdd23024b25mr231817366b.13.1779472172722;
        Fri, 22 May 2026 10:49:32 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com ([94.162.24.211])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc5eca6f9sm74302366b.38.2026.05.22.10.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:49:31 -0700 (PDT)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Axelera AI Metis Compute Board
Date: Fri, 22 May 2026 19:49:17 +0200
Message-ID: <20260522174918.61523-3-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_104934_962691_82A4D5AC 
X-CRM114-Status: UNSURE (   7.86  )
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

The Axelera AI Metis Compute Board is a SBC based on the Rockchip RK3588
SoC.

Specification:
- Rockchip RK3588
- 16GB LPDDR4
- Axelera AI Metis AIPU, 4GB/16GB LPDDR4X
- 64GB eMMC
- uSD slot
- 2x SATA ports
- 2x Gigabit LAN
- 1x M.2 E key
- 1x M.2 B key
- 1x HDMI2.0
- 1x USB-C with DP
- 4x USB3.1

Link: https://axelera.ai/evaluation-systems/metis-compute-board
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..a784c9eddc50 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -107,6 +107,11 @@ properties:
               - asus,rk3566-tinker-board-3s
           - const: rockchip,rk3566
 
+      - description: Axelera AI Metis Compute Board
+        items:
+          - const: axelera,metis-sbc
+          - const: rockchip,rk3588
+
       - description: Beelink A1
         items:
           - const: azw,beelink-a1
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
