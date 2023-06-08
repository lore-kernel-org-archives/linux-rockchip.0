Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978CBC7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 08:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XI43HBuVFnlJt5ar/f57dAOKbgCYTqHijcmoOWNjQxQ=; b=0/M3s86asjujbD
	+U5b+X3gXwNeSrFu2ogiSZgB6ajOxwfhZTn1xf4BhjZZJsvyr5FaoH5c6BHAKtnHop5tGjzN4wJrf
	SBKh6lJA0HUq7/0PW7cPG9Cr1GylR0TrMjdDS5Vxs+lx7JelL961BsYZLdOspA6lQNl7fOVTG0J1p
	ZVq8jPlARYwAoVg06I7ImnnU/eV91rNgR0Thn4g87LNmJ2/3UCj3PUzi2gHpy9xKoQ1f5So6BfYeW
	DbKN5ibGl660aSvoQz/+1jQM7GPV0p04t+VFVlY77DYvaWf6YaOYpJfqCipOYaUm+PIFFVQwJMClQ
	W/9Js3atgKXCSxcEq3yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7BK9-008apr-27;
	Thu, 08 Jun 2023 08:48:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7BK7-008anr-29
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jun 2023 08:48:52 +0000
Received: from ip5b412278.dynamic.kabel-deutschland.de ([91.65.34.120] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q7BJm-0004qi-Tn; Thu, 08 Jun 2023 10:48:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	anarsoul@gmail.com,
	kuba@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	pabeni@redhat.com,
	edumazet@google.com,
	robh+dt@kernel.org,
	alistair@alistair23.me,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/2] Correct fallback compatible for rtl8821cs bluetooth
Date: Thu,  8 Jun 2023 10:48:29 +0200
Message-Id: <168621409737.1496691.2824759891410885435.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230508160811.3568213-1-macroalpha82@gmail.com>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_014851_714271_40BB5049 
X-CRM114-Status: GOOD (  10.53  )
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

On Mon, 8 May 2023 11:08:09 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The realtek 8821cs bluetooth module is functionally very similar to the
> 8822cs and 8723bs modules, however unlike the 8822 module it seems to
> struggle when power management features are enabled. By switching the
> fallback string from realtek,rtl8822cs-bt to realtek,rtl8723bs-bt we
> can instruct the driver to not enable advanced power management
> features that cause the issues.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: Fix compatible for Bluetooth
      commit: a325956fa7048906e26a4535ac2e87e111788fe8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
