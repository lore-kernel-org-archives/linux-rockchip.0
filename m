Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1038C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 14:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIOwgvfOshNs6vnBvZikwJCY0YEuT8sa7LLtSmgY+1Q=; b=HXG4eTJNbtnzSg
	9L9JuhwztkqpR4fxTSP4ArcNW7qUSvjqvptmiwli+5oo/twFGKM6JO0vYRyqM78f9MlzfSbSgVJYc
	bQa3CuTz/DKJYbO8h3QQ03FEP2U3BrDmeFC8Rxz5U5tG/eXPSqwJtYvJFmXGBaHvPHwgotfdQbiKc
	XTEvm6m0dxz5cgkFLYmi5TCIcYR4X0oGGK2NFOAjVd4LskROigVTvDaitKe4ZIbtUvBsfWnR30Ydm
	l7RWMG6gVHm5B2iR5wbHRieLxjTUqM65RkokdKW2ZZKP9Nw0oeP9ZhnWCCcMZgdBHgMsgskQ1VSAl
	nnejhYDGGH+FPnp0CexQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL26I-00B5H1-33;
	Wed, 03 Jan 2024 14:20:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL26G-00B5F8-0o
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jan 2024 14:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1704291574;
 bh=3c19w6vY1jyD7/GphZNPpueD7bdTp6aOk8Eg2b52Ujc=;
 b=bp5gsgHTBnOKKFqXDvXj+1UM664A3zOXm1skicaPB9pP/IcH8+Hhfudr/vggwWUTI7mLZlCBJ
 LY2T8q06ysaYxoC9n6Tht1UY3rXip6nB72M+s+stBM/773i+twTd2kKesmZaPtsTDn+GJpVnItN
 4T5yJWw5kAalam3wwFP1hraCfPRdMov9VP+dzSNSnbpeI3RV4A7thBrF1jLBOG+uK1lHGEpBiDZ
 2GYX81eCz0IAi3+o7a+fUq2I48cBiRMsqdlJ1NnmXRgoaCybJ4JG+T9vPj4KJh6lHLjSpiobLHH
 ex4L1I8wkMmmFzBCtGJ66UUmbHqE8nqCx0zlnuA8BUpg==
Message-ID: <6efe305c-4ab4-43c1-ab6d-64bdf1d81a2f@kwiboo.se>
Date: Wed, 3 Jan 2024 15:19:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Content-Language: en-US
To: Manuel Traut <manut@mecka.net>
Cc: "=?UTF-8?Q?Ond=C5=99ej_Jirman?=" <megi@xff.cz>, Neil Armstrong
 <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang
 <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, Diederik de Haas
 <didi.debian@cknow.org>, Segfault <awarnecke002@hotmail.com>, Arnaud
 Ferraris <aferraris@debian.org>, Danct12 <danct12@riseup.net>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
 <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se> <ZZVjzwgANJMdHnuo@mecka.net>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <ZZVjzwgANJMdHnuo@mecka.net>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 65956cf5cdaacf2fcbc351f3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_062004_344661_A58755B0 
X-CRM114-Status: GOOD (  21.49  )
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

SGkgTWFudWVsLAoKT24gMjAyNC0wMS0wMyAxNDo0MCwgTWFudWVsIFRyYXV0IHdyb3RlOgo+IEhp
IEpvbmFzIGFuZCBPbmTFmWVqLAo+IAo+Pj4+ICsmc2ZjIHsKPj4+PiArCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4+Pj4gKwlwaW5jdHJsLTAgPSA8JmZzcGlfZHVhbF9pb19waW5zPjsKPj4+
PiArCXN0YXR1cyA9ICJva2F5IjsKPj4+PiArCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+Pj4+ICsJ
I3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4gKwo+Pj4+ICsJZmxhc2hAMCB7Cj4+Pj4gKwkJY29tcGF0
aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPj4+PiArCQlyZWcgPSA8MD47Cj4+Pj4gKwkJc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MjQwMDAwMDA+Owo+Pj4KPj4+IFRoYXQncyBhIGJpdCBvbiB0aGUgbG93
IHNpZGUuIFRoZSBmbGFzaCBjaGlwIHNob3VsZCB3b3JrIGZvciBhbGwgY29tbWFuZHMgdXAgdG8K
Pj4+IDgwTUh6IGh0dHBzOi8vbWVnb3VzLmNvbS9kbC90bXAvYjQyOGFkOWI4NWFjNDYzMy5wbmcg
YW5kIFNHTTMxNTdZQzYgc3dpdGNoCj4+PiBmb3IgdGhlIEZTUEktQ0xLIHNob3VsZCBoYXZlIGhp
Z2ggZW5vdWdoIGJhbmR3aWR0aCwgdG9vLgo+Pgo+PiBJIGFncmVlIHRoYXQgdGhpcyBpcyBhIGxp
dHRsZSBiaXQgb24gdGhlIGxvdyBzaWRlLCBpdCB3YXMgYSBzYWZlIHJhdGUKPj4gdGhhdCBJIHVz
ZWQgZm9yIFUtQm9vdC4gVS1Cb290IHJlcXVpcmVkIGFuIGV4YWN0IHJhdGUgb2YgdGhlIHN1cHBv
cnRlZAo+PiBzZmMgY2xrIHJhdGVzOiAyNCwgNTAsIDc1LCAxMDAsIDEyNSBvciAxNTAgTUh6Lgo+
Pgo+PiBQbGVhc2UgYWxzbyBub3RlIHRoYXQgdGhlIFNQSSBOT1IgZmxhc2ggY2hpcCB1c2VkIGlu
IFBpbmVUYWIyIGlzIG5vdCBhCj4+IEdpZ2FEZXZpY2UgR0QyNUxRMTI4RSwgaXQgc2hvdWxkIGJl
IGEgU2lsaWNvbkthaXNlciBTSzI1TFAxMjgsIHNhbWUgYXMKPj4gZm91bmQgaW4gdGhlIFBpbmU2
NCBQaW5lUGhvbmUgUHJvLgo+IAo+IFRoZSBzY2hlbWF0aWNzIGZvciB2Mi4wIHJlZmVyZW5jZSBh
IEdEMjVMUTEyOEVXSUdSLiBJIG5ldmVyIGNoZWNrZWQgdGhlIGplZGVjCj4gaWQuIEhvdyBkaWQg
eW91IHJldHJpZXZlIHRoaXMgaW5mb3JtYXRpb24sIG9yIGlzIGl0IG1heWJlIGEgZGlmZmVyZW5j
ZSBpbiB2MC4xCj4gYW5kIDIuMD8KClRoaXMgd2FzIHdoZW4gd29ya2luZyBvbiBtYWlubGluZSBV
LUJvb3QgZm9yIHRoZSBQaW5lVGFiMiAoYW5kIG90aGVyCnJrMzU2eCBkZXZpY2VzKS4gU2VlIFsx
XSBmb3IgYSBwZW5kaW5nIFUtQm9vdCBwYXRjaCB0aGF0IGlzIHdhaXRpbmcgb24gYQpwcm9wZXIg
bWFpbmxpbmUgbGludXggZGV2aWNldHJlZSBmb3IgdGhlIFBUMi4KClRoZSBKRURFQyBJRCBpcyBy
ZXBvcnRlZCBhcyAweDI1NzAxOCBvbiBteSB2Mi4wIHByb2R1Y3Rpb24gdW5pdCwgYW5kCmRvZXMg
bm90IG1hdGNoIHRoZSBKRURFQyBJRCBmb3IgR0QyNUxRMTI4RSAoMHhjODYwMTgpIHJlZmVyZW5j
ZWQgaW4KdGhlIHNjaGVtYXRpY3MuCgpJIGZvdW5kIHRoYXQgdGhlIEpFREVDIElEIDB4MjU3MDE4
IHdhcyByZWZlcmVuY2VkIGluIHByaW9yIHBhdGNoZXMKcmVsYXRlZCB0byB0aGUgU0syNUxQMTI4
IFNQSSBOT1IgZmxhc2ggY2hpcCB1c2VkIGluIFBpbmU2NCBQaW5lUGhvbmUgUHJvLgoKSSBoYXZl
IG9ubHkgZXZlciB0ZXN0ZWQgdGhlIDI0IE1IeiByYXRlLCBidXQgSSBhbSBleHBlY3RpbmcgdGhh
dCBlLmcuCjEwMCBNSHogYWxzbyBzaG91bGQgd29yay4gV2lsbCBub3QgYmUgYWJsZSB0byB0ZXN0
IG9uIG15IFBUMiB1bnRpbCBhdAplYXJsaWVzdCBuZXh0IHdlZWsuCgpbMV0gaHR0cHM6Ly9naXRo
dWIuY29tL0t3aWJvby91LWJvb3Qtcm9ja2NoaXAvY29tbWl0LzY2NTYyZDZlYWYyYzExYTlmOTdm
Y2RiYTM3OWQzY2VkYThhYTcwZWYKClJlZ2FyZHMsCkpvbmFzCgo+IAo+Pj4+ICsJCXNwaS1yeC1i
dXMtd2lkdGggPSA8Mj47Cj4+Pgo+Pj4gR0QyNUxRMTI4RSBzdXBwb3J0cyBxdWFkIEkvTy4gTWF5
YmUgdHJ5IDQgaWYgaXQgd2lsbCB3b3JrLgo+Pgo+PiBUaGUgc2NoZW1hdGljIG9ubHkgc2hvd3Mg
ZnNwaSBEMCBhbmQgRDEgY29ubmVjdGVkLCBhbmQgdXNlIHRoZSBEMiBsaW5lCj4+IGZvciBlTU1D
X1JTVG4sIHNvIHNwaS1yeC1idXMtd2lkdGggPSA8Mj4gc2hvdWxkIGJlIGNvcnJlY3QuCj4gCj4g
YWNrCj4gCj4gU2luY2UgaXQgaXMgb25seSBuZWVkZWQgZm9yIGJvb3Rsb2FkZXIgdXBkYXRlcyBh
bmQgZW52aXJvbm1lbnQgaXRzIG1heWJlIGJldHRlcgo+IHRvIHN0YXkgb24gdGhlIHNhZmUgc2lk
ZT8KPiAKPiBCdXQgSSBjYW4gdGVzdCBmYXN0ZXIgZnJlcXVlbmN5IGlmIHlvdSB3YW50IG1lIHRv
IGRvLi4KPiAKPiBSZWdhcmRzCj4gTWFudWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
