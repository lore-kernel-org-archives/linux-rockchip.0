Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B3C5CEBF8A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 09:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2+DLkxp4LKzfgVmE7o1nJeuggJMIWSYd6ndodB4a70=; b=t7mt/EZFLSiBJt
	w2zI2OAzdfDTTMjROxIBzzKDCM2CZY+MapgEs3ganUJQF2KsbQ4pc5HLf1MS+2TTqfsr4r9iiQyPD
	tleHUxAg3XngVtzed4crnSyqb8yszanwMGruXrnEI/4Uet7N8cMXOCCprcGEuPd8lzASoSij/JFnV
	Z1G32NOWdS8JDyyx6oOhZFWVu2otqHyx1+lvPgU6J0mNsEFcVk49zOX8vIkuSCD4jZENGwdSv5HLs
	91qBRuNM5D1frDc4f/6VzepdUoTl4Acgd5zyVb9SAVAPTogdzde3u67mYa8+vf1gUkIWGvH+wKlo+
	/xrYjYHCkVPENy3sMgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su7fu-0000000Ajwt-18Au;
	Fri, 27 Sep 2024 09:54:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su7ei-0000000AjqU-1iCT;
	Fri, 27 Sep 2024 09:52:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A79585C5A10;
	Fri, 27 Sep 2024 09:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD390C4CEC9;
	Fri, 27 Sep 2024 09:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727430775;
	bh=33PrDDHYsDn2bdtDMBJO2RODp0bUQsB7iOO7EBhwxgo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YLrFTRkWgEHg65h8fMPOYHMxcspnqFY6DEoORnkOn1/DQR22ssPtdLNmDI2tBoqG6
	 dplezYegIopryRgr4rXn1012qZC4eHH93UwdoTejkR2bbjPOVqV59IR5pgP0/iF/Tg
	 Cl5l2HKO9M++6Xce7DoJom75ib8F3mvcpHBSTEUfrBU9fUhuJ9x7Rd3ell5COb/3aB
	 LZtyiniTB71PWQi319UNvrzeL3ZSoWpTbq+m6wcMMfp0To+xx3/20D1/vTjoAx8rzr
	 heJWOolfH9FbYOoZb8ZUcWzM3PSLUVUDjuO/GcDtzWfkOHmLF2SvIlRO5ATD9Cg/5T
	 UWoc6sApqcSSg==
Message-ID: <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
Date: Fri, 27 Sep 2024 11:52:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frawang.cn@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
 <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
 <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_025256_553533_404D0E55 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjcvMDkvMjAyNCAwOTo1OSwgRnJhbmsgV2FuZyB3cm90ZToKPj4+Cj4+PiAtwqAgY2xvY2tz
Ogo+Pj4gLcKgwqDCoCBtYXhJdGVtczogMQo+Pj4gK8KgIGNsb2NrczogdHJ1ZQo+Pj4KPj4+IC3C
oCBjbG9jay1uYW1lczoKPj4+IC3CoMKgwqAgY29uc3Q6IHBoeWNsawo+Pj4gK8KgIGNsb2NrLW5h
bWVzOiB0cnVlCj4+IEZvciB0aGUgdGhpcmQgdGltZSwgcmVhZCB0aGUgY29kZSBJIGdhdmUgeW91
LiBEbyB5b3Ugc2VlIHNvbWV0aGluZyBsaWtlCj4+IHRoaXMgdGhlcmU/IFdoeSBkb2luZyBhbGwg
dGhlIHRpbWUgc29tZXRoaW5nIGRpZmZlcmVudCB0aGFuIGV4aXN0aW5nIGNvZGU/Cj4gCj4gUmVm
ZXIgdG8gdGhlIGxpbmsgeW91IHNlbnQgbWUgdGhhdCBJIG11c3QgYWRkIG1pbkl0ZW1zIHByb3Bl
cnR5IGZvciAKPiBjbG9ja3MsIGp1c3QgbGlrZSB0aGUgYmVsb3cgY29kZXM6Cj4gCj4gQEAgLTM1
LDcgKzM1LDggQEAgcHJvcGVydGllczoKPiAgwqDCoMKgwqAgY29uc3Q6IDAKPiAKPiAgwqDCoCBj
bG9ja3M6Cj4gLcKgwqDCoCBtYXhJdGVtczogMQo+ICvCoMKgwqAgbWluSXRlbXM6IDEKPiArwqDC
oMKgIG1heEl0ZW1zOiAzCgpZZXMsIGZvciBhbGwgdmFyaWFibGUgcHJvcGVydGllcywgc28gYWxz
byBuYW1lcy4KCj4gCj4gVGhhdCBjYW4gcGFzcyBkdF9iaW5kaW5nIGFuZCBkdGIgY2hlY2tpbmcs
IGhvd2V2ZXIsICJjbG9ja3MiIGlzIHRoZSAKPiBvcHRpb25hbCBwcm9wZXJ0eSBmb3Igc29tZSBv
bGQgUm9ja2NoaXAgUEhZcyzCoCBJIGFtIG5vdCBzdXJlIGlzIGl0IHJpZ2h0IAo+IHRvIGZvcmNl
IHNldMKgIG1pbkl0ZW1zIGFzIDEgLgo+IElmIGp1c3Qga2VlcCBtYXhJdGVtcywgdGhlIGR0X2Jp
bmRpbmcgY2hlY2tpbmcgaXMgZmFpbHVyZS4KClBsZWFzZSBzcGVjaWZ5IHRoZSBxdWVzdGlvbiB5
b3Ugd2FudCB0byBhc2suCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
