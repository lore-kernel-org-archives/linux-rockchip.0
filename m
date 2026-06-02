Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3603BCD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=oBGwfwKCMALyAL
	LkTXjRlpF5p+Y4SwkAlinPrCA3lo7JkVJT3u3PNdWVBCfTG3ZOurLbgvQqwPFuy0FeUsbFO3TP6Ns
	6k1AgEF5k0j7abTgxeOLZdY3plpjU/TbRZMWfI1qsI0dzmRuYdgMwBMiajF0B9lLja+AEnJ1kxST8
	mGewPusMzf6NmgQIIcRMjpVVYnQHCKttwZ6pOQOJYmHzeHkaKG5/m8a0kTmMBtJXn21uOGX5c+9sM
	cWMmqDlpZ9V3ZeBN4wYXGOKZJgmzgn8ZWjt59i1GkhKESodxXj2zQmZKYAIXJr1+cOjye5FzHy7FF
	kx1oc0AYen6sDMmMcZcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeS-0000000DpDA-00Ln;
	Tue, 02 Jun 2026 21:27:56 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeN-0000000Dp7V-0occ
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:27:52 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-4863eae453eso785932b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 14:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780435670; x=1781040470; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=cjzVVRn5LaG6KBmyzVZQvnkl0nyiJBLs3aG487MFPOXA7BnG8+Ueoq27wsi9qQWmw0
         Yqq/IrfgY4h2CfgHEwCRwawhHzfOgdebvBFRpL0zOt8pUivmG9RMKwX2i2Ck4sle6YhX
         dEt13oKQ/b/I04isdxUzzaH/N51QqopRONsVCFVGBh6q2MfuBydfNm+MOnIo/SNJcZ7Y
         wSzgN1YVM0FJcu6WL2TC8v1qk7QRALRE50k4CEOAHAeV0A6PrzghQbVrak2Ru0SKcXF8
         wX6mexNg/PAMwfZbO8e2Iikx0JrWVJrUTGsDmtUsbyLyMZw+kBLakYIm15UJfVc1wxCu
         V3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780435670; x=1781040470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=SCwk/2aMbWFoHtoHzl+YeTAP+WEryC1SwJjxwqzOfZGx4qGO/hpLKgRtxSwl06Bah+
         A3BDWNqZSSUnKvpaUUUPAjXkfUzoslRAnSy2QeuF7wRhh2RnwV86RKkVRXbSMIQ85vFs
         +vdEv3RuREaq1kGbGh+6aMMDcrFjiG0lEeQJVUEKVoCorQHfVd1K5u5uzSFO3lUu0MWJ
         4qTN3lsqKweAywjV0yTp6LJyZ+nDn9n+d5E0kdI6ehqhUckHk/+dp+aL2ni/LuP3HAlH
         CgCCN2BEXfiQlBxSTprDZ47QOpibW262NhcA0x/79t5VyEvMl5g4Yaapr3NtlDROa4uO
         ZiUg==
X-Gm-Message-State: AOJu0Yz/R0iNC3dB6K8KySIpAiLXuClEJ0yFR/agxqWtoQkZkN/280tC
	8tESFCgcsrreYBpC4EYKU2kUGiCaqRBD7lhpKorW1M69ke2Q1m4l33vkzNUxb0ZB
X-Gm-Gg: Acq92OH9qDc+FUQ34jmNOF9v/5jBjUuZR7me9ZL6ytTGdiwd8z/hV27O+PWgDqO2cRd
	/wY5hcOFbDwvlKbZnTwtAkVTXYFIHugasecWyK93Xky9KbUTLIDOxVkOg7o11frvHFIcwjmLcHs
	rsh2WBOKluAY4GYheJQ+J4VYRMwn10OJMppC6knry1cG8iwNDdCUYhc6aOv8Wysy4mw//gUT3ny
	aK9Oy4Hh0eRG3FIXpy1MMLWdoqCIq5vnGIWLH2tBaX1XiaOsYN9tL08nqXtv+dG7o4dynvCXaDO
	MNXmDNlKlVKCWqv7d4RE3ftncuudwBujtvCoP8F6ai8948Ec+1hEEIET3v1ghnhj7hQam4iVobp
	dklo6NwiIpUM5etLbM3e8yoMG5v4XEpmsTDADeYjYsyEubxU9LOmFdI48T7c5q/LZjLa8Y3Vk7T
	q7sTm2XCXO/jceKXaXhBfLg4qyjdviP3Y=
X-Received: by 2002:a05:6808:13c8:b0:47b:c2a2:1c89 with SMTP id 5614622812f47-4865aad5524mr450201b6e.21.1780435669969;
        Tue, 02 Jun 2026 14:27:49 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a53bcsm216722b6e.3.2026.06.02.14.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 14:27:49 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V4 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Tue,  2 Jun 2026 16:25:11 -0500
Message-ID: <20260602212512.418166-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602212512.418166-1-macroalpha82@gmail.com>
References: <20260602212512.418166-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_142751_601668_12F69006 
X-CRM114-Status: UNSURE (   8.43  )
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
