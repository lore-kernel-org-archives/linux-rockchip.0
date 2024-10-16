Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E285D2A53C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 18:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgQFRaCqLBd+64d98vW0zB/532vJXe/6ZfBMU0XtHTc=; b=D4m7g9+1FLeC9A
	uBStd4loEm8JmRj1TVZwCm7tHOHj9L/Ae/bBtoira7N6kMUC499cX+0cX+LQYB3jYBHQsXPvGjUcr
	M0LpBTeml9kH+9EslJSRk3skcqkthWky+mpc8MAywI02+esSfCAdqn33MwRIjiXKnCBf9k1aIpSOM
	BqBjjxJFnp8n6mk9DGNSai+yy2zZeFrmsZxKRra5zf1JrSJg1bCbT/Zk2dHbNJIZEHoyz9DY0NmSn
	Nis5g9LoMX479a+Z0tQg++tZZqt2hecdCf2RbysNa+sqyBX92LBvPvG3AJF6nJ+h0JmGubC1X5N//
	UBuF9rcdSk1L6dHXoYpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t18n5-0000000CgXK-05RH;
	Wed, 16 Oct 2024 18:30:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t18j8-0000000Cfws-2iV9;
	Wed, 16 Oct 2024 18:26:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE4105C0548;
	Wed, 16 Oct 2024 18:26:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2B85C4CEC5;
	Wed, 16 Oct 2024 18:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729103189;
	bh=INU+T9bFBSys8He2fk2CHETpwsOLJTvd4X6kZLoVSFg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=p3/wqtte+CbBQGIHDTZi/CKOCnicH6DXXAIR13AF8XcQ1kR1lo27/EK9BtItMTsxS
	 mJSsRaMJ01cmExzsYaNPNNFWvQTX9EsQlAdUAmBYDNhVI4kHhTby6ZoYy9uZ+rrc0k
	 o4WYTWmtOVWVfnqJYj0FGTZoiBLljyiN4tnwfygjlJAQ23nZzjNe3JE8luVfU1H5kr
	 5o0uyhJiLsrIr/NN2M3PCGB7LfKx2INJkhZp8mTW4iGxqorqXxJhJvv0YnakINGQ61
	 3LruaYfHn8dp5yTkgdj3jqIN6c5/1Av9Y3+oQSOOYITgU/motAd8b20yLjb1z1jQcb
	 WN1mrAfF6hBBw==
Message-ID: <64b271b946f944fea6994f85a57cda2e.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240906082511.2963890-4-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de> <20240906082511.2963890-4-heiko@sntech.de>
Subject: Re: [PATCH v4 3/5] clk: clk-gpio: use dev_err_probe for gpio-get failure
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 16 Oct 2024 11:26:27 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_112630_749090_27F3D818 
X-CRM114-Status: UNSURE (   8.02  )
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

Quoting Heiko Stuebner (2024-09-06 01:25:09)
> This is a real driver and dev_err_probe will hide the distinction between
> EPROBE_DEFER and other errors automatically, so there is no need to
> open-code this.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
