Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1609E7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 10:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8gEjU1pDZj/HKiH9FClBWyEjTV3+i1uYoCITozuBhE=; b=D/m7pjDNYxr+W6
	9z72SFurwRnid/zzEO/Re3mjOsnG0iTXo7mgKvSqzpsJusbIHQ47y6bq3frJqCCPyCjWSmBOcxAhI
	/ndTFaUcIwElB2DoWn/004sh0/RMt8gi5cieN1X7RiSWW/k4edd8Y6tYb7N7acEk0JdnuWi/kPdfY
	Y7mvzAn5/1uNJ9qROzZFsvONFh+s/yOfEQ1ZMuhKdpzrYxUkeVclZPaPpvO62EoAfAermhSwxM5c5
	0KJdWhu+W6GSMNzqoIjh3HTwf2xYF2y0M/xCn2aF90kzPYRdY9cQXyedDw2SGI2HVww9kdc2yZRk7
	QdlzSzZjIJidpa43te7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOnc-0000000DeKr-0gnE;
	Wed, 25 Dec 2024 10:39:32 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOmP-0000000De8p-1oe6;
	Wed, 25 Dec 2024 10:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=tugzE
	F7vML8oQTl8NO/7KFIxtE1ZfMc6QALSfy9yPcY=; b=UDYk0o5eEkTdvDR08B460
	I9bEc0mfe5vOelO1cl4WXXn0BT5uQdBTQL5QF/XL9PWM6o+YleUPJnzRdX11f3TG
	73VfJqmi02/ZSSbmuDsTjk76sATNiTVtorV3ExZ3+1JiJTRqXslXbKzymygbDHaJ
	AQc/urSEYgYlf4506mpTDE=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgCnfIF24GtnkqkWCg--.3201S4;
	Wed, 25 Dec 2024 18:37:47 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] dt-bindings: display: rockchip: Add support for RK3576 HDMI TX Controller
Date: Wed, 25 Dec 2024 18:37:30 +0800
Message-ID: <20241225103741.364597-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241225103741.364597-1-andyshrk@163.com>
References: <20241225103741.364597-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PygvCgCnfIF24GtnkqkWCg--.3201S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF48GrW7urg_yoWDJrgEqa
	4xZ3Z0vFs5Zr1Y9w1DJ397Wws8Ja17KF4kGa1UAF4kJa4kKrZYqr95G34akFykAF17uFWx
	CFn5WrWUCFnxJjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8WGQDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR3AXmdr3gYzHgABsS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_023817_885998_A95DDC05 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

RK3576 HDMI TX Controller is very similar to that of RK3588, but with some
control bits for IO and interrupts status scattered across different GRF.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index d8e761865f27..b838b5ec2dca 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -29,6 +29,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - rockchip,rk3576-dw-hdmi-qp
       - rockchip,rk3588-dw-hdmi-qp
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
