Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B06C5AD4E
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Aug 2026 09:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUxRrLx6s5cbwfkEZFElunyt8vE9myzNtgNz1y9UfHc=; b=yOmeWrMeFr31w0
	YvJ2Ege61snBFCm16iZuV0d3/VKcuZniywiCHU+yOe3tY5RfSsgHuiOc0QZROz74OVOG7idRFyGV1
	e/5dvYmPWxGo/B2Gg3GxPiGQoqyBz3YvFC4qeBdugDfPWXr4bYAxPxlunZYUzpycJ6E/TSLDRikIh
	gfTX/KXDNvQRwlmTigEQg2KZuerNn3ivseLWtccKY7VfVqZGKcIppAVlcmiJPvhfxETcIn3ZlZnE+
	2Mdi32xRPrSUAIQSUnlWkvdJAH1wsWvpPBe/I191ByHWgkScfp1arSJA5M8DcJQCp1lRTHYCAaqMB
	zklea7xxO8VLK01wH6VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt00S-0000000A99y-0zWy;
	Sun, 09 Aug 2026 09:39:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt00P-0000000A99N-04TQ;
	Sun, 09 Aug 2026 09:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=e2tV2waLfrz+hH7M5PM5u39hRzN3D90MNpx1km/idhU=; b=zZEPnCMzwhtm9l/12WM55pnpXJ
	aXqeg/pf8AM+3OfOkQm9xRDfhU877IiEfaiycVhVXjJXKgtO9/vshQht/ubQcimNW1RFBwadzEPx8
	gcFFCrOWc4XUdKhMQkNiX7tRF/K1utYsd18M/xf2uapKYbsXdu/GKDsUq+oKhOT6HCCXgOTgTm9V2
	3NPXNTMiFx5s91rKAyXPEyulaFJ8X/gPnklIxGSmFz6ype0gW9/xoR4OQqO6kNiaP4MB5RhLhZV43
	KjE36/0/e2HHZ0lO6K2JNMrgNf0OVSrNJJq8Vz7CrQPKFKNbHNpd8lHblTOy4WNvIdBpd4s42FsR6
	NXdMd7hg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Ye Zhang <ye.zhang@rock-chips.com>, huang lin <hl@rock-chips.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] pinctrl: rockchip: Decode drive strength in the get
 function
Date: Sun, 09 Aug 2026 11:39:33 +0200
Message-ID: <8942531.Sb9uPGUboI@diego>
In-Reply-To: <20260729132736.3807082-2-sjg@chromium.org>
References: <20260729132736.3807082-1-sjg@chromium.org>
 <20260729132736.3807082-2-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260809_023945_138635_DE76EE49 
X-CRM114-Status: GOOD (  18.45  )
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

QW0gTWl0dHdvY2gsIDI5LiBKdWxpIDIwMjYsIDE1OjI3OjI1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gVGhlIGRlY29kaW5nIG9mIHRoZSAyLWJp
dCBhbmQgOC1iaXQgbGV2ZWwgZHJpdmUtc3RyZW5ndGggdmFsdWVzIHNpdHMgaW4KPiByb2NrY2hp
cF9zZXRfZHJpdmVfcGVycGluKCksIHdoZXJlIGl0IGlzIHVucmVhY2hhYmxlOiB0aGUgU29DcyB3
aG9zZQo+IGJhbmtzIGRlY2xhcmUgdGhlc2UgZHJpdmUgdHlwZXMgKFJLMzUwNiBhbmQgUlYxMTAz
QikgdGFrZSB0aGUgZWFybHkKPiBjdHJsLT50eXBlIGJyYW5jaCBpbiB0aGUgc2V0IHBhdGgsIGFu
ZCB0aGUgcmVhZC1hbmQtZGVjb2RlIGxvZ2ljIGluIGEKPiBzZXQgZnVuY3Rpb24gaGFzIG5vIHB1
cnBvc2UuIE1lYW53aGlsZSByb2NrY2hpcF9nZXRfZHJpdmVfcGVycGluKCkKPiBsYWNrcyB0aGUg
ZGVjb2RpbmcsIHNvIHBpbl9jb25maWdfZ2V0KCkgYW5kIHRoZSBkZWJ1Z2ZzIG91dHB1dCByZXBv
cnQKPiAtRUlOVkFMIGZvciB0aGVzZSBTb0NzLgo+IAo+IE1vdmUgdGhlIHR3byBjYXNlcyB0byBy
b2NrY2hpcF9nZXRfZHJpdmVfcGVycGluKCksIHdoZXJlIHRoZXkgYmVsb25nLgo+IAo+IEZpeGVz
OiBkYmQyMzE3ZDdiOWYgKCJwaW5jdHJsOiByb2NrY2hpcDogQWRkIHJrMzUwNiBwaW5jdHJsIHN1
cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPgoK
UmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cgo+IC0tLQo+IAo+
IENoYW5nZXMgaW4gdjM6Cj4gLSBBZGQgbmV3IHBhdGNoIG1vdmluZyB0aGUgZHJpdmUtc3RyZW5n
dGggZGVjb2RpbmcgdG8gdGhlIGdldCBmdW5jdGlvbgo+IAo+ICBkcml2ZXJzL3BpbmN0cmwvcGlu
Y3RybC1yb2NrY2hpcC5jIHwgMzggKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGlu
Y3RybC9waW5jdHJsLXJvY2tjaGlwLmMKPiBpbmRleCA3ZTBmY2Q0NWZkMjYuLjA4YTQ2YTA0YTgx
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gKysr
IGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+IEBAIC0zMjY3LDYgKzMyNjcs
MjUgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZXRfZHJpdmVfcGVycGluKHN0cnVjdCByb2NrY2hp
cF9waW5fYmFuayAqYmFuaywKPiAgCWNhc2UgRFJWX1RZUEVfSU9fMVY4X09OTFk6Cj4gIAkJcm1h
c2tfYml0cyA9IFJLMzI4OF9EUlZfQklUU19QRVJfUElOOwo+ICAJCWJyZWFrOwo+ICsJY2FzZSBE
UlZfVFlQRV9JT19MRVZFTF8yX0JJVDoKPiArCQlyZXQgPSByZWdtYXBfcmVhZChyZWdtYXAsIHJl
ZywgJmRhdGEpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJZGF0YSA+Pj0g
Yml0Owo+ICsKPiArCQlyZXR1cm4gZGF0YSAmIDB4MzsKPiArCWNhc2UgRFJWX1RZUEVfSU9fTEVW
RUxfOF9CSVQ6Cj4gKwkJcmV0ID0gcmVnbWFwX3JlYWQocmVnbWFwLCByZWcsICZkYXRhKTsKPiAr
CQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCWRhdGEgPj49IGJpdDsKPiArCQlkYXRh
ICY9ICgxIDw8IDgpIC0gMTsKPiArCj4gKwkJcmV0ID0gaHdlaWdodDgoZGF0YSk7Cj4gKwkJaWYg
KHJldCA+IDApCj4gKwkJCXJldHVybiByZXQgLSAxOwo+ICsJCWVsc2UKPiArCQkJcmV0dXJuIC1F
SU5WQUw7Cj4gIAlkZWZhdWx0Ogo+ICAJCWRldl9lcnIoZGV2LCAidW5zdXBwb3J0ZWQgcGluY3Ry
bCBkcml2ZSB0eXBlOiAlZFxuIiwgZHJ2X3R5cGUpOwo+ICAJCXJldHVybiAtRUlOVkFMOwo+IEBA
IC0zMzkwLDI1ICszNDA5LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9zZXRfZHJpdmVfcGVycGlu
KHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuaywKPiAgCWNhc2UgRFJWX1RZUEVfSU9fMVY4
X09OTFk6Cj4gIAkJcm1hc2tfYml0cyA9IFJLMzI4OF9EUlZfQklUU19QRVJfUElOOwo+ICAJCWJy
ZWFrOwo+IC0JY2FzZSBEUlZfVFlQRV9JT19MRVZFTF8yX0JJVDoKPiAtCQlyZXQgPSByZWdtYXBf
cmVhZChyZWdtYXAsIHJlZywgJmRhdGEpOwo+IC0JCWlmIChyZXQpCj4gLQkJCXJldHVybiByZXQ7
Cj4gLQkJZGF0YSA+Pj0gYml0Owo+IC0KPiAtCQlyZXR1cm4gZGF0YSAmIDB4MzsKPiAtCWNhc2Ug
RFJWX1RZUEVfSU9fTEVWRUxfOF9CSVQ6Cj4gLQkJcmV0ID0gcmVnbWFwX3JlYWQocmVnbWFwLCBy
ZWcsICZkYXRhKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0JCWRhdGEgPj49
IGJpdDsKPiAtCQlkYXRhICY9ICgxIDw8IDgpIC0gMTsKPiAtCj4gLQkJcmV0ID0gaHdlaWdodDgo
ZGF0YSk7Cj4gLQkJaWYgKHJldCA+IDApCj4gLQkJCXJldHVybiByZXQgLSAxOwo+IC0JCWVsc2UK
PiAtCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAlkZWZhdWx0Ogo+ICAJCWRldl9lcnIoZGV2LCAidW5z
dXBwb3J0ZWQgcGluY3RybCBkcml2ZSB0eXBlOiAlZFxuIiwgZHJ2X3R5cGUpOwo+ICAJCXJldHVy
biAtRUlOVkFMOwo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
