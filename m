Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CDDDC38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyC2pNTxNWZRU1yZlnDqS8rvyyActl5yTMAMxB9aLmY=; b=woVnrvEBynR8WO
	knVN8Jlo4EhbjEQPynxdiZI8CforpW0HsgIQTdlmYNIqVF8PQHpoUTO4dd/ZrwwU8hEfBclC2tyFi
	fA4viffVkZVdt6cYJWVV1JCl5pmgtCDrPzyJVmHBHVo5zy0ygr+8eUfrUNUDilWMdk/B/ebtKVUv2
	V7+lfXvSpvaVBYMAHMHPmPiM3Tq8BI064ARJHApy/ZL4L3WDcRAxsLUTZ1es4OcHHmawoP7djwZjW
	dW5pDn6pRccbKI0yDxZSOKPfIVgWsebrVc4bvLGy8qeYA1O8/2lxuzJoQZGg9rT+P+mvbWwUMAbh9
	PjkutjqsMgVr5NnaAb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbi-002gZh-Un; Sun, 30 Oct 2022 20:08:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbb-002gSV-Co; Sun, 30 Oct 2022 20:08:28 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEbX-0005ci-6p; Sun, 30 Oct 2022 21:08:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-rtc@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jerome Brunet <jbrunet@baylibre.com>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: (subset) [PATCHv2 0/6] Convert HYM8563 RTC binding to YAML
Date: Sun, 30 Oct 2022 21:08:17 +0100
Message-Id: <166716040330.1678541.8752121289367549859.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_130827_455440_CF4F0774 
X-CRM114-Status: UNSURE (   8.95  )
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

On Mon, 24 Oct 2022 18:55:43 +0200, Sebastian Reichel wrote:
> This converts HYM8563 binding to YAML and fixes
> the existing DTs.
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021170605.85163-1-sebastian.reichel@collabora.com/
>  * Added patches fixing the existing devicetrees (Rob Herring)
>  * Dual licensed the binding (Krzysztof Kozlowski)
>  * Added maxItems for clock-output-names (Krzysztof Kozlowski)
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: fix node name for hym8563 rtc
      commit: 67a9aeef44e42b1ac2becf5e61eae0880f48d9db
[2/6] arm64: dts: rockchip: remove clock-frequency from rtc
      commit: 2af5bbe32f50d196dd680478a889d12429b3e8cf
[3/6] arm: dts: rockchip: fix node name for hym8563 rtc
      commit: 17b57beafccb4569accbfc8c11390744cf59c021
[4/6] arm: dts: rockchip: remove clock-frequency from rtc
      commit: 6122f3be70d90a1b2a1188d8910256fc218376a9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
