Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88BB3C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Oct 2022 06:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=eig4TR8WElKseT7KTyU5Qjm+b+409AW9bCrfmRa4xfI=; b=HjksR8U6gjxfyp
	LWEAHLRnQXdwi+aRpYAtfOIiavh8I0P0QMamuG4DUSBaDOFUyaouwqYRPPkiXEd0AoB18wzybtk43
	kVf3D3WvwB64HvMzC6MWwCaZj6knhRjN3EXhSxW+dNwHaXVNu8znZXJb5rAFbB2XCCyT65juFxsTC
	QML/srDbTTP1Y1oiVq4fjTkQ+GZWn0iiYHdGveReRjatSjhv98+PmEO4JqwOXMEIL54fiKP1cgmoh
	lL7yCljngWGrt4/KaOGF66W+EnSDJS0LRNMRLdxvuc7BDLGJyS5xaWP5EklBNXYaoW95orv+k/UPu
	A1ux9JalybReRRSNIVfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oh3BV-00C5um-Mn; Sat, 08 Oct 2022 06:19:41 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oh3BS-00C5uD-Dj
	for linux-rockchip@lists.infradead.org; Sat, 08 Oct 2022 06:19:40 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id B86DD7409AF;
	Sat,  8 Oct 2022 14:19:28 +0800 (CST)
Date: Sat, 8 Oct 2022 14:19:28 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: linus.walleij <linus.walleij@linaro.org>, 
	"Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	robert.moore <robert.moore@intel.com>, 
	robh <robh@kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>, 
	lenb <lenb@kernel.org>, 
	rafael <rafael@kernel.org>
Subject: Re: Re: [PATCH 11/20] gpio/rockchip: add of_node for gpiochip
References: <20220920103108.23074-1-jay.xu@rock-chips.com>, 
	<20220920103108.23074-12-jay.xu@rock-chips.com>, 
	<CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com>, 
	<YzvvGValqxfIriGL@smile.fi.intel.com>, 
	<CACRpkdbA_h4m0cY98=0C2fCbTYEtowFRm9RF=tv=XSgjKxjcAQ@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022100814192810242455@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHR5IVhpPGh9CTkgYTh1MT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ME06Gio6Pz0jDE0cCQEdPRoi
	SB8KCjlVSlVKTU1OSUtCQk1CSExKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhCSk83Bg++
X-HM-Tid: 0a83b63fa9652eb4kusnb86dd7409af
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_231938_651844_BB3050E7 
X-CRM114-Status: GOOD (  11.55  )
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

SGkgd2FsbGVpagoKVGhhbmtzIGZvciByZXZld2luZywgaSBoYXZlIGdvdCB5b3VyIHJlaXZld3Ms
IGFuZCB3aWxsIHVwZGF0ZSBhZnRlciBoZWlrbydzIHJldmlldwp0byBhdm9pZCB0b28gbXVjaCBw
YXRjaHNldCB2aXNpb24uCgp0aGUgZ2MtPm9mX25vZGUgaXMgYSBmaXggZm9yIG15IHBhdGNoIHNl
cmlhbCwgd2l0aG91dCB0aGlzIHRoZSBncGlvY2hpcCB3aWxsIGZhaWwgdG8gcmVnaXN0ZXIuCgoK
QlIKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBUdWUsIE9jdCA0LCAy
MDIyIGF0IDEwOjMwIEFNIEFuZHkgU2hldmNoZW5rbwo+PGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4+IE9uIFR1ZSwgT2N0IDA0LCAyMDIyIGF0IDA5OjE0OjM4QU0g
KzAyMDAsIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4+ID4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQg
MTI6MzEgUE0gSmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4gPiA+
IFRoZSBSb2NrY2hpcCBHUElPIGRyaXZlciB3aWxsIHByb2JlIGJlZm9yZSBwaW5jdHJsIGFuZCBo
YXMgbm8gcGFyZW50IGR0Cj4+ID4gPiBub2RlLCBsYWNrIG9mIHRoZSBvZl9ub2RlIHdpbGwgY2F1
c2UgdGhlIGRyaXZlciBwcm9iZSBmYWlsdXJlLgo+PiA+ID4KPj4gPiA+IFNpZ25lZC1vZmYtYnk6
IEppYW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNvbT4KPj4gPgo+PiA+ID4gKyNpZmRlZiBD
T05GSUdfT0ZfR1BJTwo+PiA+ID4gK8KgwqDCoMKgwqDCoCBnYy0+b2Zfbm9kZSA9IG9mX25vZGVf
Z2V0KGJhbmstPmRldi0+b2Zfbm9kZSk7Cj4+ID4gPiArI2VuZGlmCj4+ID4KPj4gPiBBbnkgaW50
cm9kdWN0aW9uIG9mIG9mX25vZGVfZ2V0KCkgbmVlZHMgdG8gYmUgYmFsYW5jZWQgd2l0aCBhCj4+
ID4gY29ycmVzcG9uZGluZyBvZl9ub2RlX3B1dCgpLgo+Pgo+PiBObywgdGhpcyBjb2RlIHNob3Vs
ZCBub3QgaGF2ZSBiZWVuIGV4aXN0ZWQgaW4gdGhlIGZpcnN0IHBsYWNlLiBXZSBkb24ndCBhbGxv
dwo+PiBhbnltb3JlIGFueSBvZiBvZl9ub2RlIHVzYWdlIGluIHRoZSBHUElPIGRyaXZlcnMuIFRo
ZXJlIGlzIGFuIGZ3bm9kZSBhbmQgcGFyZW50Cj4+IGFuZCBsb2dpYyB0byByZXRyaWV2ZSBmd25v
ZGUgZnJvbSBwYXJlbnQgaW4gdGhlIEdQSU8gbGlicmFyeSBmb3IgdGhlIG1vc3Qgb2YKPj4gdGhl
IGNhc2VzLgo+Cj5IbSB5ZWFoIGdpdmVuIHRoYXQgdGhlIHNlcmllcyB3YW50IHRvIGludHJvZHVj
ZSBBQ1BJIGFzIHdlbGwgaXQgbWFrZXMKPmEgbG90IG9mIHNlbnNlLgo+Cj5Zb3VycywKPkxpbnVz
IFdhbGxlaWoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
