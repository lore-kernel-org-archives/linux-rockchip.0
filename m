Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8167C369A1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5HCaLR1pRU7wCDh/ImvCRV5CwKfESiXHiszCBAhWyM=; b=SO/dBbyBTSAJ6Q
	0C5jBYnXeRsk4X4MJum91UT5mIh0DqfcqNkNl4Omqq7AgL5UbPht4Ps77o5VcxwBu9hBUaQKQVpKO
	ySRXvRahS6xfe/5ZSj9hldrLbcpOuVmOUA0QxTNJzhQR9pEtgAFy/NnC9dOy4aM5URagYtEtW6VfI
	ZH8UFMOQbMDT55HJvQ+yD80kv91ILe/UwMei0Rg4IYiX252KHhnPiFKca2QFR1LZOVkv+wIufSl4L
	uXAE4YYLGcHEPxZiSJE64Sj13Nog8fjuL1e9tYqw4x6H6tBIDwt0iBfrLNe3d/2UAI5M0YOp2j029
	zqzrJGRYF+mWTSQuaT6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rYJ-00000001clo-49Ce;
	Mon, 07 Apr 2025 18:50:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pWe-00000001FHA-2HTo;
	Mon, 07 Apr 2025 16:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IOzc5uHgTpunL565FHUIuaOtIJTW1Qb46HIAlOqLvkM=; b=rVRiuJUqpKQykF8IkzHHG1cYvl
	JfEJJbtQfqEUPsVe1juk2WFvDDMk7dLDBF+irDIUAVIk6wJ/zplj/kSlIP/OIoGt87145H67z8vNW
	mskp3VybCCW1sfrEONXKw7hYSBYo1GjEWBkT6g7+C5m35n75rp/roJ14iUxlQbMtkgqASkMF45Uow
	6diPFyhKrsmyx9IAgOZhP/jzBrF8Q8kTlYySrLNmwGuUuENNpUzzGkfUcV0nefjajff8m8lGaIo/r
	rJZatAVdvTUpfI59PVQ4URaidawh+aAuXzTxKjJlwnciGwt2MKQdZKo97DZ/a6+nh2kiOV8XT7hNZ
	tWgaZHWg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pWb-000000084EW-2z9c;
	Mon, 07 Apr 2025 16:40:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=IOzc5uHgTpunL565FHUIuaOtIJTW1Qb46HIAlOqLvkM=; b=Etr2fVxehCjpIrJHzIW5mQnYOA
	PxQxQfhCrypqAnMSjd13JR1V0d6pUqUq2QA+ZyOQ/C7dZ9+akg0C3raLrdohWQe5l7JWcEMHdIN6b
	uxTShx6CW3d4ofUWlE1i5/HGR3f/sjVRmHuCiEzazgtgWYTlb6DCt8EhDNYuwHH+oXwT6aqB6vAto
	mjlzEe/d+L7Gv3QwHv6cZDP769kSpzjH6GdTLMeVbOZBzQQMmD1bEr3215rd+qvLw2zcYzuJtem8X
	vkjykClwqum3YnqoIDYcKRiW91VLUxKA2pp32NJ26DM5IjWtztry7+BO5z1Uv5KKvJh2F1a6G7OG1
	aodoA1gg==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1pWX-0006V7-WE; Mon, 07 Apr 2025 18:40:38 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
Date: Mon, 07 Apr 2025 18:40:37 +0200
Message-ID: <8512245.T7Z3S40VBb@diego>
In-Reply-To: <CAL_JsqJo+9ycUFHVZ2Darh_RWaRuJGX6KKQGsbeuDWav7vKA2g@mail.gmail.com>
References: <5552256.Sb9uPGUboI@phil>
 <CAL_JsqJo+9ycUFHVZ2Darh_RWaRuJGX6KKQGsbeuDWav7vKA2g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_174041_909542_F34AC9CD 
X-CRM114-Status: GOOD (  25.14  )
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

SGkgUm9iLAoKQW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1LCAxNzo1NjozNyBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+IE9uIFdlZCwgTWFyIDE5LCAy
MDI1IGF0IDY6NTbigK9QTSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToK
PiA+Cj4gPiBIaSBzb2MgbWFpbnRhaW5lcnMsCj4gPgo+ID4gSSBtYWRlIGFuIGVycm9yIGFuZCBh
Y2NpZGVudGlhbGx5IGFwcGxpZWQgYSBwYXRjaCB0aGF0IHdhcyBtZWFudCBmb3IKPiA+IHRoZSBt
ZmQgdHJlZS4gVGhhbmtmdWxseSBTdGVwaGVuIG5vdGljZWQgdGhhdCB3aGVuIHRoZSBkdXBsaWNh
dGUKPiA+IGNvbW1pdCBhcHBlYXJlZCBpbiBsaW51eC1uZXh0Lgo+IAo+IEJvdGggY29tbWl0cyBh
cmUgaW4gdjYuMTUtcmMxIG5vdyBhbmQgdGhlIHJldmVydCBpcyBub3QsIHNvIHRoaXMKPiBzaG91
bGQgbm90IGdldCBhcHBsaWVkL3B1bGxlZC4gT3IgeW91IHdpbGwgbmVlZCB0byByZXZlcnQgdGhl
IHJldmVydC4KCnllcywgdGhhdCB3YXMgdGhlIGludGVudGlvbi4KCkJhY2sgd2hlbiBJIHN1Ym1p
dHRlZCB0aGlzIFBSLCBJIHRhbGtlZCB3aXRoIEFybmQgb24gSVJDIHRoZSBuZXh0IGRheS4KCkFz
IGJvdGggY29tbWl0cyBhcmUgaWRlbnRpY2FsIHNhbnMgc29tZSBTaWduZWQtb2ZmLWJ5IGxpbmVz
LCBoZSBzdWdnZXN0ZWQKbm90IHRyeWluZyB0byBwdXQgYSByZXZlcnQgaW4sIGJ1dCBpbnN0ZWFk
IGxldCBnaXQgc29sdmUgaXQgaXRzZWxmLCBiZWNhdXNlCgphcm5kIG9uIElSQzoKPiBbLi4uXSwg
YnV0IEkgd29ycnkgdGhhdCB0aGlzIHdvdWxkIG1ha2UgdGhpbmdzIHdvcnNlIGlmICdnaXQgbWVy
Z2UnCj4gZW5kcyB1cCBkb2luZyB0aGUgcmV2ZXJ0IG9uIHRvcCBvZiB0aGUgb3JpZ2luYWwgY29t
bWl0IG9uY2UgaXQgZ2V0cyB0bwo+IHRvcnZhbGRzLiBOb3Qgc3VyZSBpZiB0aGF0J3Mgc3RpbGwg
YSBwcm9ibGVtIGluIGdpdCB0aGVzZSBkYXlzLCBidXQKPiBJJ3ZlIHNlZW4gaXQgaGFwcGVuIGlu
IHRoZSBwYXN0Lgo+IGlmIHR3byBpZGVudGljYWwgcGF0Y2hlcyBhcmUgaW4gZGlmZmVyZW50IGJy
YW5jaGVzLCBqdXN0IGxlYXZpbmcgdGhlbQo+IHRoZXJlIGlzIHVzdWFsbHkgZWFzaWVyCgpTbyB0
aGlzIFBSIHdhcyBhbHJlYWR5IG1hcmtlZCBhcyAic3VwZXJzZWVkZWQiIGluIHBhdGNod29yayBi
YWNrCm9uIG1hcmNoIDIwdGguCgoKTmV2ZXJ0aGVsZXNzLCB0aGFua3MgZm9yIG1ha2luZyBzdXJl
IG5vIGZ1bmt5IHJldmVydCBoYXBwZW5zIG5vdy4KCkhlaWtvCgoKPiA+IFRoZSBmb2xsb3dpbmcg
Y2hhbmdlcyBzaW5jZSBjb21taXQgNzNkMjQ2YjQ0MDJjMzM1NmY2YjNkMTM2NjVkZTNhNTFlZWE3
YjU1NToKPiA+Cj4gPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByZW1vdmUgZXRobTBfY2xrMF8y
NW1fb3V0IGZyb20gU2lnZTUgZ21hYzAgKDIwMjUtMDMtMTUgMTU6NDk6MDAgKzAxMDApCj4gPgo+
ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gPgo+ID4gICBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9j
a2NoaXAuZ2l0IHRhZ3MvdjYuMTUtcm9ja2NoaXAtZHRzNjQtMwo+ID4KPiA+IGZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byBjZWUyNGJjNzNkNGYzZjQ3MzQ0YTFhNTQxMDBhNjljNzJmMWRi
MDYxOgo+ID4KPiA+ICAgUmV2ZXJ0ICJkdC1iaW5kaW5nczogbWZkOiBzeXNjb246IEFkZCByazM1
MjggUW9TIHJlZ2lzdGVyIGNvbXBhdGlibGUiICgyMDI1LTAzLTE5IDAwOjIyOjE4ICswMTAwKQo+
ID4KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+IFJldmVydCBvZiBvbmUgY29tbWl0IHRoYXQgd2FzIGFwcGxpZWQg
YWNjaWRlbnRpYWxseSBhbmQgc2hvdWxkIGluc3RlYWQKPiA+IGdvIHRocm91Z2ggdGhlIE1GRCB0
cmVlLiBJdCBpcyBhbHJlYWR5IHBhcnQgb2YgdGhhdCB0cmVlIGFzCj4gPiBjb21taXQgN2YzZTNl
NzIyOGJiICgiZHQtYmluZGluZ3M6IG1mZDogc3lzY29uOiBBZGQgcmszNTI4IFFvUyByZWdpc3Rl
cgo+ID4gY29tcGF0aWJsZSIpLgo+ID4KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IEhlaWtvIFN0dWVibmVyICgx
KToKPiA+ICAgICAgIFJldmVydCAiZHQtYmluZGluZ3M6IG1mZDogc3lzY29uOiBBZGQgcmszNTI4
IFFvUyByZWdpc3RlciBjb21wYXRpYmxlIgo+ID4KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sIHwgMiAtLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGRlbGV0aW9ucygtKQo+ID4KPiA+Cj4gPgo+ID4KPiAKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
