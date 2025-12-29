Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B602E8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 08:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BndeFUl2vrqsDbhn6sVmiVrPsmwz8O4uVrtOfHVPbo=; b=tZ5Xd1kEyfXktZ
	Ana/Sn+IG5ofbU4aEQuJk0ZOe2IJhRk0ZRgm/T0kq3/nwi2VAghZ5ZUedV+z5dnRMw34LWh0QSbFf
	V41V7fAtQ60WERncDm7KTvKv0+apBZRhLTjHzs9C9nzUYFIJqigZNtg/3txEUktr+i4LBo4RxmDEs
	RYjf7zWJp0sk/cWG/5jBu7HEBehTUUz8bEG3AyJ3jwoBQYVRQMYYTXuvhlDVcj6isedJJJCJpovKq
	6Iewy1vjAoHWz3yvmNDLWvd5ALi4+aQU5fnWj+KQK/CJ7RbEvBbN263U7ve5K7KvHyURsLXAqbIAf
	3ecIlPx6dOqowfizkSwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va8v5-00000003UMC-0LAP;
	Mon, 29 Dec 2025 08:48:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va8v3-00000003ULz-1oRL;
	Mon, 29 Dec 2025 08:48:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 841BD60010;
	Mon, 29 Dec 2025 08:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED58C4CEF7;
	Mon, 29 Dec 2025 08:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766998080;
	bh=v44N2XjK2sH90Tnjd62vX1wVHggfuf7c0wYY7lW0ojw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=j6wR2jaz06bwagPAFZPp9NkfKLy0tfyM0sR6Ei4rugvguB0/p45UYoVOiYhoXEJOH
	 Eih13gd10GToygImTgWkbJy4EIGXbJ3lwdO3eNZAp6Hg2Aatl/jJiu8DZrcenWSzZ2
	 QXHCoHHCmK1I2+zXTt9G18LvqAsiPCAuMvd2vaWsE4YxN+VyF1M1La6TvboxyRLFVi
	 VLa8WVXUBY3RRoLNCmjfTUoVxJBlCpVMo8Ex4mlddkA74oYVd2bD+dXgIfKZfRXsgd
	 UoUJ7L3k5I73UW66GchIZW7HDBErav/OZmQjgwXyNnOgTbSOHILRlyZ6wZ+5U04VpI
	 d6pgLuMQYqUyg==
Message-ID: <57d27a43-4c3a-415b-b633-3d52c9f96f5a@kernel.org>
Date: Mon, 29 Dec 2025 09:47:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] ARM: dts: rockchip: rk3506: Add pinctrl and rmio
 dtsi for rk3506
To: =?UTF-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Rob Herring <robh@kernel.org>, krzk+dt <krzk+dt@kernel.org>,
 conor+dt <conor+dt@kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "tao.huang" <tao.huang@rock-chips.com>
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
 <20251227114957.3287944-8-ye.zhang@rock-chips.com>
 <ebb720f6-4756-437f-a71a-d94f45d732e8@kernel.org>
 <AGkAtwAtJy-UDFfi3M2RSaqR.3.1766993111418.Hmail.ye.zhang@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <AGkAtwAtJy-UDFfi3M2RSaqR.3.1766993111418.Hmail.ye.zhang@rock-chips.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjkvMTIvMjAyNSAwODoyNSwg5byg54OoIHdyb3RlOgo+IOWcqCAyMDI1LzEyLzI4IDE4OjM3
LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiAmZ3Q7IE9uIDI3LzEyLzIwMjUgMTI6NDks
IFllIFpoYW5nIHdyb3RlOgo+ICZndDsmZ3Q7ICsJCS9vbWl0LWlmLW5vLXJlZi8KPiAmZ3Q7Jmd0
OyArCQlybV9pbzI4X3RvdWNoX2tleV9pbjY6IHJtLWlvMjgtdG91Y2gta2V5LWluNiB7Cj4gJmd0
OyZndDsgKwkJCXJvY2tjaGlwLHBpbnMgPQo+ICZndDsmZ3Q7ICsJCQkJJmx0OzEgUktfUEMzIDcg
JmFtcDtwY2ZnX3B1bGxfbm9uZSZndDs7Cj4gJmd0OyZndDsgKwkJCXJvY2tjaGlwLHJtaW8tcGlu
cyA9Cj4gJmd0OyZndDsgKwkJCQkmbHQ7MCAyOCA0OSZndDs7Cj4gJmd0OyZndDsgKwkJfTsKPiAm
Z3Q7Jmd0OyArCj4gJmd0OyZndDsgKwkJL29taXQtaWYtbm8tcmVmLwo+ICZndDsmZ3Q7ICsJCXJt
X2lvMjhfdG91Y2hfa2V5X2luNzogcm0taW8yOC10b3VjaC1rZXktaW43IHsKPiAmZ3Q7Jmd0OyAr
CQkJcm9ja2NoaXAscGlucyA9Cj4gJmd0OyZndDsgKwkJCQkmbHQ7MSBSS19QQzMgNyAmYW1wO3Bj
ZmdfcHVsbF9ub25lJmd0OzsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPiAm
Z3Q7Jmd0OyArCQkJCSZsdDswIDI4IDUwJmd0OzsKPiAmZ3Q7Jmd0OyArCQl9Owo+ICZndDsmZ3Q7
ICsKPiAmZ3Q7Jmd0OyArCQkvb21pdC1pZi1uby1yZWYvCj4gJmd0OyZndDsgKwkJcm1faW8yOF9z
YWkwX21jbGs6IHJtLWlvMjgtc2FpMC1tY2xrIHsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscGlu
cyA9Cj4gJmd0OyZndDsgKwkJCQkmbHQ7MSBSS19QQzMgNyAmYW1wO3BjZmdfcHVsbF9ub25lJmd0
OzsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPiAmZ3Q7Jmd0OyArCQkJCSZs
dDswIDI4IDUxJmd0OzsKPiAmZ3Q7Jmd0OyArCQl9Owo+ICZndDsmZ3Q7ICsKPiAmZ3Q7Jmd0OyAr
CQkvb21pdC1pZi1uby1yZWYvCj4gJmd0OyZndDsgKwkJcm1faW8yOF9zYWkwX3NjbGs6IHJtLWlv
Mjgtc2FpMC1zY2xrIHsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscGlucyA9Cj4gJmd0OyZndDsg
KwkJCQkmbHQ7MSBSS19QQzMgNyAmYW1wO3BjZmdfcHVsbF9ub25lJmd0OzsKPiAmZ3Q7Jmd0OyAr
CQkJcm9ja2NoaXAscm1pby1waW5zID0KPiAmZ3Q7Jmd0OyArCQkJCSZsdDswIDI4IDUyJmd0OzsK
PiAmZ3Q7Jmd0OyArCQl9Owo+ICZndDsmZ3Q7ICsKPiAmZ3Q7Jmd0OyArCQkvb21pdC1pZi1uby1y
ZWYvCj4gJmd0OyZndDsgKwkJcm1faW8yOF9zYWkwX2xyY2s6IHJtLWlvMjgtc2FpMC1scmNrIHsK
PiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscGlucyA9Cj4gJmd0OyZndDsgKwkJCQkmbHQ7MSBSS19Q
QzMgNyAmYW1wO3BjZmdfcHVsbF9ub25lJmd0OzsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscm1p
by1waW5zID0KPiAmZ3Q7Jmd0OyArCQkJCSZsdDswIDI4IDUzJmd0OzsKPiAmZ3Q7Jmd0OyArCQl9
Owo+ICZndDsmZ3Q7ICsKPiAmZ3Q7Jmd0OyArCQkvb21pdC1pZi1uby1yZWYvCj4gJmd0OyZndDsg
KwkJcm1faW8yOF9zYWkwX3NkaTA6IHJtLWlvMjgtc2FpMC1zZGkwIHsKPiAmZ3Q7Jmd0OyArCQkJ
cm9ja2NoaXAscGlucyA9Cj4gJmd0OyZndDsgKwkJCQkmbHQ7MSBSS19QQzMgNyAmYW1wO3BjZmdf
cHVsbF9ub25lJmd0OzsKPiAmZ3Q7Jmd0OyArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPiAmZ3Q7
Jmd0OyArCQkJCSZsdDswIDI4IDU0Jmd0OzsKPiAmZ3Q7Jmd0OyArCQl9Owo+ICZndDsKPiAmZ3Q7
IFdoeSBhcmUgeW91IGRlZmluaW5nIGFsbCBwaW5zPyBUaGlzIGlzIHdyb25nLCB5b3VyIGRyaXZl
ciBoYXMgdG8gZG8gaXQsCj4gJmd0OyBub3QgRFRTLiBBbGwgdGhlc2UgZGVmaW5pdGlvbnMgd2hl
biBub3QgdXNlZCBhcmUganVzdCBwb2ludGxlc3MuCj4gJmd0OwoKRG9uJ3Qgc2VuZCBIVE1MIHRv
IHVzLiBJIGNhbm5vdCBwYXJzZSBhYm92ZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
