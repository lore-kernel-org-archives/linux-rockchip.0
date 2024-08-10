Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE5EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 21:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hc8u/q7etLgDBfv2EokznkgGjOLbq8Uo0SIB22/so58=; b=v+If0tUkm8IeUQ
	eVSqwtn6ZxasEcyUREOpYeak8EuecoQlU6jvLsYVWhdAeYtbJjBvHJ7z4e+KNp8zXQH/fxvf6e47q
	2uOFwT0aEtmvYeYlbgHbBkpOA4Nyq1gOj4nrWz6OQOIc4wiz54mLShbL0cN2XpgSlZ8TxwFeQwLVF
	/PjNrUx5mMVlpX2QM8kp82tkccCUfdyOEtR/8HRQmklqjDynnLD6PXQ0KvmdY2SH7UL8DVwh67BWf
	mBuWFWIiUovC0sD47gHZmrarPPuy6WlAw0j5Yj/ZNpzp+7ATKwQFGbF/hMisprRBLyjoOePlMeaTt
	R/WBJyspkFbJVpf7GzYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scu7l-0000000EfAB-2uuM;
	Sat, 10 Aug 2024 21:59:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scu7h-0000000Ef8s-2VaV;
	Sat, 10 Aug 2024 21:59:42 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scu7b-0007sP-Dh; Sat, 10 Aug 2024 23:59:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable@vger.kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	Nikola Radojevic <nikola@radojevic.rs>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Raise Pinebook Pro's panel backlight PWM frequency
Date: Sat, 10 Aug 2024 23:59:32 +0200
Message-Id: <172332716790.290487.980895423301498235.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <2a23b6cfd8c0513e5b233b4006ee3d3ed09b824f.1722805655.git.dsimic@manjaro.org>
References: <2a23b6cfd8c0513e5b233b4006ee3d3ed09b824f.1722805655.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_145941_665824_5EEB8D5E 
X-CRM114-Status: UNSURE (   9.97  )
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

On Sun, 4 Aug 2024 23:10:24 +0200, Dragan Simic wrote:
> Increase the frequency of the PWM signal that drives the LED backlight of
> the Pinebook Pro's panel, from about 1.35 KHz (which equals to the PWM
> period of 740,740 ns), to exactly 8 kHz (which equals to the PWM period of
> 125,000 ns).  Using a higher PWM frequency for the panel backlight, which
> reduces the flicker, can only be beneficial to the end users' eyes.
> 
> On top of that, increasing the backlight PWM signal frequency reportedly
> eliminates the buzzing emitted from the Pinebook Pro's built-in speakers
> when certain backlight levels are set, which cause some weird interference
> with some of the components of the Pinebook Pro's audio chain.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Raise Pinebook Pro's panel backlight PWM frequency
      commit: 8c51521de18755d4112a77a598a348b38d0af370

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
