Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F53CD6E75
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 22:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=bF5LD2MZY7DsLd
	vfRHYwc6hprxNhWbihxt8PTHfgzpuk3TrFr8ulc7I+9Qljz3w3E0UCAEdXSJu8ZtDMU6Sn+dcSx3P
	a5O+GaSbrZk7d5mPh3dYEGh/cjgUPcaVkpYOpX2T0N8rd/V/RmHwrcJaPgiHBR2Q7JC6GZBCjGtEv
	3Znk62QAxUq0of18BTuy55e6jGyMX7aGqf8bw8swiYzFeYrGRG7vhNUs3+rfMSnkUrkOu/NPmuit5
	eFS9MnD92j5dOaMt0CP6m2JCtFoJNIXPwOVPK83obOu5Z1fKit6vKwHiJww5SYnmiyIUiAAUElBby
	VM5TMFBOxnjV/vVkR9Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGo-0000000HO4n-0SVd;
	Thu, 04 Jun 2026 22:10:34 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGk-0000000HO0h-1Nk6
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 22:10:32 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-440df1c768bso971735fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 15:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780611029; x=1781215829; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=OP6r5/nzq3ziMmYc2xTLNJEJMOP4n24G/86JLdsk3TdtRD9jmfgJMbg/YFUvPMfRBY
         /7BLV2uDpjVKITLxLocR1AEQClysazxKnAmRrxJgG5PrVOwfSLtQi5aTfUWhp/2UYA3h
         XVbRFbMkoUUusTle0LdozpQ4sD9OXyaWRZCJHLBJKhl3FS5UPov3OfIKnRBjerRrq/1f
         fXhY4Tdw/Fimq7MPVA2SXmVdLpVqcp/8ZKQqQq8VFrRoNW328/pHjFjsyI/NiyuGa9R/
         O1hjo8dOYJpeXWIf1scAkHThezOBvhCcFhtL5BUfKur5jcmP99N40OzjtnJRB1VMTyPc
         bc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780611029; x=1781215829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=AdyUnzPFN9jAjl8t6G2aKWV4CI2HMQOB5nk6MR19T/vHryhtqkdosiEMLBNVEyA33F
         9v4UOzXndDMns5uGnlsoYyb0zqbbKTsojhOCYbmEv96ccFQY5K3Yqqp7cIgJij1H+tWY
         pk1I1mM434wa6/uqYZjZBeZ4TghMx52zCrVJ5piVBYUm1clV7pd71a71khqo3YGXvnwP
         O4gPV6LSqWSteW3/CGxkl0poL7Cy7BuuKZFf3GOUzrDKnH44V2mdAfcKnHUcBdWr9wG0
         tWqaNiDtBdNB64q7izpjHQZtFUc7nLhcM82HsSIv6lfeah+TbhTy8zZW90eDGVreEBIJ
         ywGg==
X-Gm-Message-State: AOJu0YxtwJ2CpET8v3HwrhwklRmsEchtLjlarYZW0alchUPtQs4vqzbx
	jIxNRRx0wozyczXbtE8/D7b75jmP1M3x7DLYz77foxbz4s1zyQGUACEjF8LPpWTN
X-Gm-Gg: Acq92OEpMmhrYlRyaS0uuA01q10gwpRhPzun2PqTcPAzVI1sOliTB4K3PVXvsWVz3G5
	bpplaIQmdWE0zv0/bqwv4RdMqS4Tp0QBQapeAPaG/9dY7cs9IirX71XNs1/e4JICjOrXOhAqEV1
	KPThI4KhwRUyiuDwyabTcBDefGTdJz+iKnxAcsLq4kqPpB+DG09W70D5ibQXMRW3tDCejBNsGa+
	E00DiAYLdzv1IjYKmndXF54lcTMXkHgOoeTIiyOAp+38pM73IJlF1/wKS9TCKYqI3DYNpr4ScoV
	QAoNW2vcA7o4hrXo0Gd1kzK+2Q8As7nah+uE3rTHjXW454xm6iQy7s65x0InmuTXJg1wsDrnWkc
	7OjxsOaLDskZTY/z0TNuzZ3Y/rc9vEvkYypH8aVuN3Tb8Dd6asTayRV2JhPsStpC/8+9sq88r/t
	4AUW0/X54ybpzykFghqKy0GzPxb/Kzxqo=
X-Received: by 2002:a05:6870:f613:b0:439:b1e8:8a57 with SMTP id 586e51a60fabf-4413d95311cmr504827fac.28.1780611029293;
        Thu, 04 Jun 2026 15:10:29 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84c0ce2sm6802987fac.16.2026.06.04.15.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 15:10:28 -0700 (PDT)
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
Subject: [PATCH V5 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Thu,  4 Jun 2026 17:08:00 -0500
Message-ID: <20260604220802.119107-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604220802.119107-1-macroalpha82@gmail.com>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_151030_362910_838C821A 
X-CRM114-Status: UNSURE (   7.91  )
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
