Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA63CC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxbvlqY1cyOXzAOX+Q6QigxIkibw5Ts2VCbS/ELxJfU=; b=A6D6UtVXCGudIH
	w+VEG2SWNYiil5Uh2Uur2dGcQEdN8XaAUPr6NEdU8XGkV8Fkff6eOuSCBIyOhvJwEa8mu/NgaRUBC
	vTl1XHYRbNeG2ZUnH3FlHfDqCxUllmvvNyqw3u7k9G87Rd5mw9133Sggzv/d1iAX5/ZnaixiOsOo8
	3qzPVm8DEbQ92EiK+PxkQnfSm8ktqnRpzXt5KiIXY+RHyPyzYVV5m805Zm73kBS8nPEYgZ9P0jCwY
	vHAv8Q62sVy5/drFwKNz44YodjsYWFUl2cfTq9wnvgmkjvaMYaC4ZPENit4345HDKCInJS75mcWNH
	hbh5mQljuQJOrmmk1HBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YOH-00217d-1P;
	Mon, 27 Nov 2023 09:58:57 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YOD-00216r-1C;
	Mon, 27 Nov 2023 09:58:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id B24735C0191;
	Mon, 27 Nov 2023 04:58:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 27 Nov 2023 04:58:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701079129; x=1701165529; bh=hqkiDp3oWjtShpC66539083zg
	0GmCmOTf3X1u+f5Il4=; b=DuU2+cGnzLrnCURK8IcrbuUyeXO4Lwk9kgAXxODbo
	nq3rqgOcsFbJVH2/Pla2z1aiyvFwOy0GQxNZUKpndp5A5hCYm9gIGE5lII4I9cgv
	OEH3T1dXpOqq62H3GLeepLYSBFbz6OPa5uE9ecrGyPZpHsa3e94FU1x4uv4nbXkK
	AS1FFh2Y+2o3F1soUtvdbBWGLAshtKoysKmFfqsGSXPcYamhhx0lOo/q3G4x2Xzu
	XyQ9XwpxwOV82lTZG0G4baIH7qg1uXMFedjJ+qbciP5HcS8pgqHnBbw2wdEOV7Ru
	zWOY3KpiSr0Yi2VT5hqNMchVAQO+qjTj+8XmWtpjaIMmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701079129; x=1701165529; bh=hqkiDp3oWjtShpC66539083zg0GmCmOTf3X
	1u+f5Il4=; b=a3k9/28sSg7kn2NGnpjjUe1+crWqrBylPYPfN0RmFYY0++WRh5u
	dtG8WUNdrEqA+cU+R0NWRL1rJY8QfJeV9xwxbAY9tlZmyTmQ6OTmTGb6Md/Z7S23
	qg/Ypd6EQVM/pDafQgJ0lWiJBnar/qh0tkRXQV+SRzC0Ra+037lQBN2zxvHlfpJM
	oCpTb9y1FBcS3PaJDvvGyRYh7DPsLki400UE8/kXsSF+4KHkN4HaK+iWhP8oLHSj
	iwAZfzkJvFATRq0VzT+s46Yzld3gUJv6vufHe5LTudaOf/avLHdI9Raii2M/cEVT
	Tfhe623kcw4lLUU1titr1G7uuaByq/f2saA==
X-ME-Sender: <xms:WWhkZa2T42hkrXHKID0lNj0Mrm_ZKWnGyblMWaSa0DmEVjX5xBRPZA>
    <xme:WWhkZdFqBZHG9Ro6n9yS3kUJfDwdAH_ByfmK1rP5OTf78W9FX3Oc-XwAIRa_6mbcy
    x50Y3Tcfw>
X-ME-Received: <xmr:WWhkZS6ZUkuEHMWqd37FXn2rk8yQeTsG34gqnvNbZmPRIoJU5FXNI4HSgzHDKXYL85WL_p-URWc7zz1kxq8MUABc2LHsTFoYP-Ng0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddguddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:WWhkZb34FadkyuSAnapFioyxlKeSIGHW-pFWo28yYB77K6ky3afDOw>
    <xmx:WWhkZdF6VFKYdqTwnGwNQhn4wvdqJirotabb4G5VRvVNAcDazlKwwA>
    <xmx:WWhkZU-t4usDPfGCag8_9V-yky6s1KUwbTph0cfztynp3SDZsKwqlA>
    <xmx:WWhkZU1LU5Zi0wGW2QbudXuBImG_sZgDJD_IZDKEVDXE2EfNA4mvrw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 04:58:45 -0500 (EST)
Message-ID: <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
Date: Mon, 27 Nov 2023 20:58:43 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
 <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org> <50694679.MN2xkq1pzW@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <50694679.MN2xkq1pzW@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_015853_478609_E96A831E 
X-CRM114-Status: GOOD (  20.55  )
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

Ck9uIDExLzI3LzIzIDIwOjQ1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDI3
LiBOb3ZlbWJlciAyMDIzLCAxMDoyNzo0MSBDRVQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tp
Ogo+PiBPbiAyNy8xMS8yMDIzIDEwOjIzLCBUaW0gTHVubiB3cm90ZToKPj4+IEhpCj4+Pgo+Pj4g
T24gMTEvMjcvMjMgMTc6NTIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gT24gMjcv
MTEvMjAyMyAwMDowNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4+IEhpIEtyenlzenRvZiwK
Pj4+Pj4KPj4+Pj4gQW0gTWl0dHdvY2gsIDIyLiBOb3ZlbWJlciAyMDIzLCAxMzoyOTo0NyBDRVQg
c2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+Pj4+Pj4gT24gMjIvMTEvMjAyMyAxMzoyMiwg
VGltIEx1bm4gd3JvdGU6Cj4+Pj4+Pj4gQWRkIGkyYzIgbm9kZSBhbmQgaTJjMl94ZmVyIHBpbmN0
cmwgZm9yIFJvY2tjaGlwIFJWMTEyNgo+Pj4+Pj4+Cj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVGlt
IEx1bm4gPHRpbUBmZWF0aGVydG9wLm9yZz4KPj4+Pj4+PiAtLS0KPj4+Pj4+Pgo+Pj4+Pj4+IChu
byBjaGFuZ2VzIHNpbmNlIHYxKQo+Pj4+Pj4+Cj4+Pj4+Pj4gICAgYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LXBpbmN0cmwuZHRzaSB8IDEwICsrKysrKysrKysKPj4+Pj4+PiAgICBh
cmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaSAgICAgICAgIHwgMTUgKysrKysr
KysrKysrKysrCj4+Pj4+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCj4+
Pj4+Pj4KPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYx
MTI2LXBpbmN0cmwuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1waW5j
dHJsLmR0c2kKPj4+Pj4+PiBpbmRleCA0Zjg1YjdiM2ZjNGMuLjE2N2E0OGFmYTNhNCAxMDA2NDQK
Pj4+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGluY3RybC5k
dHNpCj4+Pj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LXBpbmN0
cmwuZHRzaQo+Pj4+Pj4+IEBAIC04Nyw2ICs4NywxNiBAQCBpMmMwX3hmZXI6IGkyYzAteGZlciB7
Cj4+Pj4+Pj4gICAgCQkJCTwwIFJLX1BCNSAxICZwY2ZnX3B1bGxfbm9uZV9kcnZfbGV2ZWxfMF9z
bXQ+Owo+Pj4+Pj4+ICAgIAkJfTsKPj4+Pj4+PiAgICAJfTsKPj4+Pj4+PiArCWkyYzIgewo+Pj4+
Pj4+ICsJCS9vbWl0LWlmLW5vLXJlZi8KPj4+Pj4+PiArCQlpMmMyX3hmZXI6IGkyYzIteGZlciB7
Cj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPQo+Pj4+Pj4+ICsJCQkJLyogaTJjMl9zY2wgKi8K
Pj4+Pj4+PiArCQkJCTwwIFJLX1BDMiAxICZwY2ZnX3B1bGxfbm9uZV9kcnZfbGV2ZWxfMF9zbXQ+
LAo+Pj4+Pj4+ICsJCQkJLyogaTJjMl9zZGEgKi8KPj4+Pj4+PiArCQkJCTwwIFJLX1BDMyAxICZw
Y2ZnX3B1bGxfbm9uZV9kcnZfbGV2ZWxfMF9zbXQ+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4gKwl9
Owo+Pj4+Pj4+ICAgIAlwd20yIHsKPj4+Pj4+PiAgICAJCS9vbWl0LWlmLW5vLXJlZi8KPj4+Pj4+
PiAgICAJCXB3bTJtMF9waW5zOiBwd20ybTAtcGlucyB7Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4+Pj4+PiBpbmRleCA2YzVjOTI4ZjA2YzcuLmNmMWRmNzVk
ZjQxOCAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjEx
MjYuZHRzaQo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5k
dHNpCj4+Pj4+Pj4gQEAgLTIxLDYgKzIxLDcgQEAgLyB7Cj4+Pj4+Pj4gICAgCj4+Pj4+Pj4gICAg
CWFsaWFzZXMgewo+Pj4+Pj4+ICAgIAkJaTJjMCA9ICZpMmMwOwo+Pj4+Pj4+ICsJCWkyYzIgPSAm
aTJjMjsKPj4+Pj4+IE5vLCB0aGlzIHNob3VsZCBiZSBwZXItYm9hcmQgdG8gbWF0Y2ggYm9hcmQg
bGFiZWxpbmcvc2NoZW1hdGljcy4KPj4+Pj4gQXQgbGVhc3QgZm9yIGkyYywgdWFydHMgYW5kIGku
ZS4gc3BpIC4uLiBSb2NrY2hpcCBtYW51YWxzLCBwaW4gbmFtaW5ncwo+Pj4+PiBhbmQgYWxzbyBh
bGwgYm9hcmQgc2NoZW1hdGljcyBJJ3ZlIHNlZW4gc28gZmFyIGFyZSB2ZXJ5IGNvbnNpc3RlbnQg
Zm9yCj4+Pj4+IHRoZXNlIC4uLiBpMmMyIGZvciBleGFtcGxlIGlzIGxhYmxlZCBpMmMyIGJvdGgg
aW4gdGhlIHBpbnMgaW4gdGhlIHNvY3MKPj4+Pj4gYW5kIGFsc28gaW4gdGhlIGJvYXJkLXNjaGVt
YXRpY3MgdXNpbmcgdGhlbS4KPj4+Pj4KPj4+Pj4gU28gd2hpbGUgSSBjYW4gYWdyZWUgdGhhdCB0
aGluZ3MgbGlrZSBtbWMtYWxpYXNlcyBtaWdodCBiZSBib2FyZC1zcGVjaWZpYywKPj4+Pj4gSSBk
byB0aGluayBhbGlhc2VzIGZvciB0aGUgY29yZSBidXNzZXMgc2hvdWxkIGJlIGFibGUgdG8gbGl2
ZSBpbiB0aGUgc29jIGR0c2kKPj4+Pj4gYXMgZm9yIGFsbCBSb2NrY2hpcCBTb0NzIHNvIGZhcj8K
Pj4+PiBJZiB5b3UgZG8gbm90IGxpc3QgaGVyZSBhbGwgYWxpYXNlcywgaXQgaXMgYWxyZWFkeSBi
b2FyZC1zcGVjaWZpYywgaXNuJ3QgaXQ/Cj4+Pj4KPj4+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC9DQUs4UDNhMjVpWWtzdWJDblFiMS1lNXlqPWNyRXNLMzdSQjlIbjRa
R1pNd2NWVnJHN2dAbWFpbC5nbWFpbC5jb20vCj4+PiBJIGhhZCBvbmx5IGFkZGVkIGFsaWFzZXMg
Zm9yIG5vZGVzIHRoYXQgYXJlIGltcGxlbWVudGVkLiBSVjExMjYgaGFzIDYKPj4+IGkyYyBidXNz
ZXMgYnV0IHNvIGZhciBub3QgYWxsIHRoZXNlIGV4aXN0IGluIHRoZSBzb2MuZHRzaS4KPj4+Cj4+
IE9LLCB0aGF0IHdvdWxkIGV4cGxhaW4gd2h5IHlvdSBoYXZlIG9ubHkgdHdvLiBBbnl3YXksIGl0
IGlzIGp1c3QgZ2VuZXJpYwo+PiBndWlkZWxpbmUsIHNvIHVwIHRvIEhlaWtvIHdoYXQgdG8gZG8g
d2l0aCBpdC4KPiBQZW9wbGUgc2VlICJ1YXJ0Mi10eCIgb24gdGhlaXIgcGluLWhlYWRlciBkZXNj
cmlwdGlvbiBhbmQgdGhlbiBvZiBjb3Vyc2UKPiB3YW50IHRvIHVzZSB0dHlTMiAuLi4gc2FtZSB3
aXRoIHJlYWRpbmcgaTJjMi1zZGEgb24gdGhlIHBpbi1oZWFkZXIgYW5kIHRoZW4KPiBydW5uaW5n
IGkyY2RldGVjdCBvbiBzYWlkIGkyYzIgZGV2IG5vZGUuCj4KPiBBbmQgZXZlbiBpZiBpMmMxIGlz
IG5vdCBwb3B1bGF0ZWQgKHdvdWxkIGV2ZW4gYmUgdmVyeSByYXJlKSwgdGhlbiBwZW9wbGUKPiB3
b3VsZCBzdGlsbCBleHBlY3QgaTJjMiB0byBiZSBuYW1lZCB0aGF0IHdheS4KPgo+IEFzIHRoaXMg
aXMgdGhlIHNhbWUgZm9yIF9ldmVyeV8gYm9hcmQsIGl0IGRvZXNuJ3QgcmVhbGx5IG1ha2Ugc2Vu
c2UgdG8KPiBkdXBsaWNhdGUgaXQgZXZlcnkgdGltZS4gV2hpY2ggSSBndWVzcyBpcyBzaW1pbGFy
IHRvIHdoYXQgSSB3cm90ZSBpbiByZXBseQo+IHRvIHRoZSBtYWlsIHlvdSBsaW5rZWQgYWJvdmUg
Oi0pIC4KU28gSSB3aWxsIGxlYXZlIHRoZSBpMmMgYW5kIHNlcmlhbCBhbGlhc2VzIGFzIHRoZXkg
YXJlIGluIHJ2MTEyNi5kdHNpIHRoZW4/Cj4KPiBJdCdzIGRpZmZlcmVudCBmb3IgbW1jLCB3aGVy
ZSB0aGlzIG5hbWluZyBzY2hlbWUgaXNuJ3Qgbm9ybWFsbHkgdXNlZCwKPiBzbyB3ZSAobW9zdGx5
PykgbWlncmF0ZWQgdG8gdGhlbSBiZWluZyBpbiB0aGUgYm9hcmQtc3BlY2lmaWMgYWxpYXMgc2Vj
dGlvbi4KCldoYXQgYWJvdXQgdGhlIGV0aGVybmV0IGFsaWFzLCDCoCB0aGUgTUFDIGlzIHBhcnQg
b2YgdGhlIFNvQywgc2hvdWxkIHRoaXMgCnN0YXkgYXMgaXQgaXMKaW4gcGF0Y2ggNiBmcm9tIHRo
aXMgc2VyaWVzLCBvciBtb3ZlIHRvIGJvYXJkIGR0c2k/CgpSZWdhcmRzCiDCoCBUaW0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
