Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67469CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdSv26IpKWWTwT7hGrMuMb7rJKsOrNWGMZBXJwIxtoA=; b=jLgYgyu+XbKVl8
	w09P1V2I1cl0qQGpHKf1t2SUYhH2+DE5t+74xrgp1yPPVK8MFGx4oLzcZPeWNjIqYIT1+Onc6XdZy
	VfypyNj7R3yiBOwtazD++WMt3JzgXCZT8MKLwMPcRClnGjbu8zthHqZ19I13hqCy+A9uHviJGudpF
	MLqblGOTltXMycwsHKtV8JYHNaJgGO67XXXE58e8xPzhKIIIxVY0rQ+MEVM9wqYbuXuwjJclStVIx
	mNyGLen2hHM58slgdnCxnKhy8c+2khFJvSK6R3VmGdjjeTBV4KetsIW2RankbS9xWI+dq3emtINp5
	DA71FzoZwFE6OM+Q2WUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAS-00000007XgP-0sdP;
	Thu, 25 Sep 2025 09:21:36 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAO-00000007Xbw-0DI8
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 09:21:34 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2697899a202so14982825ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 02:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792091; x=1759396891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=Pr7mmMwrm0ZLIfg7zyEwyixfbpxtQ9DS2rJ5h/F1iLec5mo16+X7wS5Lelh5ov9A3q
         KSvW/lv4FmtQdBgTDggmKg8LN3hFLKNj+IUs1zEoQ2bMQPqu6Ov/BxLSz0Bdy9ebZvp8
         KWSxqMoauMTDEDSgC2OW2wSp6Evhi/IEeg7N5Fqad6bng1A6lyR0TtSYiS9LIz/s9yFf
         q+v7678k9EJ1ADAEOX5lNBWMotNmnHQnstWVAw+FaJPnsTXHoE3jXAydpq0Cn90e1cVD
         0sPphTj73hXrIRJuxd4yusH/Lk+5mCGuMCfwB+IqHudRH+jhtxiDGL6LH2bgrke9Lzjv
         QDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792091; x=1759396891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=sMO5GcIl8d+7kQrCQQe3CPS+kg9T5qHobdcOOfJQXjSiIGHmvDXhLiPs8kNWuV+LVM
         Yyr7rCMXnDoBOGMAcxYJCXAKGzNgWC0Mi/9d3WeWNNDJEMcJSzUb47DeFHnGYVUonjym
         VKJAMnXtBu2YNUGNbAre5jDnzl5vI8AE+m5jNl9DcFa7ODCk1ylhc5lE4nxO8AW2mSJP
         NooRCff/PoRWz/SF48JG/6KdHSQlVEXu7UsCGSVVLeraOnTA2Qu1etu4MZ05y72G8WA8
         W3DQCnQ9aber9MrGC8eH7cjvoC/N5FBSI3TvgDXerRakgfw6+ESEMnVO27pdZbfnxaua
         QvnA==
X-Forwarded-Encrypted: i=1; AJvYcCWS93HaNs1por33FjniNfq5xqIGu/tUDJo503TXdGgxU8wxVsmhgQrMIPyf5WT5ObpEBd+rC1avT1gd6dMh8w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyo9usE8iekB3kT5QchjJnWbNBbevE3znLKqKViaefcGdqdBWoA
	JvHA9omZDnmx5eEhSSDFQl6n6gfKmpzF/1P7lb6TDjbZm83UR48wUdx1x7zQDp5snkjU/Q==
X-Gm-Gg: ASbGncvpP/gD6+ebwBAgylysO4iBFweiI6pQQ6/KFvIu+CKPTBq6uTxlo3sP4dfc7DY
	7z/R5G7nftgQ50dTg412QjqYHLpsHzocyJj6Paa2SqIbiHqSCgAdkh1Eb51zzGg947Bjd+a/7Py
	45wg61d/9/e8h2Z5ZJpSAUz+YolsUxw524cEYTU3hBiAbtsOTM8llM2HMkX//5YzDapH+KoegD6
	/99pQEQO4CmDTSKtn5nolv6qlGA/B+QToEbALTV+7R56KRSxLYP0A151vWMEGISGCFoJTTIvn2U
	dKXmW7drgAhjFgVsIBEmcSINy9/CN0oUO4VPoTPJb5iPd4iMi04J4kmi6qGoQNsNc2+UyX10ZEw
	A7Jsno7jNul0xBWKfmF2CF3cf4jIvrbbRJ+28wWgF9A==
X-Google-Smtp-Source: AGHT+IG+5cSlAA4yEB0iWJUxUwgl6Whpi0RXiGF7IG4Oc+3ZX5YIYSMwXvdgEh0mLgMwoqgR9eg6bg==
X-Received: by 2002:a17:903:166e:b0:26a:6d5a:944e with SMTP id d9443c01a7336-27ed71070b4mr24813685ad.24.1758792091135;
        Thu, 25 Sep 2025 02:21:31 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:30 -0700 (PDT)
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
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu, 25 Sep 2025 17:20:36 +0800
Message-ID: <20250925092037.13582-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925092037.13582-1-jjm2473@gmail.com>
References: <20250925092037.13582-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_022132_093411_F36759F9 
X-CRM114-Status: UNSURE (   8.47  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
