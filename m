Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C02FDEE6420
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5rV3LBOQVvcX0e7wWK7/DBi8/6iC+nTqdVRPMs0QT8=; b=q2X0Z/P5K2Xgup
	TnHad7ZDw6y5ulPJ6N6JWBTDCc6F3lcRmrlWkjDqxsm5W11cUzRapljBRAdkr1Ux5rd0XgRZIWXgp
	RNwS0oP3z4LwzlExguAuhiLXdK26dkY+/QyUSQlJ3maUm7MXL2Xyo6+Cl7YySfrxCqlCD9d2cSU98
	fjUn/ENT7J8Mu65E/JB/uTyLtwX0zL27qnWHHyOz9/BFHaUdaRgtDhga5+UkKNcFEYY9QBo3gZ+Zk
	R0Ksn/s83hmOzK8Vkwq+utwQ1A6298GaZAF/TxzYhZBOZj/CVXX1ufUnD41T2rYSdSLF8fu4JjHet
	bnttAkD0r8vy/aNf9D6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZbs-0000000BcCo-3t0c;
	Thu, 12 Sep 2024 02:31:04 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZbp-0000000BcBz-0M2g;
	Thu, 12 Sep 2024 02:31:03 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:fc40::1])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8786E7E0187;
	Thu, 12 Sep 2024 10:30:22 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Thu, 12 Sep 2024 10:30:18 +0800
Message-Id: <20240912023018.23986-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240911122809.1789778-5-bigfoot@classfun.cn>
References: <20240911122809.1789778-5-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkNDVkkeTRgYQk0dSR9OQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQR0YT0tBQUpZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0
	xVSktLVUtZBg++
X-HM-Tid: 0a91e411456003a2kunm8786e7e0187
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDY6Thw6TjI0Ti0jLUMKNRE4
	OAkaCUJVSlVKTElNSktDSUlISU1JVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0lBHRhPS0FBSllXWQgBWUFKQkxLNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_193101_329459_91F9E8A9 
X-CRM114-Status: UNSURE (   5.55  )
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

Hi Junhao,

> ...
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
> ...

> +	rfkill-modem {
> +		compatible = "rfkill-gpio";
> +		label = "M.2 USB Modem";
> +		radio-type = "wwan";
> +		reset-gpios = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
> +		shutdown-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
> +	};

gpio0 RK_PB0 conflicts with xin32k, please add:

&xin32k {
	pinctrl-names = "default";
	pinctrl-0 = <&clk32k_out1>;
};

> +	vccin_5v: regulator-5v0-vcc-in {
> +	vcc_sysin: regulator-5v0-vcc-sysin {
> +	vcc_syson: regulator-5v0-vcc-syson {
> +	vcc5v0_usb30_otg0: regulator-5v0-vcc-usb-host {

obviously (

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
