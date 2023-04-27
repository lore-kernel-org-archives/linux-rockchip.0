Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA27C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esFWrTPoCPerVmeoyAzyJXlnE8hiAhGp5J8RT3dwqy0=; b=W5Uywc1uMwHWrb
	VrZgqcRv7De0Ac93fIx75haTMNjMWeEKIYY20jw1Y4S71b7UgqOWEGyhdvwdX7Y36uGsOqg5vgs/4
	sIDJnZb8vOEgUREfCVGgLLL41U4QxbzDiVTJWIu4r/Zdms5O++GyjcwMemIyF3t/sfuZN/ejIiMw3
	DZQ6Zd/4FnigyfSB1grT96Vlz4NE+FPxNSmTmJoiB6U0KrCfgv2FX7cGlS+3hlqf0bdv9qUg1yyn8
	/uWx0NzTAYN+xkkJx491xsLj7IWfNoQUqLorj0Ccdpm6DwLexz2xgUbuIzBig1ezT/PDl/JcuMtKT
	OGMf6WjbDnar5ADsy/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pryK1-00645A-1b;
	Thu, 27 Apr 2023 09:53:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pryK0-00644Z-1N;
	Thu, 27 Apr 2023 09:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=fjMYTrZATdBL/Q6q8N4XsdiNbJ2NExWAJIq2IGXF1JI=; b=mZynG1bncMleVv9X6c60bmpOnG
	Y/9bgRQn9mjI2b4VwKUxC9kqSnd0lpf4YDqPhATIUAaApnpQRWfcGAcg+Xe6m0KP+CCnaCFOjxD0y
	9qTfVlKCL1Z/ijgKL2gdgHpetyw9UIzRI8SVxn2XG2vIdfGuRklSG/utBV6qdB55O5EGZ9bk5CvOj
	LPARX/WcRTMMokULR1eo7LwEpvosN9sjAic+OF1467rmkLjQq/HfrsWlZxIjk2gTFd47jhjlO2uTU
	Apbip9zM3V+TCbjNkhLpOmwjsS74nhEIWuYvzKgQvPPKgfO5z0pvalSN3/SzN7a94d2Pmna9l8ks3
	+ZdtbEJA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pryJw-00CKL5-0J;
	Thu, 27 Apr 2023 09:53:50 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pryJo-0003ex-NL; Thu, 27 Apr 2023 11:53:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lorenz Brun <lorenz@brun.one>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Thu, 27 Apr 2023 11:53:39 +0200
Message-Id: <168258919354.412054.16852128323451606198.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230421213841.3079632-1-lorenz@brun.one>
References: <20230421213841.3079632-1-lorenz@brun.one>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_105349_081434_8A7431FC 
X-CRM114-Status: GOOD (  10.04  )
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

On Fri, 21 Apr 2023 23:38:41 +0200, Lorenz Brun wrote:
> Currently the ROCK64 device tree specifies two regulators, vcc_host_5v
> and vcc_host1_5v for USB VBUS on the device. Both of those are however
> specified with RK_PA2 as the GPIO enabling them, causing the following
> error when booting:
> 
>   rockchip-pinctrl pinctrl: pin gpio0-2 already requested by vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
>   rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status -22
>   rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from group usb20-host-drv  on device rockchip-pinctrl
>   reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, reverse things back
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix USB regulator on ROCK64
      commit: be6f6bc717e135bd5494b4d27f703026dc48b8f0

As fix for 6.4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
