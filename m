Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB54C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1lJ/1OlgD8zaafoFh2ZwUpa8LcUoYCXQfdxEd9BY2Q=; b=Hm4ABcbjw9aMBU
	O4+n2iixfhT7quhLfMn+G2bwNISCp36kRMwL6REX9UNFZ2/bB4JCzZa3Rv86EtxWwVA/jqYktNm1Y
	gtooqvoERViTRg8/whG7T4qx7srPy57X3qf9tdeoGasUGg+SOIllJRzfwnKXY4hPFGhdA7cFRfXwC
	kMdraVxFKXSEqm9u2eGFYmJtKJcGJFtr6AlQgsCPle2iOLmYPz5f5vl141xRJnGtWk5nv8cvBjcU8
	N+YmpzOFL6aRCDAVW8AB/0+gRMWdkVTRmxgzjZqNT+TmWONuwiAngb86s9urM+mRcASGTT+Fub1kT
	8J73QrdY/TaX1qyC+VJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknk5-00EQvY-F8; Sat, 30 Apr 2022 14:06:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjV-00EQWD-82; Sat, 30 Apr 2022 14:06:02 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjS-0001Wl-MA; Sat, 30 Apr 2022 16:05:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Caleb Connolly <kc@postmarketos.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl
Subject: Re: (subset) [PATCH 0/4] rockchip: support configuring pins as input
Date: Sat, 30 Apr 2022 16:05:52 +0200
Message-Id: <165132754299.647302.2972320978462383968.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328005005.72492-1-kc@postmarketos.org>
References: <20220328005005.72492-1-kc@postmarketos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070601_327457_1CB0855F 
X-CRM114-Status: GOOD (  13.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 28 Mar 2022 01:50:01 +0100, Caleb Connolly wrote:
> Add support for configuring pins as input to the rockchip pinctrl
> driver. This is required for example for devices which use non-standard
> configurations for gpio interrupts, specifically for the light/proximity
> sensor on the RK3399 powered PinePhone Pro (which will be coming
> upstream in a future patch series).
> 
> Due to the complicated layout of the RK pinctrl/gpio drivers, some extra
> work is required to handle deferring the GPIO configuration. On RK3399
> the pinctrl driver always probes before the GPIO controller driver, so
> the PIN_CONFIG_OUTPUT and PIN_CONFIG_INPUT_ENABLE params both have to be
> deferred, this series also reworks the deferred pin handling to be
> generic and support any param rather than only the PIN_CONFIG_OUTPUT
> param.

Applied, thanks!

[4/4] arm64: dts: rockchip: rk3399: add an input enable pinconf
      commit: ec48c3e82ca36a66ae37ba8b1fdb9a7561dcab14

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
