Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09774C2BB85
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 21:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RMlsY0iXR7LlOHmW6e//0bZhedbAoAi1LHiMGsW7y3o=; b=QduLpg7WeiZyW5
	7/u1tiOwxNMrp8Kljfi9oVQaJssuG8osOGUfVtv9UxAA7EPEZRItJrWSQOBelRgqArz95tx+q+UkU
	204Pmq02egJAC8JYr6UNvE7MrdnGpmnlxpe18CnBTaERBfgmW8so+W1cxVAUgSFcucNmIeQ3EpTZ2
	fe3gg8nHZL5sbLWIfYabky2mSyHhXUYoyi3BDpi6FNTceqgGrkFoAUQIbBIOIbnIzboROsbhu+iTm
	iSWwCYUWsa0bpmtM3gsSLOFoUmHelDAKNbvtuhPb836Ts02FSYZBUxdS4b7wfGrIh8X6+oCPW0nb7
	n0HcPSc5RXwmvKkEstMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmH4-0000000AffI-2Msw;
	Fri, 21 Jun 2024 21:58:26 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmGx-0000000AfcG-27Dq;
	Fri, 21 Jun 2024 21:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719007093;
	bh=kCAaRkkx578LV7p5P9HDmqRI3/vziZIbGkP10bXoAzk=;
	h=From:Subject:Date:To:Cc:From;
	b=Ua8QcNxN4HezrYGzX/x+W0e2MNicHmD0z8G1Io4vQrlApuEzTqDN5qzrrURYSo8mt
	 ZHToDUiH5QBW+HL+KtKTnPCPsJJPjRVPwqc9PjsA9JU7hEUxugYsIDsgnzCsDXxP5M
	 PRsV+tiMuzgWNtDDOAfgvR+MsUmbDXU8ItCnXkUQtfOss6RIzXKwqck3WPgQQg0iCz
	 bqeOakkTJzDPgGYuf2SWia+CCAoqJcpRCZYmgEwL9h5AS7KVk2UqPTJOG//WBKc4/7
	 So41rMONgG+islIIfQZJvy4JM0P5jKR/PblI0bA60nmHGNh7fSnQUFP+La2fzPCCH8
	 WGWFK+VJl0IwQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 582B3378203F;
	Fri, 21 Jun 2024 21:58:13 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/5] DT fixes for Rockchip RK809 audio codec support
Date: Sat, 22 Jun 2024 00:57:17 +0300
Message-Id: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD33dWYC/22MQQ7CIBBFr9LM2jEMtFpceQ/TBcXBEmsxYIim4
 e5i1y7f/3lvhcTRc4JTs0Lk7JMPSwW5a8BOZrkx+mtlkEK24kAa470XGp1/c0JipcSx65mcg2o
 8I29HFS5D5cmnV4ifLZ7pt/7vZEKBzmg12k6Rcu3Zhnk2Y4hmb8MDhlLKF577Q8WqAAAA
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
X-CRM114-CacheID: sfid-20240621_145819_898501_1E2D683F 
X-CRM114-Status: UNSURE (   9.39  )
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

Rockchip RK809 MFD provides a RK817 compatible audio codec, supported by
the rk817_codec driver.

This patch series fixes a few issues identified by dtbs_check for the
boards making use of the codec: rk3566-quartz64-b, k3566-roc-pc,
rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1, rk3568-rock-3a.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Rewrote PATCH 1 & 2 to move RK809 support into RK817 schema
- Rewrote PATCH 3 to drop unsupported mic-in-differential, as reported
  by Jonas
- Link to v1:
  https://lore.kernel.org/r/20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com

---
Cristian Ciocaltea (5):
      dt-bindings: mfd: rk817: Fixup clocks and reference dai-common
      dt-bindings: mfd: rk817: Merge support for RK809
      arm64: dts: rockchip: Drop invalid mic-in-differential on rk3568-rock-3a
      arm64: dts: rockchip: Fix mic-in-differential usage on rk3566-roc-pc
      arm64: dts: rockchip: Fix mic-in-differential usage on rk3568-evb1-v10

 .../devicetree/bindings/mfd/rockchip,rk809.yaml    | 288 ---------------------
 .../devicetree/bindings/mfd/rockchip,rk817.yaml    |  70 ++---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts     |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    |   4 -
 5 files changed, 40 insertions(+), 326 deletions(-)
---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240619-rk809-fixes-1e330758e1ff


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
