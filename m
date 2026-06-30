Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7481C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 15:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wR6b8cHf20+CIzmhnyMwxQIKzfh+80Z++UYXpBSXVE=; b=zrdNVYDARDUkrG
	hXR7S0UTly0uzkedDZ7Gp22veSNDPCgcm1TldxFk15OreGZhlFB0EXFpP3uNva3HOGCYyaqdH11qS
	R+sm50h5efHuXmCAkq0D15gTuqBeHhHXKxM4uh+E3ZcSfYPPbg1HHy2ZiKuzi28o09j+zM+yt4NWf
	9mf5M2vs4L/5Qlf66LCQgWF+Un6igPb4ntmc3+mRLbTJqNGyvToqehTjT8lT/+JlR9k34fS38n7aV
	z0IwGWdTDRZqV1m8uAHlCpWZPfmGZBDSB0R7KqSnSBmXRgCG+jZcVSbtjQDP0eLnftzZZJLb/BAt1
	8BMbk2YjQHE4ng6WpENw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaYF-0000000HOHY-1suN;
	Tue, 30 Jun 2026 15:39:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaYA-0000000HOFC-49ZQ
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 15:39:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id d2e1a72fcca58-847a483e344so550573b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 08:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782833942; x=1783438742; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfmIKm5rHIJIAW9GcZYFiHLu+bo2uk/pPVU4wB7S6jA=;
        b=DrW4XDVRhYKGGHejagc2FTLu5sASqbqMlKQEAsdQn/ZAzalaF5Gm/r0P9tsAVVoKNA
         vsQKc53/QFx87n7Lbl4m+GuWS3wMHZ3wXGLrXJHlhKG1eGcEE7dRwLSkU/eAfp0hoOlR
         hicRQ46H/Q15kO69VFwl7p5fiJxO9ilf8eOu02Z3JqgxSqVJTFXuEK0GPSq0ESqLgZJr
         M7O2U5H2L53rb+tUQ7t6ISoTEmvLGKrDDzteB1NDh2oMxabbhsKKJ+tstl8ypxMOcrHn
         5iIzHF/IeSFYGlHW0iHfrMqbazYt1rQGRbxH0t9ddQYNdrQ780TK7araW6HGFGI/3/W5
         KmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782833942; x=1783438742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WfmIKm5rHIJIAW9GcZYFiHLu+bo2uk/pPVU4wB7S6jA=;
        b=nrlPWZUw58jBe1DgBx+CqHta5HfoPhyTv1/CpO7CXSleXPDJxeUqmuuD8afDBp4Heg
         Pva0BpTfut8CMRXp53qe0ub/dBYRI2Is7ASxeaUAaP0l4OMH2olXXL3Vp7OSKnoEWUXE
         +JWHJkgogqEiVEIOfMoUZA8rw/l/JtW9Rfa1qty4rBniEOg0pUPs7XYmISDJTffXxDEN
         rhDpt2bM2SwUv91iY5IqE/qNm1OGtmw5lGWmZ2/l6fTZ3WnGTS2wQ1c+StTaq9ht7uTp
         xr7eXAE7OsEsGVvaaRv1IO1kTpkcFpdc77KbwMp94kd23KaB/TwIqw7EtnmkOAJheKYJ
         FD6A==
X-Forwarded-Encrypted: i=1; AHgh+Rp0aYYc9TBPotmxxhadV0vSl9jPEVxFajFlOJ18YYJrL1Na/n/YYiIrIffmTjo1iXDZKnpNqD35yYMIq+9hQA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/lVYkMNoB/di7xFHNDod2d692b/cfXHQ42/aNKUBeyBpo6ujw
	zG+8RKI3i7LjO4Y6BNXj0GiIXm062h9uZNmMR3Sq2IWXnNCSRchFy6IrLmh1Fp0BmbjQjg==
X-Gm-Gg: AfdE7clZUaZZE4BDoHvgeWxTfMmKDsssspzrs2703BFSLWbiLpZK+/IDJeExSds48Gd
	CA9NysVp2nfjyfIPLiaS6hUDJ7ADazi3HqzA0tyjblVPGQSmWL2uhfUR90BsiB98itGhPsu482E
	6yRB7PzATg5fJb7fHsGB3tgxGApmoYgCyvhnHpM0dho/9rKXtC3xPtgNk5ZalcbRSe7/JPBQ4JG
	IJIBq7+73kJ04/i4XQuV+ErLtFwGuA8W5OUomLvrZv2Fd0WyrjVjCeteJRR8Ej5oFEKIVvOUpVt
	Q7T791n3kcYXDQXTd2cduKeDaJ0183D3REeo4WHArQPE1W21xbmQQad0od1pQp06VfS670kWtHt
	0MJW4xIbPqXQCHtBeiFRcvdITyDXK4UBHalM/t7LdvHdWbie91rKZvSNVnUnSg64WMFscL+abjI
	GbtIkZj1atLsg=
X-Received: by 2002:a05:6a00:f8b:b0:847:9223:9726 with SMTP id d2e1a72fcca58-847a82d9976mr1775094b3a.18.1782833942073;
        Tue, 30 Jun 2026 08:39:02 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847a03cb50esm2413695b3a.60.2026.06.30.08.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 08:39:01 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Tue, 30 Jun 2026 23:38:11 +0800
Message-ID: <20260630153810.3574714-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630153810.3574714-2-coiaprant@gmail.com>
References: <20260630153810.3574714-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_083903_033774_8EFB3B1A 
X-CRM114-Status: UNSURE (   9.51  )
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

Document Graperain G3568 v2
 which is a development board based on RK3568 SoC.

This series also have an SBC series with the suffix "box".

This board is development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d0..9eb2f66ba3856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -684,6 +684,12 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
+
       - description: H96 Max V58 TV Box
         items:
           - const: haochuangyi,h96-max-v58
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
