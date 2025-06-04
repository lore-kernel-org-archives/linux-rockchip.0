Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFCC2C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 19:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlDrV+wd4aFa7RS/06L/UxvrbgIgkIZnENUsYwyU5OA=; b=EMxjsDSL9bxbKc
	4MFgs0SZKIPCo5A+zCBKZJzyaj3h+67Zy3uqqCzul3Pj7ZHcMHcDHttPgQJvoeN1tdcsD/5n9gavu
	5Y/bf9+p/F7QjX0Xm875q9NUTFuzaThuH9S9Hrhtz5zu4DHAyzBztdpmh1GCpSvgmNgbGCE7ZFkwR
	7wonGBjgRLqRGfMXCFpjX+mjOrpya5nnLzB5ajoeSfnPK28rPIHf9tRJMixgw/0SbMjMyNQ3MdJgA
	OdiEmaNH3Oyqzb9xYV7ECRKDtPOPr8A9vlWXJDXPkKwcML+1OCUzbnhPxIF1RlT3HrydJ0/u9SVg7
	1bMrQyiWbFaq/Au58d8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMtkJ-0000000E5Yn-0Dln;
	Wed, 04 Jun 2025 19:25:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMtiD-0000000E5NF-1qG3;
	Wed, 04 Jun 2025 19:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=kXSt0WPyJdE3zC65/zXJeztOuAlaCmnXB8Js7D/bSQ8=; b=fta1v/rACJqp9qtaLikdjLLIwm
	1CDm81RFQ/pnXO5y/7cOv0+XRB3rEF9y11HN3k5mK1H00nTtHnfQ9bgj0Z3exEwHN3zDJqxLEgh5P
	dy5cIAKHnvknxkWPc5LG7ruRQ2GXufpOAiNawSIKJcKab9fphsA8n3WcRb1rSEKT0e1bG1bGiaSA0
	7HXwb/AOj0ez0xNVUS7Du9zqiGhGCx22KOIzEt4c15xZMmcd+qbWyQR5egmu/R5QKUbwJWQncmGtM
	9JgzXjsZGMDSRSl3oHNezfcTEFMn/+cioGtJtDL0dHat/1duijnFgJA/3kqnuY4T0Y76XLaw9xJp2
	S5M5zi4g==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMti9-00000000zY3-3yWf;
	Wed, 04 Jun 2025 19:23:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749065007; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z5hbGG59HyjhN4Hd22Jpqs9Ye08p54dElHM8fk57RTIt4kGKjVEGHtkUyWMBAReaKMfcONZOSQCMYf4szBIykeFhqzTLGsi9r8P/ysQMPxjCO/cB6TiRQAdGgwciuvjLOKXoyRfuKHV8y0bWLZwUVZ4W3w7WeCmaedbInRAgSZ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749065007; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kXSt0WPyJdE3zC65/zXJeztOuAlaCmnXB8Js7D/bSQ8=; 
	b=CzddvxqDRy00+fEBSWx2h9T1AYu1jW9D8OhJd9Of+OBPljLjFP8PbUUFrOMCk3/LSqpCBW47tqzXJ8sDF3DIKmDsbQP1/aKlorOBpIM6zFE29ej5Hu9np+5G2w8p7QrW7UTlnhBYbuEctpIy0kefb7vCPmVyde3wXIOTu8Z3wNo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749065007;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=kXSt0WPyJdE3zC65/zXJeztOuAlaCmnXB8Js7D/bSQ8=;
	b=JY/fdBxk20i7dBX4AV6BwwBbylRllfJ7eG4LIG3LUuyWeXebMSn2xFRv8XQ+10Eq
	FJ23Odtpp3AEdcchXi3utD9u5+rhKjRCTjVhQm7MObnOVGREGod7+14LS7JqWutepCm
	EyxkkBSXrY2dT0Qrg4FYgryIZVRmuoXSznnfbXe4=
Received: by mx.zohomail.com with SMTPS id 1749065006388272.56864063119986;
	Wed, 4 Jun 2025 12:23:26 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
Date: Wed, 04 Jun 2025 21:23:23 +0200
Message-ID: <23482965.EfDdHjke4D@workhorse>
In-Reply-To: <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_202342_525927_13C5027D 
X-CRM114-Status: GOOD (  29.08  )
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

T24gV2VkbmVzZGF5LCA0IEp1bmUgMjAyNSAyMToxMjozNSBDZW50cmFsIEV1cm9wZWFuIFN1bW1l
ciBUaW1lIEFsZXhleSBDaGFya292IHdyb3RlOgo+IE9uIFdlZCwgSnVuIDQsIDIwMjUgYXQgMTA6
MzjigK9QTSBOaWNvbGFzIEZyYXR0YXJvbGkKPiA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9y
YS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZXNkYXksIDMgSnVuZSAyMDI1IDE5OjAxOjEzIENl
bnRyYWwgRXVyb3BlYW4gU3VtbWVyIFRpbWUgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IExp
c3QgYm90aCBDUFUgc3VwcGx5IHJlZ3VsYXRvcnMgd2hpY2ggZHJpdmUgdGhlIGxpdHRsZSBhbmQg
YmlnIENQVQo+ID4gPiBjbHVzdGVycywgcmVzcGVjdGl2ZWx5LCBzbyB0aGF0IGNwdWZyZXEgY2Fu
IHBpY2sgdGhlbSB1cC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3Yg
PGFsY2hhcmtAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hp
cC9yazM1NzYtYXJtc29tLXNpZ2U1LmR0cyAgICAgIHwgMjggKysrKysrKysrKysrKysrKysrKysr
Kwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdl
NS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUu
ZHRzCj4gPiA+IGluZGV4IGIwOWU3ODljNzVjNDdmZWM3Y2Y3ZTk4MTBhYjBkY2NhMzJkOTQwNGEu
LmQ5YzEyOWJlNTVhMGQ5OTdlMDRlNmQ2NzdjZGM5OGZiNTAzNTM0MTggMTAwNjQ0Cj4gPiA+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdlNS5kdHMK
PiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtYXJtc29tLXNp
Z2U1LmR0cwo+ID4gPiBAQCAtMjA3LDYgKzIwNywyMiBAQCB2Y2NfM3YzX3Vmc19zMDogcmVndWxh
dG9yLXZjYy11ZnMtczAgewo+ID4gPiAgICAgICB9Owo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gKyZj
cHVfYjAgewo+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2JpZ19zMD47Cj4gPiA+
ICt9Owo+ID4gPiArCj4gPiA+ICsmY3B1X2IxIHsKPiA+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwm
dmRkX2NwdV9iaWdfczA+Owo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArJmNwdV9iMiB7Cj4gPiA+
ICsgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ID4gK307Cj4gPiA+ICsK
PiA+ID4gKyZjcHVfYjMgewo+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2JpZ19z
MD47Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICAmY29tYnBoeTBfcHMgewo+ID4gPiAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gPiA+ICB9Owo+ID4gPiBAQCAtMjE1LDYgKzIzMSwxOCBAQCAmY3B1
X2wwIHsKPiA+ID4gICAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9saXRfczA+Owo+ID4gPiAg
fTsKPiA+ID4KPiA+ID4gKyZjcHVfbDEgewo+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRf
Y3B1X2xpdF9zMD47Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmY3B1X2wyIHsKPiA+ID4gKyAg
ICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9saXRfczA+Owo+ID4gPiArfTsKPiA+ID4gKwo+ID4g
PiArJmNwdV9sMyB7Cj4gPiA+ICsgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbGl0X3MwPjsK
PiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gICZnbWFjMCB7Cj4gPiA+ICAgICAgIHBoeS1tb2RlID0g
InJnbWlpLWlkIjsKPiA+ID4gICAgICAgY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7Cj4gPiA+Cj4g
PiA+Cj4gPgo+ID4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0
dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gPiBUZXN0ZWQtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8
bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gPgo+ID4gPiBzbyB0aGF0IGNwdWZy
ZXEgY2FuIHBpY2sgdGhlbSB1cC4KPiA+Cj4gPiBGd2l3LCBldmVuIHdpdGhvdXQgdGhpcyBwYXRj
aCB0aGV5J3JlIHBpY2tlZCB1cCBieSBjcHVmcmVxLWR0IGZvciBtZToKPiA+Cj4gPiAgICAgdXNl
ckB0cml4aWU6fiQgc3VkbyBjcHVwb3dlciBmcmVxdWVuY3ktaW5mbwo+ID4gICAgICAgYW5hbHl6
aW5nIENQVSA1Ogo+ID4gICAgICAgZHJpdmVyOiBjcHVmcmVxLWR0Cj4gPiAgICAgICBDUFVzIHdo
aWNoIHJ1biBhdCB0aGUgc2FtZSBoYXJkd2FyZSBmcmVxdWVuY3k6IDQgNSA2IDcKPiA+ICAgICAg
IENQVXMgd2hpY2ggbmVlZCB0byBoYXZlIHRoZWlyIGZyZXF1ZW5jeSBjb29yZGluYXRlZCBieSBz
b2Z0d2FyZTogNCA1IDYgNwo+ID4gICAgICAgbWF4aW11bSB0cmFuc2l0aW9uIGxhdGVuY3k6IDQw
LjAgdXMKPiA+ICAgICAgIGhhcmR3YXJlIGxpbWl0czogNDA4IE1IeiAtIDIuMzAgR0h6Cj4gPiAg
ICAgICBhdmFpbGFibGUgZnJlcXVlbmN5IHN0ZXBzOiAgNDA4IE1IeiwgNjAwIE1IeiwgODE2IE1I
eiwgMS4wMSBHSHosIDEuMjAgR0h6LCAxLjQyIEdIeiwgMS42MSBHSHosIDEuODAgR0h6LCAyLjAy
IEdIeiwgMi4yMSBHSHosIDIuMzAgR0h6Cj4gPiAgICAgICBhdmFpbGFibGUgY3B1ZnJlcSBnb3Zl
cm5vcnM6IG9uZGVtYW5kIHVzZXJzcGFjZSBwZXJmb3JtYW5jZSBzY2hlZHV0aWwKPiA+ICAgICAg
IGN1cnJlbnQgcG9saWN5OiBmcmVxdWVuY3kgc2hvdWxkIGJlIHdpdGhpbiA0MDggTUh6IGFuZCAy
LjMwIEdIei4KPiA+ICAgICAgICAgICAgICAgICAgICAgICBUaGUgZ292ZXJub3IgInNjaGVkdXRp
bCIgbWF5IGRlY2lkZSB3aGljaCBzcGVlZCB0byB1c2UKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICB3aXRoaW4gdGhpcyByYW5nZS4KPiA+ICAgICAgIGN1cnJlbnQgQ1BVIGZyZXF1ZW5jeTogMS42
MSBHSHogKGFzc2VydGVkIGJ5IGNhbGwgdG8gaGFyZHdhcmUpCj4gPiAgICAgdXNlckB0cml4aWU6
fiQgdW5hbWUgLWEKPiA+ICAgICBMaW51eCB0cml4aWUgNi4xNS4wLTExMTczLWc1NDZiMWM5ZTkz
YzIgIzIgU01QIFBSRUVNUFQgV2VkIEp1biAgNCAyMDozMjo1MiBDRVNUIDIwMjUgYWFyY2g2NCBH
TlUvTGludXgKPiAKPiBGcmVxdWVuY2llcyBhcmUgZmluZSwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhl
IG1vcmUgcG93ZXIgaHVuZ3J5IGJpZyBDUFUKPiBjbHVzdGVyIGdldHMgYW55IHZvbHRhZ2Ugc2Nh
bGluZyB3aXRob3V0IGl0LiBPbmNlIEkgdHJ5IHRvIGxvYWQgdGhlCj4gc3lzdGVtIGVub3VnaCB0
aGF0IHRoZSBnb3Zlcm5vciBkZWNpZGVzIHRvIGJ1bXAgdGhlIGJpZyBjbHVzdGVyCj4gZnJlcXVl
bmN5IHVwLCB0aGUgcmVndWxhdG9yIHN0YXlzIGF0IDg1MDAwMCBtaWNyb3ZvbHRzLCBjYXVzaW5n
IHJhbmRvbQo+IHJlYm9vdHMgd2hlbiB0aGUgd2hvbGUgY2x1c3RlciBzdGFydHMgc3RhcnZpbmcu
IFdpdGggdGhlIHBhdGNoLAo+IHZvbHRhZ2Ugb3NjaWxsYXRlcyBiZXR3ZWVuIDcwMDAwMC03Mzcw
MDAgbWljcm92b2x0cyBpbiBpZGxlIGFuZCBqdW1wcwo+IHVwIHRvIDk1MDAwMCB1bmRlciBsb2Fk
LCBhbmQgdGhlIHN5c3RlbSBzZWVtcyBzdGFibGUuCgpPa2F5LCB0aGF0IHNvdW5kcyBwcmV0dHkg
c2VyaW91cyBhbmQgaW4gdGhpcyBjYXNlIHlvdSBzaG91bGQgYWRkIHRoZQpmb2xsb3dpbmcgdGFn
IGF0IHRoZSBlbmQgb2YgdGhlIGNvbW1pdCBtZXNzYWdlLCB1c3VhbGx5IGFzIHRoZSBmaXJzdAp0
aGluZyBhZnRlciB0aGUgbGluZSBicmVhazoKCiAgRml4ZXM6IDQwZjc0MmIwN2FiMiAoImFybTY0
OiBkdHM6IHJvY2tjaGlwOiBBZGQgcmszNTc2LWFybXNvbS1zaWdlNSBib2FyZCIpCgpUaGF0IHdh
eSwgb3VyIHN0YWJsZSBrZXJuZWwgcm9ib3Qgb3ZlcmxvcmRzIHdpbGwgcGljayBpdCB1cCBhbmQK
YmFja3BvcnQgaXQgdG8gdGhlIGtlcm5lbHMgdGhhdCBhbHJlYWR5IGNvbnRhaW4gdGhlIG1lbnRp
b25lZCBjb21taXQuCgo+IAo+IEhlcmUncyB3aGF0IEkgdXNlZCB0byBtb25pdG9yIHRoZSB2b2x0
YWdlICh0aGVyZSBtdXN0IGJlIGEgYmV0dGVyIHdheQo+IHRvIGRvIGl0LCBidXQgaXQgd29ya3Mp
Ogo+IHNpZ2U1IH4gIyB3YXRjaCBjYXQgYGdyZXAgLXIgLiAvc3lzL2NsYXNzL3JlZ3VsYXRvci8q
L25hbWUgfCBncmVwCj4gdmRkX2NwdV9iaWdfczAgfCBzZWQgLWUgJ3MvbmFtZS4qLy8nYC9taWNy
b3ZvbHRzCj4gCj4gQW5kIGluIGFub3RoZXIgdGVybWluYWw6Cj4gc2lnZTUgfiAjIHN0cmVzcy1u
ZyAtYzgKPiAKPiBUaGlzIG1pZ2h0IHdhcnJhbnQgYSBub3RlIGluIHRoZSBjb21taXQgbWVzc2Fn
ZSBJIGd1ZXNzIDopCgpZZXMsIGRlZmluaXRlbHkgbWVudGlvbiBzdHVmZiBsaWtlIHRoaXMgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlLgoKPiAKPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGFuZCB0ZXN0
aW5nIQo+IAo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkKPiAKCktpbmQgcmVnYXJkcywKTmljb2xh
cyBGcmF0dGFyb2xpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
