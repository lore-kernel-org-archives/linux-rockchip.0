Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA863C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 13:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOa+4x7Tm340DofN/DyFp1No4lX0VwspU6LpVOuwWho=; b=uUt9g7AUf6x8TY
	/5udO3AK5cqKkYTkutw/5XJAJvBM9tj73iGnWBdIYrHJT5D6Wwj/ticG9BC2e6+MqTMutWcSVMdfO
	L3EQkSaMv8X6Rti1LvaQ8DGAA3kgpQZWKLOvwpeEpYsYOd+RASYi1+P+vLEzFjCMFoaVao2dPbY17
	6gX3EDcVor08DLHp7zGbxxS8uBAZbTQHW63EhI1FAiwU1b7W5QrPsaEnUqu8ZdtHAS5+GD08B2PTw
	KeS07y5JNW0ioPmD8rP8jNLEcoegNv69YivwCSGixIcqpAv3k/SmSKepO85TEfZGpdOb/Xo9Xvgz4
	O2kB7tVzyQHqumGCKa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhtV5-000d8H-6Y; Fri, 22 Apr 2022 13:39:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhtUU-000css-5B; Fri, 22 Apr 2022 13:38:32 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7D8641F468B7;
 Fri, 22 Apr 2022 14:38:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650634704;
 bh=9+2KVQa3DMg7UKEVPJhPFKwJCmwX4dRKAtLwy+ze6F8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XnKtwNf3WY0fiPd3LifbCPX1N0sVm2p03RmK4hbJ0a8U5dheIJJt5yvjfVUPi0kRX
 cRS3VBK5jOQZqc81e4NS+MzrNPCHq5awwoTDKxGAa1JJITeaw+5VoqtzdwFfVjhnPy
 8muWxfnhx7hnVZxQg8o8KwJ2OsTqSm2J0lmpL4Ac8248prOxTYAPgkKDvWa6iUCa6V
 KAksFJ8Cbj5BfY1/CZOkgM0DyeFxfnyCA+V7eNRBFb8/yJ+uLZfW3tsIbMYIPcDP/W
 K8C7OXp09M721cKh61CBfO/OonxkcIz5B8cJMP8ASJ+JelxFA3TsPUVHEjxkfWK99B
 GQMoTAT+51nqQ==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Date: Fri, 22 Apr 2022 14:38:01 +0100
Message-Id: <20220422133803.989256-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220422133803.989256-1-chris.obbard@collabora.com>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_063830_360695_DC0989B9 
X-CRM114-Status: GOOD (  10.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Document the RK3328 compatible for rockchip-vdec.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 089f11d21b25..23f9687d862c 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -19,6 +19,7 @@ properties:
       - const: rockchip,rk3399-vdec
       - items:
           - const: rockchip,rk3228-vdec
+          - const: rockchip,rk3328-vdec
           - const: rockchip,rk3399-vdec
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
