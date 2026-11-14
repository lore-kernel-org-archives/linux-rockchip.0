Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0343160A2614
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 03:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oCdOetjP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=casper.20170209 header.b=wXhbmIXf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=JOyZ0CFr;
	dkim=neutral header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=GAFzTvD0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+84K8bgFydqIrZDYIm0hdrChgh9wSdGMacrTvvKLhzY=; b=oCdOetjPd8A9kM4jAv9PqLKe/T
	SEI1LGSmlNMXcgtcfYQkeKwdJ+ocC+EoJyu3/RrI+lgJGuknK3xi1np/n9qiVV6xltyhP0uACo7yY
	YX3P4LAmoB3/PlCSkFUxHtoMAV78xPpdEBjhlH7SkXAND8o/DKYzhwjoI2Rvfe1Gc0b8T56jNPZzE
	goD9IbrwEXhgTJ5pvVhq0dO/CPln8ioGgsRp48fEbrpZjZyDg+VYrMXyRbIiip6FhKvAMSn3h0LG9
	Zk3CxPqiWBeQ1cu4Of77t9LmIoRVjlu15TtKyeRwfZA4M67aGFj1kFyVLMYej+sVoud3SEkH9yApi
	Lhz+LBKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS46f-0000000FBjJ-1Q6Q;
	Sat, 14 Nov 2026 03:07:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS46e-0000000FBhL-1rIW
	for linux-rockchip@bombadil.infradead.org;
	Sat, 14 Nov 2026 03:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6x2DdXPRXEfWTwXK9W5PcsBc7yr8Bb9BaYYA36DgAhY=; b=wXhbmIXf9B3NA2Vs0QrgQSrGYf
	C1Eq4ZOJzvy0oGDXExdhCQGYMVlMqldnI3CowIsCJvPNJwVBWqNcrMsq9jRGE/Dv9U9fur8Vd8ro/
	bTnVd4TFUjmDefhk2UhLKbIQQjx1i8QaTAxpK0oOwrTOGhtH6GZLWqIU3vPRCcVayaku5fI4u0EB1
	I/e8cFvoJ8gHwojF2eSDG2QGV3iFejNl/lwWeEN9WLgnjZ9BTZ6OhbdZFgFmSjRb+RIWSdvTZ4SWo
	2NwVa5QIjjqGDD2b4gHIhQ2i6sSH/LWGao+GkWCz8yMJBWdmVDvOVlos34UivI8KuOsuGdaGPN794
	GeFmRwsQ==;
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by casper.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS46a-00000006X31-1ZGh
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 03:07:07 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailflow.phl.internal (Postfix) with ESMTP id D22F01381A4A
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 22:06:58 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Fri, 13 Nov 2026 22:06:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794625618; x=
	1794632818; bh=6x2DdXPRXEfWTwXK9W5PcsBc7yr8Bb9BaYYA36DgAhY=; b=J
	OyZ0CFrc5h94lMOBy1I/MbIxQTNbfZFe/ma9Zcp7QWWAoi8lm5u2Gv/PC9yGqF7j
	oumzmUj27S2v/Xzj1Fv/2ruxortxHN76VunmsvZr0hFlaVAvLTmL8Qonx+02Atbv
	IwXFwgF6JVAeZpl5B3ElH6H3fx5Ewjy7ptdzPS7bJy26O5TDGUlTmU1SPAFtFgtS
	+E0RUWfb+Kav8ZcUlKzjFTbzCH5HsbwPvJlUEhBb22FY1gGKlioTbi1Qfqat5ePw
	3O7WCsS8lEUhxL9EngPXdkAF45DLIkeJRkvjLZjgJbcJWroIrafv8ctRHBXrwJxw
	anjXaYOprKfj+aZ3xL2nA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794625618; x=1794632818; bh=6
	x2DdXPRXEfWTwXK9W5PcsBc7yr8Bb9BaYYA36DgAhY=; b=GAFzTvD0voW6TAMrF
	L0u2FO9DBlnV9kNHR2Bch7rKfiBlOZywpeFUry1+DoO1mPn1ZyrXV7KyFQCRAYwe
	XmKkqwjRB+HYj8uzBL61tdeWtqM7H5zgcTVL27pVScmzd2cYVLhdi5s7GusSXtBd
	uOmezDELh8D0SEir88q+zwuYaEKmgGOOIgvDVAEeKvueHm6LtxjEjHejBp308CuY
	/qudBwTYLw7DzkDDPhaf9Kb/Rh3jK5TjLS3sIo1uD4qYBCESmEpdzkISoHTL3VN9
	a5boz5pdhexkaUBG13Nop/kw3bbs23NY+62MXxF/7V1KxXZ57nX8N7ywxl0brkoC
	QvvCw==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794625618; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:KYqz3MWLxRQmYqcdQZclzO2jbTi2eccxvT9iyYHjjVyACsa
	Yn5QEeAOtKMdcH8ykThAfqDFa+jUef52jLYlmKZGAu8mUGT4wD8GpRwvGJmFIHRi
	pmDa6jXeGoQM5lGr+zSfH/NdXXkRkLkXu3fhvhThaQDqmLlvwoNOkuPB+VBINoJp
	mhlHkpCxLPLeBnR/yIeGIT8q8XvMJetvd3VWDYr4b2Jeea4yHinFTY4DjylZ4Z4X
	668U37pnctKh5eJk/xgYAxyfkDKHOpLU/tN89LMNQIllYZesZqkLQTQpufYe4Tee
	nGwYPuF2fwuGYJaWOqXa8r8Dltqt0XAe9GEPziA==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:QUCw6nHb/ESRMlEU+4iCUgaybt4lsW+WIT1tNwjwXlo=:laoGVPMLf2LRqPKwP6T2FlWgv2jsQM2NXAuJVqlbhm0=;
X-ME-Sender: <xms:UtD3atyx9XcV4JYgGux7RZ5m5aXt6dzTZWkZTG_gvhVC_2ZnLZDmxA>
    <xme:UtD3apvjx3P719V9fqo8RTvhBCXY_kJC8aIEZc9n16Pjxei8zJ_Pqq7ON6tf7Ks5W
    iMajoKTfXFHIwWIEV2MqiKnOOPaOg4-XRUWKsCy2Q-_yk1FnjOK0_c>
X-ME-Received: <xmr:UtD3aul1WypVUr3XzWXUVL_o_sxMkuBW19nixzbEBAow5F_Nlx6IHd_gXqK3VGs1nUXzVCCK>
X-ME-Proxy-Cause: dmFkZTENh3Cq6bNtRDDqH//naJpK03OGhXB8Cp3eHHX2EpHYf2oBjZ1/43ruyqVDLzR5bI
    q7gV+k53czH7SJj0JMNaMvWBGkaUqaereb01ifHpul1q14DobEKJC2mDvQQE3HzqoOU9gl
    QO0UnCSJOnNpWmY1qWdj/IivEZ+5eJmA8XcRYmqsfPBSZaKqk9zCnQvCGUQuYFJdsYZGP5
    L8zECb373LU+oefpY9jKwOjkFDiU4CWxV3iExHL3zPnpeZwM1wkFJxhm/yJk+2AJ3ju4OO
    RXCknd9xSS299sQU1FiikwzYfEAyF9m0XTBIDoIn2qfRRJDU3uzKkImCFIAQPMS5Q++UrR
    WNEsUDtSeFBcBLt71bjQrvXXjb3WFgLUhsbvDWF80ZOJvDja3u+zakrCtyEU1urx1F6ck1
    6F+8USBSfsd0wejYoVC9t8qjupZOwoSsBjG3q0ewwaUG6VRRZ/oDrWvdfAbQNuabm9mzH8
    /BL5Nw2T3bIFzu3ItLq4PVCVIvnchLyuy57qeQrNb6X6qS/noci8K9DlljvDG7eMCy7Tna
    SeoXVIQOlFrSqDLv5yt63f6wvnCWhk0p0PcEA6IH5GcynMFezoctP1nehgj7tijUh2aAd+
    zczBCZ6zuHNG0zlVYh+D7cfW9NSI/FTr55zdEGblHoHReNCLIkjVHMJT0cpQ
X-ME-Proxy: <xmx:UtD3amCmAbO9I8j2oAWINT2bwsq7fUcrVKwzS8WyHgSNlish6endgQ>
    <xmx:UtD3avR7kadzBjo9OlY1hqWr7NVniMScNrXwQa-tNPAt60dVPqws-w>
    <xmx:UtD3auL1vkGOR792CIpfzNyS5GxJBxgt667RCKfbg_BqWB53LaqAZQ>
    <xmx:UtD3ag2ycQzQWCpTODyfrBed_NBZ3DS5bwaGccWr7ZxbVmJsuMsMvg>
    <xmx:UtD3amG1kHLPu0HQitsT2mvQOhQQflP7JmDKsHnMJgwo76z463zfT6fr>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 13 Nov 2026 22:06:49 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v17 07/12] dt-bindings: iommu: rockchip: describe the RK3576 NPU MMU
Date: Sat, 14 Nov 2026 16:05:24 +1300
Message-ID: <f2e91cd17bab66e4fd8901704c89ce0d717cff18.1794615323.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794615324.git.gahing@gahingwoo.com>
References: <cover.1794615324.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_030704_789843_49417678 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3576 NPU IOMMU is compatible with rk3568-iommu but needs four
clocks: aclk, iface and the two CBUF clocks.

Measured: with only aclk and iface, the IOMMU reset fails and the NPU does
not probe. Without either one of the CBUF clocks it fails as well, and one
of those configurations does not even boot.

With all four clocks the IOMMU works, and the npu clock is not needed.

rk_iommu enables every clock listed in the device tree (841363ebb508), so
this list decides whether the IOMMU can reset.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iommu/rockchip,iommu.yaml        | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 6ce41d11ff5e..e40c9ac2b463 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -26,6 +26,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3576-iommu
+              - rockchip,rk3576-npu-iommu
               - rockchip,rk3588-iommu
           - const: rockchip,rk3568-iommu
 
@@ -42,14 +43,20 @@ properties:
     minItems: 1
 
   clocks:
+    minItems: 2
     items:
       - description: Core clock
       - description: Interface clock
+      - description: Convolution buffer core clock
+      - description: Convolution buffer interface clock
 
   clock-names:
+    minItems: 2
     items:
       - const: aclk
       - const: iface
+      - const: aclk_cbuf
+      - const: hclk_cbuf
 
   "#iommu-cells":
     const: 0
@@ -72,6 +79,25 @@ required:
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
+          minItems: 4
+        clock-names:
+          minItems: 4
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
