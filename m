Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8251FE7BDA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WEIu3p3C5dtitCQ8sjGiKcUG/MNA5t5aPh57RW16JvQ=; b=g12hm6hQK3VNirUDG8P5s/lOO9
	V8I49fq6cRqOV2tqtxQlsXO/tjLiIWlcdqVqY9RzcCS1ec5lkcLpu+rq2zwsfdj50LAnMwYehD1TG
	lGloxlixi7sTvLtVSwiExI0HZRYkDWSzbHMGL/ml3YTNQl3SEWWG89qUTh2UGfOeHvLc+Hf+TyLnR
	SeckesOD5nbL2t2PiaG8s++tZVbuGuMVcmdvNffbh448tQVti23ELFLTlfE8OKIDyiWRUCbjPlxig
	u7tk26cGi4mJh6OLC2xBHo6o3YdqnkPlg+eMD+oprpm7U2+lDPNn6sPrQuCD/U8ObtTFFvU2/32WL
	48yIHS5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwrL-00000006SQy-2RMW;
	Mon, 16 Feb 2026 11:33:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwrI-00000006SPk-2fW0;
	Mon, 16 Feb 2026 11:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771241621;
	bh=onTyZagYpAPjiiOZuy6MDCXz/JCQKAyBYFGyzLZzLvw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=kX93qde/2AGQpxYE4XsVcgtKBFHd2odwj54axOcPaJn8lH5LzoUWBy9va68nieeGL
	 st8DAbsV8+1gZXyLvwEOuO9eGmgXeCVPpqL09fLA0sNMoGscCZi8mfyoNgSR7J4Cqr
	 9hV8N3qFiyhH6GsO2kMOeH/CPcd7RcHteDX69oxzztgDmDtfk82HlyMTXQ79kSV6fR
	 hL8SnaIxskTYKK+Fqkx0A1KD5yIVES8vImsdgCP0w3073X3PZ6VaDmE6INjiIp2bvI
	 xN47yJb3drwTEFgYR4hRpmGIHpWYfrpsDuDaIHNz02NI8U7fRkHN8aNL437B6yqsbl
	 3oWfpQiB6miCA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 68FA917E012E;
	Mon, 16 Feb 2026 12:33:40 +0100 (CET)
Message-ID: <b42a1da6-110a-4bd5-a4f1-23c3f25e2a17@collabora.com>
Date: Mon, 16 Feb 2026 12:33:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] arm64: dts: add missing sram-supply to mali gpu
 nodes
To: =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260215100302.136719-1-work@onurozkan.dev>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260215100302.136719-1-work@onurozkan.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_033344_827737_D929C628 
X-CRM114-Status: GOOD (  13.15  )
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

SWwgMTUvMDIvMjYgMTE6MDIsIE9udXIgw5Z6a2FuIGhhIHNjcml0dG86Cj4gU29tZSBhcm02NCBN
YWxpIEdQVSBEVCBub2RlcyBkZWZpbmUgbWFsaS1zdXBwbHkgYnV0Cj4gYXJlIG1pc3Npbmcgc3Jh
bS1zdXBwbHkuCj4gCj4gQXMgZGlzY3Vzc2VkIGluIFsxXSwgc3JhbS1zdXBwbHkgc2hvdWxkIGJl
IGV4cGxpY2l0bHkKPiBkZWZpbmVkIGZvciBhbGwgcmVsZXZhbnQgY29tcGF0aWJsZXMuIElmIHRo
ZXJlIGlzIG5vCj4gc2VwYXJhdGUgU1JBTSByYWlsLCBpdCBjYW4gcmVmZXJlbmNlIHRoZSBzYW1l
IHJlZ3VsYXRvcgo+IGFzIG1hbGktc3VwcGx5Lgo+IAo+IFRoaXMgY2hhbmdlIGFkZHMgdGhlIG1p
c3Npbmcgc3JhbS1zdXBwbHkgcHJvcGVydGllcyB0bwo+IGFmZmVjdGVkIERUIGZpbGVzLiBUaGlz
IGFsaWducyBEVHMgd2l0aCBleHBlY3RlZCByZWd1bGF0b3IKPiBtb2RlbGluZyBhbmQgYXZvaWRz
IHJlbHlpbmcgb24gaW1wbGljaXQgZmFsbGJhY2sgYmVoYXZpb3IuCj4gCj4gWzFdOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAyMTMxNTU5MzcuNmFmNzU3ODZAbmltZGEvCj4gCgpT
b3JyeSwgYXQgbGVhc3QgZm9yIE1lZGlhVGVrLCB0aGlzIG1ha2VzIG5vIHNlbnNlLiBUaGUgU1JB
TSBzdXBwbHkgb24gTVRLIHBsYXRmb3JtcwppcyBtYW5hZ2VkIGJ5IHRoZSBtZWRpYXRlay1yZWd1
bGF0b3ItY291cGxlciBkcml2ZXIsIGFzIGl0IHNjYWxlcyBpbiBhIHBlY3VsaWFyIHdheQppbiBy
ZWxhdGlvbiB0byB0aGUgR1BVIGNvcmUgc3VwcGx5LgoKQmVzaWRlcywgeW91J3JlIGNsb25pbmcg
dGhlIEdQVSBjb3JlIHN1cHBseSB0byB0aGUgc3JhbSBzdXBwbHksIHdoaWNoIGlzLCB3ZWxsLApz
aW1wbHkgd3JvbmcuLi4gYW5kIHlvdSdyZSBjaGFuZ2luZyBkZXZpY2V0cmVlcyBvZiBTb0NzIHRo
YXQgYXJlIHJ1bm5pbmcgb24KcGFuZnJvc3QgKG5vdCBvbiBwYW50aG9yKSwgd2hpY2ggd2lsbCBh
bnl3YXkgaWdub3JlIHRoZSBleGlzdGFuY2Ugb2YgdGhlIFNSQU0Kc3VwcGx5LgoKVGhhdCdzIGFs
c28gZ29pbmcgdG8gZ2l2ZSBhbGwgc29ydHMgb2YgYmluZGluZyB3YXJuaW5ncywgSSBndWVzcywg
YnV0IEkgZGlkbid0CmNoZWNrIGFueXdheS4KCldoaWxlIHRoZSBjaGFuZ2UgbWFrZXMgc2Vuc2Us
IGFzIGluLCBJIGFncmVlIHdpdGggTWFyayBpbiB0aGF0IHRoZSBTUkFNIG11c3QgaGF2ZQphIHBv
d2VyIHN1cHBseSBpbiBvcmRlciB0byBhY3R1YWxseSB3b3JrLi4uIEknbSBhZnJhaWQgdGhhdCB3
aGF0IHlvdSdyZSBkb2luZyBoZXJlCm5lZWRzIGEgYml0IG1vcmUgd29yayBiZWZvcmUgaXQgYmVj
b21lcyBhY2NlcHRhYmxlLgoKRXNwZWNpYWxseSAtIGZha2luZyB0aGUgdmdwdS1jb3JlIHJlZ3Vs
YXRvciAobm90IGp1c3Qgb24gTVRLLCBidXQgb24gYWxsKSB0byBhbHNvCmJlIHRoZSBzcmFtIHJl
Z3VsYXRvciBsZWFkcyB0byBjb25mdXNpb24gYW5kIGlzLCB3ZWxsLCBwbGFpbiB3cm9uZy4KCkNo
ZWVycywKQW5nZWxvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
