Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC4DC5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 23:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnm8snioQmAFECuTQWP7j7EuECXasT0o/Jmg8swqeP8=; b=IYw1xVLXeyRAzK
	3YP5pPerP5ZWarnyKSg5Enf+KxqcKdRwlj8txuV2QbXgsoph8neh1YoNDQLdgQyVNcSAedbXoQFbB
	KaShB9N/nJQ4ZTCHFJa7tHYSe5a91AVlXtS7/6OPWRgxyvwg+NHYnZk2D7fHFOcoVBUSfp4OgX/Aa
	NJDLz/+Y8k0OtU8nEHDd/sXdOUWoRcYxY8Es3eXvPwDcsYeU3qgk5JU4G9R9nTAxkfywh/6QaV8PB
	w+T5nNfLPQebAHXtA8cQDTJMWBCwKnMgrlVLIoxfQJwYyLsaWynZlXft/SBR6TQNq206BSXztfNFp
	a1t6u8krCm0zusigYcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJl9-0000000Gm2e-2ybv;
	Thu, 05 Jun 2025 23:12:31 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJl7-0000000Gm1J-0Zro
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 23:12:30 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-22e09f57ed4so24920135ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 16:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749165148; x=1749769948; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dGLlbBsnnIaeeQBBuPKiX5lfWhSVjFvIfqJzWD4CoEg=;
        b=gQtjEbKyYDY5cLjIOi80MUUIFbgnnVph7bEiLi0CWA9UX3++kasvvbSCXRENA1lIMD
         MJGgZOpJvvujUrxKYYnTqOYYgRgHfUx4o51g61m8CiSA1pqDKPRTghwO05IN+Zg4B+bn
         JtjeqvKHX1yJdtyeNTE2Kf3QoDhdj8WMoZr/1+8Yw0fui63kydYLIizsOwY+73LnpQWI
         SSIibig4XQce6LfP0NxUJ+4xB+WRDrFiNWhoR4bJP2adbrgHCZLva3o7MLgBjALZqX0d
         6fJHjmDIpXsHK5eKPSK8IG+6eZEVXk230R8A/zSXmmTbv5ASmj3/rqwW+dFlqwUvEdLf
         tQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749165148; x=1749769948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dGLlbBsnnIaeeQBBuPKiX5lfWhSVjFvIfqJzWD4CoEg=;
        b=EFL7XjvfwcIB6UQhPzb4d7NrUpcn06SHbXZeWINKmUR/NGQA5SSZ6Y9kl9YaB/UXYz
         pNqYKCOXPoL0312yyR43z28R6pLQCGAtJEpy1mgOnpVfgxgwDeeGDrxtw9edPVFvePCp
         WgYUo0VRjPmRjf/Ltdwg8q6uoN1qNFHMIGPRUFdCUsOr+Rq4y2jPE02DIG9Bzo+nRWfZ
         4z78E43I3CggrCxKzVQXUlJ0jzpMkHtdIRiVyM77dYB2PnBrIIkVWYOLMZCeu8U7vp2/
         VbHi2fyh2lZ0iORSA5JcTylkC0KpGaICw9Pg2GrP6ksTSMrQPVoh+XRF9LNFNdNJotGS
         5UQA==
X-Forwarded-Encrypted: i=1; AJvYcCXxpLZ0HDLvexmUOn5psAkegpWz0sjdeRMm0MnEor/Mgv0oQV5tiPDibmnxnQx5kGG8AIuSshKA4ZzAgN9/Hg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYScq3jVzNNR+lj8ei1ZcRa8zSiCS//dUohvMuDE8vDoHp9e2T
	wfK2/5TQPp0YoUMyO++8KaAIU97v2Lfnv+8Fz0FrgTRNyiu5k31UfaYxR8RQ70WO
X-Gm-Gg: ASbGncsa9VNAJjhV0CGOWz2MkRVQpn3ZYSiyJUp0bvD1GLkzbxKSqrsXpGWw/Fj050/
	j9DHAsh0xPMDdSbN5DRFpdvPalhuqrHjGXOW7pGqKCjFwzG934f4jpIO99T5ftjUGFFJRzo2ZV8
	0I4WgBBdbE8nWVaBmw8+AoUqHkftYXbRY6cgQejQ0aZv3ENPNK5X+sV2soTAhBBuZskxT1YOIE3
	DLeTI3wB9rc7dc+AhPsx5JfPEWsOH1uKRO/NYdjZCugh93FWSfxAPvI+vfUtiiiESPP9PdSom9V
	O71DNDSoOlb9NrrJe9QsQ1IFSqoRdCQUf61tc7ZGHx1mMHmc4z9K6J8BVnzb7A==
X-Google-Smtp-Source: AGHT+IEszKa/fdB71e59frDQVq5vnwuvFpTqT925Qa9IfUFVt0czkwycEAf1Jufba0YHOCUi49s/3Q==
X-Received: by 2002:a17:902:d58f:b0:231:c9bb:6106 with SMTP id d9443c01a7336-23602063997mr12987455ad.9.1749165148080;
        Thu, 05 Jun 2025 16:12:28 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603097091sm1346175ad.69.2025.06.05.16.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 16:12:27 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 05 Jun 2025 16:11:51 -0700
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
MIME-Version: 1.0
Message-Id: <20250605-rk3588s-cm5-io-dts-upstream-v4-1-8445db5ca6b0@gmail.com>
References: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
In-Reply-To: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Joseph Kogut <joseph.kogut@gmail.com>, 
 Steve deRosier <derosier@cal-sierra.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_161229_182748_5D1DF251 
X-CRM114-Status: UNSURE (   8.00  )
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

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96ef67ea1bba33c0767777378a38fa7..64b0a0dfcf12a75af908ab723d5a4dd9bfba8167 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -840,6 +840,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
