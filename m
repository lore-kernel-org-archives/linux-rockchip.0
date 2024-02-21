Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE62DC48BF6
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 10:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMsGkOgxBALc4ArNcn7zizt1+5H9LQwJb0J6J2spnoA=; b=PBLTy38WofMyhP
	LHv+skSvEjHi0KcNMjbslcnREJrFi7V8mt4k0xqm/B1k+zGqlmriC2QgLJcjtOLoUe+wYfBxkjPb3
	3mNAi6FghPmuq7Ewac9cFTTCSBR5eRCc3z8oswe62gDvnfzYfd4/tlZvuk9WfJf4PblmsQLBl1uHl
	rG2raiYJdTayXw0xoP4LE1XY8iina5pcc2r+I4zcxksx9187gdgJQsfCHCJqZEesx/OjY/XXwnX6I
	JK1+/JGthsHKRsVQTLdSc6f1EDFMG5ZQnLVJ/MDBzLWycLE/vEQ4DmwX36qv/WwQ4/OqTCn3UggS/
	JLqruFo8+Y2zeaYAlZDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjlZ-00000000TmN-2PNO;
	Wed, 21 Feb 2024 10:23:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjky-00000000TNX-0AQJ;
	Wed, 21 Feb 2024 10:23:17 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 50BEB240012;
	Wed, 21 Feb 2024 10:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708510994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WleTd20PMIj2kUPD+6Y2hedislbfvKaEe57+SXEdJDY=;
	b=jzlTAhMjJkU6mA3eF9eQGhBxgwYTLPTu1vX/FjGNHbRckkCPa3zCZrvIXddM8L78cBiaY3
	CTRfstsXevICAOfuZHfPNlf0JqucSA7WoxdnrN6rthTaQV3eON5RewOOwyVMsJZjl4XYIl
	9a86Y01/LYJICcciA4y910SV6zjGAVNSElGjiZZDbnDc+eW/6ehPaZAWy68TlN7In2Vs9K
	5WWJrcpUGY6KAjHlAn2B461V+7kSPiXaU/8jAGHPGtiipezVymblQeeyDWUvctVD/NcyS6
	eQGehhLgJ4uAkrp9g+7VAZ+GXeX9NfejcvVxh37zL7dCp8W1XHw0eYHlypo+uA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 21 Feb 2024 11:22:49 +0100
Subject: [PATCH v3 5/7] arm64: defconfig: enable Rockchip RK3308 internal
 audio codec driver
MIME-Version: 1.0
Message-Id: <20240221-rk3308-audio-codec-v3-5-dfa34abfcef6@bootlin.com>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
In-Reply-To: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.4
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_022316_300477_DE7724CE 
X-CRM114-Status: UNSURE (   9.95  )
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

This codec now has a driver.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

This patch is new in v3.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e6cf3e5d63c3..20650b03d25c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -981,6 +981,7 @@ CONFIG_SND_SOC_GTM601=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
+CONFIG_SND_SOC_RK3308=m
 CONFIG_SND_SOC_RK817=m
 CONFIG_SND_SOC_RT5640=m
 CONFIG_SND_SOC_RT5659=m

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
