Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D33C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 03:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rpkyoAGhHn7hC5yY/JP//ruCf0thYVqoj0mwgxyMog0=; b=pWe/24SUG0s5Uc
	te3Vv6TobjqHsmuHUWsoDZem2esiRrZMgjWUWMOlpB9Tq9hbCGXi/fl+Dc5BzYXZhVM2chC7+K6Ua
	E8DnpWmqQPTgJF3V4e0YdtEvf5lzu2DE6KFBLWYfLY/IgyVpDe8ICxFs8al7kDPEhTBxtTxwb94Hs
	TsY0sPRwRGw7r1r2/+1iOrHt3TWhX0W9/WodogTG6IfPptMaMlXjHWms3q8QUTCo5B2UG/SezJGDW
	7ow0MJ+Rv30bJwz1BQVU2J/g8chdvVOS/QbByrMXXHpdaKcqwGwUDOfCjVRMiMEdonGdhLlb5IqeS
	JBslMiJrwjb56OXiVpqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Ym9-002hIv-Uc; Fri, 23 Dec 2022 03:31:14 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YYn-002a3s-P8; Fri, 23 Dec 2022 03:17:27 +0000
Received: by mail-pj1-x1035.google.com with SMTP id o31-20020a17090a0a2200b00223fedffb30so3794465pjo.3;
        Thu, 22 Dec 2022 19:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=hCn4mJm22d3D3rll3METASgOTnhhlJ8cXe968jX0yXnrBAUhR+kbXwYcAw52wrLNaA
         CIXdS6AP1v0bQyW7Hcn6DbLdI6m3+fc8MKYxBsF30EIqkLQCYru6CfsL54czOQicEHs+
         sM+yOnXWhBfTPMwawZ/K8fI9Qm1DEHaRLkXCo69UKb6hjOjQcnnBOdJW2Rm9IjabV2x5
         e80hbT80UwR3Qx11+nf3J3KAepEqdC3QjQVxd5nNldoG5AEUGiG6z1Gytu2Qhzi+K0rW
         xjIK6pbdQ7Kqc5sfACVmQtXhyXSIs4jUqfgCSUjE7x+64SLDmjYP9Z6uzRpkutuWjob9
         nbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=XVDZRn+Ul6GRDFKDJIHGgUHD4dlcj4wvnjCLwPfJxvZa1YtTP/mX0mtER795rLTazG
         4m1oM2KNnIPO9ah0m5TeYGOQxawZveCd27d+4F4xMKw9blY8Y6N9wmY1cWYkykRQO5J6
         MF58hHEZxGGE/CK85n5fVmcva9FiruoChvq0++Rw7lVMY41IsvrUsByDP/RaGEWK8U+o
         RMU+8E1xTcGAgzp42htq+SJzKWEgqelzIQ4I734MnwoYYeEJP0ftY4njR4JJm2Ti4cRK
         kizv+NVSlDo4CqdCE1iueJye75+AA5d7nxYPb9p6PK9s8dDE/OFE9uYGDN1OopVQ2X+b
         s0nw==
X-Gm-Message-State: AFqh2kqTwPiFuwKVT8+9WdVI/5pEwqvcJSizmCsKPz5o2Tcs6jOQy1pC
	StT/S/6ZvLYygOHKVilXt/o=
X-Google-Smtp-Source: AMrXdXsgvy46fTENjvXN+XI1fTqJI+3SswcLm62Kn8LvvIzBZsAEkVpKcaVGX8T7r4QkdEh4qN9VUw==
X-Received: by 2002:a05:6a20:3d14:b0:af:b909:2b3f with SMTP id y20-20020a056a203d1400b000afb9092b3fmr12961373pzi.34.1671765442579;
        Thu, 22 Dec 2022 19:17:22 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.9])
        by smtp.gmail.com with ESMTPSA id w2-20020a628202000000b0057ef1262347sm1454354pfd.19.2022.12.22.19.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 19:17:22 -0800 (PST)
Date: Fri, 23 Dec 2022 11:17:18 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6UdjhBD/Xa7ALya@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_191725_894062_0880AD7E 
X-CRM114-Status: UNSURE (   9.44  )
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

From: Wenhao Cui <lasstp5011@gmail.com>

Add devicetree binding documentation for the EmbedFire LubanCat 1.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
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
