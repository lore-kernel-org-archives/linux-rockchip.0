Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE04E6FE55
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B21DL7nrQQ7CVHexnartuhrIf27LiPSCd4h5AlP9TKs=; b=XV6UfZrOjMp4h7
	jh6eQAD1q0HhMn5RgESqXe1fX54WHt080zJvjYIgr0J5/7DbCkK+ax8m73mT0tqMCqvqKyDFOJyee
	zLLQ3AQ5LN2Uqzf0hOh8EfkN1F7nQSWlbG3wtJU0tsrffXuQkCsbR3wUa4yqBzn2xeuTBNX9YwixU
	TUBX5LLUDD4CmG85c7Yoq5ZdGxTSEgT7WDXLrlAxwhpnhyp7G47smg48M4lmCt7pLlYfOcXJkb8VF
	WNTbx3DF2k+kPDkzyUNVOV3tUyuh8hZgyiQ4H/FSCjF9U2SH9UfXHfiVzFvkbvtfHnL1bqVgrxPZm
	SpXMLv0bvstkokVe6i1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqvI-0000000Efx1-25Nd;
	Sat, 07 Sep 2024 08:36:00 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqtr-0000000Efl9-22Ca;
	Sat, 07 Sep 2024 08:34:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D634FA40278;
	Sat,  7 Sep 2024 08:34:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36410C4CEC2;
	Sat,  7 Sep 2024 08:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725698069;
	bh=2TyElHw+gfI3FzJ+ptP6petKvakRl/T5VCaUqGUHAZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RngW58Noc0cZRSeCi3kqssELiyewIzaE+oPFGP6raoN/XnHRrU23cPBqNZfe+7fSH
	 b/Is5O/N1K10PPcYurANlsScr2RZAy1PEfbY2dj/qqzra+G/XdPGfu98Mubeo02yCK
	 Vs+qXVFOGQ0n4AgNkfKfVNVDLRpu8JLD+6MwTvx/RlXBH5mk1CZ17YMNkQO81oKRc0
	 d9bGAJU7G+Ku6RqnXQYJIX3RxQrrzksOO3rs3l1oKuvWFHbDwzW6a+T89NKDuBHcPf
	 sSKl/iVoITtJWmr2VaOFzTH4JKtm/6w6XOpixo9TuuGCe+Q9Vo8q/9EJ9MO5iinLvE
	 1yI5K1CTh2fmA==
Date: Sat, 7 Sep 2024 10:34:26 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>, 
	Guenter Roeck <linux@roeck-us.net>, Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH v8 0/8] Add tsd,mule-i2c-mux support
Message-ID: <2iuhzmnarxin74i7okuzppdpxs6jrsocahrbc3isie5b34f6pi@p7pqs7czx7ul>
References: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_013431_608595_1FC7B24A 
X-CRM114-Status: UNSURE (   7.16  )
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

Hi Farouk,

> Farouk Bouabid (8):
>       dt-bindings: i2c: add support for tsd,mule-i2c-mux
>       i2c: muxes: add support for tsd,mule-i2c multiplexer

Patch 1 and 2 merged to i2c/i2c-host.

Thanks for following up on the reviews.
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
