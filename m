Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88353EE49AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Aug 2023 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCVWwHonKMTMCfZXY+UXG832advGQFOYVowj6dEQpwk=; b=oTlAPXLiQoiuvV
	ermJ3lBENIPRnvIAcbk/IHRyfLVCDTr16M0CqjcgilMHyh8nIkQnPkBeKqIB0HpW0Yz/QTXp8utnF
	v5ccAEoAZT4ZGHRSkZVohkfbDLfnB5Tx+hkmhPzR2I/tdJr9/dXXVNh0iGbLuYvn36l51t2c6ssu8
	WkvAtGOW69YECh63tt+1IrK+QoivOWCJ3p5y27v8UPGpBw/eY+aRd7TorOv8qQ+yBFEpwy4+nOz+W
	7pvwX5Y56OIHMZFZghu87XdTnLQiIee/JTQcW/kQVf9eplkzayC/6oq8uEhIMDBJetEubg1ajqczK
	LNPrk/IsWphqbYm8aM7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qY78u-00EIqg-2n;
	Mon, 21 Aug 2023 15:48:36 +0000
Received: from forward102c.mail.yandex.net ([178.154.239.213])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qY78n-00EIlC-2A;
	Mon, 21 Aug 2023 15:48:31 +0000
Received: from mail-nwsmtp-smtp-production-main-42.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-42.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:12ae:0:640:5b3c:0])
	by forward102c.mail.yandex.net (Yandex) with ESMTP id 6DB906002F;
	Mon, 21 Aug 2023 18:48:24 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-42.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 7mKGOJgDamI0-8r34BOYC;
	Mon, 21 Aug 2023 18:48:23 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692632903;
	bh=+GtcJeHQ2tykEqiG/ZsRUO2yoqwpGoPfqqd5eEJixoQ=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=Dz6uaBI6NmU02cayE3Pv2VGygm0c0rYPoZzqZhthBrdHqfQgXIj7mr/zrNggNfNwD
	 cpBAzgocZiudXzvrM3ODnRUmmfTJ3C3OPz2i/S/9VrqDVvMUzT5q0BwZf1d+PD+xtY
	 HgTYGuq137YaFk+POALys2XPKtXwO2EfxUNcTdmg=
Authentication-Results: mail-nwsmtp-smtp-production-main-42.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Date: Mon, 21 Aug 2023 18:47:57 +0300
Message-ID: <0281d757b4cbcf2092167bdcf3d112e330fe6b92.1692632346.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1692632346.git.efectn@6tel.net>
References: <cover.1692632346.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_084829_880809_8D22BA3C 
X-CRM114-Status: UNSURE (   8.18  )
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

Add Orange Pi 5 SBC from Xunlong.

Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..b9649e27bc82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -877,6 +877,11 @@ properties:
               - xunlong,orangepi-r1-plus-lts
           - const: rockchip,rk3328
 
+      - description: Xunlong Orange Pi 5
+        items:
+          - const: xunlong,orangepi-5
+          - const: rockchip,rk3588s
+
       - description: Zkmagic A95X Z2
         items:
           - const: zkmagic,a95x-z2
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
