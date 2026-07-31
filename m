Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61FE5C55167
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 04:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C13M/GD2gSH6sAitE9quHhYln5pbwMrzjO6Vdr56g1U=; b=mPB9Fw3H0Z7hBV
	X8g+efLfUefnOEnjcd9ivS/RiuqEL2cpfxWpTqOugPx9GkrW80HTl/2G/HFO6Wyz/GV7WmBFslLaD
	3kWJgBfZ9ApXJ1dR6+OOEbvYo5MZMGd3GtGzTc7SiZiY6rjeBoXu2bWlHa0lXuwZy/GMeWxMDt485
	2KCN6MF+QxBnlISsKiJPI7UasCYF8DJUew1Xsg/qL1gdwcGz4Dld8nt0g+bojhL1bLFLF4Lxur2xo
	gzHW+dPoAtctrku60HsZaF88eLP2KcQXpKubGom/jg9I+GBH72hHlolP7494vqvzILAzrnbUSsm/a
	TEeiaPz4bPjcgz6IM6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpey8-0000000BkIz-3ck7;
	Fri, 31 Jul 2026 04:35:36 +0000
Received: from flow-a8-smtp.messagingengine.com ([103.168.172.143])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpexx-0000000BkF6-2HZ0;
	Fri, 31 Jul 2026 04:35:27 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.phl.internal (Postfix) with ESMTP id B8EA51380308;
	Fri, 31 Jul 2026 00:35:24 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Fri, 31 Jul 2026 00:35:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785472524; x=
	1785476124; bh=Ou8Q2+MSVN0oE4OVVJlFXqxdMV+YjRi2MbtXNEWiRwQ=; b=O
	v2Nw5/ZOoSy1FFXTS/jDaGrlo8sv84qFG52z2bdplFOAHaDjxuCIRx6NQMiDX7ZM
	pLrb9mRn1mHd0GJselwrSvgOc6WDP0sSh59QV5WI0LNe1FHAUz9VhT1WZU1DOz3l
	wcmgwcx4cswFCIwwtyHaLWFMsgiqP5zXQeLrTJE/9xSFOYd1OHVDMSRyFZsGFtlQ
	b7z3Y1RPGrjuS9YDgOzLoWkISnSJfEp0VC9hKorgTNLz33GSp71jNenWihSP+sLQ
	mHy+hxIu/zM/2mz4rQSyC7OiFfqMz5d0w8ADgUrp80oj3Fy7kpcgSqzdEMfCkg7a
	S0DIkxs1C5ArJrU2LrrWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785472524; x=1785476124; bh=O
	u8Q2+MSVN0oE4OVVJlFXqxdMV+YjRi2MbtXNEWiRwQ=; b=M7wJ1/FhyWrXejc64
	SY8nJMkE9zUP7kMFNN0M1jg+YEfWZY5THviSlcI27HjwNx0o9UBDxfk3mMvuP0BK
	GnH8wQJ5oMqgctMcmMedAx426jTY/Oqki37rv2Q72PygMbZTw2KqTIFZJN027vMV
	8IkAwToyDwEpjWekwcSB3Nv7k7b+yue1CCUiZ5Ova5DDqS8kI21uAowuOvo/JCTQ
	AAxV3/cxXTOilGZaNHLt7h3Atnu/Pzj8A9Fz4MXEmXckTaVPd3kEGvTYSou1ni4+
	4tbtZyH5Zu7ZGv01QWHInvFyGmQzndHzrFNNzHEoB6WCf3vfJJlHIfhvdEL/ecY4
	s3L4g==
X-ME-Sender: <xms:DCZsam0GNOmGVOGwAkiv6QjUlCnQCARfMh5Q5-W4dtYyXPGRuKkd-g>
    <xme:DCZsahBhX38GQ8xHK0vM1CbOv-PmBIm2iRa90uLmaBTZn03wy_OoJqk_4OpGPTNP0
    TEO66v1phujkV2mvdwG-r-OacOIzoOKBWNvLI-IXH7btMknKd8ehw>
X-ME-Received: <xmr:DCZsamG9Nl23Qh0tsHxCLcbKh-0pCmqm50Jnjsc63nrwm6UK8Ke1pKofsyl8W3c25Vy2n0-19w>
X-ME-Proxy-Cause: dmFkZTGYT4kL28qB16BISDukPuRI13bgUTT3tZ+FwfFOi9iyRIQ4cdWQvs+qtyjYhb8aZv
    7ZNLDkjsiNZpV57v6b2mii/c57NwdcNZfLGFST9tf2uM8u59dW+Prl9GdDUx4nV+E4lAra
    SQEwebYcIunW3qRo5j2tIFm46bFqTUlJGjqQ9G9vA9CMpIOxOxZMoG/yT+2+8464KOGHAY
    8imDrR7vRedTQm5ukLhDfImc5hqq/PMdpFBDkbYJy2uWgqM9NADLHcVQwbEaQMfbuf/RMq
    10+PB7Nd2itAuYvcdzVTZtUYUQ86psUPJqGvTKqOSymMowMLYjogTDdmqQ1+5Yqwyb6wit
    TQjBoFlwpdLyfEO/KxYemvrbcVe8G49fpWO0tOwBQ9CjV1o+UpO3LLy8+8uzI0hSqCYV4A
    fSihuXbNSR15Yi6RYkjvsh72W85eyZgL3YvL8Ar1y/jS5CqUmOYmlJ5s1b/dvaIpxeFKUY
    m5ZClbJxdZn7MNPFxSyBjB7czQHdHJb06ppeElVsuCliWH26cFvyTS3yMyrtT7XTq1AXky
    stOF7batlNgf0PjsvOSa9XO3+PO0v8tI3JmhP7/ggF4IQLQIT2IndGJeMkqSfG41vpcEkE
    yyIRrDSSeboNO72b9Bx+Ovl9VHqP8SrEi4WgDQDxowIxGAkkB2R/YzPWrcBg
X-ME-Proxy: <xmx:DCZsauQlw6apc0YPtsDPr3oUROM41XwcEHF341YhxFL8Ad2-m8kjDA>
    <xmx:DCZsalNMQa0ReOgbtEJELGUojpesH7uy9vwRRvdcVM91meMg9_lGYg>
    <xmx:DCZsanNJmuqmZ6bICCdwwFQ85CuuVkJoE1c4fMV6Xu7jwXsoB6hMlA>
    <xmx:DCZsanGMEQyGEXwYaYYx2HSq6stjYVAd35aclyOImxPlxVZtR9u4XQ>
    <xmx:DCZsan4gS0Q8FPRzszLLPf_2LPhA4_NdcxzKzJ3JBQLaxxMBrhPBCE3v>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 31 Jul 2026 00:35:19 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org
Cc: chaoyi.chen@rock-chips.com,
	alchark@flipper.net,
	royalnet026@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [RFC PATCH v3 1/6] dt-bindings: npu: rockchip: add rockchip,rk3576-rknn-core
Date: Fri, 31 Jul 2026 16:35:02 +1200
Message-ID: <20260731043507.1832277-2-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260731043507.1832277-1-gahing@gahingwoo.com>
References: <20260731043507.1832277-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_213525_667525_646833DA 
X-CRM114-Status: UNSURE (   8.31  )
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

The RK3576 NPU has two cores of the same RKNN block the RK3588 binding
already describes, but no NPU SRAM supply, so sram-supply is required
for rockchip,rk3588-rknn-core only and rejected otherwise.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 .../bindings/npu/rockchip,rk3588-rknn-core.yaml   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a490..0a7baac24 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -21,6 +21,7 @@ properties:
 
   compatible:
     enum:
+      - rockchip,rk3576-rknn-core
       - rockchip,rk3588-rknn-core
 
   reg:
@@ -75,7 +76,19 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-rknn-core
+    then:
+      required:
+        - sram-supply
+    else:
+      properties:
+        sram-supply: false
 
 additionalProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
