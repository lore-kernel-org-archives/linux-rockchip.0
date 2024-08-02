Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A8BC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPJudlFV1joKV5TvJvQr4SwYSEtV0SGIVtYkXG6envw=; b=Aqk6Ht4kESHVRH
	R5BoGwc2AU/XmN2+x681eyUpGqjSLhlLsi2Vz0M2dAgVFYj0HJkLmP9+dnMzNH5otkKt0vVIhkRDv
	qJoWpu7Xl70OPnMeMQj7Dpe8s8Xpz1Z5qkTKI2TsNS8lh9opJmDeK1ZUS2BLwbPy2zFSxRAMsa4Bf
	wNlHv/wY/S1vaznAND+NFhHIQpVV5EskYnnB7JHyCMxXl9hSt04SKvVCBL8WHBDOfDp7w22t0M7Jw
	Aa2c290UT1noJ+7AQJneeO8jsGvLzbjD6PeTwOf023r7m7fccW3l0smxRce1HDopmzl3AIfsa3+44
	C+geX5uyjJnEWkgUWPlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa08s-0000000ABDz-3bTg;
	Fri, 02 Aug 2024 21:48:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05u-0000000AA1E-299J;
	Fri, 02 Aug 2024 21:45:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722635149;
	bh=Oh/OaypReJIgqoibrk2bMwhsUwD6+K6bd+DWfvLZlho=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KYNfRgEV+bV/9MFk4LGxe53TKpTs+r+y2txdcFlTdG6oFXH70hFLSbn0qVxefdSJ1
	 GjTkK8HO9/tsjPECeZqzQAJKrIGlLzUEJBIidJiedOIGM9yXD6LwEMMT7pEXMgU5wx
	 S8Ki4gbVMKjHA66i5NtubJOYK8Ff+ZzYWy7bdD+4nNosIfTnmn5f9/rwuSYifj8d3K
	 k1o/Tpfwmzo9Fq5Yq7Ar4b7+4WTpsa8+APcw5BbwNhEsY5wXZMxsmMZ5kNA7thALam
	 iQ77rbmI5yr9Lvc8opWYW/XhRqB9Fvgo1J89nEVPzvfX7vAOvtPTOP8Es38lDnaBl4
	 uJqXNanS+8agg==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 81A52378221F;
	Fri,  2 Aug 2024 21:45:44 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 06/10] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
Date: Fri,  2 Aug 2024 17:45:33 -0400
Message-ID: <20240802214612.434179-7-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802214612.434179-1-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144550_730581_885A29B5 
X-CRM114-Status: UNSURE (   9.32  )
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

Add a Rockchip RK3576 compatible.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 4cdb0dcaccf38..cfcfd7a6b78f2 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -49,6 +49,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3568-uart
+              - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
