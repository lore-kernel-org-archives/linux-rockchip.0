Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2D0C98311
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 10:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqc64Lq68ma098Fx7WYEJxjZ7g8opjTjUM1E+4ZHN6o=; b=hcWoAH1iMspopt
	7T3uUrfM9ZsGdu307Jha/xY4orQUKyw2E4WnV29tkvu3cvkf9f0xvVUvCiZKyj+UdstPExGfPf9ED
	WeXLgYC0tOfa+bGxm/qu32AKKQ8WzKtTtMit+wdUmj3mI/ay7y/dpNttOTmalrZyXYv3hxpyTcmiM
	G82k/B90HQKZ4gDkVQxKb+fG8jejtbDPudhnZHuCdFbu5G/st56EBYiWDIL2BkKJM0RrIdigkIMin
	UEI7vP4m/d/RKsEucFkreCjBPbmPUm0IWxf0Te7Au3cBf6PNZX/gFOHEr5Z2kOv9uJ+69gRQ3DDCO
	nuHSQ09JgBqyI1IgtM6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gc1-0000000Ahzv-29En;
	Thu, 24 Sep 2026 10:23:33 +0000
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gby-0000000AhxM-2ODx;
	Thu, 24 Sep 2026 10:23:31 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 317F57A0050;
	Thu, 24 Sep 2026 06:23:29 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Thu, 24 Sep 2026 06:23:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1790245409; x=
	1790331809; bh=fjZXWoZZip19sL7tjkZDc/7/80qtiy5qzznuNuxHcqU=; b=F
	q63dGEVWBd59WbAw+7ATFy/E+UvswBd+aNBI6hpQ0NtwajGNXIK29fJkSnlbEaE/
	TFA6gzNnJxigeZMUZ4mwNaI42Vaq7ObXR4qlO/ocCvS0W8Tjrrg1xZXFRRxho/rh
	F4J9kBy1zdKprJcE9U9uKaRd/hdz7zLf5exu3DBaravGWOtWyUihSNO6nixN9B4h
	ZtpOVTB7ssTI5+/Ty9Q6PfScyw/z3ieXBOWv30AZebH06fbPHTlTEL+S/xaQXSnN
	fCuqQorE2KuRwqGlOg8NC1hz3jl+/+3HV1FrB5oPzrcyUGixvfZvUkRKJ8ss2VQd
	q9m6g3WyzrRMMBvoquLbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1790245409; x=1790331809; bh=f
	jZXWoZZip19sL7tjkZDc/7/80qtiy5qzznuNuxHcqU=; b=Kye1lHdyHcem6fy4m
	BFzQm/TijNMhIH5dLXddKNwwGSEywn8iQILwh2BRUzxvql9myZVVABIhYDexFOnI
	m0drZCOT8UOOeD781YtQ9p2QGbNe+sC/ncqzlD8uqnvH9FTxcuhQWxvE3mc6cFte
	fslmhwK/bi0e5qMj8BwOdKtNpdakoRecOj4IsHz7Bxcb0zaJV2xk0hMLq8fe9XfW
	h2gQ4CWiSZumRFoEwyWROo0/NeduT70ofZek3CO/HDMKewqSX4RNHcdWiv/ewkLQ
	IkpeFxl6CDJGNR3HM21DeQtFGZgYn12GTtZCJqvMw0LddLblQ4qxNhMpP94+hutu
	a2zhg==
X-ME-Sender: <xms:IPq0ai5eAZjQmzymTLb71kBNlvExi2jXHihpW1P2X3vySWxAfQ8YSg>
    <xme:IPq0ai1vLaOuYIGPv-0WSaRWA2BqHT_ud31s1vxHPr2lRUnJZTqYBM-6BR8rx5_-G
    6Xdur9hEaJjCiUKpI-QNyYceV6jDDdJA-01zbUmZn0lXStT4z9Y-VWN>
X-ME-Received: <xmr:IPq0an5vd1tpiZzlVMJOHhIa5v3GRk7N0MunXdaw07Lcop0UZcWNsNMCe14W9NX--j6fURaJSw>
X-ME-Proxy-Cause: dmFkZTFedTl3F1DIrTHCICe4Fo+6yuH2iIryXb4vaD1hJk5uz+D3fdxBaPEGleMmtjQ9jj
    /AH1EkwAh8wKmQiLT/9bSvDiQhW+TZmRyikvMLrEzAS6A5ogRqUhM4yxUxSgAmF4L6zbNq
    JU1CrDOUHEJdjtSdpDsxEskFn/aWSY8EhEM69IoGnovQNyACerECRpwt+2pE+OuDo6j5C2
    BOOC64LiXafVGJCK8SqFHoQAP2FF+TvLHYjrI91po4XURVMn1pQeIKHxydNlGe/KKK+FAO
    2AUxd7OWs8ZDGv/h0aNNMjxPVGQhrAw5D/31vFjHI5S7swl3HoagxPlYCWUyU9dgrzlHjB
    RJUHNTh36M5zO2lB8O6hX9mz/Vd7QUw7+seovWFXkLE0AGE1xPXo9RLDfRxiHNN24BMG5a
    NUYnGvjZHAvCZyFOb3T2hHkeH2nxq1cBok0nON8r7mTzs7XGV5TzLuMjH1LPQiNaYyf5e1
    okRmeK+9QJ8M9P9tdmvrZxuutH+hHr6Hj7P0uJmAe/ZihOhJoKG0gtTzkZ4J3FrVv4zFdI
    W9VJERwznATm0wfijV6hoAwmHBqOULWYp5wZ3ltU3b+URfxScB6rZq4p+7yj2BKTraYKup
    /z2lTAgcjlFn5aXOUfd3lqjjrGote5et73FL0Vn2O5irAm1dIZWpVGNejt0w
X-ME-Proxy: <xmx:IPq0atq1oI0bd4tr7QV-DtZIe1NLHE1yQH0l_9Iwi3TIV6owzt-2hQ>
    <xmx:IPq0anV5jI9bdGMNpgRYe2XWnVubPW4ATZABltZCzpY3R5YH77PWJA>
    <xmx:IPq0agBraQe0lJtp823JP7K5H69utVamiS5trHbpNiy4c3rMmrVi1A>
    <xmx:IPq0aqTR1lzIR8eJePNVUb24Je5bSFGetdL4oNwxutHNRzks1KSK4Q>
    <xmx:Ifq0ahb8m4jVfNOOw_7867ZexrO922JHEOpB3TGLvNsXX-oWEwU_3WcD>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 24 Sep 2026 06:23:20 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v14 08/15] dt-bindings: iommu: rockchip: describe the RK3576 NPU MMU
Date: Thu, 24 Sep 2026 22:21:28 +1200
Message-ID: <20260924102135.92217-9-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924102135.92217-1-gahing@gahingwoo.com>
References: <20260924102135.92217-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_032330_720432_1D1BAE9B 
X-CRM114-Status: UNSURE (   6.64  )
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

The RK3576 NPU MMUs are rk3568-iommu compatible but take five clocks
instead of two. Give them their own compatible and pin both clock counts in
allOf.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iommu/rockchip,iommu.yaml        | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 6ce41d11f..83d7e7c8e 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -26,6 +26,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3576-iommu
+              - rockchip,rk3576-npu-iommu
               - rockchip,rk3588-iommu
           - const: rockchip,rk3568-iommu
 
@@ -42,14 +43,22 @@ properties:
     minItems: 1
 
   clocks:
+    minItems: 2
     items:
       - description: Core clock
       - description: Interface clock
+      - description: Compute clock
+      - description: Convolution buffer core clock
+      - description: Convolution buffer interface clock
 
   clock-names:
+    minItems: 2
     items:
       - const: aclk
       - const: iface
+      - const: npu
+      - const: aclk_cbuf
+      - const: hclk_cbuf
 
   "#iommu-cells":
     const: 0
@@ -72,6 +81,25 @@ required:
   - clock-names
   - "#iommu-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-npu-iommu
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          minItems: 5
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
