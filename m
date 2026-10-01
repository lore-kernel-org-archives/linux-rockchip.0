Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52764CA5FD2
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfSN0EXSVrkfX/Tk6aRn+f/nLH9zECEJYZrWlz4atVE=; b=rZrzYQpssa436L
	vvnYkKNnqHgRngn6hRoOB+H5qkT75B5Hj3w5yOi4k53Iep3lxjX8DKWd7A8gN81JUqSSgoyOKUEYF
	ZSDKkG2PtM7VhpAk01/qcUwjQas83jdCM7jAjcIxrz4B1Ms3lQUwsqDPWPcaY5IogEEptYkF8akyN
	D/p/B8OuW1oYrV4qObpWuQApsF2n85U/fl0cCSqyktkGX/OrW1uK0wfOxpWPCbCa8s5WNSrvMkwnf
	ScOCV2Yks/OK5a15svMcVfa6DVaEx8JXgnE+czl2Eg3rqpEuv5+rbJP3xRL7GQU0UM+MDRX4hp4QZ
	8s/Yycsn0dEv6d0M0YPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCIZw-00000009VHQ-0NeN;
	Thu, 01 Oct 2026 15:20:12 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCIZr-00000009VBw-43MO;
	Thu, 01 Oct 2026 15:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Date:Subject:MIME-Version:Content-Type:
	Message-Id:To; bh=HG7hLYwo6VKRj7UF0IiJn2CjzUewNY8+lmn/zodhbzY=;
	b=NhKjIsTmsyjyPz3YmhUQyrce9e+amfZYx2IH1/dnMr9BUIdpUXuXbG3AZaQb+u
	3KzwcaVXTxgleb3kKZNGzfx12mfEOJiC+SAACPNU9Y0m7nqs+lSqpp/sVeM4+xf9
	P1UeDGJ8rZKWXvqZMAzm3SDLJj4We0dejRxL/F9zMqnwc=
From: BG9OXA <bg9oxa@163.com>
Date: Thu, 01 Oct 2026 23:19:46 +0800
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: add ALIENTEK
 QuarkPi-CA2
MIME-Version: 1.0
Message-Id: <20261001-b4-quarkpi-ca2-v5-1-e19296802978@163.com>
References: <20261001-b4-quarkpi-ca2-v5-0-e19296802978@163.com>
In-Reply-To: <20261001-b4-quarkpi-ca2-v5-0-e19296802978@163.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 BG9OXA <bg9oxa@163.com>
X-Mailer: b4 0.16.0
X-CM-TRANSID: _____wD3H2MRer5qrBReCA--.56692S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7XryfJrWxWFWktFyxAF1DKFg_yoWfurbEka
	4xuF15uFWrXFyFgw45Aan7GFyjqw47Krn7A3WUAF18A34vkws3KFZ5t342kFyxur43urn3
	CFs5JryxXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_6pB7UUUUU==
X-CM-SenderInfo: lejz05rd6rljoofrz/xtbC3RTtW2q+ehQqwAAA3v
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_082008_421747_302A59AC 
X-CRM114-Status: UNSURE (   6.69  )
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

Document the ALIENTEK QuarkPi-CA2, an RK3588S based single board computer.

Signed-off-by: BG9OXA <bg9oxa@163.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843..a3191bb90 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -182,6 +182,11 @@ properties:
           - const: alientek,clrv1126f
           - const: rockchip,rv1126
 
+      - description: Alientek QuarkPi-CA2 board
+        items:
+          - const: alientek,quarkpi-ca2
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
