Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ABD0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i75kLbk1PjwmVFXqLG/a/IfGwzkpNO+hNG8HMpMPxCo=; b=gfCdbx7QmrffyQ
	wYXOyXZhPissUaZB+W69jPsC0uotGqKzwGlijyCQC2+SHUu+jY+x07786AuWY0+UpStFTLn5xInm9
	mHMlvQZ9u0KX2a33YghoGjM8+/XlEj9cfVHDjvvlmYQhyFcMjBGghuBGx5VOnXnvlJNblUtaXR+6E
	IifcveXvWRhEK0wRu8tZv48vLGxUYi8p60SWEqfi3LpsN6nVNWMfSPoXqqbAFxSuPzDGznyaXHAU7
	tnVxKYBIq+AruXXRKYpbQ8tIAJtt3D53Bk2Qz7W3jsMWGqcYTVTnnD6bWc3UT4ny4THuLirsu00WM
	iKwyI1p2kWAHM5nieE9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6L-0000000Deyw-1AVK;
	Sun, 23 Jun 2024 09:01:33 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJ6A-0000000DesQ-0hkh;
	Sun, 23 Jun 2024 09:01:23 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2eaea28868dso43440841fa.3;
        Sun, 23 Jun 2024 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133280; x=1719738080; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqMpbxn+qhcW76/sheILADMaTVAYcOB6vMzBzHs4wdY=;
        b=XTk0bWGCE8qxG9Lk3f3HQUw0OkNykrnJkVAoQcz9Y/3snUg7O5AXznyr0BkefAKKy1
         ua6qCx690m+WdeYVoSvZC6C2h2FvlnTwLceI/hSVIkf6zwqxTcZmXxFWEixVTTDdeOzI
         hanN044xGZQPRlzbl9139KtoZ9LsPbF4IlUlMmJr+KC7GTwyNg0xy0zfMXm3Cm6R0PVf
         lwy0rrB1xgMOtWMhOBbiFo/6BL4/LgtgoDnZeC7xIIx3h7PcqQmJjR1Gp6mVeqSuXhL1
         N1J0csWB1QEBR+ab439UXdVvuhFTWginjbcm917dNrKTpCYPileYz/1zJaSr7COAMVz0
         rMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133280; x=1719738080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqMpbxn+qhcW76/sheILADMaTVAYcOB6vMzBzHs4wdY=;
        b=EbbRgx1vLrcHmKGwadl300QDlnCdau8e7d03d+tCSmi6hvFD6xJW9qVCkzeWP0GPzH
         NyfN/gmKjWmEnimo5pIQDYcGMKlp2B9+je57HWfMW65jZ3Xv84aDB/NjW5v7bzSP2/r1
         sRiM9EW7SJpvzSKmaFVAsns/j8b4YAsI7hYFbmzHgzUzuzDe+8uG5WaZQeeG7Z1SR5Ej
         cnk3JRWKDy1GEOaEACRdEfMTE30FzUytO742nX3KnbTiu6lhBXoGWxDShZZkdMk+9oyc
         AZURYbY2njZTzR4/h1xztYEX5fV67FNFmosfF5x0DN1+9zqLte+OpQzxkmkYFWjOsPXO
         eQuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtlAEKnZqSjz35mJ3zVKtkv8Cd5kt84+sgvPB/9WJSwW2AQ2jah41B70qY4acSIsXExMtriTvBEGHDIzHmwu5hAR38nLnjd2qlSXHyWRU2xI4JOALOHulqb8HV3K5TpsaYgCAJDcL9lBWHzmpviJ+n70qBRcYg/5s=
X-Gm-Message-State: AOJu0Ywmu8aKcJTmBD2CNRcRqhe1MfBdzqyl11kgRXrOIgj9e19xrSsI
	LX/X2zyMlZ6SrzHRZOvwBReBvDbf9JmsFuPHLgn4Fp96BlLtuPY=
X-Google-Smtp-Source: AGHT+IFKwaftrnzrFipKnsCcS6iTtyGmISk1R0bB2uyq/G/bVRqyp9Fw4gBkrsygi0MoPkFobiD9uw==
X-Received: by 2002:a2e:968b:0:b0:2ec:4f6b:de7a with SMTP id 38308e7fff4ca-2ec5b2c4e9cmr11873601fa.3.1719133279370;
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
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
Subject: [PATCH v2 2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
Date: Sun, 23 Jun 2024 11:01:14 +0200
Message-ID: <20240623090116.670607-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_020122_225229_685565FC 
X-CRM114-Status: UNSURE (   8.28  )
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

Add Neardi LBA3368, a RK3368 based industrial board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..d2e887415d5d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -634,6 +634,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: Neardi LBA3368
+        items:
+          - const: neardi,lba3368
+          - const: rockchip,rk3368
+
       - description: Netxeon R89 board
         items:
           - const: netxeon,r89
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
