Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38DFEC3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 08:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcB0KJI1T8qgD58Gu05eQ5favYyQDofA/Dqh1+aNO3w=; b=ZIYYug8Tp5Q8TH
	8RWUyuOhJTtVPYsu1gbeImHZ48IFdMtWgKsc+4uyp9qQlLSaEgMUztg5emhfQzUaK/2BqopbV236M
	6LLHNqJ9J8+2Nr9cCFT/cAVPEhX5CwzD8uZZMpY2AgzDakjEf8YM03c03VTwTB6LZCWupoEFGVzMY
	HuK3QviJw+l3zK8vTP7mqFN0eJpl2ovJonZH11grnxmUU7vJuubsXZS6xTDurdZ+KEIIDp6Q6azos
	ArpIjJtvPsnJWQEib+F5L7pk0sO4lsYg54LNgrGzrqnm2HUobenJ8TF1dXjkVUmOosoC7eZ3E+/ju
	kWzxMJKiIxtZ/SxFrXmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7RC-00000003Tun-02qh;
	Mon, 16 Sep 2024 08:50:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7Q5-00000003Ti7-1xex;
	Mon, 16 Sep 2024 08:49:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E9730A41AB0;
	Mon, 16 Sep 2024 08:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BFBBC4CEC4;
	Mon, 16 Sep 2024 08:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726476556;
	bh=cpAwsamAlG1/bhk8zJP82ugA8nlHWRkt62vBDI8NH2k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r9OknfZUY5XJI6zmPcYqxYpiT6PVhyQfD+oYMXOd5borsv3e96mpkQ7gY+e9RHjZ2
	 jL3Uk1eFS3dpozfe6p006klQ8DQT0zXGblvHnUKiLlidnRd1rrQM99RW7rFX6EN8dn
	 ZjS3PQHpEzk6SEyGC6t9+h5uEAZH/koXRwOoQ3+ycCZZiwyYDuhunRdvngAx7McbcS
	 UtCewC6eayCOvsw53+ylQO/QHxrYOZmtJegnwms0RXUlUJeFXvRkXToI06iVFIPvrM
	 0m2U+OGSECDvRFLB8VOFCfTq2S3THFiRMV7TgXS/S/SczTTrG2bFkY6Rs3SYwpm5It
	 Pz0LfAtEzlh/A==
Date: Mon, 16 Sep 2024 10:49:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se, tim@feathertop.org, 
	knaerzche@gmail.com, efectn@protonmail.com, andyshrk@163.com, jagan@edgeble.ai, 
	dsimic@manjaro.org, megi@xff.cz, sebastian.reichel@collabora.com, alchark@gmail.com, 
	boris.brezillon@collabora.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add RK3588S EVB1 board
Message-ID: <krfo47rjxks7gouirhmcfwa67sy3vztq2ktdcs4kkikhtwgbv3@ofvnobfyqzhf>
References: <20240914095456.2347532-1-damon.ding@rock-chips.com>
 <20240914095456.2347532-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240914095456.2347532-2-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_014917_594023_DB553178 
X-CRM114-Status: GOOD (  12.77  )
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

On Sat, Sep 14, 2024 at 05:54:55PM +0800, Damon Ding wrote:
> Add devicetree binding for the Rockchip RK3588S evaluation board.
> 
> RK3588S EVB1 board features:
> - Rockchip RK3588S
> - PMIC: RK806-2x2pcs+DiscretePower
> - RAM: LPDDR4/4x 2pcsx 32bit
> - ROM: eMMC5.1+ SPI Falsh
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
> 

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation: Please add
Acked-by/Reviewed-by/Tested-by tags when posting new versions, under
or above your Signed-off-by tag. Tag is "received", when provided
in a message replied to you on the mailing list. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for tags received on the version
they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
