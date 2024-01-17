Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3847C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 10:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw/q7nXGtFSUEtIbL8EVyGPWY5jkImnqpVCV/01ai10=; b=AinXDkiJuZqpO5
	sHXUD8IT2SgnbmPvTKlMSjsFs7mUHj/ZYKPiF9W/1IAOI/BfIvg6qwDmo2N+vHnU7491pUDtW1UYG
	fbr43Y0ODEG4L9uZUPxtk2GD09zMtn65DEUKUQbx7nrINkRFGlARl/5OD+X/YDfv0wVzcDiVQ7d2D
	ypw/lR7MUsYi6BD+VAJiuNbV56MAjNQqccb99R2s4MSiSVjHr7gUvKY+FgxTmn0V15wt7OqtbxUow
	AEYYOaWaNsJELc/Tuq/MPsU+smchMe8rpnMS9dLN6rE9A9Oy3cEkknUtoTOURc3RPz1G061ct9DYg
	08KQBZAsalwHzaYrCnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2ln-00FCVK-3C;
	Wed, 17 Jan 2024 10:03:39 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2lk-00FCU7-2D;
	Wed, 17 Jan 2024 10:03:38 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 0B5FA5C021F;
	Wed, 17 Jan 2024 05:03:36 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 17 Jan 2024 05:03:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705485816; x=1705572216; bh=m8YCl/DsxOv6tOduhm9ZJbpzuJtc7eeY
	qEvwM2UP98I=; b=U9geoNM4TmjOaP7FHrXiFNTnvXrFekZt5T+D/M7pLJCmubM5
	RF0WoHltfxXJGmzWjAD69JR6KzAYwpizj7TpT4+DhhhcMsccK2hGKvAEdRa8P7hR
	tMGXaHb7COpO9R2PDO0oJk+cIGyJaRFW/xchN6f7tJWmUZ0OqHROfzeOa2olWSdT
	9fryGd9Xrnp+ihhAnZNXOluf49zN4R820UNmb6JPubOTlLTZ4WFn+ziC5LNs3QYq
	jbc3NZnhm5aeUbBDNIMs7E9xEMH7mQZgFRXGSdOSYj5gkCCBDKK9TkfS96oUW+sg
	KuUlQJHTq5kFX3Dzvs8dPlGG193K/oYVhdw9ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705485816; x=
	1705572216; bh=m8YCl/DsxOv6tOduhm9ZJbpzuJtc7eeYqEvwM2UP98I=; b=O
	0pyRdVRU1WJIsj1+h8N4o7T4aFGFmPWpk1GPzN+TxRbcI2RcO++F/JZ2atmwGo93
	Q62cGDXWaZqBC60RndtYPCd1nH5SKVZMdz5jgn8FMKuMS6DJ3iNAu0uWOsNpDeVt
	FcXqYFz2XnrFn5o4MMYvxcldk/fBxYZY4yvmwVBXI0rs+yzucN7CU4PCjV1n29WA
	CpKEfEWNSX6j3K/XYmLu9Zh8xE56Ivo65PX/GNrdCil8Tlc4u/cfdiqdqLitTDx8
	BPpJMPY9E48thy3/H1ERTYenrtM36jBztBi1Oq2UyBfIzNsimbtbDjkQ8DQ5b5iL
	ibblWf+U9PfwuG0+0zJCQ==
X-ME-Sender: <xms:96WnZfLy8wzl_LRvuQeQ8wO1Y3FQWqmRJMzqTGXgYtn9MeD5gKZIuw>
    <xme:96WnZTL5McuYG26aZyQgkBo_LRmIApxWrE9zKJ-O3Lp3e0sa-4TU20XpO8YOmU4BQ
    iGX7vs8qg>
X-ME-Received: <xmr:96WnZXteonf3sdMeTJ05_hc7JSci2xb8M016WN0oA7hNi5NuYwobdhi8LzwyEPuE514nPJ7xBWuAaFbAAhQVpbwfgVH7Pmg1FQUwHA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteeffeehtedtffehgeeghfdtgeefledtkeejieetvedtfeeiveevtdehjeefvdet
    necuffhomhgrihhnpehlihhnrghrohdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:96WnZYYoTNkuoqlj661wh9nPTln-zvAK9mGFNQiwztgldxG4ZDY5rQ>
    <xmx:96WnZWZpob31qnwf7q1J06JEobncUtJLfQG6Bi7HtT-wwGNzbCozGA>
    <xmx:96WnZcAgWuHoblsPaIB09p_99maRbIr98FAQQgqLFZwVJPFrkdnyPw>
    <xmx:-KWnZeovMlaJYRkZ1RhE2_wG2njyiQswhpStLSmsn3tiILWdIxnsCA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 05:03:28 -0500 (EST)
Message-ID: <194a0894-a9f9-4c5e-b304-e7278104d8e7@feathertop.org>
Date: Wed, 17 Jan 2024 21:03:26 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr> <2421144.zToM8qfIzz@diego>
 <20240116192605.GA274661-robh@kernel.org> <47795047.XUcTiDjVJD@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <47795047.XUcTiDjVJD@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_020336_836740_4E9256D5 
X-CRM114-Status: GOOD (  17.71  )
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

Ck9uIDEvMTcvMjQgMDY6NTUsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERpZW5zdGFnLCAx
Ni4gSmFudWFyIDIwMjQsIDIwOjI2OjA1IENFVCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+PiBPbiBU
dWUsIEphbiAxNiwgMjAyNCBhdCAwOTozMTozNUFNICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPj4+IEFtIERpZW5zdGFnLCAxNi4gSmFudWFyIDIwMjQsIDA4OjI0OjQ0IENFVCBzY2hyaWVi
IEtyenlzenRvZiBLb3psb3dza2k6Cj4+Pj4gT24gMTYvMDEvMjAyNCAwMzowMCwgVGltIEx1bm4g
d3JvdGU6Cj4+Pj4+IE9uIDEvMTYvMjQgMDE6NTgsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
Cj4+Pj4+PiBPbiAxNS8wMS8yMDI0IDE1OjUxLCBLeXVIeXVrIExlZSB3cm90ZToKPj4+Pj4+PiBU
aGUgdmVuZG9yIGluIE9EUk9JRC1NMSBpcyBoYXJka2VybmVsLCBidXQgaXQgd2FzIGluY29ycmVj
dGx5IHdyaXR0ZW4KPj4+Pj4+PiBhcyByb2NrY2hpcC4gRml4ZWQgdGhlIHZlbmRvciBwcmVmaXgg
Y29ycmVjdGx5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogS3l1SHl1ayBMZWUgPGxl
ZUBreXVoeXVrLmtyPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+ICAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDIgKy0KPj4+Pj4+PiAgICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Pj4+IFlvdSBuZWVkIHRv
IHN0YXJ0IHRlc3RpbmcgeW91ciBwYXRjaGVzLiBZb3VyIGxhc3QgTTEgZmFpbHMgYXMgd2VsbCBp
bgo+Pj4+Pj4gbXVsdGlwbGUgcGxhY2VzLgo+Pj4+Pj4KPj4+Pj4+IEl0IGRvZXMgbm90IGxvb2sg
bGlrZSB5b3UgdGVzdGVkIHRoZSBEVFMgYWdhaW5zdCBiaW5kaW5ncy4gUGxlYXNlIHJ1bgo+Pj4+
Pj4gYG1ha2UgZHRic19jaGVjayBXPTFgIChzZWUKPj4+Pj4+IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy93cml0aW5nLXNjaGVtYS5yc3Qgb3IKPj4+Pj4+IGh0dHBzOi8vd3d3Lmxp
bmFyby5vcmcvYmxvZy90aXBzLWFuZC10cmlja3MtZm9yLXZhbGlkYXRpbmctZGV2aWNldHJlZS1z
b3VyY2VzLXdpdGgtdGhlLWRldmljZXRyZWUtc2NoZW1hLwo+Pj4+Pj4gZm9yIGluc3RydWN0aW9u
cykuCj4+Pj4+Pgo+Pj4+Pj4gVGhlIERUUyBjaGFuZ2Ugd2lsbCBicmVhayB0aGUgdXNlcnMsIHNv
IHdvdWxkIGJlIG5pY2UgdG8gbWVudGlvbiB0aGlzIGluCj4+Pj4+PiBpdHMgY29tbWl0IG1zZy4K
Pj4+Pj4gSSBub3RpY2UgdGhlcmUgYXJlIGEgY291cGxlIG9mIG90aGVyIGJvYXJkcyB0aGF0IGlu
Y29ycmVjdGx5IHVzZQo+Pj4+PiByb2NrY2hpcCBhcyB0aGUgdmVuZG9yIGFsc286Cj4+Pj4+Cj4+
Pj4+ICAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OS1vcmFuZ2VwaQo+Pj4+PiAg
ICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtYnBpLXIycHJvCj4+Pj4+Cj4+Pj4+
IFBlcmhhcHMgdGhlc2Ugc2hvdWxkIGFsc28gYmUgZml4ZWQgYXQgdGhlIHNhbWUgdGltZT8KPj4+
PiBXaGF0IGlzIGhhcHBlbmluZyB3aXRoIHJvY2tjaGlwIGJvYXJkcz8KPj4+IENvcHktcGFzdGUg
c3R1ZmYgLi4uIGJvYXJkcyB1c2luZyByb2NrY2hpcCxib2FyZG5hbWUgaW5zdGVhZCBvZgo+Pj4g
dmVuZG9yLGJvYXJkbmFtZSBmb3IgdGhlaXIgY29tcGF0aWJsZS4KPj4+Cj4+PiBJIGRvIHJlbWVt
YmVyIHVzIG5vdGljaW5nIHRoaXMgYSBudW1iZXIgb2YgdGltZXMgb24gc29tZSBib2FyZHMKPj4+
IGFuZCByZXF1ZXN0aW5nIGZpeGVzLCBidXQgbG9va3MgbGlrZSBzb21lIHNsaXBwZWQgdGhyb3Vn
aC4KPj4+Cj4+PiBTbyBJIGd1ZXNzIFRpbSBpcyBzdWdnZXN0aW5nIGNoYW5naW5nIHRoZSBjb21w
YXRpYmxlLCBidXQgd2l0aCBib2FyZHMKPj4+IGJlaW5nIG1lcmdlZCBhIHdoaWxlIGFnbywgdGhp
cyB3b3VsZCBicmVhayBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eS4KPj4+IFNvIEkgZ3Vlc3MgYm90
aCB0aGUgT3JhbmdlIGFuZCBCYW5hbmEgUGllcyB3aWxsIG5lZWQgdG8gbGl2ZSB3aXRoIHRoYXQu
Cj4+IFlvdSBtYXkgZ2V0IGF3YXkgd2l0aCBpdCBiZWNhdXNlIHdlIGdlbmVyYWxseSBkb24ndCB1
c2UgdGhlIG5hbWVzLi4uCj4+Cj4+IFRob3VnaCB0aGVyZSBhcmUgc29tZSBkaXNjdXNzaW9ucyB0
byBzdGFydCB1c2luZyB0aGVtIHRvIHNlbGVjdCBkdGJzIGJ5Cj4+IGJvb3Rsb2FkZXJzLgo+IEFo
LCB0aGF0J3MgZ29vZCB0byBrbm93IChib3RoIHBvaW50cykgLi4uIHNvIGVzc2VudGlhbGx5IHJp
Z2h0IG5vdyB3b3VsZCBiZQo+IGEgZ29vZCB0aW1lIHRvIGRvIHdoYXQgVGltIHN1Z2dlc3RlZCwg
YmVmb3JlIHRoZSBuYW1lcyBnZXQgYWN0dWFsIHVzYWdlLgo+Cj4gQFRpbTogaXMgdGhhdCBzb21l
dGhpbmcgeW91J2Qgd2FudCB0byBkbz8KPgpTdXJlLCBJIHdpbGwgcHJlcGFyZSBwYXRjaGVzIGFu
ZCBzZW5kIHRoZW0gb3V0IHNvb24uCj4gVGhhbmtzCj4gSGVpa28KPgo+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
