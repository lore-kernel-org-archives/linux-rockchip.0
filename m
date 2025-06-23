Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B818AC7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksbvJcJEvvC7EGrgd0mSxnlhHuUvxlmkeGJ81Tetxms=; b=vBMVGxfBXIseWC
	7qUsnmAcgz6Gm9Rf+TL5E0ZH1ifjxHYIoOCKCjOUVfX2AAb1vyznk4bxPuogHF+mgK8tEpajE2ydq
	Df3VmjnhT9pBUUJ5/ENP8n3f4Gv4ZiUOCnujPfNLV1+evTGlj9WZfnlynof4VhXura7W8mD2sEqtW
	+wW77wCYygmjeVHzPyiwFFnTkBkBtd98rvGmjfg8U2UkOCHx9IkYVaDeyEUYlM3edadeZvAqtAeZO
	tyv8uPJE8PpbAd4cPFfvOm6u9Iyb4Cp2A54RtNka7CqId6tmhapV9TkDBbpodvI+zpm4b8eZcLyAC
	W2Gk562isT+n0kCk4eOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTn3w-00000003q5Z-2bSU;
	Mon, 23 Jun 2025 19:42:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTji4-00000003M2N-2hiG;
	Mon, 23 Jun 2025 16:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750694871;
	bh=UTdif7JufIoFJNm1QPMJyIUlLbeXViK0TKeCIJV7eq4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VF8rYvYZX32tFHupmDNnAwZMci2CVeh5DbdrqnR4SeumETbsR5JDgsQMTtVgCBZBM
	 IInd5QURDwxAnccc8Yh6K5FseR8gz5fGM9Lrm9CWyY1qhic487y3qXFeIKGSswvAS1
	 XoB7PtCC1aFDOwdG5VgS/vnSK1P1rJFpYoH+tuJfA0LNYs1aL8a+m8wKYusJzIq+iW
	 7hRsjcCE7rqzLJ0fgqtLPkyjap8qR1d03xrmNdof1Ky/MEwm+DFPQdukMDcgKpuCfs
	 S7AtuuAne1hkzDEynt5VQMA6f/mE57ivtmbvGmvhBvYnc9urd0YlYWq4HvUdGe5t9N
	 JJI6ba9Bt/DDQ==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E557A17E1560;
	Mon, 23 Jun 2025 18:07:47 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] media: dt-bindings: rockchip: Add RK3576 Video Decoder bindings
Date: Mon, 23 Jun 2025 12:07:16 -0400
Message-ID: <20250623160722.55938-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250623160722.55938-1-detlev.casanova@collabora.com>
References: <20250623160722.55938-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_090752_856717_71A59FCB 
X-CRM114-Status: GOOD (  11.20  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Yunke Cao <yunkec@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Ricardo Ribalda <ribalda@chromium.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Hans de Goede <hansg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The video decoder in RK3576 (vdpu383) is described the same way as the
one in RK3588 (vdpu381). A new compatible is added as the driver
implementation will be different.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index e9b82dc05fd1d..96b6c89387683 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
       - items:
           - enum:
@@ -104,7 +105,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-vdec
+            enum:
+              - rockchip,rk3576-vdec
+              - rockchip,rk3588-vdec
     then:
       properties:
         reg:
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
