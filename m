Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36FBBC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zs0bUEXXTgzhPvxCH2kJ9jH95zKkLPCpvtov/5PT8j0=; b=ue74S8l9T1bqSJHLpZWBTzN+4U
	OcBnl1+Cw0FmLAUp9u/dIeHIKqjK79kZfn+B42hqDY+f0hdOKW9F6e+JylRixgCaCtgXcGXDyQv1b
	yYBduPeFHVELETtD1a8R7a7Q/Ie3o4r4QYiQgYBVkpDUVsxuQn2SAmqxnllLYsAsqOkXWlH8vMfBa
	yLt+e2b+gIkn23FY5atZ2bw+uURtGrimeTV726EYEg4JY1qIIZr5cK+xw23PKD1mrD5cmtB+ZGqg6
	MCehtIi+e35UZe6M511j41Cp2GAw/DciJGUbyO2JRzFO4C7/sUh+7qKB8K+2NDr+2C6O6SCjc6M/c
	SpsaJguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Z5M-0027wR-0W;
	Mon, 27 Nov 2023 10:43:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Z5I-0027uM-1Y;
	Mon, 27 Nov 2023 10:43:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701081786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sv3zUYeCIAwtSQ/4pLuCWPrHDmeMxigzL0J1JJKeGb8=;
	b=vqpokK7yjxI8ofYjft393wXKMsHk/av4/dBN9wD9FA2/EJeJtqdIfdWT/b8HNUnaVjHVEw
	hk3DDpq8b05MIWbHvcQBGfwSWqIIwH0sbMkb7qB2vnEJjxhILKIrE4PFqB2n35hb6dTwEZ
	9Re31xypPjO9niGJh4dgyJZi9HfAAt/OkTWPPcxq9ekkvGf2ZLq5I3jUdo4EoPAkjXkB1W
	VGLYf3Yv+J96ZO0PYGZLihpq2zsfWDpNx2xZsRFT6ChMCVOYblJgJbodfCGPcewcpDSLJa
	FJ+sSVoeS+Yob5/YevNu9mCKXsN41KuzhBSyFsc3wsFmfPNX6JaaOWRfk/UPuQ==
Date: Mon, 27 Nov 2023 11:43:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <4065853.CrzyxZ31qj@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <50694679.MN2xkq1pzW@diego>
 <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
 <4065853.CrzyxZ31qj@diego>
Message-ID: <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_024324_697457_960B3C50 
X-CRM114-Status: UNSURE (   9.91  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMS0yNyAxMToyOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
Ny4gTm92ZW1iZXIgMjAyMywgMTA6NTg6NDMgQ0VUIHNjaHJpZWIgVGltIEx1bm46Cj4+IE9uIDEx
LzI3LzIzIDIwOjQ1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEl0J3MgZGlmZmVyZW50IGZv
ciBtbWMsIHdoZXJlIHRoaXMgbmFtaW5nIHNjaGVtZSBpc24ndCBub3JtYWxseSB1c2VkLAo+Pj4g
c28gd2UgKG1vc3RseT8pIG1pZ3JhdGVkIHRvIHRoZW0gYmVpbmcgaW4gdGhlIGJvYXJkLXNwZWNp
ZmljIGFsaWFzIAo+Pj4gc2VjdGlvbi4KPj4gCj4+IFdoYXQgYWJvdXQgdGhlIGV0aGVybmV0IGFs
aWFzLCB0aGUgTUFDIGlzIHBhcnQgb2YgdGhlIFNvQywgc2hvdWxkIHRoaXMKPj4gc3RheSBhcyBp
dCBpcyBpbiBwYXRjaCA2IGZyb20gdGhpcyBzZXJpZXMsIG9yIG1vdmUgdG8gYm9hcmQgZHRzaT8K
PiAKPiBJIHRoaW5rIGp1ZGdpbmcgZnJvbSBldmVyeXRoaW5nIGFib3ZlIChhbmQgdGhlIG90aGVy
IG1vZGVybiBib2FyZHMKPiBsaWtlIGFsbCByazM1ODggb25lcykgdGhlIGV0aGVybmV0MCBhbGlh
cyBzaG91bGQgbW92ZSB0byB0aGUgYm9hcmQgCj4gZHRzKGkpLgo+IAo+IFRoZSBnbWFjIGdlbmVy
YWxseSBkb2VzIG5vdCBoYXZlIHRoaXMgbnVtYmVyaW5nIHNjaGVtZSBsaWtlIGkyYyBvciAKPiB1
YXJ0cy4KClBsZWFzZSBub3RlIHRoZXJlJ3MgYWxyZWFkeSBhbiBFdGhlcm5ldCBhbGlhcyBkZWZp
bmVkIGluIHJrMzM5OS5kdHNpLCAKZXZlbiBkZXNwaXRlIG5vdCBhbGwgUkszMzk5LWJhc2VkIGRl
dmljZXMgdXNpbmcgdGhlIEdNQUMsIGZvciBleGFtcGxlIAp0aGUgUGluZWJvb2sgUHJvLiAgUGVy
aGFwcyB0aGF0J3Mgc29tZXRoaW5nIHRvIGJlIGZpeGVkIGFzIHdlbGwuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
