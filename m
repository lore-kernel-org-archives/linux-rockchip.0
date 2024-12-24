Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE11E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 08:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iv1fwzt8myqo2MN3eHnV8+xlbmspPwfgy3VYsHZ020Q=; b=Pj5L8/d6PFWofE
	gJgPWyxnEaxjaaG2qg+s0Bh+TFLUbM/rKKCcqeTHS7mQ5AbBVM/R6/QTaCzaPB5e26Z91pQkErRRM
	zQb2+FipV+l8x6ijmrEgTkFPKHgNXH0K/B0g6wQsB8F4B6CfV1kv5TeIgd2x9X78F4tBi4fWy81pX
	rUKcOekcJA7OuoHeEuXMcKjwNQfqWadzXx4k6qqpmjYOq1mSbwH91Yn/gTzWQb6DXaIlUjtU8QiXm
	Kfi0CdSWbVtO9cvB18ijRFyZwdV/15KpTxBQ7CY7nX/9DiJixTFLX4zwtlQdUY0T5ASZzU2xjuDqy
	jYr6b2Ww53XDoSq7GwWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Dr-0000000BUNL-02qD;
	Tue, 24 Dec 2024 08:24:59 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Cd-0000000BUIc-4Awe;
	Tue, 24 Dec 2024 08:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=4e1ob
	V0cPgwgcDo8hxgun6VysOTGhY7lznRi05MbxUo=; b=XFOUyotvyRIhch8RN2oEj
	a6coWCFhfprvFsF2HxT78buQS8B2Y9ZwSBBk2fp2+PEGq33VPGLBady9lOWLeaMT
	cKXmEgstp/orNNB9cXPHCebNIJq8CHTuE+Ic5SyVw2hzjKZD6J7ZoudWAh0JMJT8
	dVLALRjGWfE9OQFc2ya5PE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wD3R1F0b2pnfyNbBQ--.5317S2;
	Tue, 24 Dec 2024 16:23:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
Date: Tue, 24 Dec 2024 16:23:09 +0800
Message-ID: <20241224082315.264091-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3R1F0b2pnfyNbBQ--.5317S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr1rGw13Ww4UJr43CF45KFg_yoWfJFgEya
	4xZw1UZFs5tr1Fgw1DAayI9Fn8Aas7Kr95CF4UAF48CayqkFZ5KF95Xw1akr18W3WxuFyf
	ua1IqrWUGanxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1yrW7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMx2-XmdqaMi32AAAsN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_002344_877332_87C0A3BC 
X-CRM114-Status: UNSURE (   6.18  )
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
Cc: detlev.casanova@collabora.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Add hdptxphy grf syscon compatibles for rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7eca9e1ad6a3..61f38b68a4a3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -23,6 +23,7 @@ properties:
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
               - rockchip,rk3576-gpu-grf
+              - rockchip,rk3576-hdptxphy-grf
               - rockchip,rk3576-litcore-grf
               - rockchip,rk3576-npu-grf
               - rockchip,rk3576-php-grf
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
