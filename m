Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B79E2C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 14:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+Ts7gyISUUjjDqB2yK9KFfsQxK15ItSfmsChIe6ERb8=; b=XcPtl801fwk1UT
	yihfi0cXAFGQRPN7juglfLlIi9Zj2RO2F4Bwq4bvdgnNqE9ZTRxdZtA6atU6lvLOJD8ATwJjdXhA0
	KupUMpv4Zq2qr32YY4PlvqiFntT6KdajZ38U6VU841Byq207MwgOLsFhpq57K/fnEDgZB+jOy3NqT
	FBkmD/ky11LkcCziDE6ulpEfeHSlybLM2Cul4H1BGKWWp4wGyUthZgEHGe8UwhHVD91NEr/WVWbOF
	aVEYI2Zw8oY1iYVB7EvRmkG1SCfhNMdG8EgohFRHD+2esYrkdu1C+wRQavs0Obu0QACwSeowJPn49
	2Y/i5CaGAfc5o4qEexSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7zlW-00FSX7-Oo; Wed, 21 Dec 2022 14:08:14 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7zbT-00FN2L-Fs; Wed, 21 Dec 2022 13:57:52 +0000
Received: by mail-pf1-x432.google.com with SMTP id k79so10736531pfd.7;
        Wed, 21 Dec 2022 05:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E16eg81y/3TQQu4tmwjH3Mb5kYfTWeAmEOxBvMsrRfI=;
        b=h46rfwZg578R5lfJQjxGyI4ACtLaDJEtVMY+ePsm9cCgqueg/CiA8SmQ1BJvIxVIFg
         vzyX7OF8Nqtxik5ilAB1s1HZiVSr1cEEWVMWDEun+On+zLocD6rux9V4qcaXtpMQPyAV
         xT9weNj6t3bOoPFAhw2tB5p9QlrrjMNCYDvKpkdW3SPHikLmDsYXQ8TPtkY46QFkkKnS
         I5JYZSse9Qf4qJOYLOI1DVkJMj+eDMUGri/XcggqqtR21VEqBltowzYzf13lozAwfQcx
         aY2Q4XQ4Ipq5lc1VJTiv6yZJzLdN1YL3weDGqDsB7V3zLXuz8WPLtzWW8McqDrX4gwj+
         FS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E16eg81y/3TQQu4tmwjH3Mb5kYfTWeAmEOxBvMsrRfI=;
        b=646B6vKc597zGJP9P8+p7uNros5FhLCBFzKqZO5baYcOjn4SoKkbQ1QWbW/MeWP5DE
         uyJoSfHAbU9U5ll97nr44A28ei0VMe0bU076A4K1nV+4KU3HohF8fPJQW9e/vodC5+7A
         pLUREl+onbXKi4tsdaFuQiRfUw7dsfzUCuwsYlpIiQH3INZQblG9hjh9d/QNscnthyGr
         ljA3WeT8aRHyM/BJ2BRRLNG/CN9lJisWJSb3KSrxc/NO45hBkbxC60PCxe9ebAZF3ePI
         SBlFs12dY+3ZvWAVueflo6QNJsD20P1WlSC36VKfHQOL9fX21gQcEt+4NDmngUiOqNFT
         T5Lg==
X-Gm-Message-State: AFqh2ko+j4Tx+czE8lZz+uWguIAnlbectnhrc+zxYnHqFuSqO1QwlWup
	n8ZGyq87j+al2MunhSJ625ltLlmyJx2X2qcZge8=
X-Google-Smtp-Source: AMrXdXuC8f7v7qZeunwUnRD8pcfO8e7Ddu1MOHAZ9RXSbPfNOt/3N07oAezsB8sDciGHEPIShb3/Vg==
X-Received: by 2002:a62:1902:0:b0:578:3592:6eb7 with SMTP id 2-20020a621902000000b0057835926eb7mr2271755pfz.25.1671631069632;
        Wed, 21 Dec 2022 05:57:49 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.8])
        by smtp.gmail.com with ESMTPSA id 127-20020a621785000000b0056da073b2b7sm10616974pfx.210.2022.12.21.05.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 05:57:48 -0800 (PST)
Date: Wed, 21 Dec 2022 21:57:45 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>, DHDAXCW <lasstp5011@gmail.com>
Subject: [PATCH v5 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6MQ2b8JyST6fPVE@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6MP74TUp50yt6wZ@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_055751_634760_FC2C3439 
X-CRM114-Status: UNSURE (   9.60  )
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

From: DHDAXCW <lasstp5011@gmail.com>

Add devicetree binding documentation for the EmbedFire LubanCat 1.

Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..058ed707f3cd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
       - description: Engicam PX30.Core C.TOUCH 2.0
         items:
           - const: engicam,px30-core-ctouch2
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
