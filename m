Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A3FCCD187
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 08:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqApvPR3X4O4xaRcd/mJeIbXdmcLKoL90PVKLvv7pSg=; b=YOT9sLGAoa5uhq
	Mj+6I8Ow2z4YtPh1QTSV4r6FWL4fLZGI+isUOJ+b3a8wUglBd3Tn7Y1n1Ran/CkH0kLnTrIqoaahW
	5ojW690wZjP3xIRDFuwd+0Mf+AlzG95gQukA5Zk7m6tFLEc1LFvUz7GG7ykoR10UlNFknixUXAuBy
	Sy0LuzzyUrpLW7aOTa4oi1a6M8TGhDfwnXggO29Y2kJ6HLfDN+hyZlozZ7PyfU7D0JPjebodf2HOY
	5kNIH13d+fNGRUCTEJb/4GMAaV3AkcYcEQw+Igh6z4hHAdd7xOB2vTJuAWjvbrP06iscPZeek7jrJ
	TM0ZzpfOUa00Rn0kfZkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHb-00000005YGb-02SZ;
	Thu, 09 Oct 2025 08:45:55 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHX-00000005YEY-44pC
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 08:45:53 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so545197b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 01:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999551; x=1760604351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=hux7a+c1FAwoYHxoPIUIhmiWUyanIpS9KtofpGVVxHR4F0hzUXxSfzmoe/cKcbVDmr
         zsl6zB8yE4xJuCe9vajd7fjvdgjTK89sy65BpQlFf82k+UwOVEEnxoS+7Q4CemwypUF2
         zw+JCj+AU4dnulEiCKAh59N7boHDGMKd2fT/6N9NesarKf50nhbI4wRQ5VfJiJKhF701
         hqRCj1jfmFXQ4GOgh88yjObV5kWqYYLkiCLFqRkuJ2LqBX20mjMVpAr6bTSpLcbv8NFx
         pX79nDcxWJqckFqtiON8fubHPGTIoQlUD2H1wFkrof0gzHdl0FLZQqZ9FvYW94O7241d
         ubog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999551; x=1760604351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=vuFvIvbQCzzFFMKE5iepxXA/N3Lb5Fl46ZP2qqWMfmAasVrFMHaQlUBq3vnWPr28wW
         tnCSlxUUIDVmh63Pz/p6DJWlhCDhGDixCLs1m4za8dlGE5MgfoXGbAPcU1K1ELs+linO
         GDR19tqAesE13iPAbAyPuE6UHOtJ6+X0Qg5TD0J059OcFIaplcUwPmuT+MO7lgwMxo1c
         jqK3fTJAWOf43vjCahzylSeJq5p7/R0WDUoh6Vg6N26yR+NhjMqPQjD3gyQAXPnwGWmJ
         qWlomYOjFPlLj1BXw/CCPf2bM8lVQNqLs2TaR7P/UhxiVUvm3onmcMl3MAAxegkz/FKu
         zxxg==
X-Forwarded-Encrypted: i=1; AJvYcCXGF/mOZVcNDvGs+SX/WKXqugyNWY7IBfbINaLxUm2Jff9V+q04xT3ifLb+WohPWtOc4fvQF6jP639lTiq56Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvTBxn6evPY8Zviz5Ux7I8IrY4IsT5Y/dBq6j+nQqCfDouPmV/
	uY1LfxQAbVzseySyfE89qgIWN0oandjvsXlaaOugSu5BeJALIYp6G9Bj
X-Gm-Gg: ASbGncvnZrYlhzL7BnAHHF6zeKKwnAkJKNLcS98vgEBi/9zo9JTlx24ugiS9bszzAyx
	RGzBI3GuJlKR2osa91+mOK7t+x8qcwA+QLD+bGGSO1qjcUL1T9yqD2UC4z+khVFCM9c7Q3vfq55
	1HMxTgQshBkZ3ixjHLHwz08m3Is1xukT39w++78JUgiTOfqGz1lzym2NNLa6CsD89loN+xCzB+w
	buZxwg9zjcOdoQDTaZq/ueC8Mhg1no5bfo57t1GLuEnZ4ggqTfl7sfwScFYy7dnGBMG4nmNbO5F
	f+11ElV3cSZAC6/V4ZzxVxtd7thMvtL/Pzt5FO+lI05K4t/OXZie/t8DpUfTaYGFv/5VGulxdya
	0nWIXO6E/oCsuhkRp2dzCK1DFa9osEHE6V5K7lKQNntdJ4fHdNx+ogZEEQcg75AhuFXPyLKC3P3
	b2
X-Google-Smtp-Source: AGHT+IFsUYI+Uzlw6afQAv8v8QE4Z1XIw1leKiEaEKz3k8e65BDwjgKJwZ8Au7x32eU9NmkOPg5Kxg==
X-Received: by 2002:a05:6a00:3cce:b0:782:ec0f:d279 with SMTP id d2e1a72fcca58-79385ed579dmr7200904b3a.10.1759999551109;
        Thu, 09 Oct 2025 01:45:51 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.46
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:50 -0700 (PDT)
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
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Thu,  9 Oct 2025 16:44:14 +0800
Message-ID: <20251009084416.45542-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009084416.45542-1-jjm2473@gmail.com>
References: <20251009084416.45542-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_014552_026464_39536B0D 
X-CRM114-Status: UNSURE (   7.53  )
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
