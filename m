Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C61C5C4450E
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 09:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWqAnbCAlLWHuJD9Sooby79bvinUOANWizDyBw10NNE=; b=F/jbsSpeOiM4dz
	91/xDgdn4XHHatjEdOddyBonVJRUCgjSlKVfSHAkrdJZ33tu9AT6D+qvDej4iWKZMfCMIeBZG9wvW
	4sPJOgnNlgOBvnq24VXEpQNIqNsH2cITTwavXQjQU4A/ihfB3Z7qqsr4ASrd/VRgOyfq1w7NPVI6b
	+bbZKg/q1Ubp8zpVQf7wl7pup8XO2XXBC7JU+KUX9gc645S8NVJXKizKrWnhDtog5drz6CXhJBsX7
	osauTOacI+Vkic6O4j5ijyJPVtfY9WxJCnOMP8G8s720H/7/fVzrcQLwfEtZrzMvplV3tE3HTlvUg
	Xm98wjiunk/I1WzPVbFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIPF-0000000Gri8-2Iu3;
	Thu, 16 Jul 2026 09:29:25 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkIPD-0000000GrgX-12Y1
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 09:29:24 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-81e8fa1b8d6so55775207b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 02:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784194162; x=1784798962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bSYaq4nat1jPpXSI23xdg6ZNt7J9ZT6NEZnDaQEBhfg=;
        b=HVEDh9pI8t2mklM758aQPAF40UScAvApVT9QoXYsAPMVyiAZNwBpISFMqaBhQ8wDuR
         Ps9+nQ+fUdtEZu5Xsg7XNAi2oomMJEPkQ4x9xOo3IYx3hKCzljaSjFql29BNMIeq67dt
         G1rBo4unZ1zEAVLuEWbmaURfPR26w9HlTdsH0uZ7kv41i5qr0eoLlFIWHBLylb2W5rJp
         snSHLCoKlGeClty1AZjleTlxOrlFzFJwljkfhLRTdVXhWfKEdEQj69sVAmCiubP+9u6J
         D9bq/s0itjONbKHf77/o17VSPGnOMuc9I4M4kkSBnBlLtHatLOFLV3Um0eo7NpNtSdGy
         q2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784194162; x=1784798962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bSYaq4nat1jPpXSI23xdg6ZNt7J9ZT6NEZnDaQEBhfg=;
        b=EzTKxgr7fKVleKSzPqzZKG28IefcsOTbM86lQhTvPi8XmGKv4pkYuIEaOHET5/xHBI
         aP7TXZtP7CpmRTaPeXwliKDVUHmJzz09dXhzYhvNrFCuNKXbGaw38pUUHF6kUnMZjKtT
         vchZw/qGSqbilF6d9nlPsC2aDVqliyOxhBe1TJfbZs4O8CWBz7Cq5Gy5avJ3Q57Rw+F1
         bEm7gLJocIT4oDsbxJn6HSBHm1rNYiq1RFA9wpmi4cN4aIrFA7XW5ikhhjV4xnBOpp0/
         JxXybMrpoJVVSpQQa6M07k9fZ4WM3Z7Idblcz4IYQqAXNv9LHQcylgVhlM46Svkbe4Rr
         oeTg==
X-Forwarded-Encrypted: i=1; AHgh+RqQOUXQKu+HscIg83kEf4HuIXa7ivoY2rfzRJo/QZyuvUcE1ZIWNVeDKET5tvpD5KKtClrXiqSYH1OhB6aEBw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9yknMr0WG+K+BOXEM8E1x+wbLCBHCfMcwm2Dmh/db7unqvkXg
	/Gd2xiY0XLhrV16Rl2WtSYEerVT9Gse39wjEukyM6XH6wjjQ/ZZSl6+N
X-Gm-Gg: AfdE7cmzHoBRzVcuT54cfhWUMNM7ckGmRnLQhm6dKoOJMvi+4xw9JhefRXVclMa3fsv
	SopI5zArzwvWxadamw6ei1ymftZMoh5DpyD5/zefcqBiCtp6hEAZJbkVXdF1M96/18wCidENtDj
	R/q5iEs3FqgxCh4QaPYgsk5SauWuXRw1FJ2bRTqTbXs0VgmTgzN1MTIoYiboXzMLyfHLLAmFT36
	M6miEZbO4Nz1dmvgptIXpSCG3XQgrvuKigepfPPlOlHh2So8polorSffZcQ3CBS8fCWeeE8radJ
	CxDISLVcHVWEwfMU/nmCgU2ImnHiPZfssOVcvaqiaTHLjJ1Lic2VQ2vnnbaaqU5N1pU/O4GBVhm
	oUfP7z2IunZuwDy37aDz7QmeXTI9vocUzIJzPDNzOayw4/dL4a20a4my/uQoUsHVHyLcDn+QBXB
	S5AkKPKmI5WA==
X-Received: by 2002:a05:690c:a87:b0:81e:528d:3625 with SMTP id 00721157ae682-81ebfd85389mr75472897b3.24.1784194162195;
        Thu, 16 Jul 2026 02:29:22 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e950567eesm130241807b3.13.2026.07.16.02.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 02:29:21 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman board
Date: Thu, 16 Jul 2026 14:58:58 +0530
Message-ID: <20260716092859.512306-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260716092859.512306-1-hrushirajg23@gmail.com>
References: <20260716092859.512306-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_022923_292497_D2A19DF4 
X-CRM114-Status: UNSURE (   8.62  )
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

Document the compatible string for the Vicharak Vaaman, an RK3399-based
single-board computer.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..7cfd3687768c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman
+        items:
+          - const: vicharak,vaaman
+          - const: rockchip,rk3399
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
