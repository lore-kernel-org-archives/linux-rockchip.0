Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7513FCF649C
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 12:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3VJ0HWeVfrEPU39sIh5719ggi5vxTSAHaLnt9MmqaU=; b=MiNP8RvhHFAHfJ
	yVDie2A8dVtTmmesQ5kcrPT9eNqekkwBT3K76EcgCsdrcPQfNBqrjRXGTmc6SrYnBnjQz7UiOO3dD
	74FVBIufaZwGVKChExVuy1+ivnHtJMetVtvUujk/lAv3PQ6xHKuxU7SJA8XljvIG6398SScU8Bp60
	Hpv7AztledZ1nH9096X49qHH36gOqbKvEfnyKRZm0tOfB18qRM/KkZCLMlrASrn+2pIyuf8Vor1hv
	2I28BiQNbaKf+gv+IKAwMthd9MIp1JVx9P1Qgr+mffOPpFC8L3aVeDRn0VCe4xOrFvsEziM8/MnBf
	hMGku5CzpHWlARGBbsDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svFJF-0000000GzH4-0yjb;
	Mon, 30 Sep 2024 12:15:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE7q-0000000GmHr-3vwk
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 10:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZqqpNjU5vNG1chwcPU+fhnVANfrJ3TZS/WsOkjpmOKI=; b=r1EuT/FYsGsglIK71Qvsv5gZdv
	yloNbkq/uH1XSyNtejcUxWJ4ANNgTfcKe8xDxFjMyVkXrGmpZhSS93/JsF+Is3dXh5+CsPj3wH/u8
	xHK4uf2+z8+mSnFk+PlVpZSeiGd59pJoRv62nf0AAEzuVYRIxyVRT4hzFVo/kSXcdMmnQV46FedGG
	BE6F5PuqG1sz2xx17HxU37dUO08q3beX3efHJeHdATmsfbUiBObMgo/vV1QfyuEy7cshjBd4qBIT8
	Zd6vadDa9WbwP9hnhChMTE3jH5XT327+eXaJEhjhoUgQlqdZkwdI/Qcxo7lGpin7LKi7oghBRQqA2
	NE0VzNCg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4H-0004Xd-Qq; Mon, 30 Sep 2024 12:55:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
Date: Mon, 30 Sep 2024 12:55:43 +0200
Message-ID: <172769365138.1880381.12856825951095817858.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240816215316.1429-1-naoki@radxa.com>
References: <20240816215316.1429-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035935_009542_D65AEF6A 
X-CRM114-Status: GOOD (  10.71  )
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

On Sat, 17 Aug 2024 06:53:16 +0900, FUKAUMI Naoki wrote:
> multicolor(RGB) PWM LEDs on Radxa E25 carrier board is clearly defined
> as status LED ("use it to see the status") in product overview[1].
> 
> add "function = LED_FUNCTION_STATUS" to "multi-led".
> 
> fortunately CONFIG_LEDS_PWM_MULTICOLOR is not enabled in defconfig,
> this change should not affect userland(sysfs).
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
      commit: 40c60d826f4541668d81d8ee561dced5d4950223

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
