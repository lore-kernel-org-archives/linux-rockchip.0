Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0800DC54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iD/Y6lp4acUWECCD6teENpfTdQtmj71Lsc/7Ay55RY=; b=zP3FUmuzBBJYcT
	r69bsFauLrrqzGc+ZqcD11BZoWn8ADRYSICcejYXdPy6zy3tX4LimQUF0Mv1q+/m14OlP3JWX3Nha
	pWbTCNQGnT0/9nezUKB0vBjs3mTBIX0+U7sIUKfwSgMY3UE8/llEslYEjzrFcc/YROI28X4TyjYU3
	vdru4c7leBq+v18zuZff1lnjyxRNIN71iN1Fr0iUL0ipw1ns7/0BABTeo/Q7Qk2/nn5JY4mXEjOl1
	7PsPpEzW44yBueHAR/a9owunwbeO4lVNXVz8qhtLfy1lWKk3GFv2pbFEAO9bMTzk+4c6p1KBiO/Cb
	1Q2mPbPfmAlRnQuqmkQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Sf-000000087uf-3SSi;
	Wed, 29 Jul 2026 13:36:41 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4SU-000000087l2-0lxt
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:36:32 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6aae4823f62so381452eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785332189; x=1785936989; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q/poVjj7DauL+sp/Q/JZ34E4HGVAnOwuNgsFBTn2UtM=;
        b=WmX7NNBmAvNXfdXg+rJcwm1eVNXgy0A0MNzrY4aU0v4+rFAGBXdE4/eQ4AVmwg+ukU
         CmHqi/ZYu7ru6Hg8/iOFSrXQ9lkcNdxEAMsM+fU74iZFrqrrqNlEpN0OfwoXAISDI5zB
         CxTFsgARBoJ3QAqFBj7X+aEUlwGFOoYTrWkV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785332189; x=1785936989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=q/poVjj7DauL+sp/Q/JZ34E4HGVAnOwuNgsFBTn2UtM=;
        b=bwoUFtr+54zVYl7/xZ+yDY4LX7SEh4J0nzAQz37gqp9Tobmt8f0viKOovCTRE+yqsA
         fwLamhmKLpDGTfnEdXKqkmaGyqmRU+27hInrYdCBuP0nI05IhArrSE2nln3TUcIOX+Ad
         QIzLKclqJHo+T9/dZQQBO2CoZnUgaC3bNCq2c/9l3v+l2eZpYeE6LMEDyReMvRgrHeE8
         cfzkKT8WwtXImix1g4CFQhQ8CBo6Kh/8zG8gXlzp5EXZ0EZVby0EgU8FTBcfd2N7enMH
         0P+PioYp7+8wjcgsFWTNxom2mlObSLoPZ8975xQ4q556ocRP3OwjL16gW4cwmeGXRmIv
         F7fQ==
X-Forwarded-Encrypted: i=1; AHgh+RrJ16thtZuTTL6d8xh/eRvTdMXfs/E51W56E/F0OglYUDzAm/i32ZTFM5qiGeQq2xLkzN3qeqvE//IH3e/zug==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/VZrrp18qRLlFZtYrIvl+sn93+I2tJarRaJlUDF0yQHN8pOqt
	E9Pf3CpjMjFwAYFgIuUr5DyPlK0fRj1yl71m6StaKZ8l57eUVfp1M3DkHQh3nNr71g==
X-Gm-Gg: AR+sD11s3WZIs3OZhcw/F5u3wPCi0bvydRmGoktxTU9y7YCdKYSu4AcQmpYnvXILzaP
	fKOmna4msTBSXgmEqEfjn5ihAF/ju23gtjAjEAM50WtaoTzqbDCtAiamhV4PflruuEThvg3QWyx
	+pulByw1LV21auz3p0LKplvzTkiJC503QOeZBXI8JtIK2kBc44fiYzrF+X6DMzBtOaPiCIj0Egp
	yIr3yKsTBMTcQ//Nhv+UWiMctOWlpdu8C94AuCIdjpEwEy71SsJkXW8QHSlmweiymUmJZjCapBq
	ee64spQcFQs4tUvMq2/mhnjW++BPqi3WMjFxKs9bQ/2yc2tDTgxkvRMM7G7uUZXJYpM1RFpK59U
	sAL4yrtecitknQT+zl7jCjL9lHmUIdV7Tlu6pem43NvcaiEqrzW4wYy1SCti/t4XblaoiWBKjW4
	VInEVOgiybJ63kKQOD7AMD7fkZAwO0EjH3fHRjJx7lxC6Gk9P75ZQz1/oW+cenWvc5pw==
X-Received: by 2002:a05:6820:1a04:b0:6a1:857f:787b with SMTP id 006d021491bc7-6ac96d6ef03mr2710820eaf.55.1785332189205;
        Wed, 29 Jul 2026 06:36:29 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aca527fe83sm1956196eaf.6.2026.07.29.06.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:36:28 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/6] dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
Date: Wed, 29 Jul 2026 07:35:50 -0600
Message-ID: <20260729133609.3465563-4-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729133609.3465563-1-sjg@chromium.org>
References: <20260729133609.3465563-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063630_240349_9610A428 
X-CRM114-Status: GOOD (  10.17  )
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

Add the compatibles for the general register files of the Rockchip
RV1106: the main GRF, and the per-bank GPIO IOC blocks used by the pin
controller.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v3:
- Use a separate compatible for each GPIO IOC block, since their
  register layouts differ

Changes in v2:
- Drop the grf-cru clock-controller child and use the syscon-only
  group for the main GRF, since the CRU now provides the MMC phase
  clocks
- Use a single gpio-ioc compatible for the per-bank IOC blocks in
  place of the ioc and pmuioc regions

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2cc43742b8e3..ec122db3b8fd 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -64,6 +64,12 @@ properties:
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1103b-ioc
+              - rockchip,rv1106-gpio0-ioc
+              - rockchip,rv1106-gpio1-ioc
+              - rockchip,rv1106-gpio2-ioc
+              - rockchip,rv1106-gpio3-ioc
+              - rockchip,rv1106-gpio4-ioc
+              - rockchip,rv1106-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
