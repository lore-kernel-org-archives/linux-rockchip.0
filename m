Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDC4CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5uXgafWUYVJLtDZY3xCFQ/NySlnPTqK4PPDATQ0H2U=; b=n/2awOiO7WGguK
	tpW5rqku/cLU9axYipuYitoN1Hq54xcktojUMVkrG24Cw2Njv4narDyI8QGdTHWRQUtXhMiQqmSXH
	+sJmUrDouNmkSHMUETTeLwTitomFlWebO+sVCVpNh55MMnI6xatK6dyfVdjD2HMxOAAUjZRFeVIsx
	Oo2WUdKvQrN2ffla5evB1+3ILTLO+W0in5Q/uZ7lRF7LJ7Vfovd54rRv3xeSbPDsXZsFDr+usuLDJ
	JO4QrrROpnMF8jSUMEnGqrgesR7VIFA9grCSvzf+d6axxsiv7fE0+G5blYODHUuj4m4dZ5U6moiGN
	2BqtrhT1aIDJMsnZWntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp6C-0000000DXXW-2SEf;
	Mon, 20 Oct 2025 12:34:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp2x-0000000DSi4-0B9i;
	Mon, 20 Oct 2025 12:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=MhYxWhLFynEPuXGXf6NvRZnWZ6WgJyN1EoBH8Cps2Ag=; b=MabG5WugADLFB3VHMtrQzUpRxT
	Uu5zPfFuEVei3jXQflPWqYDa6IGq9AhbFshszFxtQ1DIYbau0T1+AsxcL/7DW0l1L2pB6zDvyTRqH
	494zfzYQgg30yraphBl8ZiXhUoL0awuihc5jLRjNZhUoPtRpTUm2/UYBJmic6y/VzE7YfDsJKCxvD
	MqvUhcQZMorqRGWCQqtPbOQ5hIZObA1uZmQxvvU6BEMyffc5XFJ+mIsmPRyXijZAodRwEpxRgsW9k
	inN2sogIdhHGsVM3s262AzpVc1S7oBKNHAes48Gbb4e9nTsTuCzDv25e+XfDVI6e9i6+Hgkeyaaur
	JrlXViug==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp2p-000000075TG-3MZj;
	Mon, 20 Oct 2025 12:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MhYxWhLFynEPuXGXf6NvRZnWZ6WgJyN1EoBH8Cps2Ag=; b=zjTdNbwzRfJ02QMBrrUYQyahQC
	e9N3vAi5TdIP52ZJc9LOJrjBvU+FQY7C7UqYSd4R0ulVAW1xYAUKXit/t/Rr4/7MZxilfLTNNJgac
	TlFiOtt/tM3BpXEYQzfEO+lrPttm2Zk9zvunVObYN9FvqgCaOWoNYUx/SS2DDJ5g/lH8VblaMS2fZ
	7ZT+SpN4ORtxBml2817HjzBDIFLE6qL/CmK8DJm0yEeTns6Dk/df/NPZeiwBHJhNsNxzx4kD0nkHi
	5hMv45MUTUZN0U8f5/YH/rZ6GrqqID3rYMB42Sqypt8jJYpXqM01Qg8aZU+kjq2Zupd4ICtFzxcNp
	WqFKgMJw==;
Received: from [141.76.253.240] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAp2f-0000zJ-3h; Mon, 20 Oct 2025 14:31:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
Date: Mon, 20 Oct 2025 14:31:12 +0200
Message-ID: <12339028.CDJkKcVGEf@phil>
In-Reply-To: <748fd61a-31fb-436f-b028-b47807a4860c@gmail.com>
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
 <5143458.iZASKD2KPV@phil> <748fd61a-31fb-436f-b028-b47807a4860c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_133125_099280_3D0B7628 
X-CRM114-Status: GOOD (  28.37  )
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

QW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxMDo1MDo1OCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+IAo+IE9uIE1vbiwgT2N0IDIwLCAy
MDI1IGF0IDEyOjMx4oCvUE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6
Cj4gPgo+ID4gQW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxMDoxOTo1MSBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+ID4gPiBPbiBUaHUs
IFNlcCAyNSwgMjAyNSBhdCAxMjozOOKAr0FNIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlw
IFc1NTI3OTNEQkEtVjEwIExDRCt0b3VjaHNjcmVlbiBhc3NlbWJseSB3aGljaAo+ID4gPiA+IGNv
bWVzIHBoeXNpY2FsbHkgYXR0YWNoZWQgdG8gUm9ja2NoaXAgUkszNTc2IEVWQjEgYm9hcmRzLgo+
ID4gPiA+Cj4gPiA+ID4gVGhlIGRpc3BsYXkgcGFydCBpcyBkcml2ZW4gYnkgdGhlIG9uLWNoaXAg
TUlQSSBEU0kgY29udHJvbGxlciwgYW5kIHRoZQo+ID4gPiA+IHRvdWNoc2NyZWVuIGlzIGNvbm5l
Y3RlZCBvdmVyIEkyQy4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFy
a292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiBOb3RlIHRoYXQgYmFj
a2xpZ2h0IHN1cHBvcnQgaXMgbGVmdCBvdXQgZm9yIG5vdywgYXMgaXQgZGVwZW5kcyBvbiBQV00K
PiA+ID4gPiBzdXBwb3J0IFswXSB3aGljaCBoYXMgbm90IHlldCBiZWVuIG1lcmdlZC4KPiA+ID4g
Pgo+ID4gPiA+IEEgd29ya2Fyb3VuZCBpcyBzaW1wbHkgYGdwaW9zZXQgLWMgMCAxMz0xYCB0byBz
ZXQgdGhlIHJlc3BlY3RpdmUgR1BJTwo+ID4gPiA+IHBpbiBoaWdoIGFuZCB0aHVzIHRvIGxpZ2h0
IHVwIHRoZSBkaXNwbGF5IHVuY29uZGl0aW9uYWxseS4KPiA+ID4gPgo+ID4gPiA+IFswXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjUwNjAyLXJrMzU3Ni1wd20tdjItMC1hNjQzNGIw
Y2U2MGNAY29sbGFib3JhLmNvbS8KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAuZHRzIHwgODkgKysrKysrKysrKysrKysrKysr
KysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspCj4gPiA+Cj4g
PiA+IEhpIEhlaWtvLAo+ID4gPgo+ID4gPiBBbnkgdGhvdWdodHMgYWJvdXQgdGhpcyBvbmU/IENh
biB3ZSBwZXJoYXBzIGdldCBpdCBtZXJnZWQgZm9yIC1uZXh0Pwo+ID4KPiA+IERvZXMgdGhlIGdw
aW8tYmFja2xpZ2h0IHdvcmsgb24gdGhhdCBkZXZpY2U/Cj4gPiBUaGF0IHdvdWxkIG1ha2UgdGhl
IGdwaW9zZXQgaGFjayB1bm5lY2Vzc2FyeS4KPiAKPiBJJ3ZlIGdvdCBhIGxvY2FsIHBhdGNoIHVz
aW5nIHB3bS1ncGlvIGFuZCBwd20tYmFja2xpZ2h0IGFzIGEgc3RvcC1nYXAgCj4gc29sdXRpb24s
IGJ1dCBJIGRvbid0IHRoaW5rIGl0J3Mgd29ydGggbWVyZ2luZyB1cHN0cmVhbSwgYmVjYXVzZSB0
aGUgCj4gYmFja2xpZ2h0IGlzIHN1cHBvc2VkIHRvIGJlIGRyaXZlbiBieSB0aGUgaGFyZHdhcmUg
UFdNIG9uIHRoZSBzYW1lIHBpbiAKPiAobm90IGJpdC1iYW5naW5nIHRoZSBHUElPIGxpbmUpLiBB
ZnRlciBhbGwsIE5pY29sYXMgaGFzIGJlZW4gd29ya2luZyBvbiAKPiBhZGRpbmcgYSBwcm9wZXIg
aGFyZHdhcmUgUFdNIGRyaXZlciBmb3IgUkszNTc2Lgo+IAo+IFRoZSBkaXNwbGF5IGl0c2VsZiB3
b3JrcyB3aXRob3V0IFBXTSBzdXBwb3J0LCBhbmQgc28gZG9lcyB0aGUgdG91Y2hzY3JlZW4uCgpS
aWdodCBub3csIEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZSBhbiBhY3R1YWwgdGltZWxpbmUgaWYvd2hl
biBOaWNvbGFzIHdpbGwKYmUgYWJsZSB0byB3b3JrIG9uIHRoZSBwd20gYWdhaW4uIFNvIG15IGlk
ZWEgd2FzIGlmIHdlIHdhbnQgdG8KaW50ZWdyYXRlIHRoZSBiYWNsaWdodCBhcyB5b3UgZGVzY3Jp
YmVkIGJlbG93LCB0byBoYXZlIGFuIGFjdHVhbCB1c2FibGUKZGlzcGxheSBhbmQgdGhlbiB3aGVu
IHRoZSBuZXcgcHdtIGhhcyBsYW5kZWQgc3dpdGNoIG92ZXIgdG8gdGhhdCBvbmU/CgoKSGVpa28K
Cgo+IE15IHRlbXAgcGF0Y2ggZ29lcyBsaWtlIHRoaXM6Cj4gCj4gLS0tCj4gICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMgfCAxNSArKysrKysrKysrKysr
KysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cyAKPiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cwo+IGluZGV4IGYy
MGNkNmYyYzA3OS4uNWMyN2ZmZjAzNTY5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cwo+IEBAIC01OCw2ICs1OCwxNCBAQCBidXR0
b24tdm9sLXVwIHsKPiAgIAkJfTsKPiAgIAl9Owo+IAo+ICsJYmFja2xpZ2h0OiBiYWNrbGlnaHQg
ewo+ICsJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7Cj4gKwkJYnJpZ2h0bmVzcy1sZXZl
bHMgPSA8MjAgMjIwPjsKPiArCQlkZWZhdWx0LWJyaWdodG5lc3MtbGV2ZWwgPSA8MTAwPjsKPiAr
CQludW0taW50ZXJwb2xhdGVkLXN0ZXBzID0gPDIwMD47Cj4gKwkJcHdtcyA9IDwmbGNkX2JsX3B3
bSAwIDI1MDAwIDA+Owo+ICsJfTsKPiArCj4gICAJaGRtaS1jb24gewo+ICAgCQljb21wYXRpYmxl
ID0gImhkbWktY29ubmVjdG9yIjsKPiAgIAkJdHlwZSA9ICJhIjsKPiBAQCAtNzgsNiArODYsMTIg
QEAgd29ya19sZWQ6IGxlZC0wIHsKPiAgIAkJfTsKPiAgIAl9Owo+IAo+ICsJbGNkX2JsX3B3bTog
cHdtIHsKPiArCQkjcHdtLWNlbGxzID0gPDM+Owo+ICsJCWNvbXBhdGlibGUgPSAicHdtLWdwaW8i
Owo+ICsJCWdwaW9zID0gPCZncGlvMCBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47Cj4gKwl9Owo+
ICsKPiAgIAl2YnVzNXYwX3R5cGVjOiByZWd1bGF0b3ItdmJ1czV2MC10eXBlYyB7Cj4gICAJCWNv
bXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAgIAkJcmVndWxhdG9yLW5hbWUgPSAidmJ1
czV2MF90eXBlYyI7Cj4gQEAgLTI3Nyw2ICsyOTEsNyBAQCBwYW5lbEAwIHsKPiAgIAkJY29tcGF0
aWJsZSA9ICJ3YW5jaGFuZ2xvbmcsdzU1Mjc5M2JhYSIsICJyYXlkaXVtLHJtNjcyMDAiOwo+ICAg
CQlyZWcgPSA8MD47Cj4gCj4gKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+Owo+ICAgCQlpb3Zj
Yy1zdXBwbHkgPSA8JnZjYzN2M19sY2Rfbj47Cj4gICAJCXJlc2V0LWdwaW9zID0gPCZncGlvMyBS
S19QQjUgR1BJT19BQ1RJVkVfTE9XPjsKPiAgIAkJdmRkLXN1cHBseSA9IDwmdmNjM3YzX2xjZF9u
PjsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
