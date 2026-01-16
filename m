Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF5ED47CC3
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfpyqLl6CNVgbJoZgTGs/u7TjENGHpD3Z1zHtsnLfx4=; b=lfmCwvrx5NfxHO
	iPr4rIUdMR+Nrv4Ogo2OfkjFtE0PVFFczqc7zM+y4BLXoamRBL/GwAZsne/LF3NVvp1+jC5iBny0P
	tCC4j3v+UPuEVx0zthR/JIRHanrc37S45h40bT2lIxxKjmNWyTQzJ4V9uaEkpUOo5QWEo8XALOAAF
	sMnjvNGgMAVI9oJ1329y147PMB6h9JCdUOMD2yxF3VNOZXY4v6GfTufCSCPHvSH3eBe2RP3iduGwd
	Er1Hm9pAaFBFHfbpmt7IcAbbXGGsGjMZORVcab9ljmsmaqMEF9aX3INjYlVCWMvJgVQixdPJAYFeO
	wpomiToc12AhgUkwcMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggwZ-0000000Dwco-0SFP;
	Fri, 16 Jan 2026 10:20:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggwW-0000000DwcL-0h4b;
	Fri, 16 Jan 2026 10:20:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3FCA060160;
	Fri, 16 Jan 2026 10:20:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA4D2C116C6;
	Fri, 16 Jan 2026 10:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768558835;
	bh=1JZLMS1HVsbd6aWEx+GimXeEmDseHFvWx560rTN8Xww=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ensECWlLD29cMvgjZm38/hPpVFtsmbJMXILx0Yqwpbfj6HPK6Fit3bcD4dSr0M+D1
	 qWfg1/ZUqaSFWbWmwx5gJV6qHCTYrmKct3GvuoV+CjWoY5eT/fMiLlWWOPLEhg3IkB
	 l4FfKaakjdSiQ5CKrXG9UmlkKUq9I5o/SdeXxZMPuGjn/nko7hpNsNVObkClete8AX
	 +ajcUjEPaNhohL73gub37pmu/gH4VPr2scgaPS64ZkMiTy1kz4Ox9mxrEIkIa421tl
	 gAMAqzimBonxCmxl1W+mVcO7vmlPbETgQMfmGAaSFtSZLZRpLDs0LlE/6cM5hhVqEa
	 opMEKMZpubsog==
Message-ID: <8ba68d9c-5cd1-4616-998e-2ff5d3440984@kernel.org>
Date: Fri, 16 Jan 2026 11:20:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add
 rockchip,disable-runtime-pm
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260111-melodic-chestnut-coua-73e6ec@quoll>
 <CAGJh8eAWNe0JzC7BdA2Rw5etCYgGq3O5Zdgk9zSzsLNv18k=ag@mail.gmail.com>
 <1791168.izSxrag8PF@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <1791168.izSxrag8PF@diego>
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

T24gMTYvMDEvMjAyNiAxMDo0MywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgTWFyY28sCj4g
Cj4gQW0gTW9udGFnLCAxMi4gSmFudWFyIDIwMjYsIDAwOjUxOjI0IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgTWFyY28gU2NoaXJybWVpc3RlcjoKPj4gT24gU3VuLCBKYW4g
MTEsIDIwMjYgYXQgMTA6NDHigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Pj4+ICsgIHJvY2tjaGlwLGRpc2FibGUtcnVudGltZS1wbToKPj4+PiArICAg
IHR5cGU6IGJvb2xlYW4KPj4+PiArICAgIGRlc2NyaXB0aW9uOgo+Pj4+ICsgICAgICBJbmhpYml0
IHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4gVGhpcyBpcyByZXF1aXJlZCBmb3IgYm9hcmRzCj4+
Pgo+Pj4gV2hhdCBpcyBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQ/IExpa2UgTGludXggUE0/IElm
IGFueXRoaW5nIHBocmFzZWQKPj4+IGxpa2UgdGhhdCBpcyBpdCBpcyBhIGNsZWFyIG5vIGdvLiBC
aW5kaW5ncyBkZXNjcmliZSBoYXJkd2FyZS4KPj4KPj4gWW91IGFyZSByaWdodC4gVGhpcyByZWZl
cnMgdG8gdGhlIExpbnV4IFBNIHN1YnN5c3RlbSBhbmQgZGVzY3JpYmVzCj4+IHNvZnR3YXJlIGJl
aGF2aW9yLgo+Pgo+Pj4+ICsgICAgICB3aGVyZSB0aGUgYnVzIHRpbWluZyBiZWNvbWVzIHVuc3Rh
YmxlIGlmIHRoZSBjb250cm9sbGVyIGlzCj4+Pj4gKyAgICAgIHJ1bnRpbWUtc3VzcGVuZGVkLgo+
Pj4KPj4+IFlvdSBkZXNjcmliZWQgdGhlIGRlc2lyZWQgTGludXggZmVhdHVyZSBvciBiZWhhdmlv
ciwgbm90IHRoZSBhY3R1YWwKPj4+IGhhcmR3YXJlLiBUaGUgYmluZGluZ3MgYXJlIGFib3V0IHRo
ZSBsYXR0ZXIsIHNvIGluc3RlYWQgeW91IG5lZWQgdG8KPj4+IHJlcGhyYXNlIHRoZSBwcm9wZXJ0
eSBhbmQgaXRzIGRlc2NyaXB0aW9uIHRvIG1hdGNoIGFjdHVhbCBoYXJkd2FyZQo+Pj4gY2FwYWJp
bGl0aWVzL2ZlYXR1cmVzL2NvbmZpZ3VyYXRpb24gZXRjLgo+Pgo+PiBPbiB0aGlzIGJvYXJkLCB0
aGUgYnVzIHRpbWluZyBiZWNvbWVzIHVuc3RhYmxlIHdoZW4gd2FraW5nIHVwIGZyb20KPj4gYSBs
b3ctcG93ZXIgc3RhdGUuIFRoaXMgY2F1c2VzIGEgY29uc3RhbnQgcmV0cmFpbmluZyBsb29wLgo+
IAo+IEFzIHlvdSBkZXNjcmliZSBpdCBoZXJlLCBpdCBkb2VzIHNvdW5kIGxpa2UgYSByZWFsIGhh
cmR3YXJlIHF1aXJrICh3aGljaAo+IHdvdWxkIGJlIGEgZHQtdGhpbmcpIC4uLiBpdCdzIGp1c3Qg
dGhhdCB0aGUgcHJldmlvdXMgd29yZGluZyBkZXNjcmliZXMgaXQKPiBpbiBhIG5vbi1oYXJkd2Fy
ZSB3YXkgLSBhcyBLcnp5c3p0b2YgcG9pbnRlZCBvdXQgaW4gaGlzIHJlcGx5LgoKSSBjYW4gYWxz
byBpbWFnaW5lIHRoYXQgeW91IG1pc3Mgc29tZSByZWdpc3RlciBwcm9ncmFtbWluZywgY2xvY2tz
IG9yCnJlZ3VsYXRvciB2b2x0YWdlLCBzbyAidW5zdGFibGUiIGhhcyB0byBiZSBhY3R1YWxseSBh
bmFseXplZC4KCllvdSBzaG91bGQgbm90IHJlYWxseSBkaXNhYmxlIGEgTGludXggZHJpdmVyIGZl
YXR1cmUganVzdCBiZWNhdXNlIHlvdXIKaGFyZHdhcmUgaGFzIGlzc3Vlcy4gQW5kIGV2ZW4gdGhl
biBpdCdzIG1vcmUgbGlrZWx5IHNvbWUgTU1DIGNvcmUgcGFydCwKbm90IGVudGlyZSBydW50aW1l
IFBNLCBpcyBwcm9ibGVtYXRpYyBoZXJlLgoKPiAKPiAKPj4gSSB3aWxsIG1vdmUgdGhpcyBsb2dp
YyBpbnRvIHRoZSBkcml2ZXIgYW5kIGhhbmRsZSBpdCBhcyBhIGJvYXJkIHNwZWNpZmljCj4+IHF1
aXJrIHVzaW5nIG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgiZnJpZW5kbHlhcm0sbmFub3BpLXI3
NnMiKQo+PiBpbnN0ZWFkLiBJIHdpbGwgc2VuZCBhIHYyLgo+IAo+IFRoaXMgd29uJ3QgZmx5IEkg
dGhpbmsuIFdlIGNhbid0IHJlYWxseSBoYXZlIGEgKHBvc3NpYmx5IGxvbmcpIGxpc3Qgb2YKPiAK
PiBJZiAoYm9hcmRBKSBmb28oKTsKPiBpZiAoYm9hcmRCKSBiYXIoKTsKPiBpZiAoYm9hcmRDKSBi
YXMoKTsKPiAKPiBUaGF0IHJlYWxseSBpcyBub3Qgc3VzdGFpbmFibGUgYW5kIG1vc3QgbGlrZWx5
IHdvbid0IGdldCBhY2NlcHRlZC4KClllcAoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
