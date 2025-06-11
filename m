Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A471DC71141
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mk5HRucn+gEa+XIIr/BtgzvhZWDGNR5rmFRyEnjlS+8=; b=ORjKWKX4hpym1/
	sfVLT6Z4amSrRka13ip0fxraFbKj9qx/vMuNuxohc/761HNgzaj9OOJzDe85qNRbFim7OjnkXb8aZ
	0KYlnJElLDTjP1d3AzgWCKS9EnlmC7//eep1UuPmnEH/zHPFO50POhMtxFh7JTbvqQkKlx2uiYczS
	QCaMaOHu7RXwy3MGLfYJ/P4Sb2t5/SGSVzpaaW+Qx4TQ/Y93dwOWdlOrRgoPh9mUYHsPJ+f9ivKAy
	NK6tJGTsrAXcqY4jcfWo3GlQMbySGVxtKBDU8asfOAi5y/tZEmARikfk6OO0zxPm2wOY/fX+EWdaW
	9IhLPzadicw0UsxWcjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUX7-0000000Bd01-1SEX;
	Wed, 11 Jun 2025 23:07:01 +0000
Received: from mail-10628.protonmail.ch ([79.135.106.28])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPTgD-0000000BRSC-2Kjb
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1749679937; x=1749939137;
	bh=e7+TKwLiFTgSLhj8SFeUWygx/8rXRPa8q4Cd0wJL3rg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=Db/FT/FEExCRwvGk1CN8lOHpwtjVSGl3U1GLOPiDQ5Q5hqNNj+rDEC2tXKRgXAIhp
	 QxVpLFCbWVlLIc92chKJ+skDN4Z1dQCJ/MAzbw24d7RDMnZwgqKOvRsvdbKeXGffGx
	 5koby5t+pb+hMExtOT2jiexTDvw3J9vdTddrzxPeL+1edVzxgGDyE3u8TUWCgxfhtk
	 kS8wUX/lQJPcp0V5qoMl5OZNJOqkTRZVRBf4phwWaaGKMLM+L8WNL270xYg4x1seGo
	 4I9QaV+p7ZGKXETtuQbV/6ayfj+6zE2rwhDHTkOsc49VC1hW266yjEDfDyhKmcPEQW
	 32dB7iSBeorAg==
Date: Wed, 11 Jun 2025 22:12:11 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Diederik de Haas <didi.debian@cknow.org>, hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, Dang Huynh <danct12@riseup.net>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH drm-misc-next] rockchip/drm: vop2: don't check color_mgmt_changed in atomic_enable
Message-ID: <zJBqdllX3IT9_-h9G49ay_GuU4nVf_n2Daxe1vL7PavA21RmMyH-vOqxdpahIknlp0_lpwwsxZyNyyQrF30rJquCjd6BcUU-FBgO0MM45iA=@proton.me>
In-Reply-To: <562b38e5.a496.1975f09f983.Coremail.andyshrk@163.com>
References: <20241206192013.342692-3-pZ010001011111@proton.me> <DAI0A1Y753FJ.B0NMT8L5VPEH@cknow.org> <4b380a57.8ab2.197591815a8.Coremail.andyshrk@163.com> <DAISW8MXEU0G.3AMRSKNYQUJY8@cknow.org> <4e600374.6dc7.1975df03a2d.Coremail.andyshrk@163.com> <DAJNEG81JCU5.35KVU8KAT5MDU@cknow.org> <b25ddc.a29c.1975eea8033.Coremail.andyshrk@163.com> <DAJPBG7GPPH2.3BDCMH0U3FU0E@cknow.org> <562b38e5.a496.1975f09f983.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 02c8703b38a58061d7584929d53a73e3d33835da
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_151222_352602_594CBB28 
X-CRM114-Status: GOOD (  19.39  )
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

CgoKCkhpIEFuZHkgYW5kIERpZWRlcmlrCgo+IAo+IFRoZSByb290IGNhc2UgZm9yIHRoZSBwcm9i
bGVtIGlzIG5vdyBjbGVhcuOAggo+IAo+IE1vc3Qgb2YgdGhlIHJlZ2lzdGVycyBpbiBWT1AgbmVl
ZCB0byB3cml0ZSB0aGUgY2ZkX2RvbmUgcmVnaXN0ZXIoY2FsbCB2b3AyX2NmZ19kb25lKQo+IGFm
dGVyIHlvdSBoYXZlIGNvbmZpZ3VyZWQgdGhlIHJlZ2lzdGVycy4gVGhlbiwgdGhleSB3aWxsIHRh
a2UgZWZmZWN0IG9ubHkgd2hlbiB0aGUgVlNZTkMgZXZlbnQgb2NjdXJzKEl0IGRvZXNuJ3QgdGFr
ZSBlZmZlY3QgaW1tZWRpYXRlbHkgYWZ0ZXIgeW91IGZpbmlzaCB3cml0aW5nLikuCj4gVGhpcyBh
bHNvIGluY2x1ZGVzIGFsbCB0aGUgVlBfRFNQX0NUUkwgcmVnaXN0ZXJzLgo+IAo+IHNlZSB0aGUg
Y29kZToKPiAKPiB2b3AyX3ZwX3dyaXRlKHZwLCBSSzM1NjhfVlBfRFNQX0NUUkwsIGRzcF9jdHJs
KTsKPiAKPiB2b3AyX2NydGNfYXRvbWljX3RyeV9zZXRfZ2FtbWEodm9wMiwgdnAsIGNydGMsIGNy
dGNfc3RhdGUpOwo+IC0tPgo+IAo+IHN0YXRpYyB2b2lkIHZvcDJfdnBfZHNwX2x1dF9kaXNhYmxl
KHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgdnApCj4gewo+IHUzMiBkc3BfY3RybCA9IHZvcDJfdnBf
cmVhZCh2cCwgUkszNTY4X1ZQX0RTUF9DVFJMKTsKPiAKPiAKPiBXaGVuIHdlIHJlYWQgdGhpcyBy
ZWdpc3Rlciwgd2UgYXJlIHJlYWRpbmcgdGhlIGFjdHVhbCBlZmZlY3RpdmUgdmFsdWUsCj4gbm90
IHRoZSBvbmUoZHNwX2N0cmwpIHRoYXQgd2FzIGp1c3Qgd3JpdHRlbiBpbiBiZWZvcmUgKGl0IGhh
cyBub3QgeWV0IHRha2VuIGVmZmVjdCkKPiAKPiBTbyB3aGVuIHdlIGNvbnRpbnVlIHRvIHdyaXRl
IGFib3V0IHRoaXMgcmVnaXN0ZXIgaGVyZSwgd2Ugb3ZlcndyaXRlIHRoZSBhY3R1YWwKPiB2YWx1
ZSB3ZSBvcmlnaW5hbGx5IGludGVuZGVkIHRvIHB1dCBpbi4KPiAKPiAKPiBkc3BfY3RybCAmPSB+
UkszNTY4X1ZQX0RTUF9DVFJMX19EU1BfTFVUX0VOOwo+IHZvcDJfdnBfd3JpdGUodnAsIFJLMzU2
OF9WUF9EU1BfQ1RSTCwgZHNwX2N0cmwpOwo+IH0KPiAKPiBJIHRoaW5rIHRoZSBjb3JyZWN0IHNv
bHV0aW9uIHNob3VsZCBiZSBzaW1pbGFyIHRvIHRoZSBXaW5kb3dzLXJlbGF0ZWQgcmVnaXN0cnkg
c2V0dGluZ3MuCj4gQWxsIHRoZSByZWdpc3RlcnMgcmVsYXRlZCB0byBWaWRlbyBQb3J0cyBzaG91
bGQgYmUgc2V0IGFzIG5vbi12b2xhdGlsZSwgc2VlOgo+IC8KPiAqIFRoZSB3aW5kb3cgcmVnaXN0
ZXJzIGFyZSBvbmx5IHVwZGF0ZWQgd2hlbiBjb25maWcgZG9uZSBpcyB3cml0dGVuLgo+ICogVW50
aWwgdGhhdCB0aGV5IHJlYWQgYmFjayB0aGUgb2xkIHZhbHVlLiBBcyB3ZSByZWFkLW1vZGlmeS13
cml0ZQo+ICogdGhlc2UgcmVnaXN0ZXJzIG1hcmsgdGhlbSBhcyBub24tdm9sYXRpbGUuIFRoaXMg
bWFrZXMgc3VyZSB3ZSByZWFkCj4gKiB0aGUgbmV3IHZhbHVlcyBmcm9tIHRoZSByZWdtYXAgcmVn
aXN0ZXIgY2FjaGUuCj4gKi8KPiBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9yYW5nZSB2b3Ay
X25vbnZvbGF0aWxlX3JhbmdlW10gPSB7Cj4gcmVnbWFwX3JlZ19yYW5nZSgweDEwMDAsIDB4MjNm
ZiksCj4gfTsKPiAKPiBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9hY2Nlc3NfdGFibGUgdm9w
Ml92b2xhdGlsZV90YWJsZSA9IHsKPiAubm9fcmFuZ2VzID0gdm9wMl9ub252b2xhdGlsZV9yYW5n
ZSwKPiAubl9ub19yYW5nZXMgPSBBUlJBWV9TSVpFKHZvcDJfbm9udm9sYXRpbGVfcmFuZ2UpLAo+
IH07Cj4gCgpJJ20gd29uZGVyaW5nIHRoYXQgcGVyaGFwcyBtYWtpbmcgYSBzZXBhcmF0ZSBjb2Rl
IHBhdGggZm9yIGdhbW1hCkxVVCBlbmFibGUgaW4gYXRvbWljIGVuYWJsZSB3b3VsZCBmaXggaXQ/
IElJVUMgd2Ugc2V0IGNvbmZpZy4gCmVhcmxpZXIgaW4gYXRvbWljX2VuYWJsZSBhbmQgd3JpdGUg
ZHNwX2N0cmwgKyBjZmdfZG9uZSB3aXRoIHByb3Blcgpjb25maWd1cmF0aW9uIGJ1dCBzaW5jZSB0
aGVyZSB3YXNuJ3QgYSB2c3luYyB0aGUgcmVhZCBvZiBkc3AgY3RybAppbiBsdXQgZGlzYWJsZSBp
cyBub3QgY29ycmVjdCAob3Igd2UgY2Fubm90IGJlIHN1cmUgaXQgaXMgY29ycmVjdCkuClB1dHRp
bmcgdHJ5IHNldCBnYW1tYSBMVVQgYmVmb3JlIGZpcnN0IGRzcCBjdHJsIHdyaXRlIGFuZCBtYWtl
IGl0CnVzZSB0aGUgZHNwX2N0cmwgdmFsdWUgc28gZmFyIHdyaXR0ZW4gaW4gYXRvbWljIGVuYWJs
ZSBjb3VsZCBhbHNvCmZpeCB0aGUgaXNzdWUgYmVjYXVzZSB3ZSB3b3VsZG4ndCByZWFkIGRzcCBj
dHJsIHZhbHVlIGZyb20gdGhlIApyZWdpc3Rlci4KCj4gQWN0dWFsbHksIHRoZXJlIGlzIGFub3Ro
ZXIgcXVlc3Rpb24uIEkgc3RpbGwgaGF2ZW4ndCBmaWd1cmVkIG91dCB3aHkKPiB0aGlzIHByb2Js
ZW0gZG9lc24ndCBvY2N1ciB3aGVuIGNvbXBpbGluZyByb2NrY2hpcGRybT15IC4KPiAKCkkgYXBw
bGllZCB5b3VyIHBhdGNoIGFuZCBydW4gYSB0ZXN0IG9uIGJvdGggdmVyc2lvbnMuIFRoaXMgaXMg
d2hhdAppIGdvdCB3aXRoIGRybT1tLCBzbyB0aGUgc2FtZSByZXN1bHQgYXMgZGllZGVyaWsuCmBg
YApbICAgIDguMTM4NDgyXSB2b3AyX2NydGNfYXRvbWljX3RyeV9zZXRfZ2FtbWEgIGdhbW1hX2x1
dDogMDAwMDAwMDAwMDAwMDAwMApbICAgIDguMTM5MDkzXSB2b3AyX3ZwX2RzcF9sdXRfZGlzYWJs
ZSBkc3BfY3RybDogMHgwMDAwMDAwZgpgYGAKVGhpcyBpcyB3aGF0IGkgZ290IHdpdGggZHJtPXku
IFNvIGl0IHNlZW1zIHdpdGggZHJtPXkgcmVhZCB2YWx1ZSBpbiAKdGhlIHJlZ2lzdGVyIF9pc18g
d2hhdCB3YXMgd3JpdHRlbiBlYXJsaWVyIGluIGF0b21pYyBlbmFibGUgaS5lIHZhbHVlIGlzIAp2
YWlsZD8gTWF5YmUgaXQgaXMganVzdCAidW5mb3J0dW5hdGUiIHRpbWluZz8KYGBgClsgICAgNi42
NDY5OTFdIHZvcDJfY3J0Y19hdG9taWNfdHJ5X3NldF9nYW1tYSAgZ2FtbWFfbHV0OiAwMDAwMDAw
MDAwMDAwMDAwClsgICAgNi42NDc1OTRdIHZvcDJfdnBfZHNwX2x1dF9kaXNhYmxlIGRzcF9jdHJs
OiAweDAwMDEwMDAwCmBgYAoKSSB3aWxsIGhhdmUgdGltZSB0byBzcGVuZCBtb3JlIG9uIHRoaXMg
b3ZlciB0aGUgd2Vla2VuZC4KCkJlc3QgcmVnYXJkcywgUGlvdHIgWmFsZXdza2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
