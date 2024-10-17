Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE95D2F7E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 02:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G00N8t9OAmQ9ylZQBBtTDdr0W/71GTeYcDe56oDjwWc=; b=th6DIpn+U2cMse
	sUyi45esZOCeisbLP5ai1S0SARx3QO4tlpYq17C3kNsP2/RwpUYQQD/tV/w+RnM4le5Mhy44aImBh
	p4s/lUD+LIdaBPNOWMkfPJ6Gd2Be1elNO0uNH2OPY9NRIe5gMH/kkHFQN9MPxJ9bzugDxhHVYPxvF
	4OQquZcHxcxjHuEu8rrciaoYPOP7nrRLnj97xBAIKfZRAH1gioUPJG+PJyTX6buV0lV4vn7FcRfvV
	UlYDqYvxi5WXBiW/1gAAk/fyTFcknUdMGlvNrgvlYB15Nu/7qYyS787BrbQ5sUSKJoQfoKpnv4Bmf
	k8iT1UATNbHCvB0UwKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1GeR-0000000Db0s-1PuS;
	Thu, 17 Oct 2024 02:54:11 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gcx-0000000Dahq-3k7O;
	Thu, 17 Oct 2024 02:52:41 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2e2da8529e1so77632a91.1;
        Wed, 16 Oct 2024 19:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729133558; x=1729738358; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=anEJomHrsRlwp4bT7Y/2bAO0FBPIolgYlKqfNbjU7Sw=;
        b=fCsu5UVMjNY20xRQGtCkd6OiP0Njh/gX4MYpqyeOAfM5Dpb+pQ3aRaiIkAJ3s0wOA7
         FZEaPCHpnLaopZ0ESrJe1AjU6qcjJ/plDcq+Vk5qqdArEndJYPHzBs+BTqYKle66DwLf
         8AG2ooBnjhLwIZlAyasnOT3WRmVrYIl9PpfLLe0+gIjg+SylCiDtRKQdvDY0R2U7olJ2
         i9xQxY8v/3AgrD8AnKa1ilStf+dLdMASXJRuA0Uufw2i0/9jsMGVEJm065RSIvsIf2m0
         z3vS7T8fJKnwnZIX2IHT9pxZuSSPhLhN3EXbtOkq+sVziJfKHBD2/u1hxsW1ZP8s25I2
         NBOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729133558; x=1729738358;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=anEJomHrsRlwp4bT7Y/2bAO0FBPIolgYlKqfNbjU7Sw=;
        b=l9wvncbbtKVYEof57qV9cOjQuLEw48APfb7j6kqb1hupWULu8Pxg3GzkqknuM6mexo
         YWjeWVa5xTI0vfFqwKrv8WiS3Qnp4NBPgeFrcLiHnYUD2UsVm21L91fPyJ3yXJwb9IRF
         GZTHz4Zq0bz0AkjTimU+mb69YMH/Rt5hCuy44csLWHtf0Q6GwkvHDYEkh8Ih46xb0ObO
         BvMMUSFkn3qoKcCsyjq+wf8j1+316RpkUgBoMYi1tDxpLZSagnGXTRu1SOnmM3Lq0a/r
         cvG3ElQd7u1QubrqXluKrBWjYQ8/VosGIGWS7HUACECSXM9L0c5nCN+1vG5OEY2cWZZV
         2Jlg==
X-Forwarded-Encrypted: i=1; AJvYcCW9P3/Wtmg687o52vs4H2lokqcL/NSHr9DigC6eYQvQQKE8DJHA0Wo+6MEtHY5IAMo46Mh7TUZrBi2AsdYyOea6@lists.infradead.org, AJvYcCWKJaC8Ulk+T3NgjvmVR2z1PP+wIjjxwuQ8SiJ1BZXkBL23OzXfJA3X1SuHoIkpfK/zpbLdPjxy4V6G6EyETpI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzjg2JjdwjiRdnDRMu5cqVO4x7MWPZIXTKGfp28aPI+jfa0uqfa
	mVLVZOvot229DykHQ1ypXSD2DRDKzZtBEMI1xtGB90W1OvLPyO5X
X-Google-Smtp-Source: AGHT+IGzn1MbFJSDxZL13wExxR6YzH79TcUSYhLQOHgaB/BQ6FXcMXvtdf5p7sXpTbHEEivTkILiNA==
X-Received: by 2002:a17:903:228d:b0:20b:99cd:c27e with SMTP id d9443c01a7336-20d47ea03cfmr8564085ad.3.1729133558431;
        Wed, 16 Oct 2024 19:52:38 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e08d8b6esm628537a91.29.2024.10.16.19.52.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 19:52:38 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	yubing.zhang@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf syscon
Date: Thu, 17 Oct 2024 10:52:28 +0800
Message-Id: <20241017025230.28752-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_195239_956902_E37AC1D0 
X-CRM114-Status: UNSURE (   8.42  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add rockchip,rk3576-vo1-grf syscon compatible, the vo1-grf is
configured in usbdp phy driver.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v2:
 - This is a new patch adds rk3576-vo1-grf syscon.

v1:
 - none

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 50d727f4b76c6..fd42217ab85e7 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3576-usb-grf
               - rockchip,rk3576-usbdpphy-grf
               - rockchip,rk3576-vo0-grf
+              - rockchip,rk3576-vo1-grf
               - rockchip,rk3576-vop-grf
               - rockchip,rk3588-bigcore0-grf
               - rockchip,rk3588-bigcore1-grf
@@ -283,6 +284,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3576-vo1-grf
               - rockchip,rk3588-vo-grf
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
