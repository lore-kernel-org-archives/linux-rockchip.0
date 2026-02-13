Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B03EDF17E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 17:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kcprr1YxpyVmZdMYHsLpOUcNSn0C6mhf4yqUm8t2XbU=; b=TLhoRKteN92RmS
	GGsmS7sRuzktuuEh/y09nxdaqC1wiehwzEra+FVHI2zLRiWrNvUF9uwOmTwjvx8IwWLlSqaSqBJev
	vW+YDGsnQ1jCb2xwdN+jbuM+Q9GAS33aXUaCWLGO0aFsnNLRCtBkbvX/2yJks5LjCCUVrOme1E1/Z
	nAFVlIVvaleTd5n27amzV3s9dimwNXxSxqmDDYD4o5ospZVSlgc48CRFeBTtEoRNaWDt0Gk/Qa8Fi
	njSqrInvcMdrMe0iy+FuIsjiTprzPI4uOIcLo1HOqbRvYPLuuH0xD6pz1e/5G3j5MU6lpi2wANbfg
	YbAyZHb12LpyxvGRvzhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqwp4-00000003jRK-48L0;
	Fri, 13 Feb 2026 17:19:18 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqwp0-00000003jQb-0lJW
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Feb 2026 17:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1771003152;
 bh=WLNCPhcI2W5xrHq/Yf54FeNp8YmonAJeCVTYOXhtjrs=;
 b=BoYLbTqIYXUPvfORAy3FfySxSC2kdAOWDt3KrT98gEuiLhuHGmgrwsNZDTZTfTb2DYgykorUk
 1njok7hsXQHaDlWQUy4eLnGDi8qbY1ZMw+CYCrTeCcGYKj+JduYNhUW4v/j7958FIBQhSHwWDQy
 92Lr+5ydHuuo9EkcVP+g6ilrnqBnCw2lkYw6ME6hrSZa+y+enR0QNtrgwEcfumXiqsgyoDKXqKQ
 0MWphzGkzVH96OjfwrKqqO2U5yguwylz+ApmYvJgLWZEGOiLD86r9B5byTD0lnt/jrW1Wzmt6QG
 iFSLmSHZNPuqTvKlM2M4SslSUc73v62wpoQav94rqzKA==
X-Forward-Email-ID: 698f5d0c11dfcf99c4b0aeb1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <9083266d-2b18-4b7a-bc72-1d873edb7cdf@kwiboo.se>
Date: Fri, 13 Feb 2026 18:19:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to
 pcie30phy
To: MidG971 <midgy971@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, Claude <noreply@anthropic.com>
References: <20260213151452.535527-1-midgy971@gmail.com>
 <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_091914_565575_EC70675C 
X-CRM114-Status: GOOD (  23.30  )
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

SGksCgpPbiAyLzEzLzIwMjYgNToxMCBQTSwgU2hhd24gTGluIHdyb3RlOgo+IEhpCj4gCj4g5Zyo
IDIwMjYvMDIvMTMg5pif5pyf5LqUIDIzOjE0LCBNaWRHOTcxIOWGmemBkzoKPj4gVGhlIFBDSWUg
My4wIFBIWSByZXF1aXJlcyBpdHMgcG93ZXIgc3VwcGx5IHJlZ3VsYXRvciB0byBiZSBlbmFibGVk
Cj4+IGJlZm9yZSBpbml0aWFsaXphdGlvbi4gV2l0aG91dCB0aGUgcGh5LXN1cHBseSBwcm9wZXJ0
eSwgdGhlIFBIWQo+PiBkcml2ZXIgZG9lcyBub3QgZW5zdXJlIHRoZSByZWd1bGF0b3IgaXMgZW5h
YmxlZCwgY2F1c2luZyBTUkFNCj4+IGluaXRpYWxpemF0aW9uIHRvIHRpbWVvdXQgd2l0aCAibG9j
ayBmYWlsZWQiIGVycm9yczoKClRoaXMgaXMgaW5jb3JyZWN0LCBhcyBhbHJlYWR5IG1lbnRpb25l
ZCB0aGUgcmVmIGNsb2NrIGlzIG1vZGVsZWQgYXMgYQpyZWd1bGF0b3IsIGFuZCB0aGlzIHJlZ3Vs
YXRvciBpcyBib3RoIGJvb3Qtb24gYW5kIGFsd2F5cy1vbiBhbmQgc2hvdWxkCm5vdCBiZSByZWZl
cmVuY2VkIGFzIHRoZSBwaHktc3VwcGx5LCBhbmQgdGhlIHJlYXNvbiB3aHkgSSBkaWQgbm90IGRv
IGl0CmluIHRoZSBpbml0aWFsIGJvYXJkIGRldmljZSB0cmVlIHN1Ym1pc3Npb24uCgo+Pgo+PiAg
ICBwaHkgcGh5LWZlOGMwMDAwLnBoeS4xOiBwaHkgcG93ZXJvbiBmYWlsZWQgLS0+IC0xMTAKPj4g
ICAgcm9ja2NoaXAtc25wcy1wY2llMy1waHkgZmU4YzAwMDAucGh5OiBQQ0llM1BIWSBsb2NrIGZh
aWxlZCAweDY4OTAwMDAKPj4gICAgcm9ja2NoaXAtcGNpZSBmZTI4MDAwMC5wY2llOiBwaHkgaW5p
dCBmYWlsZWQ6IC0xMTAKCkhvdyBkaWQgeW91IG1hbmFnZSB0byBnZXQgdGhpcz8gRGlkIHlvdSB1
c2Ugd3JvbmcvYmFkIGJvb3QgZmlybXdhcmU/CgpQbGVhc2UgdHJ5IG1haW5saW5lIFUtQm9vdCBm
b3IgdGhlIFJPQ0sgM0IgdGFyZ2V0LCB0aGF0IHdpbGwgZW5zdXJlIHRoYXQKYm90aCB0aGUgcmVm
IGNsb2NrICJyZWd1bGF0b3IiIGFuZCB0aGUgdHdvIEV0aGVybmV0IHBoeXMgYXJlIHJlc2V0CmJl
Zm9yZSBlbnRlcmluZyBMaW51eCAob3Igb3RoZXIgT1MpIHVzaW5nIHRoZSBtYWlubGluZSBMaW51
eCBkZXZpY2UgdHJlZQpmb3IgdGhpcyBib2FyZC4KCj4+Cj4+IFRoaXMgcmVzdWx0cyBpbiBOVk1l
IGRldmljZXMgaW4gdGhlIE0uMiBzbG90IG5vdCBiZWluZyBkZXRlY3RlZC4KPj4KPj4gQWRkIHBo
eS1zdXBwbHkgcmVmZXJlbmNpbmcgdmNjM3YzX3BpNmNfMDMgcmVndWxhdG9yICh3aGljaCBjb250
cm9scwo+PiB0aGUgUEk2QyBQQ0llIGNsb2NrIGdlbmVyYXRvciBwb3dlciB2aWEgR1BJTzBfRDQp
IHRvIGVuc3VyZSBwcm9wZXIKPj4gcG93ZXIgc2VxdWVuY2luZyBkdXJpbmcgUEhZIGluaXRpYWxp
emF0aW9uLgoKQXMgYWxyZWFkeSBtZW50aW9uZWQsIHRoaXMgaXMgbm90IGEgcGh5IHJlZ3VsYXRv
ciBzbyBhZGRpbmcgaXQgYXMgYQpwaHktc3VwcGx5IGRvZXMgbm90IGNvcnJlY3RseSByZWZsZWN0
IHRoZSBoYXJkd2FyZS4KCj4+IEZpeGVzOiA4NDZlZjc3NDhmYTkgKCJhcm02NDogZHRzOiByb2Nr
Y2hpcDogQWRkIFJhZHhhIFJPQ0sgM0IiKQo+PiBTaWduZWQtb2ZmLWJ5OiBNaWRHOTcxIDxtaWRn
eTk3MUBnbWFpbC5jb20+Cj4+IENvLWRldmVsb3BlZC1ieTogQ2xhdWRlIDxub3JlcGx5QGFudGhy
b3BpYy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IENsYXVkZSA8bm9yZXBseUBhbnRocm9waWMuY29t
Pgo+IAo+IFNob3VsZCBwdXQgeW91ciBTT0IgYXQgbGFzdC4KPiAKPj4gLS0tCj4+ICAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAxICsKPj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPj4gaW5kZXggYzVmNjdkZDZkZmQ5Li5hMWIy
YzNkNGU1ZjYgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXJvY2stM2IuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXJvY2stM2IuZHRzCj4+IEBAIC00MDQsNiArNDA0LDcgQEAgJnBjaWUyeDEgewo+PiAgIH07
Cj4+Cj4+ICAgJnBjaWUzMHBoeSB7Cj4+ICsJcGh5LXN1cHBseSA9IDwmdmNjM3YzX3BpNmNfMDM+
Owo+IAo+IEFzIGEgZml4IHdoaWNoIG5lZWQgdG8gYmUgYmFja3BvcnRlZCwgaXQgbG9va3MgZmlu
ZSBmb3IganVzdCBvbmUtbGluZQo+IGNoYW5nZS4KCkkgZGlzYWdyZWUsIGFzIHlvdSBtZW50aW9u
IGJlbG93LCBhbmQgYXMgbWVudGlvbmVkIGluIGEgY29tbWVudCBpbiB0aGUKZGV2aWNlIHRyZWUs
IHRoZSByZWYgY2xrIGdlbmVyYXRvciBpcyBtb2RlbGVkIGFzIGEgcmVndWxhdG9yIHRoYXQgaXMK
Ym9vdC1vbiBhbmQgYWx3YXlzLW9uIHRoYXQgaXMgbm9ybWFsbHkgZW5hYmxlZCBieSBib290IGZp
cm13YXJlLgoKPiBIb3dldmVyLCB0aGUgd2hvbGUgY29tbWl0IG1lc3NhZ2UgaXMgbWlzbGVhZGlu
Zy4gcG93ZXIgc3VwcGx5IGZvcgo+IHBjaWUzMHBoeSBpcyBwb3dyZWQgdXAgd2l0aCBhbGwgb3Ro
ZXIgcGh5cycgd2hlbiBib290aW5nLCBmb3IgaW5zdGFuY2UsCj4gVVNCLCBvdGhlcndpc2UgYWxs
IElQIHVzaW5nIFBIWSBzaG91bGQgbm90IHdvcmssIG5vdCBqdXN0IFBDSWUuIFNvIAo+IGFjdHVh
bGx5IGl0J3Mgbm90IHRoZSBwb3dlciBidXQgdGhlIGlucHV0IHJlZmNsaywgYW5kIGFwcHJlbnRs
eSBwaTZjCj4gaXMgYSAxMDBNSHogY2xvY2sgZ2VuZXJhdG9yIHdoaWNoIHdhcyBkZXNpZ25lZCB0
byBiZSBhIHJlZ3VsYXRvciBieQo+IG1pc3Rha2UgaW4gdGhlIGZpcnN0IHBsYWNlLgo+IAo+IElm
IHlvdSB3b3VsZCBsaWtlIHRvIGNsZWFuIGl0IHVwIGxhdGVyLCB5b3UgY291bGQgdXNlIGEgCj4g
Z2F0ZWQtZml4ZWQtY2xvY2sgbGlrZToKCkFncmVlLCBpZiBhbnl0aGluZyBwbGVhc2UgcmUtbW9k
ZWwgdGhlIHJlZiBjbGsgcmVndWxhdG9yIGFzIGEKZ2F0ZWQtZml4ZWQtY2xvY2sgaW5zdGVhZCBv
ZiBhZGRpbmcgYW4gaW5jb3JyZWN0IHBoeS1zdXBwbHkuCgpBbmQgcGxlYXNlIHRyeSBtYWlubGlu
ZSBVLUJvb3QgdGFyZ2V0ZWQgZm9yIHlvdSBib2FyZCBpZiB5b3UgaW50ZW5kIG9uCnVzaW5nIG1h
aW5saW5lIExpbnV4IGZvciB5b3VyIGJvYXJkLCBzaG91bGQgbW9zdCBsaWtlbHkgZml4IHlvdXIg
UENJZQppc3N1ZS4KClJlZ2FyZHMsCkpvbmFzCgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LXJvY2tjaGlwLzM1ZTk3YTQxLWI4OGItZjUyNi0zNTFmLWQ0YzVmNzBlZTRlOUByb2Nr
LWNoaXBzLmNvbS9ULyN1Cj4gCj4gCj4+ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+Pgo+
PiAtLQo+PiAyLjM5LjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
