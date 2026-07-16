Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DF73C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Cc:Subject:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR6vEpDNp4N4ToBYbTmL4IvPJkAA4sr41KNNHM7ol4Q=; b=Qe+7E/uMg10FtC
	+RmeolaAA36rgkhyX0Ji7ApUG6R7AwL4AI6c9JMxaprPmZ4L1W/SONMUpjW2TCflT2UtZRlTlxMaq
	I6ngBCkInsDqHNqZwXW3RQoHD7oJuH1hoKUv9kE51ndNsGimHJzDhqD+tzIxz8kh7Ru6fY80hfyTW
	x1KXtm0Z1rNCrR/rp/sdq4sK6AeeNSbwOQ4gvzt4aMOAhc75BiZx10dtHy2/itMcOTFsTtcW/NKsQ
	8gsvVStgcV8Oj6aauvmZfEZmefewsmyLjtx65Tj7u++RiylKYo3GeCnGXMTd8wNBYsnrWn4P0FXuq
	dwEd+BSRC+z18mv+38iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0p-0000000GaX6-0aHu;
	Thu, 16 Jul 2026 06:56:03 +0000
Received: from gz.d.sender-sib.com ([77.32.148.26])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0j-0000000GaP1-2qQW
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 06:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
 q=dns/txt; s=brevo2; bh=jTAATjYPhuU81OuGKaNMSYMV3823/3WCISpb5ZX8+PY=;
 h=from:subject:date:to:cc:mime-version:content-transfer-encoding:in-reply-to:references:list-unsubscribe:x-csa-complaints:list-unsubscribe-post:message-id:x-sib-id:feedback-id;
        b=fVgkqi8bUOBGuvWbFUT1FSjselq8XdBiNPxVSnzdBTKGlils1HkczCt/mGlfdM4Ue6BUvQPfKGSt
        1WYGF+l6NkvjrimgV17vGq3BrsgGM5YLhbv+nsWFem5Q7g3DRI8anUiyXbCmdlbl/5GZHK/RG4bX
        FZ/JfEE+KKKV+VitHirO9Jwyb+1h8HsyinYKYQnlbfY/pZX+2UfQ0HZ/XIReJXZCk7x+ZPhCT2Bc
        9WFYE6G+COQ4uAhcm6Wovw4xEJfRnc/yapda+i0+6u0CVxHSN0w9zWs6S5Vd2+lEaJOmnIpf2Hzu
        ZYJRHaYHtnG8nerIqrNjH8BJEBDE/GY4wfWpeg==
Origin-messageId: <20260716065548.2466198-2-gahing@gahingwoo.com>
Feedback-ID: 77.32.148.26:11677070_-1:11677070:Sendinblue
From: "Jiaxing Hu" <gahing@gahingwoo.com>
X-CSA-Complaints: csa-complaints@eco.de
X-Mailin-EID: NDg1NjE3NDAyfmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmd%2BPDIwMjYwNzE2MDY1NTQ4LjI0NjYxOTgtMi1nYWhpbmdAZ2FoaW5nd29vLmNvbT5%2BZ3ouZC5zZW5kZXItc2liLmNvbQ%3D%3D
To: <heiko@sntech.de>,<robh@kernel.org>,<krzk+dt@kernel.org>,<conor+dt@kernel.org>
Date: Thu, 16 Jul 2026 18:55:47 +1200
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
Cc: <devicetree@vger.kernel.org>,  <linux-rockchip@lists.infradead.org>,  <linux-arm-kernel@lists.infradead.org>,  <linux-kernel@vger.kernel.org>
Message-Id: <08c0ec54-3209-4a2a-ab13-f38007449297@smtp-relay.sendinblue.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-sib-id: ERmSsgDTf80ILJyT_mScNct-OMjAP8-DXMlRF6BI1O-IfzNm4Qi1cYDRxcdmGitc6eZbfxr1Lm6uD7uqY4v7phP_TvtOA5yqJ_BBpPEdNo3UVOm2NQconyNhmMM1lf9zLGfqgaGr7ypDIcO4pCt5xn3_Ql-abz2qWmibWIZAwIhDgcM1iME6fyjVPzPtnsan-Q
In-Reply-To: <20260716065548.2466198-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
References: <20260716065548.2466198-1-gahing@gahingwoo.com>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_235557_877536_279035E6 
X-CRM114-Status: UNSURE (   4.89  )
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


Add compatibles for the ArmSoM CM5, an RK3576 compute module, and its
CM5-IO carrier board.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde186..5c7697f4d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -71,6 +71,13 @@ properties:
           - const: ariaboard,photonicat
           - const: rockchip,rk3568
 
+      - description: ArmSoM CM5 Module based boards
+        items:
+          - enum:
+              - armsom,cm5-io
+          - const: armsom,cm5
+          - const: rockchip,rk3576
+
       - description: ArmSoM Sige1 board
         items:
           - const: armsom,sige1
-- 
2.43.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
