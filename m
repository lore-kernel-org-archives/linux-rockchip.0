Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FDBC4829E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeGYqSzjWvNLu2Trt7mXXjCRruoDQVlo2zfIriuq2IE=; b=PV62sZk88ZUQMK
	DPpy1DPBacGYAn2+nSDjj9Az6QdQsDeY4lc0bhjJaO7E/ownKNZQfomRPmLOcgvYn44Iy1Vw1+ODr
	2rw+j8lU8pgCSplULhxHwWlnKWZkLJr+Y+fRy0l0XY8ra5ggdqYcpgyrdcLfYdSIihws+axtQ0gSk
	onkSG/XbREw2Sri/hhRUoC1Nahkz7X2uxXHH2djgCDbPeucL+P8G3Gh0vbb09BoicIFgFNdZ4pXrq
	FOfmDGm3pbqOcfFB36wVcw+rmW8Hs23/BG9z75fWK8SohoMsFRTa298pQ674ZxeJOck4h7YdyjWwd
	EK3Ccsd6QuWJugZ7MO+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbd5c-00000007MUn-40A1;
	Sun, 18 Feb 2024 09:04:00 +0000
Received: from ec2-44-216-146-128.compute-1.amazonaws.com ([44.216.146.128])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbd5a-00000007MUE-03R8;
	Sun, 18 Feb 2024 09:04:00 +0000
DKIM-Signature: a=rsa-sha256;
	b=YULAArt9mv6osUOndAnXRdss14ruUMZO2tuBTFLEfQ2oNKECWgbNHTPSYj1j/QcNRJvf4xpoi3JRtHqW/zWbk54JxdFYhYwO/pD2XPgvADD8Sn2q4yj1XYlJbINlQcALaGQrFfGREGnxcFqMv2Bab/nkRNLdvvzYRCWhhNtE4ao=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=K4Fl7JEu9s5KlglszkIGJ6sdYe5Zkzfqyd/rrzoVEbc=;
	h=date:mime-version:subject:message-id:from;
Received: from zhangzj-rk.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 02FDD2A00F9;
	Sun, 18 Feb 2024 16:53:52 +0800 (CST)
From: Elon Zhang <zhangzj@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: weizhao.ouyang@arm.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Elon Zhang <zhangzj@rock-chips.com>
Subject: [PATCH v2 2/2] dt-bindings: arm: rockchip: Add Toybrick TB-RK3588X
Date: Sun, 18 Feb 2024 16:53:14 +0800
Message-Id: <20240218085314.658223-2-zhangzj@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240218085314.658223-1-zhangzj@rock-chips.com>
References: <20240218065407.652213-1-zhangzj@rock-chips.com>
 <20240218085314.658223-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUsfGFZCQkxMS0hNT00YSU1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8dbb6bfef903aakunm02fdd2a00f9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTY6OSo5LTMWMS5RVkoiFVFK
	MzgwFFZVSlVKTEtDSU9NT0hIQ0JDVTMWGhIXVQETGhUcARE7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFJSExPNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_010358_755593_DB9AD901 
X-CRM114-Status: UNSURE (   6.41  )
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

Add devicetree binding for Toybrick TB-RK3588X board from Rockchip Toybrick.

Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..d29df97c7b25 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -878,6 +878,11 @@ properties:
           - const: rockchip,rv1108-evb
           - const: rockchip,rv1108
 
+      - description: Rockchip Toybrick TB-RK3588X board
+        items:
+          - const: rockchip,rk3588-toybrick-x0
+          - const: rockchip,rk3588
+
       - description: Theobroma Systems PX30-uQ7 with Haikou baseboard
         items:
           - const: tsd,px30-ringneck-haikou
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
