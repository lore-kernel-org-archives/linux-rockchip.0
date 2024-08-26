Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711E5C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 06:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPaMB5k/pIBGSfhLMGn3n85LWIkcNRzJyLHalH6lNdg=; b=Z1Od/1ocYim9Id
	a8gGTJIXbnU2JxjQb3syZZDvUw5Ia19nw4Sn0Z9/k1oY0wXAL0HVxePb82vg0ESnRUuOxUOjrfB4I
	noZNUQHTP1n2dY3EDiQbPi4giHUOs2xpTDuHlOwI+k1tgPCSBZaBYGI8QT3GEd0hQJbCqshUcaxIc
	ppAYLU3rvWXGDimsjIqmUA5B0AsqDm732Vs2jrOfpnD9h34Pc/9MPQWYaL4ViReC9SA/l9MYME3hI
	Ha6l8wsDaExiibnZm6kKhHl1EOOi8hJYII3HtbSDh57F/EFINIJf5K0+84TxwxwLFy6NgD44+7iNm
	6bNN56U+WDiizJDE8NIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siSzH-00000005ycx-384p;
	Mon, 26 Aug 2024 06:13:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siSxc-00000005yP3-3gBE;
	Mon, 26 Aug 2024 06:12:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D66BEA4109D;
	Mon, 26 Aug 2024 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C150C4FE11;
	Mon, 26 Aug 2024 06:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724652261;
	bh=ur8pt0WT04EkZ25i73aiTye05nOAgI+FmA8o1K4mR8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imNI34JcSFo2326mgmfOp3z8hsZC9bdRawfX9fllJ9yhtsGf2eYIWTgXATE3L+Njf
	 E31EjIHY0qP7hiGtTkv1rxR9x1t7s0iA+9D7CPx7gfDz2uIX/zSElOeCZMC9k7luy1
	 cEzcRUfN7d8iOdTgbe6AHLEsHvLGNEuAw0p4GiX8mlGFNFR9FkYew72A/k1l4BJX6A
	 VmyiH9ZrtCum/Cii/rBDVeRsjwBLky9NFJAnDO2WCwOIsqR39QhZyOM+1zSgIMT+Wk
	 5O7v/82i3j+wULRVvctceU+/5V8Y+jGsspRT1n+Pxk2IJsjcEKqZTve6QUqNmF6PhX
	 B9J00lSnGJlVw==
Date: Mon, 26 Aug 2024 08:04:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen JLC
 Technology Group LCKFB
Message-ID: <twps5rvr23xohlqml7mqfhlau5m2ay5ygp4mq4ngmnhullh534@6u5bl2upsspf>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
 <20240826044530.726458-2-bigfoot@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826044530.726458-2-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_231217_003379_E11ABC7C 
X-CRM114-Status: GOOD (  11.76  )
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

On Mon, Aug 26, 2024 at 12:44:11PM +0800, Junhao Xie wrote:
> Add an entry for Shenzhen JLC Technology LCKFB (https://lckfb.com/)
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
