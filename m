Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49ABECD37B5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOGBqOyH2mxKn7+PmFEFek1oFoixs8gFFmQfexQQcQQ=; b=lDfMJFvTVnsIPi
	QkAXTqp39hLGWWZJyCiS3Qjb8j5U2FFsD9sU5G5TiBh6eGZayED6TSSvmQKH0zZ261S2XuwsRQ1x6
	6ekrnfuEozwCKwSgE3X/n2kr+PREhBNmi1gEM0SSJQmYbbJA/0KcmM8Kmz5sjluO2+3LpxXJNDKl/
	PShe7oNwjkQw+d1SCCEz71Vtl7RjLBceIVJipq65eo9xF3lwF66y8syooqxdmX13B/VSprwEI8hII
	heYu13H79tb/IOQWOIBbpWz2/y9KTj2jrfIEq4SlI0AcYadqLFm+f2eBjFTUIrPP04MrIxXkSNLpu
	Ze244ATK6usQ9hVYVbqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbyI-00000002Agc-2YrK;
	Tue, 03 Sep 2024 22:25:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbpV-000000028gY-0gnu;
	Tue, 03 Sep 2024 22:16:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F8295C4668;
	Tue,  3 Sep 2024 22:16:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8034BC4CEC4;
	Tue,  3 Sep 2024 22:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725401811;
	bh=u/TGDgT9nMGoSIjabJLW3PnQ9BU6/qBVyJyzNBpjKA0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ctev56XHYQrMTxPIN36pvA5ji059bJWHtvJO4u3nY/6RQ1NKpLkf3wmKgjl0pn3Hm
	 GA0XR5S0Ix9Fs8eEHOaU0HoInL/Z4zW9M0SU0aYcHSX+16A/xh6c7sCIt6ZmgEFoGK
	 vv9THsKS/7EtDD7qXK3wNxvcpvRMA8OePdoMwhzgC/7D7bWlkAhwQdtHnrfWOHynCW
	 /+NIm/AEoNbl0jAgj8qn1/vSMXAolEUFLuYLgE/mX+byeMC+cLHMUkI5tkqROCjiPJ
	 HlEdinz/2+T6DVUkaMLEJro5qq+Z5rkTdcYGmJ3N8FUqON2c2mAxfAsyFDy19Uj0K+
	 Nf1uOZQD3k+0g==
Date: Tue, 3 Sep 2024 15:16:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Li Zetao <lizetao1@huawei.com>
Cc: <florian.fainelli@broadcom.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <wens@csie.org>, <jernej.skrabec@gmail.com>, <samuel@sholland.org>,
 <heiko@sntech.de>, <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
 <hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
 <mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
 <radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
 <ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>,
 <kvalo@kernel.org>, <u.kleine-koenig@pengutronix.de>,
 <jacky_chou@aspeedtech.com>, <netdev@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
 <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-wireless@vger.kernel.org>
Subject: Re: [PATCH net-next 09/12] net: ethernet: sunplus: Convert using
 devm_clk_get_enabled() in spl2sw_probe()
Message-ID: <20240903151649.1b466145@kernel.org>
In-Reply-To: <20240831021334.1907921-10-lizetao1@huawei.com>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
	<20240831021334.1907921-10-lizetao1@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_151653_311609_8E53DEA4 
X-CRM114-Status: UNSURE (   6.21  )
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

On Sat, 31 Aug 2024 10:13:31 +0800 Li Zetao wrote:
> +	comm->clk = devm_clk_get_enabled(&pdev->dev, NULL);

You can remove clk from the driver struct now.
Please check if the same applies to other patches.
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
