Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A34C44532
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 16:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9P0sNWAHN2VWO5ySKBygF9dU4pxw6Mvi8uQmE17JAg=; b=iTg7ZOgx/byGL8
	5BRtsZDJ4loRUopbZLZRCs16mC2H9cg1DOedPWA1qAAKGw5Bjpa9/uoZmiKBtRfs5b5xVAPd5Kujf
	OrliBOpGjOfoeWMGvc47V/JvivyL/s3oaxqoYWKqwdR62Jvx93RIIcJI1NaLs9DpjuZhzvUAXPCaT
	qNAc98gTYFqU1hLkwyM5S0KbfUrzPymKSO2fq1hXZfunfr/4efYmPfh1THSR1/vBSJz6pcjjJtQYf
	KDEdpOC4lS2sWncSrNFjg7C1eygsrdL/DVG+/Ld8rhI/BNSlcMTpJopRlm34J2dMbJsF9yz6LES8M
	kID/0E3RaUgPun+wo/Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZjM-0000000CKKi-06dh;
	Wed, 22 Jul 2026 16:23:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZjJ-0000000CKK2-34cW;
	Wed, 22 Jul 2026 16:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=X4aOAhCIGbQmkj8pfrFxHkKi8Xrm93t52GBvPKdZXrs=; b=vA6xfOIOdGbL7huGD/ih26/ABU
	Im2+evznOv+fllB1iqbxLTtiHmj/XMRijTT0QNbDDHxbwbQK1pxWm9dRJ+BwPpnV3FdvwqBudl1sK
	JCnDEZaJcQwmp1YEOJKYRyH06adXqR/RKbhDU5PpBDVw2jjslXKlH8DfOCLHfHe9L+EosVmBMuufV
	3jEIgfMR2661FMvcL4aq41d3Lz8/XRoelHQhEzwcD/mS2hThJ2KhlY6H/h12R76u1XMLq+geRkhaT
	A3z3wLKDRIlJpP6gTdkFlgQJV2jn/GewsULlvbYgVV6CVOGj10eo2XbJlfpTBoJLhSVUlBJL+jtrB
	+naTNsBQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Alexey Charkov <alchark@flipper.net>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Wyon Bi <bivvy.bi@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 Dragan Simic <dsimic@manjaro.org>, Liang Chen <cl@rock-chips.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: Fractional PLL coefficient on RK3588/RK3576 is
 two's complement
Date: Wed, 22 Jul 2026 18:23:10 +0200
Message-ID: <3482742.0oRPG1VZx4@diego>
In-Reply-To: <CAKTNdwE=s6XG==4HvbaEV86DATWO6egVxLgNE4LpjFaXNQP7_g@mail.gmail.com>
References: <20260721-rk3588-fracpll-v1-1-b289bf17cf17@flipper.net>
 <7f3924ab-52fc-4fb6-91b4-42a5e55d5c76@cherry.de>
 <CAKTNdwE=s6XG==4HvbaEV86DATWO6egVxLgNE4LpjFaXNQP7_g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_092333_831679_1A25A1F7 
X-CRM114-Status: GOOD (  28.42  )
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

QW0gTWl0dHdvY2gsIDIyLiBKdWxpIDIwMjYsIDEzOjAwOjQ3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4gSGkgUXVlbnRpbiwKPiAKPiBPbiBX
ZWQsIEp1bCAyMiwgMjAyNiBhdCAyOjM14oCvUE0gUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2No
dWx6QGNoZXJyeS5kZT4gd3JvdGU6Cj4gPgo+ID4gSGkgQWxleGV5LAo+ID4KPiA+IE9uIDcvMjEv
MjYgOToxNyBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IFdoZW4gdGhlIFBMTCByYXRl
cyB0YWJsZSB3YXMgZmlyc3QgY29tbWl0dGVkIGZvciBSSzM1ODggKGFuZCBsYXRlciByZXVzZWQK
PiA+ID4gZm9yIFJLMzU3NiksIHRoZSBmcmFjdGlvbmFsIFBMTCBjb2VmZmljaWVudCB3YXMgZGVm
aW5lZCBhcyBhbiB1bnNpZ25lZAo+ID4gPiB2YWx1ZSwgd2hpbGUgdGhlIFRSTSBjbGVhcmx5IHN0
YXRlcyB0aGF0IGl0IGlzIGEgdHdvJ3MgY29tcGxlbWVudCAxNi1iaXQKPiA+ID4gdmFsdWUuCj4g
PiA+Cj4gPiA+IFJvY2tjaGlwJ3MgZG93bnN0cmVhbSBrZXJuZWwgbGF0ZXIgcmV2aXNlZCB0aGUg
ZnJhY3Rpb25hbCBQTEwgY29kZSBbMV0gdG8KPiA+ID4gYWNjb3VudCBmb3IgdGhlIHR3bydzIGNv
bXBsZW1lbnQgbmF0dXJlIG9mIHRoZSBjb2VmZmljaWVudCwgYnV0IHRoYXQKPiA+ID4gY2hhbmdl
IHdhc24ndCB1cHN0cmVhbWVkLgo+ID4gPgo+ID4gPiBDaGFuZ2UgdGhlIFBMTCB0YWJsZSBkZWZp
bml0aW9uIHRvIHVzZSB0d28ncyBjb21wbGVtZW50IGZvciB0aGUKPiA+ID4gZnJhY3Rpb25hbCBj
b2VmZmljaWVudCBhbmQgdXBkYXRlIGl0cyB1c2VycyBhY2NvcmRpbmdseS4KPiA+ID4KPiA+ID4g
Tm90ZSB0aGF0IGEgbmVnYXRpdmUgZnJhY3Rpb25hbCBjb2VmZmljaWVudCBpcyBtZWFudCB0byBi
ZSBzdWJ0cmFjdGVkIGZyb20KPiA+ID4gdGhlIG5leHQgbGFyZ2VyIGludGVnZXIgbXVsdGlwbGll
ciwgc28gdGhlIF9tIHZhbHVlcyBpbiB0aGUgdGFibGUgYXJlCj4gPiA+IGFsc28gYWRqdXN0ZWQg
YWNjb3JkaW5nbHkgZm9yIHRoZSB0d28gbmVnYXRpdmUtayBlbnRyaWVzLgo+ID4gPgo+ID4gPiBX
aGlsZSBhdCBpdCwgZml4IHRoZSBkZW5vbWluYXRvciBvZiB0aGUgZnJhY3Rpb25hbCBQTEwgY2Fs
Y3VsYXRpb24gdG8gdXNlCj4gPiA+IDY1NTM2IGluc3RlYWQgb2YgNjU1MzUsIGFzIHBlciB0aGUg
VFJNIChSSzM1NzYgVFJNIFBhcnQgMSBWMS4yLCBTZWN0aW9uCj4gPiA+IDIuMTMuMS40IFNldHRp
bmcgR3VpZGUgb24gUCwgTSwgUywgYW5kIEspOgo+ID4gPgo+ID4gPiBGb3V0ID0gKChtICsgay82
NTUzNikgKiBGaW4pIC8gKHAgKiAyXnMpCj4gPiA+Cj4gPiA+IExpbms6IGh0dHBzOi8vZ2l0aHVi
LmNvbS9mbGlwcGVyZGV2aWNlcy9yb2NrY2hpcC1saW51eC9jb21taXQvN2E3MmJjMDVkY2MzYTUx
ZTg1YWU1MzE3NDllNjI3MGJmOWI5MjEyZCBbMV0KPiA+ID4gRml4ZXM6IGYxYzUwNmQxNTJmZiAo
ImNsazogcm9ja2NoaXA6IGFkZCBjbG9jayBjb250cm9sbGVyIGZvciB0aGUgUkszNTg4IikKPiA+
ID4gRml4ZXM6IGNjNDBmNWJhYTkxYiAoImNsazogcm9ja2NoaXA6IEFkZCBjbG9jayBjb250cm9s
bGVyIGZvciB0aGUgUkszNTc2IikKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3Yg
PGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiBOb3QgYWRkaW5nIENjIHN0YWJs
ZSwgYmVjYXVzZSB3aGlsZSB0aGlzIGZpeGVzIGEgcmVhbCBidWcgaXQncyBub3QgYQo+ID4gPiBy
ZWdyZXNzaW9uLCBhcyB0aGUgaXNzdWUgd2FzIGludHJvZHVjZWQgaW4gdGhlIHNhbWUgY29tbWl0
IHRoYXQgYWRkZWQgdGhlCj4gPiA+IFJLMzU3Ni9SSzM1ODggc3VwcG9ydC4KPiA+ID4KPiA+Cj4g
PiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSB2YWxpZCByZWFzb24gOikKPiAKPiBJIGJlbGlldmUg
TGludXMgZnJvd25zIHVwb24gY2hhbmdlcyBsaWtlICJpdCBuZXZlciB3b3JrZWQsIGJ1dCB3ZSd2
ZQo+IGZpeGVkIGl0IG5vdyIgYmVpbmcgc3VibWl0dGVkIGFzIGZpeGVzLiBJdCdzIGJlZW4gYnJv
a2VuIGZvciB5ZWFycywKPiBhbmQgc2luY2Ugbm9ib2R5IGNvbXBsYWluZWQgeWV0LCBnb2luZyB2
aWEgdGhlIG5vcm1hbCBkZXZlbG9wbWVudCBwYXRoCj4gKGkuZS4gLW5leHQpIHNlZW1zIHBlcmZl
Y3RseSBmaW5lIHRvIG1lLgoKUGVyc29uYWxseSwgSSBhbHNvIGRvbid0IHRoaW5rIHRoaXMgX25l
ZWRzXyBhIHN0YWJsZSB0YWcuClRoZSB3aG9sZSBpZiBpdCBhaW4ndCBicm9rZSB0aGluZyAuLi4u
CgpJZiBzdGFibGUtbWFpbnRhaW5lcnMgZG8gdGhpbmsgaXQgdmFsdWFibGUgb24gdGhlaXIgb3du
ICh3aXRob3V0IHN0YWJsZSB0YWcpCnRoZW4gYnkgYWxsIG1lYW5zLCBidXQgY2hhbmdpbmcgaG93
IHRoZSBQTEwgcmF0ZSBzdHVmZiB3b3JrcyBoYXMgdGhlCl9hYmlsaXR5XyB0byBpbnRyb2R1Y2Ug
b3RoZXIgYmVoYXZpb3VyIF9zb21ld2hlcmVfLgoKCj4gPiBJbiBhbnkgY2FzZSwgdGhpcyBwYXRj
aCBpcyBkb2luZyB0b28gbWFueSB0aGluZ3MgYXQgb25jZS4gSSBzZWUgdGhlCj4gPiBmb2xsb3dp
bmcgdGhpbmdzIHRoYXQgd291bGQgd2FycmFudCBpbmRpdmlkdWFsIHBhdGNoZXM6Cj4gPgo+ID4g
MSkgZml4IHRoZSB3cm9uZyBkZW5vbWluYXRvciwgc3RhYmxlIGNhbmRpZGF0ZSBJTU8sCj4gCj4g
SSBjb3VsZCBzcGxpdCB0aGlzIG9uZSBvdXQsIGJ1dCBzaW5jZSBpdCdzIGEgdHJpdmlhbCBvbmUt
bGluZXIsIEknZAo+IGxpa2UgdG8gaGVhciB3aGF0IEhlaWtvIHByZWZlcnMuCgp5ZXMgcGxlYXNl
LgotIFN1YmplY3Q6IEZvbyBhbmQgQmFyCi0gQ29tbWl0IG1lc3NhZ2Ugd2l0aCAid2hpbGUgYXQg
aXQiCmFyZSBjbGVhciBpbmRpY2F0b3JzIHRoYXQgdGhlIGNoYW5nZSB3YW50cyB0byBnZXQgc3Bs
aXQgOy0pCgpTbyBwbGVhc2Ugc3BsaXQgb3V0IHRoYXQgIndoaWxlIGF0IGl0IiBwYXJ0LiBUaGUg
cmVzdCBjYW4gc3RheQp0b2dldGhlciB0aG91Z2guCgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
