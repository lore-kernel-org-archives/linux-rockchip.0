Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C18C44537
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=f6oeGEH/x005dZ
	MSiHdldRNx+MYW7PR5PkrHjEacUsvUb5nN8M69oHltYp474gm0BbF3M9qfqzfeZx1OdCt0VZrq7FM
	rYeQUrTnKiwvYWEwKlo8e5gzS9Yt2+kjdgzbLJ+2gLMI1k+X5hL6nFf81mxCEBfYPiEIMg8UcMX96
	4r+UQvwTEo8DPXgurkEiK97ut1rXlJdKToJ63A9H7jNj/Vlpj5bV04T39h+6Jlej4z8845keM+ex+
	m+OgR0LUsm3qM/IjBrDxaytZTpxJFB309HyPI1rNSlkwVUZa9RAMslV+Ie/3J/qh9J99ftwF+eBtu
	5QcJ6wv9fTNJo28dho5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmE0H-0000000A1HL-2e8g;
	Tue, 21 Jul 2026 17:11:37 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmE0C-0000000A1Fc-3zJ0
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 17:11:34 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-4a456e44e01so4087968b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 10:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784653892; x=1785258692; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=Bx+FC08klyil6rf8wIe4MwBUn273hxLRekxiIp1/abCmCYn1/qQxMk9jlSa8/k3WWR
         ZAF9N+aPk+NK33DI3u+0QmMPxXYU2SL/06lpnTD+jOhS2zRXYNvNWIpjvCUpA5uqDuWV
         JIhSxinskKQc7AV8lyLvUjqXK6uqGV8kb/+GaWqccFD5IptDmqn2XHMNbYMxHPmXy2hU
         Zl/pvNzUmCxPjqKTgMtAWEiMcjMlxPOkUqaRtWWntk31YJ3d19hIcsk9pNJ9SfNPL3Ka
         hyb9PxT1ME8DGkrxMM50AqaKzYYjKraPv1WPu/mZR8GT64XPyv7pHQC5KY7dSFEh5/Rk
         uZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784653892; x=1785258692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=ocUztC1K5iYNC5oWPKzUXy7yfjhaxZAHCWMWG/rloi/VjMZNi2QslfyQCBUanaldbB
         u162RttoBlq08+zKzwr4x24TLbNa3SCFMuC4459Gwm7/YgLpvCnaNufltZhnBK0Ypj0H
         0Bu8zgJrglU0o/+WxAlLvHV7F0WZXlqdtI+qKv0lgziApevr71SECCWsQxJ2I/ejmVMm
         OvoMg0so+G8Af433AdfWilVgPmqrquvwUBc7r929O1hTIbQgDWLg8pGpdCjPlf38j12R
         OxdDmnxZDc4HHg0mcD1/YHaY5g/3goWpdGGAVfuVVbZdGFx2acNppd6DkzDOfHZV0gwe
         dH6Q==
X-Gm-Message-State: AOJu0YwAHrRA/VHJtpf/trILL9e9Gi1DTsQalvTUoWmzGQz69D2rZXJ/
	hNb19qn3I6u6lBR6zTUQ2P3LZK6volJYlc4Cfp0kO0NcdpNYVokFKULpo/qvwg==
X-Gm-Gg: AfdE7ckpfaKrXElh8jnH9G+CduKX6YNAkuFvAMlI+p52AGFS4PxK84UFYmJ7q0gQ+Mg
	S6Ri49p4ov+t+kQI9BuIulM2q4UMZSes2sgH3/T6yX6HCjmlAZS6jJkWwC0BJTFKWmWL/rW/a61
	2JSvLurRZtA9KqeGjzFTUkddaadirh0+0U8/XC2QXmmmEObkWURLb+DkYcu6TXzeMoKg3mBZvMT
	fjBPJJr79ryw0VzKIXbJ2Ihrc3NAVUiXGo3rcOr4sUleSCFhmxOGTqxd+gQT8I9/MQb6DH1p9kE
	Cnil5PBDfdFK/KT919ebQfPI27A8IoTExniIadfo+5pso7bHrPzV/1+Ys6sWXqLdWbhccV6zeXf
	dJTsQIh86b8MvIPbtETyl3hnMWg+/GoaMX40+jC1tyJB/NyHq3vDO2Ayqd5mpl7qfko0jpwD12z
	LlpGreUbOmeEw=
X-Received: by 2002:a05:6808:1303:b0:4a3:f026:5895 with SMTP id 5614622812f47-4a4d0569e52mr9095293b6e.41.1784653891997;
        Tue, 21 Jul 2026 10:11:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3cadb50sm10213953b6e.9.2026.07.21.10.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 10:11:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V8 3/4] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Tue, 21 Jul 2026 12:09:06 -0500
Message-ID: <20260721170907.131731-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260721170907.131731-1-macroalpha82@gmail.com>
References: <20260721170907.131731-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_101132_992748_12B4B204 
X-CRM114-Status: UNSURE (   8.48  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
