Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B6D2EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 05:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6m+cL3Hp1GNadmsGtznZ5TmSSA7XVveXniJUs8RwmSo=; b=wB8A9yNCLO4Ava
	i/hf6GuVKf2faIu0UJgk6Up6FLO0RRNsfzOJUY+fzr5IgZDR5oOZv1JleCC2dXHWh4nOBbCUeB73p
	FZeH5N71u36CIe1ukWcQufgrPRuur5fngMSOFaBt8sXPchwTSL7ZDt3VXvls6iSkP3a8X5vRs+0t0
	HoptVdlfwAc5mWK+suPn2zpfuN1sNytH03SYnLchk/bZi6dc/hOpzHuLAspRZcGnw5qL2FW5k6V/0
	TieLJslEEKcw9oq6SthUBF9Xn8EJ1p8wgo76HCKOEWvZcy6vuQv/uRUDDcgsWBTis6BpHy9igTVys
	HpFSoMGTZWFT9px5m6Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTby1-0045Wj-17;
	Wed, 09 Aug 2023 05:42:45 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTbxx-0045VI-2m
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Aug 2023 05:42:43 +0000
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTP
	id TMN1qx22CyYOwTbxkqf5G5; Wed, 09 Aug 2023 05:42:28 +0000
Received: from just2025.justhost.com ([173.254.28.237])
	by cmsmtp with ESMTPS
	id TbxjqkAsha8COTbxkqn02S; Wed, 09 Aug 2023 05:42:28 +0000
X-Authority-Analysis: v=2.4 cv=DK2cXgBb c=1 sm=1 tr=0 ts=64d32744
 a=Jt2RHIFfQig1ELqEZVeWfA==:117 a=Jt2RHIFfQig1ELqEZVeWfA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=UttIx32zK-AA:10 a=5SfhNeb3QxAA:10 a=VwQbUJbxAAAA:8 a=QX4gbG5DAAAA:8
 a=DgXrqYuCAAAA:8 a=LN1DEILRDWMThqYPT54A:9 a=AjGcO6oz07-iQ99wixmX:22
 a=AbAUZ8qAyYyZVLSsDulk:22 a=NFkmT8Fa3oR8cXbSjPxL:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IRedR4a0UlTeO6ZLpW4sOxZ1W5NZ59F4Kr/32UOhOHI=; b=Fb+cNBMESaV3YERu24pAVhOYrS
	yp+fmY1ZbPXQR6GjDOREBMv9ESiwIonrw7EPEoLtz+RGksXJMGliW0nQJjE5oKQ5zGgswNY5DZqNB
	OErLhrdUGlA2AkGp8VdO1hwsDHYyLcZmrvA3V3Ug77CS+CEIveOG+c9B272FShakyuX3Y5IK0g6gd
	iQonanpixIP7EHMyTLfO1Bvt9/n8eVbcIeTD429+F3jAx7uTI/BAMnJUP5f8PW3X+j/Tgyo3J32W2
	DI3l9vMDLHA8g/+XG6Tq+L6II8O7s2CKVruUSu8p7ye+3vvTWP0Dn1Km2QeBqrKBkADbDFTCK4XGK
	lw0ji2nw==;
Received: from 097-084-242-070.res.spectrum.com ([97.84.242.70]:52104 helo=localhost.localdomain)
	by just2025.justhost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <tmckahan@singleboardsolutions.com>)
	id 1qTbxi-003yPQ-2S;
	Tue, 08 Aug 2023 23:42:26 -0600
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add Support for the FriendlyElec NanoPC T6
Date: Wed,  9 Aug 2023 01:42:08 -0400
Message-Id: <20230809054213.27447-1-tmckahan@singleboardsolutions.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2025.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 97.84.242.70
X-Source-L: No
X-Exim-ID: 1qTbxi-003yPQ-2S
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 097-084-242-070.res.spectrum.com (localhost.localdomain) [97.84.242.70]:52104
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 4
X-Org: HG=bhshared_jh;ORG=bluehost;
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7anVzdDIwMjUuanVzdGhvc3QuY29t
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfC0yCF9JsO60/MmJe7ralMDzxf/DHdeoKxA3dXT95pZe1gV8DHYH1Pdg3MPUITstS/p/wG+UBnmA43yj2J/JS8KOkhwTBPUkszoMgL/XZn8+p0XmA8kS
 92ersDCveFRWEhxWEvlj3FzIr+EIShsXP2WHzOtPSukrDWQbGMdfUgjHrTlYCSK5YHwrtPLtr55+BycyR2yYjJk9hh/ii60rYtngG+RtgfkgxW2awfE/czgY
 xi9qmSR9WZfRtrLOduzz5A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_224241_981795_1BB1ECD0 
X-CRM114-Status: UNSURE (   5.46  )
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

Hello,

This adds support for the RK3588-based NanoPC T6 single board computer.
Note this series is dependent on the PCIe 3 support [0] being
upstreamed. The NanoPC T6 uses PCIe3x4 like the Rock 5B and EVB1.

[0] https://lore.kernel.org/all/20230717173512.65169-1-sebastian.reichel@collabora.com/

v2:
 - remove unnecessary "okay" status from sound 
 - add '-regulator' suffix on 2 regulators that were missing them
 - use generic node name for rtc
 - remove extra lines
 - fix alignment in I2S entry
 
v1: https://lore.kernel.org/all/20230802051441.3106-1-tmckahan@singleboardsolutions.com/

Thomas McKahan (2):
  dt-bindings: arm: rockchip: Add NanoPC T6
  arm64: dts: rockchip: Add NanoPC T6

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 842 ++++++++++++++++++
 3 files changed, 848 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
