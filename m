Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88980C83F1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 07:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG5GWyR5jHE/CpWIfncDs79vt5HnJkDhwWI/AvuKkrg=; b=lemANVJS6wOfeD
	5C58yjll4GwZNgKz5t37oD+8TO8hPOd1wQO/iNwicp6FrkjgPt/UcOPsKL5vTrW/sqebAkNyCKRgO
	uUPN0EGyulFrIHLQZ3EoWJgZ60l+191Lm9PPjjwgm3Zb0XWBum5qZpRmSIDBLybtWni5qZrEinikf
	xHYeCnHKEdmg9XpxsLaCd2SeUswLDhmVjhxt1WrsrqpcZKJZqRse+V8btWs9GWkX2ssqTfux73gER
	t7zH3NkJXiUPpWpOlra9oY3RqmCGa8D127BtZA6KMYRAoz/CjTXksEUkpJ++w79BRvOldz8e3qwpY
	8TNHFNUJxo8D0Qc2ZaYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaSJ-00000004P7L-0OkO;
	Tue, 15 Jul 2025 07:52:03 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaPp-00000004Ohj-0PT9;
	Tue, 15 Jul 2025 07:49:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1752565767; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NoJYzzJe6uSZcEDfrXvjfpzNtylciNSxwU1s8hfSquSE1iInmQsP0Wkr4Qn+GVfVpQYk1hCeCDZBZjDNBbJyCkDukZ3XMJSdt4gxquuM1+OQIsm2QFHbiGrpxUH1SLraz2w0/PMNg4Pt9XaOzCLp5QFk479esVTzBYmutNUnR0s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1752565767; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=2r1/pjCbMq5HqeLfwNFLm/Rk07CuwWDFZjEVftpzoSw=; 
	b=U7gD6Qtvk0OEp1kOcGqqkqbfiuf6gHCnJ7oB70s9290ucaNkVwqE2WPS07RwIccZ5VbmKe2664d/gI4RosCca7t0eMrIGUzkCM4nYymYOlc7x1XY4zQLz5y4RlG71KKt0JrMdwlozaWXa0RWBGdShnozHEc8oalCXFeuf4LQKZw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752565766;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=2r1/pjCbMq5HqeLfwNFLm/Rk07CuwWDFZjEVftpzoSw=;
	b=jt2s9hHTKmOXOyVv2F4xNRTf8t6Nux5aETLG7G5L5983lF3HRrGMfxXji0zAqlwc
	zlhLU2OybUrbgBm9BD8OOO04cuUTXoyO5Ubak/QFf1YpAQVNiD/aSQwEXqCjfHVAsoO
	+Jt7+MzRWZUHQsw773veKyFlDRbIGTTD8XlnAA9Y=
Received: by mx.zohomail.com with SMTPS id 1752565763947198.70326485853093;
	Tue, 15 Jul 2025 00:49:23 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Qu Wenruo <wqu@suse.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: PWM fan control not working with Rock5B and upstream kernel
Date: Tue, 15 Jul 2025 09:49:21 +0200
Message-ID: <5271313.GXAFRqVoOG@workhorse>
In-Reply-To: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
References: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_004929_231171_63AD0942 
X-CRM114-Status: GOOD (  23.20  )
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

T24gVHVlc2RheSwgMTUgSnVseSAyMDI1IDA2OjEwOjQ1IENlbnRyYWwgRXVyb3BlYW4gU3VtbWVy
IFRpbWUgUXUgV2VucnVvIHdyb3RlOgo+IEhpLAo+IAo+IE15IFJvY2s1QiBib2FyZCBpcyBydW5u
aW5nIGVkay1yazM1ODggZmlybXdhcmUgYW5kIChhbG1vc3QpIHVwc3RyZWFtIAo+IGtlcm5lbCAo
Ni4xNC42IGtlcm5lbCBmcm9tIEFyY2hsaW51eEFSTSksIHVzaW5nIHVwc3RyZWFtIGR0YnMgKHRo
ZSAKPiBmaXJtd2FyZSBpcyBhbHNvIHN3aXRjaGVkIHRvIGRldmljZS10cmVlIGJvb3QgbW9kZSkK
CkNvbnNpZGVyIHVzaW5nIG1haW5saW5lIHUtYm9vdCBpbnN0ZWFkLiBJIHRoaW5rIHRoZSBvbmx5
IG9uZXMgd2hvCmluc2lzdCBvbiBlZGsyIGZvcmtzIGFyZSB0aGUgQlNEIHBlb3BsZSwgYXMgdGhl
eSBkb24ndCB3YW50IHRvCndyaXRlIGRldmljZSBkcml2ZXJzLiBMaW51eCBoYXMgZHJpdmVycywg
c28gaW52ZW50aW5nIFVFRkkgYWJzdHJhY3Rpb25zCmZvciB0aGluZ3MgcHJvYmFibHkgb25seSBt
YWtlcyB5b3VyIGV4cGVyaWVuY2Ugd29yc2UuCgpLZXJuZWwgNi4xNCBpcyBhbHNvIHF1aXRlIGEg
Yml0IGJlaGluZCBhbmQgbm90IHN1cHBvcnRlZCBieSB1cHN0cmVhbSwKeW91J2xsIGxpa2VseSBo
YXZlIGEgYmV0dGVyIGV4cGVyaWVuY2UgY29tcGlsaW5nIGEga2VybmVsIHlvdXJzZWxmCnVzaW5n
IGRlZmNvbmZpZyBhcyB0aGUgYmFzZS4gQUxBUk0gbGlrZXMgdG8gcm9sbCBkaWNlIHdoZW4gaXQg
Y29tZXMgdG8KdGhlaXIga2VybmVsIGNvbmZpZyBhbmQgdGhlbiBub3QgdXBkYXRlIHRoZWlyIGtl
cm5lbHMgZm9yIGhhbGYgYSB5ZWFyLgoKPiAKPiBCZWZvcmUgdGhhdCBJJ20gdXNpbmcgQUNQSSBt
b2RlIHRodXMgbm8gUE1XIHN1cHBvcnQsIGJ1dCB0aGUgZmlybXdhcmUncyAKPiBmYW4gY29udHJv
bCBpcyB3b3JraW5nIHByb3Blcmx5IGFsdGhvdWdoIHJ1bm5pbmcgYXQgYSBmaXhlZCBycG0gc2V0
dGluZy4KPiAKPiBCdXQgYWZ0ZXIgc3dpdGNoaW5nIHRvIHRoZSB1cHN0cmVhbSBrZXJuZWwgYW5k
IGRldmljZS10cmVlIG1vZGUsIHRoZSBwd20gCj4gZmFuIGNvbnRyb2wgbmV2ZXIgd29ya3MuCgpD
aGVjayAvc3lzL2NsYXNzL3B3bSwgZXhwb3J0IHRoZSBwd20gYXNzb2NpYXRlZCB3aXRoIHRoZSBm
YW4gaW4gdGhlIERULAp0aGVuIG1hbnVhbGx5IHNldCBhIHBlcmlvZCBhbmQgZHV0eSBjeWNsZSB0
aGF0IGNvcnJlc3BvbmRzIHRvIGEgcGVyaW9kCnRoZSBmYW4gc3VwcG9ydHMuIElmIGl0IGRvZXNu
J3Qgc3BpbiwgdGhlbiB0aGUgcHJvYmxlbSBpcyBsaWtlbHkgdGhhdAp0aGVyZSBpcyBhIGRpc2Nv
bm5lY3QgYmV0d2VlbiB3aGF0IExpbnV4IHRoaW5rcyB0aGUgUFdNIHNpZ25hbCBpcyBhbmQKd2hh
dCBpdCBhY3R1YWxseSBpcy4KCkknbSBndWVzc2luZyB0aGUgcHJvYmxlbSBoZXJlIGlzIHRoYXQg
eW91ciBmaXJtd2FyZSBvZiBjaG9pY2UgbGVhdmVzCnRoZSBjbG9jayB0cmVlIGluIGEgYml0IG9m
IGEgc3RhdGUsIGFuZCB0aGUgUFdNIGlzIGNsb2NrZWQgZnJvbQpzb21ldGhpbmcgdGhhdCdzIGlu
Y29ycmVjdC4gSWYgaXQncyBub3QgdGhlIHJpZ2h0IGNsb2NrIHBlcmlvZCBmb3IKdGhlIGZhbiwg
aXQgd29uJ3Qgc3Bpbi4KCkEgbG9naWMgYW5hbHl6ZXIgd291bGQgYmUgYWJsZSB0byB0ZWxsIHlv
dSBkZWZpbml0aXZlbHkgd2hldGhlciB0aGF0J3MKdGhlIGNhc2UuCgo+IAo+IGBzZW5zb3JzYCBj
b21tYW5kIGRldGVjdHMgdGhlIGZhbiwgYW5kIHRoZSBwd20gc2VlbXMgdG8gcHJvcGVybHkgCj4g
Zm9sbG93aW5nIHRoZSB0ZW1wZXJhdHVyZSwgYnV0IHRoZSBwaHlzaWNhbCBmYW4ganVzdCBkbyBu
b3Qgc3BpbiBhdCBhbGw6Cj4gCj4gY2VudGVyX3RoZXJtYWwtdmlydHVhbC0wCj4gQWRhcHRlcjog
VmlydHVhbCBkZXZpY2UKPiB0ZW1wMTogICAgICAgICs4MC40wrBDCj4gCj4gYmlnY29yZTJfdGhl
cm1hbC12aXJ0dWFsLTAKPiBBZGFwdGVyOiBWaXJ0dWFsIGRldmljZQo+IHRlbXAxOiAgICAgICAg
Kzg0LjHCsEMKPiAKPiBwYWNrYWdlX3RoZXJtYWwtdmlydHVhbC0wCj4gQWRhcHRlcjogVmlydHVh
bCBkZXZpY2UKPiB0ZW1wMTogICAgICAgICs4MS4zwrBDCj4gCj4gcHdtZmFuLWlzYS0wMDAwCj4g
QWRhcHRlcjogSVNBIGFkYXB0ZXIKPiBwd20xOiAgICAgICAgICAgIDEyOCUgIE1BTlVBTCBDT05U
Uk9MIDw8PAo+IAo+IGdwdV90aGVybWFsLXZpcnR1YWwtMAo+IEFkYXB0ZXI6IFZpcnR1YWwgZGV2
aWNlCj4gdGVtcDE6ICAgICAgICArNzkuNcKwQwo+IAo+IGxpdHRsZWNvcmVfdGhlcm1hbC12aXJ0
dWFsLTAKPiBBZGFwdGVyOiBWaXJ0dWFsIGRldmljZQo+IHRlbXAxOiAgICAgICAgKzgyLjLCsEMK
PiAKPiBiaWdjb3JlMF90aGVybWFsLXZpcnR1YWwtMAo+IEFkYXB0ZXI6IFZpcnR1YWwgZGV2aWNl
Cj4gdGVtcDE6ICAgICAgICArODMuMsKwQwo+IAo+IAo+IEknbSB3b25kZXJpbmcgaXMgdGhpcyBh
IGJ1ZyBpbiB0aGUgdXBzdHJlYW0gUFdNIGNvZGUgb3Igc29tZXRoaW5nIGVsc2UgCj4gaXMgbWlz
c2luZyBwcmV2ZW50aW5nIHRoZSBmYW4gZnJvbSB3b3JraW5nIHByb3Blcmx5LgoKVGhlIHVwc3Ry
ZWFtIFBXTSBjb2RlIGRlZmluaXRlbHkgd29ya3MsIGFuZCBoYXMgd29ya2VkIGZvciBldmVyeQpS
b2NrY2hpcCBkZXZpY2Ugc28gZmFyLiBUaGUgUFdNIGZhbiBvbiBteSBST0NLIDVCIChtYWlubGlu
ZSB1LWJvb3QsCm1haW5saW5lIGtlcm5lbCwgbWFpbmxpbmUgVEYtQSkgd29ya3MganVzdCBmaW5l
LgoKPiAKPiBUaGFua3MsCj4gUXUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
