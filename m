Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC334C0218A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 11:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5imVjR1qpF5AdE2rStRU7dpPncbmKZhcn7HM/hhwgEw=; b=MAyALRZzVD5nWI
	NW1UKcIuSh0tM3ymwGMue2Qymp8kbCHlw12ip8OVeCD4mFNcYWgwR8Fkf/b1sbf4uPBf8rc+Fz497
	SvijaGzt7ijUbFknev2MXOId8oBfBGrD5PzAGrnB4fwe+DMOhOA4hh7ku5BSJJTlk1fFLbO15iRYX
	NBTUhdqRvb2jHHetAPatwVYXTsM9+BhRh4ezIR8vD2sclGi8bES6r9C1TB2mjrLs9ojV7ksxU5yZw
	lrwYDIuzykXGap726sHfyddZH2m2EImP942emW9zOiwZV4qO8wFNEkDNuI8yg4/DNcxFLwq1SxxNW
	rB8NQbQyJK1OAB4Pba9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdT74-00000008jaH-0ibz;
	Thu, 30 Jan 2025 11:53:38 +0000
Received: from mail-wm1-x361.google.com ([2a00:1450:4864:20::361])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdT70-00000008jZb-3Mr8
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jan 2025 11:53:36 +0000
Received: by mail-wm1-x361.google.com with SMTP id 5b1f17b1804b1-4361f664af5so8002865e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jan 2025 03:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1738238012; x=1738842812; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CuBCputXLU2pypUU/cEHWnT9TxtQ+bGj8yBwSpNY/DY=;
        b=qaBsprQB7Tq4w0dSQEU+DLrQfmYT5iUpkXRWm6qmDCB//cANf0svUwJxUPDQGE+ixn
         cOHO7FSKhgIl2fz0SJNw9HdIR6eoCKGUKdxnC/dPLamQjVBsafP0JC+RLaF9/+A+O28Y
         Qy1tMNPYVSzMww+88smZc6bJRGI0QZPA0on1SfebhE+2Po+XXKsyI8URqk8VnLxw0Tyv
         ihIKcdiRui68id5xl+dgZ0lSo0MC06K6e/vcX1tEbo/VypRrrlPTrXJbxCn7wDPWJ75G
         4cy/1ZCiGZ/6LeTUmJhqNv6HMYV8KNw7WvmIIOAllCMNO3zEfiFaHSH68nVZjhSjILJq
         /hFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738238012; x=1738842812;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CuBCputXLU2pypUU/cEHWnT9TxtQ+bGj8yBwSpNY/DY=;
        b=Eo/gQVz1rXV/pmG78EovCrQjluwBlAnjyls8YhkSUaL0wZ1EEtj8nsd6kuxFoZbFB3
         nyYjAinwnwdMMkyquepE38+g3by71ND2kATr/excvsztkF4xpU5/sKu8eSySpk1R0vrL
         WGt3+dFjfnjoDS8AwZdOd8q/Js9lOZ6/5Ym9UbCr4fYNQsAidhk84be31Siw2sQZMfq9
         /cVINpkWc5+9imtQ1H+ziItwbkHn3UmiOSEOTY8CixMu+wj+F5aXjabVqydRIr88yFiH
         HCM/C/G10xd9dlVCbE6r/+xE2oHzpPgvJ7FuLkKhNhmybSqO4JxlybWDDqCm6s3V/hVm
         inxA==
X-Gm-Message-State: AOJu0YzcbGoeml9ZQvQCQpphUfvZuMsWsg2DvQdgdSNbuOs2di4oxKYf
	w2QtLLS6vIZO22srm2p9wuHa6D8l/OH5zbdBEbAqIT1UbwE/vfUAQqcCmHzQGgIxBJyOpCsY2sw
	xsAk8FAvmNQutgOSNU4m/WxAF0PDbcdlHZsloSLp5
X-Gm-Gg: ASbGncv3+hinLC5V51yGVdydyiloj2b5vMyFWwaZ/XqthRmXP19GSbw9w8f0UHLutb2
	iXbO9cIJyTcWiFwSGes3DCbNsTxHUdOFFapvTsn5qUXD/4rfVh1jb4aRNgqwsLNcxPdDBjI+PDw
	BOaPI+AXoYFqNy6LgqnR+2E0JukzH3nvpHFMJ4ccWciUfu1pTpmrbEMIiViKmjuZ8ErlS+XGIg6
	4nt5J8V7KEqI0vKXf3mRMWOUG1c6kHnzQ1VQUCcn9n55SoGJ1bayp8LOWDPtbrd+ISLzEpaszR+
	4kQkKwhnw5yJuTRu+9Gidef69AhpaUdD
X-Google-Smtp-Source: AGHT+IH9MZSA5hC3H8pO6YOmlz/fBwHCszfrX4ssHJaZQj2Tf715OBtQ0JS+NzH/6ILqJwBnKjfqVvKQfLQT
X-Received: by 2002:a05:6000:2c8:b0:38a:88f8:aac8 with SMTP id ffacd0b85a97d-38c52096289mr5391502f8f.54.1738238012345;
        Thu, 30 Jan 2025 03:53:32 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-438dcc12df0sm3750845e9.11.2025.01.30.03.53.31
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 30 Jan 2025 03:53:32 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Thu, 30 Jan 2025 12:53:29 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z5toOecuMiBXM6aF@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_035335_093517_D0A3C10F 
X-CRM114-Status: UNSURE (   7.45  )
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

Document board compatible bindings.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..bc995db8cbfe 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -710,6 +710,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: MNT Reform2 (RCORE)
+        items:
+          - const: mntre,reform2-rcore
+          - const: rockchip,rk3588
+
       - description: Neardi LBA3368
         items:
           - const: neardi,lba3368
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
