Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C10EE7718B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Dec 2024 20:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRaSPh+iOAD7WohHZOztY/qD+mh9CQjQ1AHBdoCtLHA=; b=sCm2ubCT2g5GiM
	QaDMyEDyBtUE7HcBxQGTiYgLkmVppixGkSygsa3uovcB4mWt4tzI0QOXEiD5pnXFvFPyYPlPBFRD9
	Zntk9WxvxqJbkKjVZVeae1iZgkgARv9hJuN9IuUaLQ1G3E6jwS4XBKvnybgXj+YD08E7eVQCyMVzu
	rtGcqmP3sCgLEAJavfPaenN/YV1s9XPQ4/rKhAs6035WIUaLMI/iNg9PNne0cwR3uHEf2eB9CQxr4
	Rv+z47TUr4craMi+cnihicQfJXmps9w6p1R6zKKcHc9Mdd07nLPb6hOAeYXbuPFYWOD+smGgPAM8n
	pKhqPl16NmVJ+I6PnQJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tP5sb-00000007O8R-46AA;
	Sat, 21 Dec 2024 20:15:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tP5sZ-00000007O82-1GLD
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Dec 2024 20:15:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B1E085C4A5E;
	Sat, 21 Dec 2024 20:14:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CEFC4CECE;
	Sat, 21 Dec 2024 20:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734812114;
	bh=z4JnE8zgEfvurcDdcikxT1vxEbZjRKjBv9lfLT5RGds=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CEZ8ixw6mWrLi80dTPFinmDEOtYAS0hzhi2p1+ls2ZhgSIs1DdJ+FT+B29gtoWCBy
	 b9p576LFCpi3ePKB+CE/qeqKbdqcWkvld8A2wc934h8QYwQ/7CotYkXO+L8d6UiaqV
	 lvHcHiLsxp4YfXn8YgIlRhbKoGvtOizvP4KtFu/X6v8wvptz2AX2c8PfPKOGAMYIM8
	 pFrwvFV+7DiuFJrQzqZMadt0xGEBh+1N+/jmYAXRtayQSbjV5Bkr9FswtNRzw6vRh7
	 XiuxVdbo6Q4b9jmxCtijWo+teQ3Zy4vln+G1XnBmj8rS3C/XtRUZkWfMnXjEf37Pv4
	 LYkVLm0+LqITA==
Message-ID: <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
Date: Sat, 21 Dec 2024 21:15:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241221_121515_551366_C870C4DB 
X-CRM114-Status: GOOD (  13.36  )
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

T24gMjAvMTIvMjAyNCAwNzo1MSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBLcnp5c3p0b2Ys
Cj4gCj4gQ291bGQgeW91IHBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsPwo+IChOb3QgZm9yIG1l
LCBidXQgZm9yIGV2ZXJ5b25lKQoKWW91IGhhdmUgbWUgaG93IG11Y2ggdGltZS4uLiAzIGRheXMg
dG8gcmVwbHk/Cgo+IAo+IEJlc3QgcmVnYXJkcywKPiAKPiAtLQo+IEZVS0FVTUkgTmFva2kKPiBS
YWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+IAo+IE9uIDEyLzE3LzI0IDEwOjEx
LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+PiBPbiAxMi8xNi8yNCAyMjozOCwgS3J6eXN6dG9mIEtv
emxvd3NraSB3cm90ZToKPj4+IE9uIDE2LzEyLzIwMjQgMTI6MzAsIEZVS0FVTUkgTmFva2kgd3Jv
dGU6Cj4+Pj4gVXNlIGNvbnNpc3RlbnQgbmFtZSB3aXRoIG90aGVyIHJlZ3VsYXRvcnMuIE5vIGZ1
bmN0aW9uYWwgY2hhbmdlLgo+Pj4+Cj4+Pj4gRml4ZXM6IDNkZGY1Y2RiNzdlNiAoImFybTY0OiBk
dHM6IHJvY2tjaGlwOiBhZGQgUmFkeGEgUk9DSyA1QyIpCj4+Pj4gU2lnbmVkLW9mZi1ieTogRlVL
QVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pj4+IC0tLQo+Pj4+IENoYW5nZXMgaW4gdjU6
Cj4+Pj4gLSBSZXdvcmQgY29tbWl0IG1lc3NhZ2UKPj4+PiBDaGFuZ2VzIGluIHY0Ogo+Pj4+IC0g
cmV3b3JkIGNvbW1pdCBtZXNzYWdlCj4+Pj4gQ2hhbmdlcyBpbiB2MzoKPj4+PiAtIG5vbmUKPj4+
PiBDaGFuZ2VzIGluIHYyOgo+Pj4+IC0gbmV3Cj4+Pj4gLS0tCj4+Pj4gwqAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzIHwgNiArKystLS0KPj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVj
LmR0cyBiL2FyY2gvIAo+Pj4+IGFybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01
Yy5kdHMKPj4+PiBpbmRleCA4NTU4OWQxYTZkM2IuLjYxZDc1YWI1MDNiMiAxMDA2NDQKPj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4+
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMK
Pj4+PiBAQCAtNzYsMTMgKzc2LDEzIEBAIHB3bS1mYW4gewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBwd21zID0gPCZwd20zIDAgNjAwMDAgMD47Cj4+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4+IC3CoMKg
wqAgcGNpZTJ4MWwyXzN2MzogcmVndWxhdG9yLXBjaWUyeDFsMi0zdjMgewo+Pj4+ICvCoMKgwqAg
dmNjM3YzX3BjaWUyeDFsMjogcmVndWxhdG9yLXZjYzN2M19wY2llMngxbDIgewo+Pj4KPj4+IE5v
LCBuZWl0aGVyIGV4cGxhaW5lZCwgbm9yIGNvcnJlY3QuIFNlZSBEVFMgY29kaW5nIHN0eWxlLgo+
Pj4KPj4+IFBsZWFzZSB1c2UgbmFtZSBmb3IgYWxsIGZpeGVkIHJlZ3VsYXRvcnMgd2hpY2ggbWF0
Y2hlcyBjdXJyZW50IGZvcm1hdAo+Pj4gcmVjb21tZW5kYXRpb246ICdyZWd1bGF0b3ItWzAtOV12
WzAtOV0nCj4+Pgo+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvdG9ydmFsZHMvbGludXguZ2l0LyAKPj4+IHRyZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9maXhlZC1yZWd1bGF0b3IueWFtbD8gCj4+PiBoPXY2LjEx
LXJjMSNuNDYKPj4KPj4gJ3JlZ3VsYXRvci1bMC05XXZbMC05XScgaXMgcHJlZmVycmVkLCBidXQg
J3JlZ3VsYXRvci1bMC05YS16LV0rJyBpcyBhbHNvIAo+PiBwZXJtaXR0ZWQsIHJpZ2h0Pwo+Pgo+
PiBpLmUuIHJlZ3VsYXRvci12Y2MzdjNfcGNpZTJ4MWwyIHNob3VsZCBiZSByZWd1bGF0b3ItdmNj
M3YzLXBjaWUyeDFsMgo+Pgo+Pgo+PiBPciwgc2hvdWxkIHdlIHJldmVydCBiZWxvdyBwYXRjaCBh
bmQgdXNlICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nPwo+Pgo+PiAgwqBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy8gCj4+IGFsbC8wYWU0MDQ5My05M2U5LTQwY2QtOWNhOS05OTBhZTA2NGYyMWFAZ21h
aWwuY29tLwo+Pgo+PiBJcyAncmVndWxhdG9yLTB2MCcgdmFsaWQ/CgpXaHkgd291bGQgaXQgYmUg
dmFsaWQ/IENhbiB5b3UgaGF2ZSByZWd1bGF0b3Igd2l0aCAwIHZvbHRzPwoKPj4gSXMgJ3JlZ3Vs
YXRvci0xMnYwJyBpbnZhbGlkPwoKUmVhZCB0aGUgYmluZGluZy4gSSBnYXZlIHlvdSB2ZXJ5IHNw
ZWNpZmljIGxpbmsuCgo+Pgo+PiBIb3cgc2hvdWxkIHdlIGhhbmRsZSBtdWx0aXBsZSAxdjgvM3Yz
LzV2MCByZWd1bGF0b3JzPwoKSnVzdCBhZGQgc3VmZml4LiBCdXQgdXN1YWxseSBtb3JlIHRoYW4g
b25lIHN1ZmZpeCwgdmNjKzN2MytwY2llXzJ4MWwyLAptZWFucyB5b3UgY3JlYXRlZCBhIHZlcnkg
c3BlY2lmaWMgbmFtZS4KCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
