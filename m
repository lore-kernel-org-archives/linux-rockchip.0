Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D30C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 23:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=713fmx7JnKoJC0qt6RztdyThfyFJTql8Ufnb+GdyX40=; b=Tk2feVNR7uSzYj
	EgTYaod9iQLGgdvE+mILywpmtXnO/o7oDmzhsk5hlm1il5dUExJtWabz7ynCBI0RpLr8Iw48rjYb5
	trZ1JDrWxZM+MgpjnPKZj8ml3ufY6Ioizw4W6HYihpD0tZA4vD3QQITX6w4JHXN762HpUhC/t55ip
	4R2INttznAozfBhoWbtY4XG8Xbv3wgxgerPzn4y1n6v+xAnT+7nQ4kkCNmCej6jGxGy4yxl2HYo8T
	GwCtBMhtETGKQO5BfWhlj8+UmdBjdu2/GBo5JzeUq6moVMS9MSpbXqvZ/ydIIzBIsth6xUWc21fEd
	UcgfcVSYmuSGGXn2uC5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUGt9-00Av3c-18; Tue, 15 Mar 2022 23:47:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUGsy-00Av2l-AW; Tue, 15 Mar 2022 23:47:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nUGsv-0006On-Rk; Wed, 16 Mar 2022 00:47:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add some pins for NanoPi4
Date: Wed, 16 Mar 2022 00:47:24 +0100
Message-Id: <164738803935.2159738.7642585639620251859.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <e870284a872567f163868b77267c01b77ed6f22a.1647381986.git.robin.murphy@arm.com>
References: <e870284a872567f163868b77267c01b77ed6f22a.1647381986.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_164728_380426_019BD963 
X-CRM114-Status: GOOD (  10.51  )
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

On Tue, 15 Mar 2022 22:08:10 +0000, Robin Murphy wrote:
> The NanoPi4 boards have the RK808's always-on 32KHz clock wired to the
> SoC, so have it claim the relevant pinctrl to actually enable the
> CLK32K_IN input. The RK808's SLEEP pin is also wired to the SoC's
> AP_PWROFF output, so we may as well claim that too.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add some pins for NanoPi4
      commit: 4588a0ca73e01164a4d1d8b754ba96e45f164ebb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
