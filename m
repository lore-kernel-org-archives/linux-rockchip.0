Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D926C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 23:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFd9x0GGp4oBEPY6QMCy+f6fNWWcFI7Iu7j3Gbs/aKY=; b=S+IrKD8eQqf83s
	Gv6NQaeKiDYcvHEc/X4Ae1SbOyOMwJmdBwDTIb7Go5IJbVAC53m8uNMUhVuAiAt1TGL0qXpN5pgZF
	faxy+8tWAfba6unDnFNrwZ+Edp2kskx0PWsWYnSNAYqVQaBXiEcnqC4A+vQxp1BKx8V7otbGb/cvG
	4aLq734DyNc86Cie+2F1TeoBbqNifPRlnMO4gT5avJL2W83YSgmExt2mQOrc/PLZC6ULr/GYVeuwp
	hGmKfKG0tki8Wcf0icj0Vclfm35LH+H/PIQQ5gcQvMPinLOd5c3jcLWy/d4amd/vDVhNhcE/VEhlh
	tU9jJFxsJpiiR3Synnww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkXDo-0000000AHVf-2uxE;
	Tue, 18 Feb 2025 23:41:48 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkXCL-0000000AHM3-0pIz;
	Tue, 18 Feb 2025 23:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739922015;
	bh=vtJYJScwIgD7t/Kjv9WAvIrpkcvjsYEil5lQtdhNnDE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gtaqD/GWX2crjMIVsm9VhPgIp6ynjZ09aQZr76a03msFBEu3FN4S2lLI3hKVIXR6g
	 2LOCyx9ZvSLA2TOXcjTszgbUuSNTbm1pbAWf0hAavTRc+y2+rR8S5pcR5E2wOcF8tR
	 LRplrtXfSFculPVtvURaCiLm3OcJ5reQycDBmNKAfUAstLCB74ZnIj1JtUDQNODQ4a
	 PsSfM1eMYJZBW7KBtqIiKNy3XmfNDycBWITJZVKFPkmnkjVddJqR+8RPSF3Sjl54be
	 1+K0vAO/qvlBsPPMzC1rIMLXxt4k7mfTjUcjcl7YqwJxTtAnEeoQmXZqMMltmntcOq
	 eKv7Rd4oXgWSg==
Received: from [192.168.1.143] (144.232.221.87.dynamic.jazztel.es [87.221.232.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 881CB17E1411;
	Wed, 19 Feb 2025 00:40:13 +0100 (CET)
Message-ID: <0dd48599-448f-4472-9a8a-54b7f0379c13@collabora.com>
Date: Wed, 19 Feb 2025 01:40:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source
 to VOP2 on RK3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>, airlied@gmail.com,
 andy.yan@rock-chips.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kernel@collabora.com,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, robh@kernel.org,
 simona@ffwll.ch, tzimmermann@suse.de
References: <1919367.CQOukoFCf9@diego>
 <20250218121749.1382322-1-liujianfeng1994@gmail.com>
 <lnuceofdwm6lgibworaghcujp6rrncvn4e2xc2vzltimjw3rqu@jur7x5cxt5ue>
 <2425191.NG923GbCHz@diego>
 <ldgdrytto5y2xf3ois23j4ymtajtwmqlxjr2zyqhwbbxcx6f6y@gzb37fntx2x6>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ldgdrytto5y2xf3ois23j4ymtajtwmqlxjr2zyqhwbbxcx6f6y@gzb37fntx2x6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_154017_390190_2C6C6B2E 
X-CRM114-Status: GOOD (  27.28  )
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

SGksCgpPbiAyLzE4LzI1IDY6MDUgUE0sIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIFR1ZSwgRmViIDE4LCAyMDI1IGF0IDAzOjUzOjA2UE0gKzAxMDAsIEhlaWtvIFN0w7xi
bmVyIHdyb3RlOgo+PiBBbSBEaWVuc3RhZywgMTguIEZlYnJ1YXIgMjAyNSwgMTU6MTM6MDcgTUVa
IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4+PiBPbiBUdWUsIEZlYiAxOCwgMjAyNSBhdCAw
ODoxNzo0NlBNICswODAwLCBKaWFuZmVuZyBMaXUgd3JvdGU6Cj4+Pj4gT24gVHVlLCAxOCBGZWIg
MjAyNSAxMTowMDo1NyArMDEwMCwgSGVpa28gU3TDvGJuZXJ3cm90ZToKPj4+Pj4gU28gSSBndWVz
cyBzdGVwMSwgY2hlY2sgd2hhdCBlcnJvciBpcyBhY3R1YWxseSByZXR1cm5lZC4KPj4+Pgo+Pj4+
IEkgaGF2ZSBjaGVja2VkIHRoYXQgdGhlIHJldHVybiB2YWx1ZSBpcyAtNTE3Ogo+Pj4+Cj4+Pj4g
cm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBbZHJtXSAqRVJST1IqIGZhaWxlZCB0byBn
ZXQgcGxsX2hkbWlwaHkxIHdpdGggLTUxNwo+Pj4+Cj4+Pj4+IFN0ZXAyIGNoZWNrIGlmIGNsa19n
ZXRfb3B0aW9uYWwgbmVlZCB0byBiZSBhZGFwdGVkIG9yIGFsdGVybmF0aXZlbHkKPj4+Pj4gY2F0
Y2ggdGhlIGVycm9yIGluIHRoZSB2b3AyIGFuZCBzZXQgdGhlIGNsb2NrIHRvIE5VTEwgb3Vyc2Vs
ZiBpbiB0aGF0IGNhc2UuCj4+Pj4KPj4+PiBJIHRyaWVkIHRoZSBmb2xsb3dpbmcgcGF0Y2ggdG8g
c2V0IHRoZSBjbG9jayB0byBOVUxMIHdoZW4gY2xrX2dldF9vcHRpb25hbAo+Pj4+IGZhaWxlZCB3
aXRoIHZhbHVlIC01MTcsIGFuZCBoZG1pMCBpcyB3b3JraW5nIG5vdy4gVGhlcmUgYXJlIGFsc28g
c29tZQo+Pj4+IGJvYXJkcyBsaWtlIHJvY2sgNSBpdHggd2hpY2ggb25seSB1c2UgaGRtaTEsIEkg
dGhpbmsgd2Ugc2hvdWxkIGFsc28gYWRkCj4+Pj4gdGhpcyBsb2dpYyB0byB2b3AyLT5wbGxfaGRt
aXBoeTAuCj4+Pj4KPj4+PiBAQCAtMzczMyw2ICszNzUxLDE1IEBAIHN0YXRpYyBpbnQgdm9wMl9i
aW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpkYXRh
KQo+Pj4+ICAJCXJldHVybiBQVFJfRVJSKHZvcDItPnBsbF9oZG1pcGh5MCk7Cj4+Pj4gIAl9Cj4+
Pj4gIAo+Pj4+ICsJdm9wMi0+cGxsX2hkbWlwaHkxID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKHZv
cDItPmRldiwgInBsbF9oZG1pcGh5MSIpOwo+Pj4+ICsJaWYgKElTX0VSUih2b3AyLT5wbGxfaGRt
aXBoeTEpKSB7Cj4+Pj4gKwkJZHJtX2Vycih2b3AyLT5kcm0sICJmYWlsZWQgdG8gZ2V0IHBsbF9o
ZG1pcGh5MSB3aXRoICVkXG4iLCB2b3AyLT5wbGxfaGRtaXBoeTEpOwo+Pj4+ICsJCWlmICh2b3Ay
LT5wbGxfaGRtaXBoeTEgPT0gLUVQUk9CRV9ERUZFUikKPj4+PiArCQkJdm9wMi0+cGxsX2hkbWlw
aHkxID0gTlVMTDsKPj4+PiArCQllbHNlCj4+Pj4gKwkJCXJldHVybiBQVFJfRVJSKHZvcDItPnBs
bF9oZG1pcGh5MSk7Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4KPj4+IFRoaXMgZmlyc3Qgb2YgYWxsIHNo
b3dzLCB0aGF0IHdlIHNob3VsZCByZXBsYWNlIGRybV9lcnIgaW4gdGhpcwo+Pj4gcGxhY2Ugd2l0
aCBkZXZfZXJyX3Byb2JlKCksIHdoaWNoIGhpZGVzIC1FUFJPQkVfREVGRVIgZXJyb3JzIGJ5Cj4+
PiBkZWZhdWx0IGFuZCBpbnN0ZWFkIGNhcHR1cmVzIHRoZSByZWFzb24gZm9yIC9zeXMva2VybmVs
L2RlYnVnL2RldmljZXNfZGVmZXJyZWQuCj4+Pgo+Pj4gU2Vjb25kIHdoYXQgeW91IGFyZSBkb2lu
ZyBpbiB0aGUgYWJvdmUgc3VnZ2VzdGlvbiB3aWxsIGJyZWFrIGtlcm5lbAo+Pj4gY29uZmlndXJh
dGlvbnMgd2hlcmUgVk9QIGlzIGJ1aWx0LWluIGFuZCB0aGUgSERNSSBQSFkgaXMgYnVpbGQgYXMg
YQo+Pj4gbW9kdWxlLgo+Pj4KPj4+IEJ1dCBJIGFsc28gdGhpbmsgaXQgd291bGQgYmUgYmV0dGVy
IHRvIGhhdmUgdGhlIGNsb2NrcyBkZWZpbmVkIGluIHRoZQo+Pj4gU29DIGxldmVsIERULiBJIHN1
cHBvc2UgdGhhdCBtZWFucyB2b3AyX2JpbmQgd291bGQgaGF2ZSB0byBjaGVjayBpZgo+Pj4gdGhl
IEhETUkgY29udHJvbGxlciA8SUQ+IGlzIGVuYWJsZWQgYW5kIG9ubHkgcmVxdWVzdHMgcGxsX2hk
bWlwaHk8SUQ+Cj4+PiBiYXNlZCBvbiB0aGF0LiBDb25zaWRlcmluZyB0aGVyZSBpcyB0aGUgT0Yg
Z3JhcGggcG9pbnRpbmcgZnJvbSBWT1AKPj4+IHRvIHRoZSBlbmFibGVkIEhETUkgY29udHJvbGxl
cnMsIGl0IHNob3VsZCBiZSBhYmxlIHRvIGRvIHRoYXQuCj4+Cj4+Cj4+IEkgd2FzIG1vcmUgdGhp
bmtpbmcgYWJvdXQgZml4aW5nIHRoZSBjb3JyZWN0IHRoaW5nLCB3aXRoIHNvbWV0aGluZyBsaWtl
Ogo+Pgo+PiAtLS0tLS0tLS0tLSA4PCAtLS0tLS0tLS0tCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9jbGsuYyBiL2RyaXZlcnMvY2xrL2Nsay5jCj4+IGluZGV4IGNmNzcyMGI5MTcyZi4uNTBm
YWFmYmY1ZGRhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Nsay9jbGsuYwo+PiArKysgYi9kcml2
ZXJzL2Nsay9jbGsuYwo+PiBAQCAtNTI1OCw2ICs1MjU4LDEwIEBAIG9mX2Nsa19nZXRfaHdfZnJv
bV9jbGtzcGVjKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKmNsa3NwZWMpCj4+ICAgICAgICAgaWYg
KCFjbGtzcGVjKQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4+
Cj4+ICsgICAgICAgLyogQ2hlY2sgaWYgbm9kZSBpbiBjbGtzcGVjIGlzIGluIGRpc2FibGVkL2Zh
aWwgc3RhdGUgKi8KPj4gKyAgICAgICBpZiAoIW9mX2RldmljZV9pc19hdmFpbGFibGUoY2xrc3Bl
Yy0+bnApKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7Cj4+ICsK
Pj4gICAgICAgICBtdXRleF9sb2NrKCZvZl9jbGtfbXV0ZXgpOwo+PiAgICAgICAgIGxpc3RfZm9y
X2VhY2hfZW50cnkocHJvdmlkZXIsICZvZl9jbGtfcHJvdmlkZXJzLCBsaW5rKSB7Cj4+ICAgICAg
ICAgICAgICAgICBpZiAocHJvdmlkZXItPm5vZGUgPT0gY2xrc3BlYy0+bnApIHsKPj4gLS0tLS0t
LS0tLS0gODwgLS0tLS0tLS0tLQo+Pgo+PiBCZWNhdXNlIHJpZ2h0IG5vdyB0aGUgY2xrIGZyYW1l
d29yayBkb2VzIG5vdCBoYW5kbGUgbm9kZXMgaW4KPj4gZmFpbGVkL2Rpc2FibGVkIHN0YXRlIGFu
ZCB3b3VsZCBkZWZlciBpbmRlZmluaXRseS4KPiAKPiBBbHNvIExHVE0uCgpUaGFuayB5b3UgYWxs
IGZvciB0aGUgZmVlZGJhY2sgYW5kIHByb3Bvc2VkIHNvbHV0aW9ucyEKCkknbSBjdXJyZW50bHkg
b24gbGVhdmUgYW5kIHdpdGhvdXQgYWNjZXNzIHRvIGFueSB0ZXN0aW5nIGh3LCBidXQgSSdsbCBi
ZQpiYWNrIGluIGEgY291cGxlIG9mIGRheXMuCgpSZWdhcmRzLApDcmlzdGlhbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
