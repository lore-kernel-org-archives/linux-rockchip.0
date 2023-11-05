Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02F05C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Nov 2023 23:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6ZY8I/PlhhOUiAECbisUvTvrDavyarLOELZYhcAu5M=; b=YzxvJAb9WOBDt9
	CVrJNuWAwtkF8Q312hR8qhCs5/tSV+wPfzF06kJeLcTIL7mjVtwP/6heOOy/ipTwr1Ui5RiK9gg1D
	RGiS0P/h3SxVV/2y/VkjpQWJQ5B1ZwcExVKxKg6WjTevEI0W4yxlfguNdDtTMZ7caeAnV/qNKUB6V
	4N/coAPzY6JjUQSWg+tb95S8Li3drs4c8iCqXAOHH3+YGj0KMztBDMJhfBi2c58EnSeMAaiFOK7Rr
	sQrimwHgJEwmuR9RXhEjawzBa6ts+7gktcrCuh10v+nT7CdMA71oLcYu4OXkKqk+1Uh7VLsj944Cr
	LiMmLuyTP8HVrxFZ9LIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmgA-00FdHF-19;
	Sun, 05 Nov 2023 23:37:18 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzmg7-00FdFY-2D;
	Sun, 05 Nov 2023 23:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699227428; bh=qE7nH6H94GMs6nmY2PS6X8h2go3Ub6GdZ/t0WOTlQds=;
 b=GZmmwJj2vrehMzyYm+SU7CJeiaSIldQ6k1sT6e9Y3Ulx+QhjuTxtBAZSRs+79U892FMVwZCTr
 9SRUlvjvxT5WZYm4ecxpVwWW81Otlrt+wLa8chj26IT8sX8bEcoAxJiqndCho4R9p6sRok6zM9R
 5bl59D4b6cNoFYLNsM/GQ7ARmEyKaL23muUNGTULXXudIo0GQKNtsusTjusJ+t4OZD+eNW7idHz
 XdX4O3A+o+N3zt55zskikgltzQIveVkinqVvTN34NJ/9XpUoq2ikmP0zv7nr6pPjwBcsZPNfLur
 RUt3SUDO33LJfvsVUIeWFNx5zRTngZtk8eR7hY8/a6Ug==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/9] media: dt-bindings: rockchip,vdec: Add RK3288 compatible
Date: Sun,  5 Nov 2023 23:36:13 +0000
Message-ID: <20231105233630.3927502-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231105233630.3927502-1-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 654827241b004d4cddbe0c9e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231105_153715_761802_00124692 
X-CRM114-Status: UNSURE (   9.10  )
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

Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
support HEVC decoding.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 08b02ec16755..0f00e9c86737 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -16,7 +16,9 @@ description: |-
 properties:
   compatible:
     oneOf:
-      - const: rockchip,rk3399-vdec
+      - enum:
+          - rockchip,rk3288-vdec
+          - rockchip,rk3399-vdec
       - items:
           - enum:
               - rockchip,rk3228-vdec
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
