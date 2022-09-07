Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6092DECAAA1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 00:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=KTG0pURah3JWqG2yOo+1rVwolk+uIBKIuUOPOm0iir4=; b=eK4dgmaSz60xB/
	yCKLoE5gjvJbkdVr44LREe1kfZhzh5GPBHS78w2sZD3HYXyrimJlYRU/f1GiDFK4nGbULUKCECNkq
	ACBFCU2hY83VXT/mjNb0O8JUPB4VtqrrBDQody7nun1BYp/0PZris0n6Vxb/aYP1OsroV421+ohIJ
	yDJNOEQTsmN1eKLfnWDFVbE6GXHXah3xWFKpbxWHLbDwNUv4zmV0pKltTeJELw6kQSR8fRWpfh5iv
	cO/3pHkKh+Fh2+KzMCj/KoTSKl6xvbmYg59tvetvLgMM8ROxhcHGQkTVe281OYKW0j7jiWO3Rifpy
	2qr6CPBjE89OsUqLIGXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVjOL-0016jQ-Vk; Wed, 07 Sep 2022 00:58:09 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVjOI-0016gQ-Ss
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 00:58:09 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id 15E738402BC;
	Wed,  7 Sep 2022 08:58:02 +0800 (CST)
Date: Wed, 7 Sep 2022 08:58:02 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.or>, 
	"Tao Huang" <huangtao@rock-chips.com>
Subject: Re: Re: [PATCH v2] gpio: rockchip: support acpi
References: <20220906013025.3302530-1-jay.xu@rock-chips.com>, 
	<YxdyzRWDi+jwW2iN@smile.fi.intel.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022090708580193992256@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDT0oeVkMaGE0ZH0MeHkgYSFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NlE6Dww5GD0hCDM8LTE9L0wu
	MRYwCzFVSlVKTU1JTkpJSUNJTUJCVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU1LSUs3Bg++
X-HM-Tid: 0a8315743aab2eb8kusn15e738402bc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_175807_290135_4DD4D640 
X-CRM114-Status: GOOD (  19.71  )
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

SGkgQW5keQoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBUdWUsIFNl
cCAwNiwgMjAyMiBhdCAwOTozMDoyNUFNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+PiBUaGlz
IHBhdGNoIGZpeCBkcml2ZXIgdG8gc3VwcG9ydCBhY3BpIGJ5IGZvbGxvd2luZyBjaGFuZ2VzOgo+
PsKgICogc3VwcG9ydCBnZXQgZ3BpbyBiYW5rIG51bWJlciBmcm9tIHVpZCBvZiBhY3BpCj4+wqAg
KiB0cnkgdG8gZ2V0IGNsb2NrcyBmb3IgZHQgbm9kZXMgYnV0IGZvciBhY3BpCj4+wqAgKiB0cnkg
dG8gZ2V0IGNsb2NrcyBieSBhIGNoYXIgaWQgZmlyc3QsIGlmIGEgZHQgcGF0Y2ggYXBwbGllZAo+
Cj4uLi4KPgo+PiAtCWJhbmstPmRvbWFpbiA9IGlycV9kb21haW5fYWRkX2xpbmVhcihiYW5rLT5v
Zl9ub2RlLCAzMiwKPj4gKwliYW5rLT5kb21haW4gPSBpcnFfZG9tYWluX2NyZWF0ZV9saW5lYXIo
ZGV2X2Z3bm9kZShiYW5rLT5kZXYpLCAzMiwKPj7CoCAmaXJxX2dlbmVyaWNfY2hpcF9vcHMsIE5V
TEwpOwo+Cj5TaG91bGQgaXQgYmUgY29udmVydGVkIHRvIHVzZSBHUElPX01BWF9QSU5TIGF0IHRo
ZSBzYW1lIHRpbWU/IApva2F5LCB3aWxsIGZpeCBpbiB2MwoKPgo+Li4uCj4KPj4gK3N0YXRpYyBp
bnQgcm9ja2NoaXBfZ3Bpb19vZl9nZXRfYmFua19pZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICt7
Cj4+ICsJc3RhdGljIGludCBncGlvOwo+PiArCWludCBiYW5rX2lkID0gLTE7Cj4KPj4gKwlpZiAo
SVNfRU5BQkxFRChDT05GSUdfT0YpICYmIGRldi0+b2Zfbm9kZSkgewo+Cj5DYW4ndCBpc19vZl9u
b2RlKCkgYmUgc3VmZmljaWVudCBjaGVjaz8gCm9rYXksIHdpbGwgZml4IGluIHYzCgo+Cj4+ICsJ
YmFua19pZCA9IG9mX2FsaWFzX2dldF9pZChkZXYtPm9mX25vZGUsICJncGlvIik7Cj4+ICsJaWYg
KGJhbmtfaWQgPCAwKQo+PiArCWJhbmtfaWQgPSBncGlvKys7Cj4+ICsJfQo+PiArCj4+ICsJcmV0
dXJuIGJhbmtfaWQ7Cj4+ICt9Cj4KPi4uLgo+Cj4+ICsjaWZkZWYgQ09ORklHX0FDUEkKPgo+V2h5
PyAKQmVjYXVzZSB0aGXCoGFjcGlfZGV2aWNlX3VpZCBvbmx5IGRlZmluZWQgdW5kZXLCoENPTkZJ
R19BQ1BJLAoKPgo+PiArc3RhdGljIGludCByb2NrY2hpcF9ncGlvX2FjcGlfZ2V0X2JhbmtfaWQo
c3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArCXN0cnVjdCBhY3BpX2RldmljZSAqYWRldjsK
Pj4gKwl1bnNpZ25lZCBsb25nIGJhbmtfaWQgPSAtMTsKPj4gKwljb25zdCBjaGFyICp1aWQ7Cj4+
ICsJaW50IHJldDsKPj4gKwo+PiArCWFkZXYgPSBBQ1BJX0NPTVBBTklPTihkZXYpOwo+PiArCWlm
ICghYWRldikKPj4gKwlyZXR1cm4gLUVOWElPOwo+PiArCj4+ICsJdWlkID0gYWNwaV9kZXZpY2Vf
dWlkKGFkZXYpOwo+PiArCWlmICghdWlkIHx8ICEoKnVpZCkpIHsKPj4gKwlkZXZfZXJyKGRldiwg
IkNhbm5vdCByZXRyaWV2ZSBVSURcbiIpOwo+PiArCXJldHVybiAtRU5PREVWOwo+Cj5XaHkgaXMg
aXQgYSBmYXRhbCBlcnJvcj8gQ2FuJ3QgYmUgdGhlIHNhbWUgYXBwcm9hY2ggYXMgZm9yIE9GIGJl
IHVzZWQ/IApGb3IgdGhlIE9GLCB0aGUgdmVyeSBlYXJseSBkcml2ZXIgZ2V0IHRoZSBncGlvIGlk
IGZyb20gdGhlIG5vZGUgbmFtZSBvZiBkdCBub2RlLCBzdWNoIGFzCmdwaW8wQHh4eHh4eAoKQWZ0
ZXIgYSBwYXRjaCB0byBjaGFuZ2UgdGhlIGR0IG5vZGUgYXMgY29tbW9uIG5hbWUgbGlrZSBncGlv
MDogZ3Bpb0B4eHh4eCwgYnV0IGxhY2sgb2YgdGhlIGFsaWFzCnRoZSBkcml2ZXIgc2hvdWxkIHRv
IGNvbnNpZGUgdGhhdCBzbyB1c2UgYSBzdGF0aWMgZ3BpbyBudW1iZXIgaWQsIGFsc28gc3VwcG9y
dCBnZXQgdGhlIGNvbnRyb2xsZXIgaWQKZnJvbSB0aGUgYWxpYXNtZW50LgoKRm9yIHRoZSBBQ1BJ
LCBoZXJlIHdlIGxvY2F0IGF0IHRoZSBmaXJzdCB2ZXJzaW9uLCBhbmQgcmVmZXJlbmNlIHRvIHRo
ZSBBQ1BJIGR1Y3VtZW50LCB0aGUgZ3BpbyBjb250cm9sbGVyCmlkIHNob3VsZCBwYXNzZWQgwqBi
eSB0aGUgdWlkLCBzbyB0aGlzIHBhdGNoIHRyZWF0IGl0IGFzIGEgcmVxdWlyZW1lbnQgYnV0IGEg
b3B0aW9uLgoKPgo+PiArCX0KPj4gKwo+PiArCXJldCA9IGtzdHJ0b3VsKHVpZCwgMCwgJmJhbmtf
aWQpOwo+PiArCj4+ICsJcmV0dXJuICFyZXQgPyBiYW5rX2lkIDogLUVSQU5HRTsKPgo+VXNlIHN0
YW5kYXJkIHBhdHRlcm4sIGkuZS4KPgo+CWlmIChyZXQpCj4JcmV0dXJuIHJldDsKPgo+PiArfQo+
PiArI2Vsc2UKPj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb19hY3BpX2dldF9iYW5rX2lkKHN0
cnVjdCBkZXZpY2UgKmRldikKPj4gK3sKPj4gKwlyZXR1cm4gLUVOT0VOVDsKPj4gK30KPj4gKyNl
bmRpZiAvKiBDT05GSUdfQUNQSSAqLwo+Cj4uLi4KPgo+PiArCWludCBiYW5rX2lkID0gMDsKPgo+
UmVkdW5kYW50IGFzc2lnbm1lbnQuCj4KPi4uLgo+Cj4+ICsJaWYgKCFBQ1BJX0NPTVBBTklPTihk
ZXYpKSB7Cj4KPk9uZSBvZjoKPgo+CWlzX29mX25vZGUoKQo+CSFpc19hY3BpX25vZGUoKQo+Cj4/
Cj4KPi4uLgo+Cj4+ICsJaWYgKCFBQ1BJX0NPTVBBTklPTihkZXYpKSB7Cj4KPkRpdHRvLgo+Cj5C
dXQgbG9va2luZyBob3cgdGhpcyBkaXNydXB0cyB0aGUgY29kZSwganVzdCBsZWF2ZSBPRiBhbmQg
QUNQSSBwYXJ0cyBzZXBhcmF0ZSwKPmRvbid0IG1peCB0aGVtLgo+Cj4uLi4KPgo+PiArCWlmICgh
ZGV2aWNlX3Byb3BlcnR5X3JlYWRfYm9vbChiYW5rLT5kZXYsICJncGlvLXJhbmdlcyIpICYmIHBj
dGxkZXYpIHsKPj4gKwlzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZiYW5rLT5ncGlvX2NoaXA7Cj4+
ICsKPj4gKwlyZXQgPSBncGlvY2hpcF9hZGRfcGluX3JhbmdlKGdjLCBkZXZfbmFtZShwY3RsZGV2
LT5kZXYpLCAwLAo+PiArCcKgwqDCoMKgIGdjLT5iYXNlLCBnYy0+bmdwaW8pOwo+PiArCWlmIChy
ZXQpIHsKPj4gKwlkZXZfZXJyKGJhbmstPmRldiwgIkZhaWxlZCB0byBhZGQgcGluIHJhbmdlXG4i
KTsKPj4gKwlnb3RvIGVycl91bmxvY2s7Cj4+ICsJfQo+PsKgIH0KPgo+V2h5PyBXaGF0J3Mgd3Jv
bmcgd2l0aCBHUElPIGxpYnJhcnkgZG9pbmcgdGhpcyBmb3IgYWxsIGNoaXBzPyAKVW5kZXIgQUNQ
SSBjYXNlLCB0aGUgcGluY3RybCBkZXZpY2UgbWF5YmUgbm90IGV4aXN0LCBjdXJyZW50bHkgb3Vy
IGJvYXJkIHJ1bnMgd2l0aG91dCBwaW5jdHJsLApzbyBhZGQgYSBjaGVjayB0byB0aGUgcGN0bGRl
di4KCj4KPi0tCj5XaXRoIEJlc3QgUmVnYXJkcywKPkFuZHkgU2hldmNoZW5rbwo+Cj4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
