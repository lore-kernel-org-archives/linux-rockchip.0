Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E528BC25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 14:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VFaPFXbTUTEK49aiBjqYxGbVND1Q4yTuENTRB0EKxQ=; b=B5xyZqc2b/avss
	tY4Sv0GOQnHc338vgIbAPQD74Y7sRVZ2VEZRrbwpcAUggC0IkLuypsZfSk5V6zUu0XyajLl7T6Rg0
	YTGkfj+VRI/8UWIC3KM3FWJUCfVERPJ2AICoIWFWRngTVxGj8h/ZCeKsuzIxM2YtCAqcHqQE+1Fgo
	nCUfQxEHJv635Kn4mdzKWx0Q7n9vYwG79jan4I8cpe5acy+m9cXOFD/tiGkbvKM0Wp3YgzyWEb9TS
	1fUygn/iSEyw5Nnzs8+A4xwbWkKIaQnoMY37/Z6Q5YFSyWFB1nd+psy6iWtwUz6iQTmoknhjMTTaG
	BB9PThdJa2I3fkmDhDpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxOW-000000007j5-2Zt5;
	Sat, 08 Jun 2024 14:50:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxOT-000000007iS-1HRK;
	Sat, 08 Jun 2024 14:50:10 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFxOB-0000AO-Bf; Sat, 08 Jun 2024 16:49:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Val Packett <val@packett.cool>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank on
 RK3066
Date: Sat, 08 Jun 2024 16:49:50 +0200
Message-ID: <4253237.VLH7GnMWUR@phil>
In-Reply-To: <CNOFES.QFA1L3UJ3SH82@packett.cool>
References: <20240527231202.23365-1-val@packett.cool> <CNOFES.QFA1L3UJ3SH82@packett.cool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_075009_453018_A3B1DE98 
X-CRM114-Status: GOOD (  24.58  )
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

QW0gU29ubnRhZywgMi4gSnVuaSAyMDI0LCAwNTozNTozNiBDRVNUIHNjaHJpZWIgVmFsIFBhY2tl
dHQ6Cj4gCj4gT24gTW9uLCBNYXkgMjcgMjAyNCBhdCAyMDoxMTo0OSAtMDM6MDA6MDAsIFZhbCBQ
YWNrZXR0IAo+IDx2YWxAcGFja2V0dC5jb29sPiB3cm90ZToKPiA+IFRoZSBSSzMwNjYgVk9QIHNl
dHMgYSBkbWFfc3RvcCBiaXQgd2hlbiBpdCdzIGRvbmUgc2Nhbm5pbmcgb3V0IGEgZnJhbWUKPiA+
IGFuZCBuZWVkcyB0aGUgZHJpdmVyIHRvIGFja25vd2xlZGdlIHRoYXQgYnkgY2xlYXJpbmcgdGhl
IGJpdC4KPiA+IAo+ID4gU28gdW5sZXNzIHdlIGNsZWFyIGl0ICJiZXR3ZWVuIiBmcmFtZXMsIHRo
ZSBSR0Igb3V0cHV0IG9ubHkgc2hvd3MgCj4gPiBub2lzZQo+ID4gaW5zdGVhZCBvZiB0aGUgcGlj
dHVyZS4gdmJsYW5rIHNlZW1zIHRvIGJlIHRoZSBtb3N0IGFwcHJvcHJpYXRlIHBsYWNlIAo+ID4g
dG8KPiA+IGRvIGl0LCBzaW5jZSBpdCBpbmRpY2F0ZXMgZXhhY3RseSB0aGF0OiB0aGF0IHRoZSBo
YXJkd2FyZSBpcyBkb25lCj4gPiB3aXRoIHRoZSBmcmFtZS4KPiA+IAo+ID4gVGhpcyBzZWVtcyB0
byBiZSBhIHJlZHVuZGFudCBzeW5jaHJvbml6YXRpb24gbWVjaGFuaXNtIHRoYXQgd2FzIAo+ID4g
cmVtb3ZlZAo+ID4gaW4gbGF0ZXIgaXRlcmF0aW9ucyBvZiB0aGUgVk9QIGhhcmR3YXJlIGJsb2Nr
Lgo+ID4gCj4gPiBGaXhlczogZjRhNmRlOCAoImRybTogcm9ja2NoaXA6IHZvcDogYWRkIHJrMzA2
NiB2b3AgZGVmaW5pdGlvbnMiKQo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFNp
Z25lZC1vZmYtYnk6IFZhbCBQYWNrZXR0IDx2YWxAcGFja2V0dC5jb29sPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDYgKysrKysrCj4g
PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaCB8IDEgKwo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMgfCAxICsKPiA+ICAz
IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyAKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ID4gaW5kZXggYTEzNDczYjJkLi4y
NzMxZmUyYjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcC5jCj4gPiBAQCAtMTc2Niw2ICsxNzY2LDEyIEBAIHN0YXRpYyB2b2lkIHZvcF9oYW5k
bGVfdmJsYW5rKHN0cnVjdCB2b3AgKnZvcCkKPiA+ICAJfQo+ID4gIAlzcGluX3VubG9jaygmZHJt
LT5ldmVudF9sb2NrKTsKPiA+IAo+ID4gKwlpZiAoVk9QX0hBU19SRUcodm9wLCBjb21tb24sIGRt
YV9zdG9wKSkgewo+ID4gKwkJc3Bpbl9sb2NrKCZ2b3AtPnJlZ19sb2NrKTsKPiA+ICsJCVZPUF9S
RUdfU0VUKHZvcCwgY29tbW9uLCBkbWFfc3RvcCwgMCk7Cj4gPiArCQlzcGluX3VubG9jaygmdm9w
LT5yZWdfbG9jayk7Cj4gPiArCX0KPiA+ICsKPiAKPiBPb3Bz4oCmIHNvIGRvaW5nIGl0IGhlcmUg
YWN0dWFsbHkgY2F1c2VzIGRlYWRsb2NrcywgdW5sZXNzIHdlIGFsc28gCj4gY2hhbmdlIGFsbCBv
dGhlciByZWdfbG9jayB1c2FnZXMgdG8gYmUgc3Bpbl9sb2NrX2lycS9zcGluX3VubG9ja19pcnEu
Cj4gCj4gTm90IHN1cmUgaWYgZG9pbmcgdGhhdCBvciBnb2luZyBiYWNrIHRvIHYxIHdvdWxkIGJl
IGJldHRlci4KCnRoZW4gcGxlYXNlIGdvIGJhY2sgdG8gdjEgKGFzIHY0KSA6LSkgLgoKSS5lLiBy
ZWd1bGFyIHNwaW5sb2NrIHZzLiBzcGluX2xvY2tfaXJxIHdpbGwgaGF2ZSBwZXJmb3JtYW5jZQpp
bXBsaWNhdGlvbnMgYW5kIHRoaXMgImZlYXR1cmUiIGlzIGEgb25lLXRpbWUgb25seSB0aGluZyB1
c2VkCm9ubHkgb24gYSBtb3JlIHRoYW4gMTAgeWVhciBvbGQgc29jLCBzbyBpdCByZWFsbHkgbXVz
dCBub3QgYWZmZWN0CnN0dWZmIGNvbWluZyBhZnRlciBpdC4KCgpIZWlrbwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
