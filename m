Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C4C4C27C78
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 21:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7we6SlOimN20o64wOhAXKwFH3ty+mDwBk1FK8dUBhXI=; b=bLkjXjcaJTclkU
	XLxs+LLYps1yHDOivQvAOP6BD0nEg5hUSkGhbcCkAqj6/iOUojE5p1rc7bDCILf9JeTs3HgSiGy3B
	u0hkJN+jBWBRYbnXYZTbJTlMSNYCb/Qn+8pBUZOpaks7PRTEqTLigPvwGh48fufeEI3Jde9H38iZP
	mFH+9tR//CR7rjcajmYjEpVR9+JMwsR/vyh5fMhB11xquhO66L9mqEF7YNsyjDbE7fvmiYs3Vm5KP
	QXNkSuCRSoX3aP7PhfohkV4S8xv/Ln21rXxYiqUm6RSlPbd7beU3DWSNUkOBFfXuBO1LZqgLh0P7F
	eX28nkSljdzNNukHASTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmHR-0000000AfsL-2ZfU;
	Fri, 21 Jun 2024 21:58:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmGx-0000000AfcQ-3jVX;
	Fri, 21 Jun 2024 21:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719007097;
	bh=Bnakr+xsYVt2dVEvRUkd/iAxPi1ydgRoDjlbtuDkEg4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=C5Jjm4yj8+riKaj2jNVf1rS5Q5ggPfKxFEYnkhXi1WYqwqV518Ddgdzq1+7GBTgp6
	 DOiDI+XXaaEmw5Id83w84PnMpMRYq7fvlbXK0vNoZOtuWSZrsaQ1jxtY0WyvKHMCaO
	 j9bbO1Ab0HtFN8bzc2aplmUf5QBPCps7jxopivH8SQvoupfuDQ7ovE1+dz11RuN8MZ
	 mkywGw4JZcFaVTuTM4CHdAgWPmCisyRgnxKQk83fG5R6f5wycovIkZqQuBSScnbl9A
	 UaAlsDbTNsM66ZKmxCLmhKSh9KjJVyG18fm+qD2SEQ5MEmUeaGSosW3pEXtjSlHQCO
	 KnCv4N5Z1NCrg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F22A037821E5;
	Fri, 21 Jun 2024 21:58:16 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 22 Jun 2024 00:57:20 +0300
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Drop invalid
 mic-in-differential on rk3568-rock-3a
MIME-Version: 1.0
Message-Id: <20240622-rk809-fixes-v2-3-c0db420d3639@collabora.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
In-Reply-To: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_145820_130536_A62C1527 
X-CRM114-Status: UNSURE (   9.63  )
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

The 'mic-in-differential' DT property supported by the RK809/RK817 audio
codec driver is actually valid if prefixed with 'rockchip,':

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
  rk3568-rock-3a.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

However, the board doesn't make use of differential signaling, hence
drop the incorrect property and the now unnecessary 'codec' node.

Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
Reported-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ebdedea15ad1..59f1403b4fa5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -531,10 +531,6 @@ regulator-state-mem {
 				};
 			};
 		};
-
-		codec {
-			mic-in-differential;
-		};
 	};
 };
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
