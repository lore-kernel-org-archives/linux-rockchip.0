Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65434EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 11:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wksAQMuVViJtmXXQjzjtwpmkCeLzDHMRodHaIBo3knM=; b=lKIqQ7c/wsPsZT
	P3FKx+X5ETy1XwytEwA2Az6NCQRPb3tCXfzCFq75XZdGIxfS7oHAspzWyak1Y2L5GiKI5TLiyfsup
	8q6z5k2yWWqE+PSrxTehUfN3eHM7qb1LIRpQVLha0qw8J4DqxqzEJAWKj72mLc/BTaNmIweLgejgb
	FMrGdU0JkIeszEVLnCL2ejeKrv2c2BVjJBSZoO80OWkeIjneH9Wf13bE6nMffJOoTFgHxI/5rJft/
	VAh9atxszdabw56TWRTAH+0v4dF3Rrg7oA+QKkTPws2z/gtq3+OgST9dkD9XO1QUgozKuJK5WlHNi
	hApvGUbycR7kY14KPJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qThG4-004l9J-10;
	Wed, 09 Aug 2023 11:21:44 +0000
Received: from omta34.uswest2.a.cloudfilter.net ([35.89.44.33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qThG1-004l76-2H
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Aug 2023 11:21:42 +0000
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTP
	id TMN1qGbmifaVXThFzq9GMh; Wed, 09 Aug 2023 11:21:39 +0000
Received: from just2025.justhost.com ([173.254.28.237])
	by cmsmtp with ESMTPS
	id ThFyqp5Xca8COThFzqrUDc; Wed, 09 Aug 2023 11:21:39 +0000
X-Authority-Analysis: v=2.4 cv=DK2cXgBb c=1 sm=1 tr=0 ts=64d376c3
 a=Jt2RHIFfQig1ELqEZVeWfA==:117 a=Jt2RHIFfQig1ELqEZVeWfA==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=UttIx32zK-AA:10 a=5SfhNeb3QxAA:10
 a=DgXrqYuCAAAA:8 a=XYAwZIGsAAAA:8 a=eSCCvEbRnsAFwu8X_C0A:9
 a=NFkmT8Fa3oR8cXbSjPxL:22 a=E8ToXWR_bxluHZ7gmE-Z:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xVtv0AdgaSpLzUC+dN3EE5AGQnYPgea8VSjA9nT2SfY=; b=JboYb1havfS9SOb9nvMkGsbxT4
	ekSpqMhEQDlt85lk/ljLX9yPVOXzZLS6XomWa5Y8vhXyUmFvWP72Imazy9n4g+MCvBEodLzqrRzoc
	auTYyHH7oM0lHaChM7abUcMsZFZr5SXcpxfzKyADCZPZdMq+RFH+sc7ciYKL21Gqmhxz4TSYOrPdu
	nWyYwM+5N7dsMgspAr/YESATGvA12sB9/GqbGeU70E18vBV1yPD6Z4mQLbnsWSRGwNZzafxQeu8G2
	0c2zQgKsSpUdCD6LGimavgkb0cjK2u0t/z+M/2SIFx1UgxKpEY/11t7WfYI+2BQ+ArP5tZEeLoU6q
	Fvnf5mNQ==;
Received: from 097-084-242-070.res.spectrum.com ([97.84.242.70]:62810 helo=localhost.localdomain)
	by just2025.justhost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <tmckahan@singleboardsolutions.com>)
	id 1qThFx-003Jjq-2q;
	Wed, 09 Aug 2023 05:21:37 -0600
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [RESEND PATCH v2 1/2] dt-bindings: arm: rockchip: Add NanoPC T6
Date: Wed,  9 Aug 2023 07:21:16 -0400
Message-Id: <20230809112120.99-2-tmckahan@singleboardsolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230809112120.99-1-tmckahan@singleboardsolutions.com>
References: <20230809112120.99-1-tmckahan@singleboardsolutions.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2025.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 97.84.242.70
X-Source-L: No
X-Exim-ID: 1qThFx-003Jjq-2q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 097-084-242-070.res.spectrum.com (localhost.localdomain) [97.84.242.70]:62810
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 13
X-Org: HG=bhshared_jh;ORG=bluehost;
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7anVzdDIwMjUuanVzdGhvc3QuY29t
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIB+gmkuRk2MY88dNy3D1trrFvxyzm5pXXLSteWYLbm+mOOQNGz0lzvSDmAbe8/thZWxioG3idQmjS/1A1kQnc19UGHv9ajPTaLv17XHkrE5fmTwTv2E
 xRMZCz79PAXJQ3eCAEVsEzB/0fApjN4gIGJ1HwhwQG4qm04aUNqpGSNLzZ3yl+gWOXvYA3MLMtSVm41846/fxjX0gKA1L1AgpXJVSqEpuCZZbY/EXoHcnCau
 IcBMEae1MQAZU5HAZgPgRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_042141_766441_55AD637C 
X-CRM114-Status: UNSURE (   3.98  )
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

Add the NanoPC T6, a single board computer from FriendlyElec

Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115ca986e20f..ca5389862887 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -227,6 +227,11 @@ properties:
               - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
+      - description: FriendlyElec NanoPC T6
+        items:
+          - const: friendlyarm,nanopc-t6
+          - const: rockchip,rk3588
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
