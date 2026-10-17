Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86BA8CCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UurVv9SvFV3IY4PleOhhky4ckgYmM5NNF21XDimYKLY=; b=JWPPyawisvfGhg
	AzPyGZOhm2S5b8eMhO9W1aFFn3RJFIZNsLPadRoQyussXfVVdLjrbbevQ8QwUvRk11sRk3o17icSv
	jpQHfWDbChD07NMw5fojipbnynXpeaodLGi7E3+2yVL+KK1IlaId7wqsawl8sQYY2H1nTtScrWbiN
	YdAYSmOoq+hxIv7Bw89FIUzZE0Hy0Z3eZ8g/hrdrJmfriOwCPnEkrSzIONoHdPitStAt7wz+f0Z1T
	M4tNSwRvAojT+ZOFgCuli7p/Q6lRhRwe7hQl4DlT8d9DLrAnUfBLkBist7Fkgs269UB11SacrfbcL
	BFiZF+0AcbCdgGoQl3HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxKw-00000004TFc-17rU;
	Sat, 17 Oct 2026 05:52:06 +0000
Received: from mail-ed2-x06.google.com ([2a00:1450:4864:33::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxKt-00000004TEh-0GoI
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:52:04 +0000
Received: by mail-ed2-x06.google.com with SMTP id 4fb4d7f45d1cf-6b1c084289cso217875a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:52:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792216321; cv=none;
        d=google.com; s=arc-20260327;
        b=KaAnQOk6S7rsnO8UpqweOPrH0L5kYES/2lOxpHxOGzskB2SRqlz9m8J2c1ahZmTVGv
         SyWNgVt+tPQ39g3uNmsaKPm8gx3CbQDk9dMn/xniSpHy0m1HPW3n3H6CZbt+m2SD0dvz
         8I3HU8lUFBh4M3X3Ek7t5eYac/n19xAnd4bNDpNOFFkFR1lYutG3vZDlaQBV3znpYy5y
         Ckx0H+GYv4gDvdA6KRBC5rm6bY2ljkHFEmWd99zAMVTksuqJtPIQfniMGdE1cctTnSxi
         3JoftQ/ZoQW2PGPqnyCX98uOmtwJgjA3waYN1+vD3bmy6RPzgo0YFCgTwfzdi7Pr7dWT
         Znlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1NQoVsKz0LnNjJ4rVcBhJaqVhtFod/04Q9AhzSfJg/Y=;
        fh=HukpveJ9CS8JqWbDN3bK+BK7Eu+p8twZEoHMPlrhh9A=;
        b=gOYZauVSDbwy/18U9fr+8d8bBPnU2A1QPWbT5CyI7XN9a+Mia1lnSxcAyeXDsX30Ac
         txuJsqdWBOXLlJy2KGrRNUZrjvwcXjOR0g9WrMERSl9fGWr1qGS2i5jaAZGN3pJ4E0FG
         Ffmz0iDwgPTXU0euV2QnfRDlvz9i1uf4q+/tGlVo/NzAm66Vm+2S5EjwqC6akZGfCaWv
         e5JlNwAWdIsCLH4aQz8/ImcAwTUTZ5XnTmuIrAf/kkp8GVTfBck8H8Yst8M23FzjCRNV
         aheDa8dXcE2xoHcsMrCq66vmR//61MxFphwxD+/+nRYSXpci+sutpRSUkOk7Lksy9qwf
         CgRQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792216321; x=1792821121; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1NQoVsKz0LnNjJ4rVcBhJaqVhtFod/04Q9AhzSfJg/Y=;
        b=Di5fzN6uGnbITvngAV6lcNhNGiFfplDafIuxrzlTbp+mP+CgTb4WI3UxGaK+XO/x7z
         pRUzoFzNQ3ZDPUCnuehMPBUKlnhxLek9rGyrt7ADhRaQ6uRM3Km06ctGhX3hGSNyMDFp
         mazC/IoTkdOQldKu44rE+Kzs10hGQxi3qy5CnhSpO5GeoVu+cdGklk52U/v7s1L8fObT
         xnGrTIMNbZoT7VuiBuAzoPE8PpqhJLoOBsos36zfHgYRCsjJt8Jtrq6RECJgAKnn4P4U
         rnIVXRZorkptwvuXdAXBVcCb96TX1YhBivSAYe45PHPGjNgdBCFmBzsVORaPPLCef7Ro
         YM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792216321; x=1792821121;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1NQoVsKz0LnNjJ4rVcBhJaqVhtFod/04Q9AhzSfJg/Y=;
        b=WshM/HFWsABip0DF6qkAtajIXp89t3Q5NZR1OkRtkmeZN6ZAjfzcY5ynQXXaPN7wgX
         yBbF3GItxZoii56QYgXpFAPe9T5KdER9IBSJPXwo2YXtZywKNBhEKNxURPMvIvmf5uE6
         mpULVRCQiM0PZhEOpu7obhy6CJ/PEkLN51OmU0jQUxsXsUv/oBRwjUwItZ2pbwxfYWHe
         sYNpg/aDaPbyHqmw8KxyM89ri7pcmJB8rcQFn/WoKErXEW90AxzKVz7aYO1afFQG/Pe7
         RUhNTDz2Pls/WP0aT/d/JxIxHx9Aj+hlseykM7/To2MWRwSMPJyaRuBpzX/NjuXezDjK
         +neg==
X-Forwarded-Encrypted: i=1; AKwUvBxAg2GQcS3dnKF31iwAyrFRQ5HDsJhrMrpNjXx7nDCegxcX4NWs2S3B9F7kfQSZGVxBnnp3xRI0TohzXwzwTQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYL7V95XPqDLlbeJwPSlpIfPxdvCZzGRrqMi/QcwZ8nYPbjWH/B6
	x6dqTJIRxgeqCpgtZmZ3GxD1hflFRdCQhn7zXD3EJQHo2B5euSY0q+0CVekQWBla9krsh/2qu6/
	1YiMQ0eV2+S6VTQFsSNW2NBHvqHmygW4=
X-Gm-Gg: AYBFou08MoIEAX6we9CW2mb8J4UaBP58M3uYf/O7o/KzSRcn+KQxRDOnmPG3wD/2B5c
	WqGfsSnCbpi90zVs5MGJxXcElZp+nBKZkuEqVX1Lk+XplLMlm5WmlFvmd3TmMQNk7838zotg6Lw
	I7oRlHDR5jhpF3kWz3qW4OQFY+CMnMKbT/5MScJem/1CyUoQdJ2SaV0Nu5OBkZZ7CEcn4ggzdAE
	54bpluYrO017OusXJE9c10UOUppuyT5qSZt0VsbM6KPmaLbb40Y/AhxRp5cg9Zvr2aQU8bsEVBv
	yS2EG4BWKCCoACHX1oCyDDm+wjNfJznjE7jh1ewQ10uLXbIx0xMdjpFVJw==
X-Received: by 2002:a17:907:930e:b0:c31:8c48:e18b with SMTP id
 a640c23a62f3a-c419df3d9e2mr123713166b.14.1792216320815; Fri, 16 Oct 2026
 22:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20261008175225.3375274-1-coiaprant@gmail.com> <20261008175225.3375274-4-coiaprant@gmail.com>
 <20261016163709.00cc7c12@kernel.org>
In-Reply-To: <20261016163709.00cc7c12@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sat, 17 Oct 2026 13:51:48 +0800
X-Gm-Features: AclHuK9gR2DkSi4xw_m2fA1Jz76Zlk0PlqVhdG4GFOV5ZHbiAG1eg9HG8sAydCI
Message-ID: <CALj3r0jc4GECe=Dp_gngTsVL03YmXhAt+BSQJei4QRrwLRrerA@mail.gmail.com>
Subject: Re: [PATCH net-next v11 3/6] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	David Wu <david.wu@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_225203_152342_CA5314A7 
X-CRM114-Status: GOOD (  13.41  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyIMTfml6Xlkajl
ha0gMDc6MzflhpnpgZPvvJoKPgo+IE9uIEZyaSwgIDkgT2N0IDIwMjYgMDE6NTE6NTcgKzA4MDAg
Q29pYSBQcmFudCB3cm90ZToKPiA+ICtjb25maWcgUENTX1hQQ1NfUExBVEZPUk0KPiA+ICsgICAg
IHRyaXN0YXRlICJHZW5lcmljIFhQQ1MgY29udHJvbGxlciBzdXBwb3J0Igo+ID4gKyAgICAgZGVm
YXVsdCBQQ1NfWFBDUwo+Cj4gV2h5IHRoZSBkZWZhdWx0PyBTdXJlbHkgdGhlcmUgYXJlIHBsYXRm
b3JtcyB3aXRoIFBDU19YUENTIGVuYWJsZWQKPiB3aGljaCB3b3JrIHRvZGF5ID09IGRvbid0IGNh
cmUgYWJvdXQgdGhlIG5ldyBjb2RlPwo+Cj4gTGludXMgaXMga25vd24gdG8gaGF0ZSBfYW55XyBu
ZXcgc3ltYm9scyBkZWZhdWx0aW5nIHRvIGVuYWJsZWQKPiBvbiBvbGRkZWZjb25maWcuCj4KPiA+
ICsgICAgIGhlbHAKPiA+ICsgICAgICAgR2VuZXJpYyBEV1hQQ1MgZHJpdmVyIGZvciBwbGF0Zm9y
bXMgdGhhdCBkb24ndCByZXF1aXJlIGFueQo+ID4gKyAgICAgICBwbGF0Zm9ybSBzcGVjaWZpYyBj
b2RlIHRvIGZ1bmN0aW9uIG9yIGlzIHVzaW5nIHBsYXRmb3JtCj4gPiArICAgICAgIGRhdGEgZm9y
IHNldHVwLgo+ID4gKwo+ID4gKyAgICAgICBJZiB5b3UgaGF2ZSBhIGNvbnRyb2xsZXIgd2l0aCB0
aGlzIGludGVyZmFjZSwgc2F5IFkgb3IgTSBoZXJlLgo+ID4gKwo+ID4gK2NvbmZpZyBQQ1NfWFBD
U19ST0NLQ0hJUAo+ID4gKyAgICAgdHJpc3RhdGUgIlJvY2tjaGlwIFhQQ1MgY29udHJvbGxlciBz
dXBwb3J0Igo+ID4gKyAgICAgZGVmYXVsdCBBUkNIX1JPQ0tDSElQCj4KPiBTYW1lIGhlcmUuCj4K
ClRoYW5rcywgYm90aCBkZWZhdWx0cyBhcmUgZHJvcHBlZCBpbiB2MTI6CgotIFBDU19YUENTX1BM
QVRGT1JNIG5vIGxvbmdlciBkZWZhdWx0cyB0byBQQ1NfWFBDUy4gVGhlcmUgaXMgbm8KICBpbi10
cmVlIHVzZXIgb2YgdGhlIGdlbmVyaWMgc25wcyxkdy14cGNzIGdsdWUgdGhhdCBuZWVkcyBpdCBz
ZWxlY3RlZAogIGJ5IGRlZmF1bHQsIHNvIHBsYXRmb3JtcyB0aGF0IG5lZWQgaXQgc2VsZWN0IGl0
IGV4cGxpY2l0bHkuCgotIFBDU19YUENTX1JPQ0tDSElQIG5vIGxvbmdlciBkZWZhdWx0cyB0byBB
UkNIX1JPQ0tDSElQLiBEV01BQ19ST0NLQ0hJUAogIGFscmVhZHkgc2VsZWN0cyBpdC4KCkxpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTAxNzA1NDQwNi4xODI4MDYxLTEtY29p
YXByYW50QGdtYWlsLmNvbS9ULyN0CgotIENvaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
