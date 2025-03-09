Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F2EDC282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 07:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7kqnf4Fwnh6TkY/4a9APv9jd9AN9EA0aV12zFW+Cfg=; b=hK8WCqyOkruz1s
	E+Id4b1HTq5V23azMAWm23iZdLeiOqoupAufzR4VikKsL37YrJtjhaSyFq3JFErdE5c8y+vl9FBiY
	tFLXKRtowHC6r4v9HpOeG+1viTjwfnJIfTspZN4/8XEkyipYQaPnBiFdFZWqHAf0ekKi2UyxDxgWI
	5/a/bTLR5KkB4upYO+euMJak3xeyKLQC9C2cjv2MFeuuIxMecjpgUZmhfwelkdbwZceyFrlGmLkMg
	Te3tSZrkGZgWlWKaaIwOU6G0n8Yo6apmeTe6X61jI9ChWOVkvkQ44lXhsP7iN2M0/nYtWHdZZqqNR
	BN2qYRUFrR3+CGQrDvoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trAlr-000000006Ev-1jzE;
	Sun, 09 Mar 2025 07:08:23 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trAkD-0000000062r-0h9s;
	Sun, 09 Mar 2025 07:06:42 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5445C25CBA;
	Sun,  9 Mar 2025 08:06:35 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9yQwh282UgXG; Sun,  9 Mar 2025 08:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741503994; bh=vylK+Hj423bu2ryxm5MijJrbFuAUeovoLjxbShm2MIo=;
	h=From:To:Cc:Subject:Date;
	b=UTR3mDpz7rkMjVhd2kO+QIsgXg/IhxLxzxMMICR/Nm0AwtTcdLnaSNnqheaqefBB7
	 5vI/6wUGfAs1xXVL9yyGMlb10Qrgwr3XQW2QXe2JNi10axKkXXNEQRHdy6OzaDWq+9
	 EGUZA25+BCspwdV42M5CmfIadGRLcjZh82zMNicK/yP0AoxMjMZ366QmvzLM/ecXZ3
	 1W5VzLyQbB+J/jvguBhQP3p8Edgp2o5UOa4DuRGUowgShSmDhQoPPG44prJP/Zowjf
	 080aCm17AMtxzqB2Fv8usFBpBi9IJiOAUGJwuuKt1hCkmNQsDjbiTkcMkdEyBvQtlH
	 qRHLy/n8Wlihg==
From: Yao Zi <ziyao@disroot.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Support I2C controllers in RK3528
Date: Sun,  9 Mar 2025 07:06:00 +0000
Message-ID: <20250309070603.35254-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_230641_338395_B105889B 
X-CRM114-Status: UNSURE (   8.89  )
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

RK3528 integrates eight I2C controllers which are compatible with the
RK3399 variant of i2c-rk3x. This series documents the controllers in
dt-bindings, describe them in SoC devicetree and enable the onboard
EEPROM of Radxa E20C which is connected to the second I2C controller.

This series is based on linux-rockchip/for-next and may depend on the
v3 of SD/SDIO series for a clean apply[1].

[1]: https://lore.kernel.org/all/20250309055348.9299-1-ziyao@disroot.org/

Yao Zi (3):
  dt-bindings: i2c: i2c-rk3x: Add compatible string for RK3528
  arm64: dts: rockchip: Add I2C controllers for RK3528
  arm64: dts: rockchip: Add onboard EEPROM for Radxa E20C

 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |   1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  13 +++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 104 ++++++++++++++++++
 3 files changed, 118 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
