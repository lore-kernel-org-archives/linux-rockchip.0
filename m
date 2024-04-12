Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCFE6C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 11:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gngVXCjoflH3abP9Bo2OY/PRk2IeCn8GaL2VA14Ce74=; b=iduaO9BkkvFuUc
	5AS2B0IF0RUN9elhaoqiDH6Cs/FMoBWNJpkflacE5/rSBzz9k5bMPRu8C803vmoKFRUbdxEgfigLh
	cfPGX9/i2eQ82TTbbR1UjMZXabc43Jssgb9y1DGw6dIz0eB38bjPdWhRm4Xtpwc91yYGPzLJEqrXZ
	p/0dHvMV4oKFo81HOMlqW5S9UDj6N6Ysz+EAQZ0YMdZwehfT6j+FMKD2A4uWGOhZFs4PPgTOUP5mf
	XhQvHKb/D5U6tHv9rxrPcG8TQm9AEozf0dYNu3DQGPKnwoRX37TecpbDDg0brk3N1mP6SgT4O/pJp
	/LlFkUNSzZQufyYKNZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBt-0000000Gx2C-3kWL;
	Fri, 12 Apr 2024 11:35:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBo-0000000Gwwm-02Bi;
	Fri, 12 Apr 2024 11:35:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4780FCE1FE2;
	Fri, 12 Apr 2024 11:35:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A243C2BD11;
	Fri, 12 Apr 2024 11:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921725;
	bh=cXvZH8jSB3R6/ZybERQXRn0CWZL55MbU8i6nLdnfYHQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nN05y6vDJlP7k0Qzi/nEsn6vBPvcRhGe6spgWP5Mb7GW4wXi7xqfHI7zYUO604vi+
	 YCvEibefwHapVeAZA/zGhCQO4BauGaj25ImmfCyXUHAuhf1sBK4wizM8oahLPlp+iI
	 ZJcguxRyk+Y+RpwKQPzOxfQsFH29voqlzWXnp78KozySJSSyk1xRPhSzl8DtrHY7eI
	 RUm4balZ2QbEWVf3GEVK9rIJg3YhNbY7BeacfSmutKjuQ0xanPMlw02UmOvHTXZuDE
	 enZ6luky5LkUO2iiFo9JLuYUsMtaC8hAHpxaasyf1gs0PCBt3UNiEiWynjZLsfVKUW
	 A30aMF+vYZwoQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, kernel test robot <lkp@intel.com>
In-Reply-To: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
References: <20240408222926.32708-1-cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Select
 CONFIG_RATIONAL
Message-Id: <171292172181.599648.17726910504244082480.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:05:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043528_340469_10913DBE 
X-CRM114-Status: UNSURE (   6.33  )
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


On Tue, 09 Apr 2024 01:29:25 +0300, Cristian Ciocaltea wrote:
> Ensure CONFIG_RATIONAL is selected in order to fix the following link
> error with some kernel configurations:
> 
> drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_ropll_tmds_cmn_config':
> phy-rockchip-samsung-hdptx.c:(.text+0x950): undefined reference to `rational_best_approximation'
> 
> 
> [...]

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Select CONFIG_RATIONAL
      commit: e1c9216bec2793d051f83d77d93d3d6a899d06d1

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
