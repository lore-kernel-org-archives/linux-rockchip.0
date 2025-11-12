Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90403CD4849
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 21:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QaqjT/cjKYDMWFhk3PvndxpgkYTjC70x5pAjtb72c4=; b=WkslfhuuK5kO7C
	wWvuuNcax1xtlX+OuFnsHyPei9c6FY9CRI5dZO2NBlGH1urAcCGBoqA4sHJign4CmCgcCM6kHXRjj
	vKcA9XyWByd/auCxcPSEEvw2vkloBur8DJGUG0x9H18g352YcqWee8a0ockVE+Pwxokb/Cl/HcGN4
	0Zr5OdnR3tHSjDfFTAUUcAKf0YNzumib+4hpP2MUWv28G0yVwKo6sIQEE1wilabOJfS3XthPkQyYh
	DuD0WoEB3tyuYH7rxSc9ndAkKe0uoB1NGnc7fkl3tTxcBpVnxGI3CbYMXEk1FIne/Ni1dJXbPMp2A
	eRGDFDFQ7YFVaTo1AELw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJITd-00000009XU2-2L7p;
	Wed, 12 Nov 2025 21:34:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJITa-00000009XTA-2HXb;
	Wed, 12 Nov 2025 21:34:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Ijl2d5txxx1muG7LOy+sOf2K0f9ZIGcMU1J5ip5lOhg=; b=X7uT0URitTKZFJr1kumOjmk6eQ
	ClK5aHNgEMNkJljPp3g5keM78actOLbUFP57etFiiy+kWf8HULuXIqXCbT4hQHj0vp5EgR5qCBqA4
	H59Wnbl8t9wccQxXU9tlD5+Oy4+fur1+4udmhevjUdUYCxolGmQ6T+rZHVkEpWnVtY6gAn7fGf+M1
	zZbxlTY+4QAokn1/rMIlXRDSBV17AhYkweyrmz9JD+fKOCUVuxxALOJXQ5LKkz1Nh9CGr/KgkYdI3
	h7ggGLlPnWcoKxk6VwVPogUGULuqqBy4FdonjWq0t1meZ8SRAiVZGVNbbQEgxn6CnNAXwoL5/57y4
	/AQUj9tQ==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJITK-0003p1-29; Wed, 12 Nov 2025 22:33:46 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, Andrew Lunn <andrew@lunn.ch>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "ukleinek@debian.org" <ukleinek@debian.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: Fix the 1Ghz ethernet on Qnap TS433
Date: Wed, 12 Nov 2025 22:33:44 +0100
Message-ID: <3380318.aeNJFYEL58@diego>
In-Reply-To: <e4d3127b-c879-4931-9ea0-de7449bc508c@lunn.ch>
References: <20250925092923.2184187-1-heiko@sntech.de>
 <da752790-da17-4d26-b9b2-8240b38b3276@kwiboo.se>
 <e4d3127b-c879-4931-9ea0-de7449bc508c@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_133402_604411_CB7D4983 
X-CRM114-Status: GOOD (  39.56  )
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

QW0gRG9ubmVyc3RhZywgMjUuIFNlcHRlbWJlciAyMDI1LCAxOToxMToyOSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEFuZHJldyBMdW5uOgo+IE9uIFRodSwgU2VwIDI1LCAy
MDI1IGF0IDA2OjU4OjA2UE0gKzAyMDAsIEpvbmFzIEthcmxtYW4gd3JvdGU6Cj4gPiBIaSBIZWlr
bywKPiA+IAo+ID4gT24gOS8yNS8yMDI1IDExOjI5IEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiA+ID4gV2hpbGUgSSB3YW50IHRvIHJlbWVtYmVyIHRoYXQgdGhlIGR3bWFjIG9uIHRoZSBUUzQz
MyB3YXMgd29ya2luZyBhdCBzb21lCj4gPiA+IHBvaW50LCBpdCBzZWVtcyBJIGhhZCBteSBuZXR3
b3JrIGFsd2F5cyBjb25uZWN0ZWQgdG8gdGhlIDIuNUcgbmljIGFmdGVyCj4gPiA+IHRoYXQgInBv
aW50Ii4gQW5kIHRlc3Rpbmcgbm93IHJldmVhbGVkIHRoYXQgdGhlIGdtYWMgZG9lcyBub3QgYWN0
dWFsbHkKPiA+ID4gbWFuYWdlcyB0byB0cmFuc2ZlciBkYXRhLgo+ID4gPiAKPiA+ID4gQ3VycmVu
dGx5IHRoZSBnbWFjIGlzIHNldCB0byByZ21paS1pZCB3aXRoIG5vIHJ4LS90eC1kZWxheSB2YWx1
ZXMgc2V0Cj4gPiA+IHdoaWNoIG1ha2VzIHRoZSBkcml2ZXIgdXNlIGRlZmF1bHQgdmFsdWVzLiBT
ZXR0aW5nIHRoZSBkZWxheXMgdG8gMAo+ID4gPiBhbHNvIGRvZXMgbm90IHByb3ZpZGUgYSB3b3Jr
aW5nIGludGVyZmFjZS4KPiA+ID4gCj4gPiA+IFRoZSB2ZW5kb3Iga2VybmVsIGlzIHJ1bm5pbmcg
d2l0aCBwaHktbW9kZSBzZXQgdG8gcmdtaWkgYW5kIGRlbGF5cyBvZgo+ID4gPiAgICAgdHhfZGVs
YXkgPSAweDNjLCByeF9kZWxheSA9IDB4MmYKPiA+ID4gCj4gPiA+IEFzIEFuZHJldyBwb2ludHMg
b3V0IG9mdGVuLCB0aG9zZSBkZWxheSB2YWx1ZXMgImFyZSBtYWdpYyIgYW5kIHJnbWlpLWlkCj4g
PiA+IHNob3VsZCBkZWZpbml0bHkgYmUgdXNlZCAid2l0aCBzbWFsbCB2YWx1ZXMiIGZvciBkZWxh
eXMsIGlmIHJlYWxseSBuZWVkZWQuCj4gPiA+IAo+ID4gPiBUaGUgUm9ja2NoaXAgdmVuZG9yLWtl
cm5lbCBhY3R1YWxseSBjb250YWlucyBhZGRpdGlvbmFsIGNvZGUgaW4gdGhlIGR3bWFjCj4gPiA+
IGRyaXZlciB0byB1c2UgdGhlIGxvb3BiYWNrIGZ1bmN0aW9uIG9mIGEgcGh5IHRvIGZpbmQgYSB3
aW5kb3cgb2YgdXNhYmxlCj4gPiA+IGRlbGF5IHZhbHVlcy4gQ29kZSBjYW4gYmUgZm91bmQgZm9y
IGV4YW1wbGUgb24gWzBdIGFuZCB0aGUgcHJvY2VzcyBpcwo+ID4gPiBkZXNjcmliZWQgaW4gYSBk
b2N1bWVudCBjYWxsZWQgIlJvY2tjaGlwIEdNQUMgUkdNSUkgRGVsYXlsaW5lIEd1aWRlIgo+ID4g
PiB3aGljaCBoYXMgbWFkZSBpdHMgd2F5IG9udG8gdGhlIGludGVybmV0IGluIGEgbG90IG9mIHBs
YWNlcyBbMV0uCj4gPiA+IAo+ID4gPiBTbyBJIHVzZWQgdGhpcyBwcm9jZXNzLCB3aXRoIHRoZSBp
bnRlcmZhY2Ugc2V0IHRvIHJnbWlpLWlkIHRvIGdldCB2YWx1ZXMKPiA+ID4gZm9yIHRoaXMgbW9k
ZSwgd2hpY2ggYXJlIGluIGZhY2UgbG93ZXIgdGhhbiB0aGUgb25lcyBmb3IgcmdtaWkgd2l0aAo+
ID4gPiAgICAgdHhfZGVsYXkgPSAweDIxLCByeF9kZWxheSA9IDB4MTUKPiA+ID4gYW5kIHJlc3Vs
dHMgaW4gYSB3b3JraW5nIGludGVyZmFjZSBvbiB0aGUgZHdtYWMuCj4gPiA+IAo+ID4gPiBbMF0g
aHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4vbGludXgtcm9ja2NoaXAvYmxvYi9yay02LjEtcmty
Ni4xL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLXRvb2wuYwo+
ID4gPiBbMV0gaHR0cHM6Ly9naXRsYWIuY29tL2ZpcmVmbHktbGludXgvZG9jcy8tL2Jsb2Ivcmsz
NTZ4L2ZpcmVmbHkvQ29tbW9uL0dNQUMvUm9ja2NoaXBfRGV2ZWxvcGVyX0d1aWRlX0xpbnV4X0dN
QUNfUkdNSUlfRGVsYXlsaW5lX0VOLnBkZgo+ID4gPiAKPiA+ID4gQ2M6IEFuZHJldyBMdW5uIDxh
bmRyZXdAbHVubi5jaD4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KPiA+ID4gLS0tCj4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8IDIgKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCj4gPiA+IGluZGV4IDU2NTY1NTRjYTI4NC4uZThh
ZjkyYTAxMWQ2IDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1xbmFwLXRzNDMzLmR0cwo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwo+ID4gPiBAQCAtMjU3LDYgKzI1Nyw4IEBAICZn
bWFjMF90eF9idXMyCj4gPiA+ICAJCSAgICAgJmdtYWMwX3J4X2J1czIKPiA+ID4gIAkJICAgICAm
Z21hYzBfcmdtaWlfY2xrCj4gPiA+ICAJCSAgICAgJmdtYWMwX3JnbWlpX2J1cz47Cj4gPiA+ICsJ
cnhfZGVsYXkgPSA8MHgxNT47Cj4gPiA+ICsJdHhfZGVsYXkgPSA8MHgyMT47Cj4gPiAKPiA+IEkg
ZG8gbm90IHVuZGVyc3RhbmQgd2h5IGRlZmluaW5nIHJ4L3R4X2RlbGF5IHdvdWxkIGNoYW5nZSBh
bnl0aGluZy4KPiAKPiBJIHdhcyBhbHNvIHdvbmRlcmluZyB3aHkgdGhlc2UgdHdvIHByb3BlcnRp
ZXMgYXJlIGFkZGVkIGJ1dCBubyBjaGFuZ2UKPiB0byBwaHktbW9kZS4KPiAKPiA+IAo+ID4gU2V0
dGluZyB0aGVzZSBzaG91bGQgY3VycmVudGx5IG5vdCBoYXZlIGFueSBlZmZlY3Qgb24gdGhlIGRy
aXZlciBjb2RlCj4gPiB3aGVuIHBoeS1tb2RlPXJnbWlpLWlkIGlzIHVzZWQsIHNlZSBiZWxvdyAo
bmV4dC0yMDI1MDkyNCwgZHdtYWMtcmsuYyk6Cj4gPiAKPiA+IAo+ID4gCXN3aXRjaCAoYnNwX3By
aXYtPnBoeV9pZmFjZSkgewo+ID4gCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJOgo+ID4g
CQlkZXZfaW5mbyhkZXYsICJpbml0IGZvciBSR01JSVxuIik7Cj4gPiAJCWJzcF9wcml2LT5vcHMt
PnNldF90b19yZ21paShic3BfcHJpdiwgYnNwX3ByaXYtPnR4X2RlbGF5LAo+ID4gCQkJCQkgICAg
YnNwX3ByaXYtPnJ4X2RlbGF5KTsKPiA+IAkJYnJlYWs7Cj4gPiAJY2FzZSBQSFlfSU5URVJGQUNF
X01PREVfUkdNSUlfSUQ6Cj4gPiAJCWRldl9pbmZvKGRldiwgImluaXQgZm9yIFJHTUlJX0lEXG4i
KTsKPiA+IAkJYnNwX3ByaXYtPm9wcy0+c2V0X3RvX3JnbWlpKGJzcF9wcml2LCAwLCAwKTsKPiA+
IAkJYnJlYWs7Cj4gCj4gQW5kIHRoaXMgZXhwbGFpbnMgaXQsIHRoYW5rcy4KPiAKPiA+IEkgaGF2
ZSBwbGF5ZWQgYXJvdW5kIHdpdGggYSBmZXcgcGF0Y2hlcyB0aGF0IGNoYW5nZXMgdGhpcyBhbmQg
YXBwbHkgdGhlCj4gPiByeC90eF9kZWxheSBmb3IgcmdtaWktaWQgbW9kZXMgKGJvdGggTGludXgg
YW5kIFUtQm9vdCksIHNlZSB0b3Agb2YgWzJdCj4gPiBmb3IgTGludXggcGF0Y2hlcy4gV2lsbCB0
cnkgdG8gZ2V0IHRoZW0gb24gTUwgaW4gYSBmZXcgZGF5cy4KPiAKPiBXZSBzaG91bGQgbm90IHJl
YWxseSBiZSBleHBhbmRpbmcgdGhlIHVzZSBvZiByeF9kZWxheSBhbmQKPiB0eF9kZWxheS4gVGhl
IHN0YW5kYXJkaXplZCBwcm9wZXJ0aWVzIHt0eHxyeH0taW50ZXJuYWwtZGVsYXktcHMgc2hvdWxk
Cj4gYmUgdXNlZC4KCmFzIEpvbmFzIHdyb3RlIHRoZSBkZWxheXMgZG8gbm90aGluZyBmb3Igcmdt
aWktaWQuIFNvIHRoZSB3aG9sZSB0aGluZwptdXN0IGhhdmUgYmVlbiBtZSBkb2luZyBzb21ldGhp
bmcgd29ua3ksIGJlY2F1c2Ugb24gcmUtdGVzdGluZwpldmVyeXRoaW5nLCBpdCBpcyBhcyBleHBl
Y3RlZCAtIG5vIGRlbGF5cyBuZWNlc3NhcnkgYW5kIGV0aGVybmV0IGp1c3QKd29ya3MuCgpTbyBJ
J2xsIGRyb3AgdGhpcyBwYXRjaCBhbHRvZ2V0aGVyIGFuZCBhZGFwdCB0aGUgVFMyMzMgb25lLgoK
SGVpa28KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
