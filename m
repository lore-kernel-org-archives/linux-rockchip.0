Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0DD6C28B2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3EYetgza3Wu1VKHWWcj9PqUU9u2+4Hi3v+cQl7Yl7OY=; b=uPBALOok7CTsL2jXVe/QtW1rXp
	mHScg5R7UVPutmHHzgoDuksJu1uof1PDl+86d8KO/xE3B+TltjgUYQhapTsPWn1/c+zny5E7f4mIF
	lSPdNnpkLR8IPtrVVPdvfoxLh0yzaBO6ggpppfSr3Zy32+lqdy3VCBsXRH2Nqrq0qpO+03fU6hDJz
	08WqN/wApU8hhgesmidy4VuxEjmEbKRHrjTJmtLjQ2Sc8yr5Z/sLsBjzdDxgUKQ5B6v+ODdWemSgS
	cWOgqbwtbCkRH7IwtlCf+zCXWMKcphyTpshU24Lw9tAK0dn8DZX2KnGPft9TxCWTXrddswqGPd7uu
	ZbKoxCbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1traCE-00000002E5s-3d7U;
	Mon, 10 Mar 2025 10:17:18 +0000
Received: from mail-m49195.qiye.163.com ([45.254.49.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tra4i-00000002D3W-0geJ;
	Mon, 10 Mar 2025 10:09:33 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc09eef1;
	Mon, 10 Mar 2025 18:09:19 +0800 (GMT+08:00)
Message-ID: <5dc47134-fabb-4f9c-acc3-8bf37d2cc733@rock-chips.com>
Date: Mon, 10 Mar 2025 18:09:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v7 10/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Doug Anderson <dianders@chromium.org>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
 <20250224081325.96724-11-damon.ding@rock-chips.com>
 <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNOTFZDTUsfGh1NGkgaH09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a957f87c7c203a3kunmdc09eef1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORQ6Ghw*MDIMNiM5Vjk6LzNK
	A0IKCg1VSlVKTE9KTUtKSE1KTk5DVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ01DNwY+
DKIM-Signature: a=rsa-sha256;
	b=D7E3vw1XXB1XCYg4ojtoHQqelLn3tRxuF/YnJiS7eKtAHcAJmK6eZVh8POr/PKSys+Oh0rYtPLotv2Gp8EdLwkFeVgjH1md2nhhGOO5PUuohiFVFMSqdP7tYsL4Cg+HhG6fnpIVHcx0r3/pX2DKi4Tz3OBEz6CkZfH4o1zPqTlU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8oDl0bBs3tCfqgA77qPG8Vr+30J/oYlSYqhSGqmt52Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_030932_419759_BA2CD779 
X-CRM114-Status: GOOD (  20.99  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRG91ZywKCk9uIDIwMjUvMi8yNSA5OjQyLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDEyOjE04oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IEBAIC0zOTIsMTEgKzM5MywyNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9vcHMgcm9ja2NoaXBfZHBfY29tcG9uZW50X29w
cyA9IHsKPj4gICAgICAgICAgLnVuYmluZCA9IHJvY2tjaGlwX2RwX3VuYmluZCwKPj4gICB9Owo+
Pgo+PiArc3RhdGljIGludCByb2NrY2hpcF9kcF9saW5rX3BhbmVsKHN0cnVjdCBkcm1fZHBfYXV4
ICphdXgpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxh
dF9kYXRhID0gYW5hbG9naXhfZHBfYXV4X3RvX3BsYXRfZGF0YShhdXgpOwo+PiArICAgICAgIHN0
cnVjdCByb2NrY2hpcF9kcF9kZXZpY2UgKmRwID0gcGRhdGFfZW5jb2Rlcl90b19kcChwbGF0X2Rh
dGEpOwo+PiArICAgICAgIGludCByZXQ7Cj4+ICsKPj4gKyAgICAgICByZXQgPSBkcm1fb2ZfZmlu
ZF9wYW5lbF9vcl9icmlkZ2UoZHAtPmRldi0+b2Zfbm9kZSwgMSwgMCwgJnBsYXRfZGF0YS0+cGFu
ZWwsIE5VTEwpOwo+PiArICAgICAgIGlmIChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpCj4+ICsgICAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+IAo+IENhbiB5b3UgZXhwbGFpbiB3aHkgeW91IHRyZWF0
IC1FTk9ERVYgYXMgYSBub24tZXJyb3IgY2FzZSBoZXJlPyBNYXliZQo+IHRoaXMgaXMgZm9yIHRo
ZSBub24tZURQIGNhc2UgKEFLQSB0aGUgRFAgY2FzZSkgd2hlcmUgdGhlcmUncyBubwo+IGZ1cnRo
ZXIgcGFuZWxzIG9yIGJyaWRnZXM/IE1heWJlIGEgY29tbWVudCB3b3VsZCBiZSBoZWxwZnVsIHRv
IHJlbWluZAo+IHVzPwo+IAoKSSB0aGluayB0aGUgY29tbWl0IDg2Y2FlZTc0NWU0NSAoImRybS9y
b2NrY2hpcDogYW5hbG9naXhfZHA6IGFsbG93IHRvIAp3b3JrIHdpdGhvdXQgcGFuZWwiKSBjYW4g
aGVscCB0aGUgQW5hbG9naXggRFAgZHJpdmVyIHdvcmsgd2hlbiB0aGUgCmJyaWRnZSBpcyBkcml2
ZXItZnJlZSBvciB3aGVuIHRoZSB1c2VyIHVzZXMgdGhlIGVEUCBJUCBhcyBhIERQLgoKQW5kIEkg
d2lsbCBhZGQgc29tZSBjb21tZW50cyBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKPiAKPj4gKyAgICAg
ICByZXQgPSBjb21wb25lbnRfYWRkKGRwLT5kZXYsICZyb2NrY2hpcF9kcF9jb21wb25lbnRfb3Bz
KTsKPj4gKyAgICAgICBpZiAocmV0KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4g
Kwo+PiArICAgICAgIHJldHVybiByZXQ7Cj4gCj4gbml0OiB0aGUgYWJvdmUgY291bGQganVzdCBi
ZToKPiAKPiByZXR1cm4gY29tcG9uZW50X2FkZChkcC0+ZGV2LCAmcm9ja2NoaXBfZHBfY29tcG9u
ZW50X29wcyk7Cj4gCgpZZWFoLCBpdCBpcyBhIGdvb2QgaWRlYS4KCj4gCj4+IEBAIC00NDgsOSAr
NDYwLDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4gICAgICAgICAgaWYgKElTX0VSUihkcC0+YWRwKSkKPj4gICAgICAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihkcC0+YWRwKTsKPj4KPj4gLSAgICAgICByZXQgPSBjb21w
b25lbnRfYWRkKGRldiwgJnJvY2tjaGlwX2RwX2NvbXBvbmVudF9vcHMpOwo+PiAtICAgICAgIGlm
IChyZXQpCj4+IC0gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiArICAgICAgIHJldCA9IGRl
dm1fb2ZfZHBfYXV4X3BvcHVsYXRlX2J1cyhhbmFsb2dpeF9kcF9nZXRfYXV4KGRwLT5hZHApLCBy
b2NrY2hpcF9kcF9saW5rX3BhbmVsKTsKPj4gKyAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAg
ICAgICAgICBpZiAocmV0ICE9IC1FTk9ERVYpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiBkZXZfZXJyX3Byb2JlKGRwLT5kZXYsIHJldCwKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImZhaWxlZCB0byBwb3B1bGF0ZSBhdXggYnVzIDogJWRc
biIsIHJldCk7Cj4gCj4gSUlSQyB0aGlzIC1FTk9ERVYgY2FzZSBpcyBmb3Igb2xkIGxlZ2FjeSBw
YW5lbHMgdGhhdCBhcmVuJ3QgbGlzdGVkCj4gdW5kZXIgdGhlIGF1eCBidXMgaW4gdGhlIGRldmlj
ZSB0cmVlLiBNYXliZSBhIGNvbW1lbnQgd291bGQgYmUgaGVscGZ1bAo+IHRvIHJlbWluZCB1cz8K
Ckkgd2lsbCBhZGQgYSBjb21tZW50IGhlcmUgaWYgZGV2bV9vZl9kcF9hdXhfcG9wdWxhdGVfYnVz
KCkgcmV0dXJucyAtRU5PREVWLgoKPiAKPiBuaXQ6IGRvbid0IG5lZWQgdGhlICVkIGluIHlvdXIg
ZXJyb3IgbWVzc2FnZS4gZGV2X2Vycl9wcm9iZSgpIGFscmVhZHkKPiBwcmludHMgdGhlIGVycm9y
IGNvZGUuCj4gCgpJIHdpbGwgcmVtb3ZlIGl0IGluIHRoZSBuZXh0IHZlcnNpb24uCgo+IAo+PiAr
ICAgICAgICAgICAgICAgcmV0ID0gcm9ja2NoaXBfZHBfbGlua19wYW5lbChhbmFsb2dpeF9kcF9n
ZXRfYXV4KGRwLT5hZHApKTsKPj4gKyAgICAgICAgICAgICAgIGlmIChyZXQpCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICsgICAgICAgfQo+Pgo+PiAgICAgICAgICBy
ZXR1cm4gMDsKPiAKPiBZb3UgY2FuIGdldCByaWQgb2YgYSBmZXcgb2YgeW91ciByZXR1cm4gY2Fz
ZXMgYnkganVzdCByZXR1cm5pbmcgInJldCIgaGVyZS4KPiAKClllYWgsIGl0IGlzIGJldHRlci4K
Cj4gCj4gLURvdWcKPiAKPiAKCkJlc3QgcmVnYXJkcwpEYW1vbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
