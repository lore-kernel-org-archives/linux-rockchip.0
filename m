Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACA5DC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 22:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sRJgyLbZ4e/jR8z8I0kePo3i76el5fql7wpURh1feMw=; b=tfx8Z8dfWgrZcY9IbWVGHTGQD/
	4YBvP3bhPBqExfpZQND5HPnwEc0lgsrx/sTpLWAgkAXnWbKwJsGbTuDzlojy3+qM0+1/IYzH2o2dU
	bJIP3PAZ9vP/+2Kiw43/AK6NDxL9foGh8CY4/Jv4kIjrXrKMqZj9PvQShPr3+d/wBZBV2kg2AWYVh
	vQZD2CtolEleoTcTScYIbiX+0V+1Sq6rfxdGp9KpZYLLxc4jnIHEOGRQdTDATIdjOdofrEe1tjKr0
	gLDtyhsjWb62zW/lzqi8ZBZ9CjuM+hZXkBBLLpK5YBeJFT/jsy90ZGiIFuveXCqKCmHITkLADDAua
	LZ7YCtVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFilR-00FcmF-2j;
	Tue, 19 Dec 2023 22:40:37 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFilN-00Fcl2-34;
	Tue, 19 Dec 2023 22:40:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D2FDE5C029D;
	Tue, 19 Dec 2023 17:40:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 19 Dec 2023 17:40:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1703025622;
	 x=1703112022; bh=YulO5bOrmCH4IJdwHLfOgvroUB/OPEd9Q4e+YqkL5Us=; b=
	vy3y9PEs0kBQD31hSS+KzbURs8AxneaB0oGAvNRx7Vo9ddCbaKXrdCEwm+p6OLZh
	ZVqouOKc1Lnd0w/Gzg5sy2OR0EXtpLxSrkPrgfC3vDFkdTXZdNx+wtiYHob6cDSi
	YrsMgxY4ZvtqjZSVYiRMeNsF+5dwp55Pm0JIaodsXGYcBxzJipi5Nxc+rZGaBNGr
	FbOlyb+ZJheDlgwM22V+FUmB8LXiX2pu7UriACNR5cxPIgdiy1oFlPS1sD5bgqta
	wj0DkF/aScjAhiGLwvaWE2lHO7gqXvVOlb2vOuqgD2PY7aZyyXBGmLnYglB4U/MN
	rt/xLZWnvTEHPlWfyb87QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703025622; x=
	1703112022; bh=YulO5bOrmCH4IJdwHLfOgvroUB/OPEd9Q4e+YqkL5Us=; b=A
	IMVJEIs1FuoLzlyj61ubmMBD1mJtsyey5hOtgbC8pRFdM1AiHzKKplkG1rm1QdoR
	O8D3Z7A2oybnhj72vcvgHHRg1/sfrvwOuXPpa1io+v6lyo3uvLmnzmH4LcXZfj/R
	hhzg+rdh4hiPkrkj0MTkd7yJDkT3hiUjA0x4PWtoWzq6Lijh6trc7W9RLGHMcHPN
	L3zPIiLWAiDKuzDsCED8CLS5yZuvIblqBmNoDx+AUmf79WiDqFpGr4VT7bIlsr0O
	ivdbdF1qLr46vy1TkLKjD4+Hk8KP7RgdD/Bz53eA3Txy/VabNwLJEB9lTe7GLs0r
	e3KiMErX0G9ELUp5gx4GA==
X-ME-Sender: <xms:1RuCZYvfKb-38z53jaX3JhBVzfVs1j32TY80JiMmvXBoQ0eWeeRbFQ>
    <xme:1RuCZVcsxeniFyg10jwNEgzbLwzfPvn5X3RW5PfUKTEkmefj43wGQ7SW1JrbBozCz
    06_-EnP8A>
X-ME-Received: <xmr:1RuCZTxjXvgfGcnvgto3G9hTlavWaY9L_OqaXpBFsNKcAHxO5XrRVhbgBZZm0CRSgyGkVVDNIYbia4PYpxvGXsn5PqZ2UZrBVSdpNg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvfhfhjggtgfesthekredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeeijedvveelkedtueejgefgvdelgfdulefgieehvedtjeeludekvdelffdvveehheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:1huCZbOUi1W5VLKsoIBxX-8wa4pV2rKcKi0DEkSxc5kV_5fgM7z_Cg>
    <xmx:1huCZY_mTl9100YR21LX5doHPq225g3g1F4dEaO7eZP2jc2Su-wLlQ>
    <xmx:1huCZTVBd4bCL1fg5cWuv3HbT8A5F3CxR8YrIiGWb3w61GozT82M-w>
    <xmx:1huCZTZIy21bcwi46s4BqPh0zbggvZSibjP6OjX2nAco_ii_sYwSkg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 17:40:17 -0500 (EST)
Message-ID: <14d972ed-87b3-4bad-a2f9-717f3d19d4a9@feathertop.org>
Date: Wed, 20 Dec 2023 09:40:12 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on
 rv1126
Content-Language: en-US
To: Wolfram Sang <wsa@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org> <ZYHNkgxAauYp6ivX@shikoro>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <ZYHNkgxAauYp6ivX@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_144034_189828_A0BE4601 
X-CRM114-Status: GOOD (  10.97  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgV29sZnJhbSwKCk9uIDEyLzIwLzIzIDA0OjA2LCBXb2xmcmFtIFNhbmcgd3JvdGU6Cj4gT24g
U3VuLCBEZWMgMDMsIDIwMjMgYXQgMTE6Mzk6NTlQTSArMTEwMCwgVGltIEx1bm4gd3JvdGU6Cj4+
IFJvY2tjaGlwIFJWMTEyNiBpcyB1c2luZyBvbGQgc3R5bGUgaTJjIGNvbnRyb2xsZXIsIHRoZSBp
MmMyCj4+IGJ1cyB1c2VzIGEgbm9uLXNlcXVlbnRpYWwgb2Zmc2V0IGluIHRoZSBncmYgcmVnaXN0
ZXIgZm9yIHRoZQo+PiBtYXNrL3ZhbHVlIGJpdHMgZm9yIHRoaXMgYnVzLgo+Pgo+PiBUaGlzIHBh
dGNoIGZpeGVzIGkyYzIgYnVzIG9uIHJ2MTEyNiBTb0NzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBU
aW0gTHVubiA8dGltQGZlYXRoZXJ0b3Aub3JnPgo+PiBBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KPj4KPiBBcHBsaWVkIHRvIGZvci1uZXh0LCB0aGFua3MhClRoYW5r
cy4KPiBCdXQsIHBoZXcsIHRoZSBmYWN0IHRoYXQgdGhpcyBkcml2ZXIgX25lZWRzXyBpMmMtYWxp
YXNlcyBpbiBEVCBzaG91bGQgYmUKPiBmaXhlZCBzb21ld2hlbi4gSSB0b3RhbGx5IG92ZXJsb29r
ZWQgdGhpcyBzbyBmYXIgOi8KPgpOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGhlcmU/IEkgZGlkIGFk
ZCBhbiBhbGlhcyBmb3IgaTJjMiBpbiB0aGUgRFQgaW4gCmFub3RoZXIgcGF0Y2guCgpSZWdhcmRz
CiDCoMKgIFRpbQoKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
