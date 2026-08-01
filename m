Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81506C55178
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 00:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xDXlz0+V4MoURmHRr7+xSa1x6JPNTQoS6K0fJwkHIg=; b=uq3ZGV4qnN/qa7
	l8jGMqH2RCjoAUtGa8QC0dxjdGFsie+S8QexSddkYHY3kBoGLBqcZm1Sxd5+lOStwMxl7Vhtx0MIS
	HqlDcEjv2UFAafG7D5G+VRaM5mhRizXXZwdPMKofk9JFpIVHUyCKTUJOZCjcqbg0Saix3MQUdropp
	TLi0luV4ioA+urhFDmwiW9I9J42yq67IEj5KU2ydmaesxRAAKkgLUmvkMc2MEJGtMTIhKiGRDpdge
	9vkeCoGGL+VYxavDxTt0BoLgskDHcZSz4s4lUz2741pWfdHdqMV1E/z7+HAWp9dpM8zB0regO7VzZ
	1dAbzkp9E/WVL0ygEn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpxhO-0000000Dlfe-0xjH;
	Sat, 01 Aug 2026 00:35:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpxhM-0000000DleG-1o4C;
	Sat, 01 Aug 2026 00:35:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C774E440B2;
	Sat,  1 Aug 2026 00:35:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9015BC2BCF4;
	Sat,  1 Aug 2026 00:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785544531;
	bh=itseQ9eyo+U13RMe2NfFN2wECX9AEXEE6b3i4uVupw8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=FBOALeTJfhu6TbfaoawSiV44BzRVKc23y6wFn8jbPG9pYTXwNR7ibRvzi1X6cl8vU
	 hLzwHbFLG2jdOqdUvh7tKrf9wjsGej9wp+ppcWubrPLdUnB4IFjwmVrwP7zSuOJsiZ
	 TfcWjgwfJac3D0zdfcy6Pp/BfGegPT5INuZbOGrstGKEJEPyIQNNsZ+RZkzwSbpV4F
	 WVvmeN2xFod8ds5GaXm2O8SNONn5qITIZkOXyGasiOKKllRQj0yHlYIKo+3nSqysFN
	 b5JM+Wwa9hX55BeV7QaBkPhH6m3GMLdCWrPWkwMv7V+zbmmClgRqMfB+QO6TUGg2Nx
	 R6fq0WNonLqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F630C55171;
	Sat,  1 Aug 2026 00:35:31 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Sat, 01 Aug 2026 02:35:20 +0200
Subject: [PATCH 1/4] media: dt-bindings: dongwoon,dw9714: Example shouldn't
 imply 1.8 V
MIME-Version: 1.0
Message-Id: <20260801-pp-pro-camera-v1-1-7b4d90788f9f@ixit.cz>
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
In-Reply-To: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Ondrej Jirman <megi@xff.cz>, 
 Olivier Benjamin <olivier.benjamin@bootlin.com>, 
 Manuel Traut <manut@mecka.net>, 
 Alexander Warnecke <awarnecke002@hotmail.com>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Martin Kepplinger <martin.kepplinger@puri.sm>, 
 Shawn Guo <shawnguo@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 phone-devel@vger.kernel.org, imx@lists.linux.dev, 
 David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1376; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=sfBlyUIhGugdsRnaSHNhShuFZ0DGsHeOeRXQgKfVu9M=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBqbT9RqSJZNqhResdsqnz0RhYvhHWQ77DYnIRl/
 Ps/2ru4VpSJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCam0/UQAKCRBgAj/E00kg
 ckZpD/9/AsNbDL0qEmqEHmCublG5Nru0i0jH1IltGtLg1JiBS9qXYwT7VJsp1bHvCfebRKXTBMs
 Yz6hsPICqGmpcKwVqisMWQLLFvtc9oKJuPqHCfP0IsPB2TErPXDME7fR/uSu4V5wLvoclp9lJ/0
 leDx5sEc/BY4/RCCbR/gA/7fWXzrwstH1JAGz0jFRMpmLEfue5IW0SPSZE9TjtG670UxPQw4zXV
 FWlwR+rB6YjMBa2Mqv0jh/rogANRjSma258zkZ0M4AMMHxxp4kAeJcPqUIU9iadNiK+diiTIutd
 Ctul8mqc22FokHc4nUDpSSU6j0DMRFZmlFXdp/oki06idrCCofiYc+iHmKknX3o7ZLGZGidwome
 9lkjst6xJb5s90IUb7JzcB+gJ5t9G2+pUeCBh5l14626KLEEwm5SpGQFuEDunj5p1m97D2M1i6O
 Lvoeha998AcBR9o7pzOm93bwJrBFfDMY/o3H6nA9jZpDRHrd47+EjHBNVm5/1DHdkzEABELKVKo
 3WnHDWivnImwpnKqD6ZO7U/krf1/ak7C2/fu/My9wOJUVrt2MwU2aHhQ5FLyEVOiqYhVLJqSCQR
 kIG+KJ3flbfU97rmGk/iSqpg5Tm6shakMS9JR2SbHdnIDx+cVW8k76Inyr2p3h+w1jkl9c0cOXF
 0VAbWtXBsOQ7C0A==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
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
Reply-To: david@ixit.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: David Heidelberg <david@ixit.cz>

The datasheet says VDD should be between 2.3 to 4.3V, usually around
2.8V. Correct to prevent confusion and extend description.

Fixes: 2a96b40f366a ("media: dt-bindings: dongwoon,dw9714: convert to dtschema")
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.yaml
index 66229a3dc05d6..7f5aa098351dc 100644
--- a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.yaml
@@ -20,28 +20,28 @@ properties:
   reg:
     maxItems: 1
 
   powerdown-gpios:
     description:
       XSD pin for shutdown (active low)
 
   vcc-supply:
-    description: VDD power supply
+    description: VDD power supply (2.3 to 4.3V)
 
 required:
   - compatible
   - reg
 
 additionalProperties: false
 
 examples:
   - |
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
 
         camera-lens@c {
             compatible = "dongwoon,dw9714";
             reg = <0x0c>;
-            vcc-supply = <&reg_csi_1v8>;
+            vcc-supply = <&reg_vcm_2v8>;
         };
     };

-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
