Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3352ECAC5A5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAy3PVGMnsDQ/hwO/NrRL9OykkwqjGYJ8XVmXkIhMZk=; b=CLA0HnbFudRicH
	8OTXgJUzI/79NsYMxa4Kiy2Dk5HDSMD+0kxUK/VHNGYXR09uysRpFuPHxAKaUKOWSrd8IRcPL7VX3
	XuIxwIG/UqT9nX7CJibgSubfYDyENEAVQyRTGW1wwGdRLJ55tygo2FXR0kUSOmdomAmpMUBcRu7fD
	Ztz58+CTACdOe2AWJAqh+bdpXh1W9pnPwbpqnKF1DXLJiAbno7TSkvQQIWPOyWAY61KPZjy9wHot8
	5zkl6UmbYbK+7qbIqqpNEhGch2+/JHJbP26FAe3diUOPP+JYCmM0erRLYmnbux23th0EqPblglxd6
	5KBeD3wNcqfOIpqyQaEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAL-00000007Xa4-0IHx;
	Thu, 25 Sep 2025 09:21:29 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iAJ-00000007XYU-01Sj
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 09:21:28 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-27d3540a43fso8120655ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 02:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792086; x=1759396886; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=gMVeg7nIb+N9I+cpgB++W7FDZXHZSITx+nCpJnVAX/tFQrUXVJB1eqxYiLaeyq1AmK
         GAt2gQ01JjQP+19lAn1TGCPQx8U0XXxBT6aiLWYD+SnHo81ZNeVYf+1VVv3q9+UUSzBj
         DJWWTVd2zuD+B9LabfSOxfWrCYtknTeJzxLez7mu1dUnRYmGX2uksA6/cpeX0UGsz5be
         Zh4zNsRFMjRa2Ddy5/3irccPPtr1eXuLFgxDo1RqNm9d0/33glxbtnsZWhWJ7dRFkT0C
         WEQZllgNSzGI/aZVs+Mmp1OEiXEnCZraspp4tSsQMVl/wh+DWFiLUGKOolJYSatWnfBz
         Q55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792086; x=1759396886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=cgI7ZttguwX/ZZu60xWJ3vIirHdWXUdJCYuDgvx8RGbvJths9NhIiu172TsNK2mZjT
         Q26AzKL5PdQtzPJ6WyyEgp8kDGbdaQT8BQfLYTvy9SrLo+J6yPWnvNwqFZX5eeAJWLuR
         NS5xxPbpAGAR8yKhwLRZNuJCCX64VroRaNJKIwi5fra3FToaq8t8ZMgebcEQLeh9SeCO
         s3u/oi0qL+XpxBdGs5dphABulDipnF19Yb/xUZe0rBs3qJ9E9C2nbT/OQAcU84BrvTa5
         kRwub1J90DG65fSrluoKtrX/JppCFauKRJ0LeauUAJmxV21YtKVuDhGPFI9ogDOabi+i
         J6pg==
X-Forwarded-Encrypted: i=1; AJvYcCW8bi1hRjZPEa8OolvWAAon4hvggdvdQZ3T3r+9/ONO+28TiKL41NvB922mja3/qdNXD/anYGaU1uwt2cfnpw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0VkQ5aM9fiJuTLAdn3ar/6UWTHj21eUYK+3ffc/2A4/CA5LHZ
	zedisAD+rcPHvpEHJqZ0Z3hDBFFq+yFToI3e3gkjoWoavVtK2QOXjLqO
X-Gm-Gg: ASbGncuk1jVIhSIeRhUkYAd/xTDqn9rWxrON3ZOH/ApepZFW6S2HborSccQ7I9jXh7k
	TGzFRr0pa4J7EYZ3bE5FbCvgQj1iPcoHbT1X+MjAIHLgKZQZglJas01Ji0I9SELtCie4xfVbAy3
	bSzP+eBVRffTx5WvznfRlz7HIQJNulMXH7TUIRSDSWDOtZwY6YFBv5Ike11ZCqhFDSnVld060mN
	yfKkQZqVB+btxBlCAqaFJUfJlnE6RQA5oJvwpGqTNoCdppm4i5tsxsIGZ5BcFwSY6+XG+iukYgA
	CPcB0VeQh+IxblPBxOIdvpEqaZgSA8M0Ljx4s4U4CxKqi27Lks9kbNrYXSdM7/2YMSn6ADfYZdr
	VZFeg/WUJ2zFDQ+5/rW7N5Ya6VvMxiUwKrpI9MHIS8A==
X-Google-Smtp-Source: AGHT+IGuddAG2m+l7uqXE77ohvkH5b/2O2Eh2v8gCidWDhuRqQvkIR0rtKEWmswxBoMYHW2Mjz5AVw==
X-Received: by 2002:a17:903:2f90:b0:26d:353c:75cd with SMTP id d9443c01a7336-27ed4a03486mr32626325ad.21.1758792086107;
        Thu, 25 Sep 2025 02:21:26 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:25 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Thu, 25 Sep 2025 17:20:35 +0800
Message-ID: <20250925092037.13582-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925092037.13582-1-jjm2473@gmail.com>
References: <20250925092037.13582-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_022127_038302_42B71B0B 
X-CRM114-Status: UNSURE (   8.84  )
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
