Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF200E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXBXSgV5HUjLa4lSJeavLjyKq6q36Yiwk1cLxU/yK7M=; b=3pMS/OEFvhK0xW
	KlE33tlSulln+qnn6UBoulYN0+z8ac2OXY1nfCCDjcOgbt/9L12WhuylEcOBD0rEeKwvDFoBueB9g
	MWyCsL5pi03vDXqUtn8HS60vsWaSjGk3fhCiwJex2AnL7rxTZS8RHjXiEmXvJpUDByRHrKMNliAhv
	ePEoOEwPu3qIYkAc6v6Uz7qlg3ATDwiy3r/1f5L/ttMkffxmsqTIJi07yGQkV+8VsrB/rpqtiVlFK
	bjUaWvRI1JYnZaWwRwrRkjDuv2cjzxjPfkfFryrn4U21t6snXpFRiwkPEKkXsNYPlNP+4VqBiTvs0
	wy22vyWvKx0NQMeZVFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayU-00000004joZ-05Sn;
	Fri, 20 Dec 2024 11:15:18 +0000
Received: from mail-m11866.qiye.163.com ([115.236.118.66])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapv-00000004fKM-3Xqy
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:29 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729225;
	Fri, 20 Dec 2024 19:06:24 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 32/38] dt-bindings: pwm: rockchip: Add rockchip,rk3562-pwm
Date: Fri, 20 Dec 2024 19:05:52 +0800
Message-Id: <20241220110558.3511994-23-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkwYQ1ZLH0hOQh1PQ08dT05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf490e03afkunm65729225
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTo6Nyo4HjIKOggPCFEoSAoJ
	TjMaFA9VSlVKTEhPTUJJTENOSUtJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMQk83Bg++
DKIM-Signature: a=rsa-sha256;
	b=j4P8WKmWMe8H97UcJ32QLnro1QeNwMI68f+odX7QMGYbLzNePU90M8qK3oPcrXrrVIr0+b5C9xrb3WdUzmF0pQZIkllBImz0v56ZDuWEz0E3cfCH5uXzSlN64zWmotcNJ9CjeOw6eaoN//7/ZB0hYvSzYkaIUveWZ31dg3vzyvY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FasgSJ8b2vELSB//ZNaadjbMWMMcwpTsOwVGIlLDAfs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030628_103934_1EC2DDB3 
X-CRM114-Status: UNSURE (   4.98  )
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

Add rockchip,rk3562-pwm compatible string.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 65bfb492b3a4..e4e1976c542d 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -30,6 +30,7 @@ properties:
           - enum:
               - rockchip,px30-pwm
               - rockchip,rk3308-pwm
+              - rockchip,rk3562-pwm
               - rockchip,rk3568-pwm
               - rockchip,rk3588-pwm
               - rockchip,rv1126-pwm
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
