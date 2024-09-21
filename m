Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A450CCF9C6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 22:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZetHlabjC12xAwNIY7wGWurGea4O+PCWBHjmg3JblAs=; b=Xlc0UvMeS4llx4
	LMenqQh2taBnnVieURU2f8OuUVpI7DBAagKQHla+/DtsDbvSec6xkV++WFeZa/nYUWlqrTbSJ29eu
	p7pPL1nkcYKKmFc2c0D+vymIaMaNmN1fkN14LcGejKHTdhQD8DpiemJxEl3MBq9ZofhoSDWtCm/HG
	Kh47ibSr+Od02AyqBUDiZeqPBMVmnJ5Cj2VwpnFWP2HesStp0ujj1zmXPJSJ+Rz89Na7C3/AH94iN
	jJQ5nJ16mhIzxuODF09UY7HnH8ejEA0QtbF150+bnWifCs4ey3/SnVik+Q8qteCGMQylfEeMjIpuG
	bAWgyN8MtV5hoEfJvl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8Wn-0000000ELvN-1f99;
	Sat, 21 Sep 2024 22:24:33 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8TR-0000000ELQS-2Pei
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Sep 2024 22:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1726957236;
 bh=vW3Ue0teLF7LHwhAhdpVjB9NkznQc9ED1YULlXDH87A=;
 b=dEHaZCqTjMmv5qQ4mO0tg70fdOCbYDQn3h+zYTJaYGpFQLsdm2fA0vUo0HyO6tescXmyGsWmH
 kgpDJkOjA6gwp0MxAt41CscOItwXkttNhSoo/UQFwOAHyXYlI/JytdVdfmzFEa7cFDXPmO2cuJZ
 N0VnF2WLi7iguifUFHcZ4j3asUz4ha0ixPcCQ8AGVDn1FKEjUSc0wX/rL5//ut0JTNzm2WFpsiO
 6DLRgBh+Oq/IRx6O/b6pp7jrZN4AOJCBFrks19M7kRZZzCPJrF6JV7dYWRPv+g9Kd8JW+o9t+F1
 0D523SXemZ5d7GzMsgbpGwBDZdKdHYp4/Go60gu2onNw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/3] rockchip: Split rk3288-vop compatible into big and lit
Date: Sat, 21 Sep 2024 22:20:00 +0000
Message-ID: <20240921222007.2301868-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46b118c10b4d4a165cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_152105_914195_DED51A26 
X-CRM114-Status: UNSURE (   5.21  )
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

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

This series add compatible to differentiate between the two VOP blocks,
backward and forward compatibility is kept for older and newer DTs.

Jonas Karlman (3):
  dt-bindings: display: rockchip-vop: Split rk3288-vop into big and lit
  ARM: dts: rockchip: Split rk3288-vop into big and lit
  drm/rockchip: vop: Split rk3288-vop into big and lit

 .../display/rockchip/rockchip-vop.yaml        | 36 +++++++++++--------
 arch/arm/boot/dts/rockchip/rk3288.dtsi        |  4 +--
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   | 27 ++++++++++----
 3 files changed, 43 insertions(+), 24 deletions(-)

-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
