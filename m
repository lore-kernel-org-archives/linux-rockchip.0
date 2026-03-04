Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AD9EF8FE5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 13:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8zCE/w5WdHJAkkwLEmvrZpKYYRznb/R8DnARLHgYHc8=; b=plQjAYsMlC5JqNIzKXn1tXw3/H
	6Rbr7hi2Q7Q203+GBKH1i9HKazrmhToXzKla1jzGE5fJWc6qC9t55YfToH4eWuZoBR+fOOoh2qCN3
	DmijJajYoIRH6UgxJ76BJOcf7h2PTGNBqptpAylIc/WQUqrVseD891TfL7Wu8+EDmZTTS9KKoNRYX
	vC0kXSWIdSW2Vpdy8DBSppGa1a7Pz3sMEDNUgH+CvtBkXkv2OqbiTPXQwB4fH0oVnLTWCmBbnYo86
	ExH3KtsQiNzeLD6PL4+3CkACotAZA/Gfuh0FW0QytZ/c069/mOhoSBzNZfXiV9i+0KSp7G8UXNDF8
	qzFR6SEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmjH-0000000HHr4-1Gxf;
	Wed, 04 Mar 2026 13:57:35 +0000
Received: from mail-m3268.qiye.163.com ([220.197.32.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmjF-0000000HHqX-084e;
	Wed, 04 Mar 2026 13:57:34 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35bf2f09e;
	Wed, 4 Mar 2026 21:57:28 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 Claude <noreply@anthropic.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>, linux-rockchip@lists.infradead.org
References: <20260213151452.535527-1-midgy971@gmail.com>
 <20260304132957.684616-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
Date: Wed, 4 Mar 2026 21:57:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260304132957.684616-1-midgy971@gmail.com>
X-HM-Tid: 0a9cb923aba109cckunm391357bd122b677
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhOTFYdHhpLTx9PQ0IfShlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ktf65g5fYYif+jmoKTPl+TFmIitwgG8hTrUcgGlxKEahlcwdTROmEuIxYNX4z1HYZJf8N5bUku/XmysBMoLD/Ox5/h7rzbSo/hKOOXLnXdL7nhB7tAGBmz3hsTRmQbu0MwVUTDAx1HSE1zegxhhNvLc984dud6RVqTaRnFuzGJA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wnGfWYNz/B8Z/STQ+nxDMrIaxkLZdCmgqwbc8lykD5c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_055733_291306_FB53B3A5 
X-CRM114-Status: GOOD (  23.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8wNCDQx8bayP0gMjE6MjksIE1pZEc5NzEg0LS1wDoKPiBUaGUgUmFkeGEgUk9D
SyAzQiB1c2VzIGEgUEk2QzIwMTAwIFBDSWUgcmVmZXJlbmNlIGNsb2NrIGJ1ZmZlciB0bwo+IHBy
b3ZpZGUgYSAxMDBNSHogcmVmZXJlbmNlIGNsb2NrIHRvIHRoZSBQQ0llIDMuMCBQSFkgYW5kIGNv
bnRyb2xsZXJzLgo+IFRoaXMgY2hpcCBpcyBjdXJyZW50bHkgbW9kZWxlZCBvbmx5IGFzIGEgZml4
ZWQgcmVndWxhdG9yCj4gKHZjYzN2M19waTZjXzAzKSwgd2l0aCBubyBjbG9jayBvdXRwdXQgcmVw
cmVzZW50YXRpb24uCj4gCj4gVGhlIFBJNkMyMDEwMCBpcyBhIGNsb2NrIGdlbmVyYXRvciwgbm90
IGEgcG93ZXIgc3VwcGx5LiBNb2RlbCBpdAo+IHByb3Blcmx5IGFzIGEgZ2F0ZWQtZml4ZWQtY2xv
Y2ssIGZvbGxvd2luZyB0aGUgcGF0dGVybiBlc3RhYmxpc2hlZAo+IGZvciB0aGUgUm9jayA1IElU
WCBhbmQgb3RoZXIgYm9hcmRzIHdpdGggc2ltaWxhciBQQ0llIGNsb2NrIGJ1ZmZlcgo+IGNoaXBz
Lgo+IAo+IFRoZSByZWd1bGF0b3Igbm9kZSBpcyBrZXB0IGFzLWlzIHNpbmNlIGl0IGNvbnRyb2xz
IHRoZSBwb3dlciBzdXBwbHkKPiB0byB0aGUgUEk2QzIwMTAwIGNoaXAgdmlhIEdQSU8wX0Q0LiBU
aGUgbmV3IGdhdGVkLWZpeGVkLWNsb2NrIG5vZGUKPiByZWZlcmVuY2VzIHRoaXMgcmVndWxhdG9y
IGFzIGl0cyB2ZGQtc3VwcGx5IGFuZCBwcm92aWRlcyBhIHByb3Blcgo+IDEwME1IeiBjbG9jayBv
dXRwdXQuIFRoZSBwY2llM3gyIG5vZGUgaXMgdXBkYXRlZCB0byBpbmNsdWRlIHRoZQo+IHJlZmVy
ZW5jZSBjbG9jaywgbWF0Y2hpbmcgdGhlIGFwcHJvYWNoIHVzZWQgaW4gcmszNTg4LXJvY2stNS1p
dHguZHRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkZSA8bm9yZXBseUBhbnRocm9waWMuY29t
PgoKSUlVQywgeW91IGFyZSB1c2luZyBDbGF1ZGUgdG8gaGVscCBnZW5lcmF0ZSB0aGlzIHBhdGNo
LCBwbGVhc2UKZGVzY3JpYmUgaXQgcHJvcGVybHksIGZvciBleGFtcGxlLAoKQ28tZGV2ZWxvcGVk
LWJ5OiBDbGF1ZGUgY2xhdWRlLW9wdXMtNC0yMDI1MDUxNCAgWzFdCm9yCkFzc2lzdGVkLWJ5OiBD
bGF1ZGU6Y2xhdWRlLTMtb3B1cyBbMl0KClsxXSBodHRwczovL2x3bi5uZXQvQXJ0aWNsZXMvMTAz
MTQ3My8KWzJdIGh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3MvY29kaW5nLWFzc2lzdGFu
dHMuaHRtbAkKCj4gU2lnbmVkLW9mZi1ieTogTWlkRzk3MSA8bWlkZ3k5NzFAZ21haWwuY29tPgo+
IC0tLQo+IAo+IENoYW5nZXMgc2luY2UgdjEgWzFdOgo+ICAgLSBEcm9wIHBoeS1zdXBwbHkgYXBw
cm9hY2ggZW50aXJlbHkgKEpvbmFzLCBTaGF3bikKPiAgIC0gTW9kZWwgUEk2QzIwMTAwIGFzIGdh
dGVkLWZpeGVkLWNsb2NrIGluc3RlYWQKPiAgIC0gV2lyZSByZWZlcmVuY2UgY2xvY2sgdG8gcGNp
ZTN4MiBjb250cm9sbGVyCj4gICAtIEZvbGxvdyBwYXR0ZXJuIGZyb20gcmszNTg4LXJvY2stNS1p
dHguZHRzCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIw
MjYwMjEzMTUxNDUyLjUzNTUyNy0xLW1pZGd5OTcxQGdtYWlsLmNvbS8KPiAKPiAgIC4uLi9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMgfCAxOCArKysrKysrKysrKysr
KysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJv
Y2stM2IuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5k
dHMKPiBpbmRleCA2OTAwMWU0Li4yNGJlZmM5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiBAQCAtNTYsNyArNTYsMTYgQEAKPiAg
IAkJfTsKPiAgIAl9Owo+IAo+IC0JLyogcGk2YyBwY2llIGNsb2NrIGdlbmVyYXRvciAqLwo+ICsJ
LyogUEk2QzIwMTAwIFBDSWUgcmVmZXJlbmNlIGNsb2NrIGJ1ZmZlciAoMTAwTUh6KSAqLwo+ICsJ
cGNpZTMwX3JlZmNsazogcGNpZS1jbG9jay1nZW5lcmF0b3Igewo+ICsJCWNvbXBhdGlibGUgPSAi
Z2F0ZWQtZml4ZWQtY2xvY2siOwo+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCQljbG9jay1m
cmVxdWVuY3kgPSA8MTAwMDAwMDAwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAicGNpZTMw
X3JlZmNsayI7Cj4gKwkJdmRkLXN1cHBseSA9IDwmdmNjM3YzX3BpNmNfMDM+Owo+ICsJfTsKPiAr
Cj4gKwkvKiBQSTZDMjAxMDAgcG93ZXIgc3VwcGx5IC0gYWN0aXZlLWhpZ2ggR1BJTzBfRDQgKi8K
PiAgIAl2Y2MzdjNfcGk2Y18wMzogcmVndWxhdG9yLTN2My12Y2MtcGk2Yy0wMyB7Cj4gICAJCWNv
bXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAgIAkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+
IEBAIC01NTMsNiArNTYyLDEzIEBACj4gICB9Owo+IAo+ICAgJnBjaWUzeDIgewo+ICsJY2xvY2tz
ID0gPCZjcnUgQUNMS19QQ0lFMzBYMl9NU1Q+LCA8JmNydSBBQ0xLX1BDSUUzMFgyX1NMVj4sCj4g
KwkJIDwmY3J1IEFDTEtfUENJRTMwWDJfREJJPiwgPCZjcnUgUENMS19QQ0lFMzBYMj4sCj4gKwkJ
IDwmY3J1IENMS19QQ0lFMzBYMl9BVVhfTkRGVD4sCj4gKwkJIDwmcGNpZTMwX3JlZmNsaz47Cj4g
KwljbG9jay1uYW1lcyA9ICJhY2xrX21zdCIsICJhY2xrX3NsdiIsCj4gKwkJICAgICAgImFjbGtf
ZGJpIiwgInBjbGsiLCAiYXV4IiwKPiArCQkgICAgICAicmVmIjsKClRoZXJlIGlzIGEgbWlzc2lu
ZyBwaXBlIGNsb2NrIHdoaWNoIHNob3VsZCBiZSBmaXhlZC4gUGxlYXNlCnJlZmVyIHRvIERhdmlk
J3MgcGF0Y2hbM10uCgpbM10gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlw
L2Q5ODFmYTg0LWJkMDUtYWM5ZC05OGNhLTg5ZWU0NzE3NzgyOUByb2NrLWNoaXBzLmNvbS9ULyNt
NmE4Mjg5NjA5ZTZhNjA2OTFkM2MwNjM1OGI2MzIyYzdhYTVlNDNkMQoKPiAgIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ICAgCXBpbmN0cmwtMCA9IDwmcGNpZTMweDJtMV9waW5zPjsKPiAg
IAlyZXNldC1ncGlvcyA9IDwmZ3BpbzIgUktfUEQ2IEdQSU9fQUNUSVZFX0hJR0g+Owo+IC0tCj4g
Mi4zOS41Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
