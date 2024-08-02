Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7942FC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LT7rX2BqDh+mBhwG8aCo8kOVneLPQNJ+NJfoeAEqjdM=; b=XqCiXh6Lhtb7SX
	qapDKDWyaNzBxJYTA+NCKFbxol/9PIAHUbZIzODSou0IzOWd/L3f9Z+jMSZXUT+jHgjxPnZGSLMYe
	wMCIJaZp1NI/Sw5ig9uTq2n812pFe19B4nJZhjxYVnhmHurKhok+p9Sv0Qay+eBBfAVHrtMeNMmGx
	bg50mW2J+ue7/zJYSMeA1LKW48dFybjI/smBUcBKdMQgqSgG1mWQJEh0D088jhsefdj9L6G0iYLEI
	rsk1bNr5CqekUGqSr/9v/kAEqqTkxxRdok9GVfEiOD2RVuhdzayi2tJ3hyqHwxqqMrPL87rZKXWyE
	eFsmspwTnARQrMUNlbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa08P-0000000AB4H-3gUG;
	Fri, 02 Aug 2024 21:48:25 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05p-0000000A9yQ-1Zyg;
	Fri, 02 Aug 2024 21:45:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722635144;
	bh=vhsFBWvnwRcvgkFFC3UkhcXZJdBWDgru/XEOUGrJnB4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=xj9jSLoVOzd5vcWFsUJYQxmIxX2KpG/fuygaxF26IRo5FUldcH2yGoCrcpZCw+yyY
	 fzbw/gyokUgrO0h9TiB3GCJiQASoQOy8CK7oJDsqroDNjEKlHYfzCjRoj3n3gyQlO4
	 tQQxHh6rUbW08XBfwMyRNhXlIk3hvpjVXFf4sRDgmOG2h57sk6xYNHnW629iQIhzFu
	 uOV2/SzwPEgwlgd3J8lCHuYquWee3xvPOyEnhl4BK1K+RafGZMYyaXaymbI/RFONkf
	 d6qiqGjMIk0gJ223J7HNujSmWLYn0KCA92C6XwZTJCYC9osxwUEQJYJJzY6o9X9HsC
	 iDscOcw426Qkw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 51A36378221D;
	Fri,  2 Aug 2024 21:45:39 +0000 (UTC)
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
Subject: [PATCH 05/10] dt-bindings: mfd: syscon: Add rk3576 QoS register compatible
Date: Fri,  2 Aug 2024 17:45:32 -0400
Message-ID: <20240802214612.434179-6-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802214612.434179-1-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144545_563170_45DD3492 
X-CRM114-Status: UNSURE (   9.51  )
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

Document rk3576 compatible for QoS registers.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 9dc594ea36545..ce5eed77b3c81 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,6 +103,7 @@ select:
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
           - rockchip,rk3568-qos
+          - rockchip,rk3576-qos
           - rockchip,rk3588-qos
           - rockchip,rv1126-qos
           - st,spear1340-misc
@@ -198,6 +199,7 @@ properties:
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
           - rockchip,rk3568-qos
+          - rockchip,rk3576-qos
           - rockchip,rk3588-qos
           - rockchip,rv1126-qos
           - st,spear1340-misc
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
