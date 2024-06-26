Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDAB8C30659
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 23:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IT0JJkQ/fdVDa4bBF930nvq1/z2696Lq5ZEjr9vGVcY=; b=Z+kV/yewayY+zY
	AX1+j2uzvuHtOq82lnoDgvZNzeVFdqyZYAX+8zqgnIRRX739ppt+WfT1PiMvjVGXAFcEgvcYD85EP
	lZVTvVdeMTUjIRDvp1EVqLmCFJPX1xCxyN1k5v3blbj1s2ykQZl7v2V51N1TgUTujr3JILMX9/0pa
	IMEbJ6N/5GE2286BkOr/sy/B7hI1YXHnuFoc7+MEUxes5SqYwEgDLVPVarosZ7N/2XNw7twf7bWty
	bY2Fv65879nbgvBZhUfk9mZ/mSbRC0L0KRvLHBWOn7pbpKJF28dRkm0l9o0ZL/YOm7mJuwWcbgG4o
	yPtu5kEAQVEzfypL5Zsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMbgV-00000008ZlB-3QD2;
	Wed, 26 Jun 2024 23:04:15 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMbgB-00000008ZaZ-3V6W
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 23:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1719443011; bh=/08aZoPZcm6PqJnpe9JVrfDo0qAhTWbb4DSpQzJcuOk=;
 b=TKM+2wRDUoj7HqTxPmAGENGTUN51l/sTWl/n217gys02Vc1nRBYVgUH3s9QA6YEVmUc75Z75Q
 u5VoeYn9K3zaUV5FM7fKR3sZPtdQQeo/JLYwoighKGvuXARjdZvqXGapwPodP4juLdgBwAQz8Mm
 Yg3+Eg6uYpgfVedlOh7ICtRq0WIOYrf64XPa47/7WBcP5oep2RlKFMjHfS6XHVdCQFRatADk5/P
 VivZNovGTKUEuUXdCoLpRsV4ncOOHH3vRTsarM09boMmctIAS9YOH0bDAJVdlhNgkPug/mdcj9U
 5JFY72daY713wt8+hWR/MAC9Uo9fJwnMEWygt/UwYT1w==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
Date: Wed, 26 Jun 2024 23:03:11 +0000
Message-ID: <20240626230319.1425316-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240626230319.1425316-1-jonas@kwiboo.se>
References: <20240626230319.1425316-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 667c9e41c59a3ae6af4b1629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_160356_668140_4B77C929 
X-CRM114-Status: UNSURE (   7.58  )
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

Add devicetree binding for the Xunlong Orange Pi 3B board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Add v1.1/v2.1 suffix to support new hw revision

Acked-by tag was not collected because of this change.
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bbb2d7c217fc..3710e06618bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -988,6 +988,14 @@ properties:
           - const: wolfvision,rk3568-pf5
           - const: rockchip,rk3568
 
+      - description: Xunlong Orange Pi 3B
+        items:
+          - enum:
+              - xunlong,orangepi-3b-v1.1
+              - xunlong,orangepi-3b-v2.1
+          - const: xunlong,orangepi-3b
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
