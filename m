Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 620A7C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 17:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB0TPGfbnCYFkIXTXpgeXMQvA3iTatuugobsDCQUCFQ=; b=04YG83NSDMFT1n
	AHMaixlI1WJSrNOYg6B/aHZs/tkCr8QSUOruoWaZpdsc744UmnaIAjMVtsxJvMOhpv86r/84+Nh5l
	ZzI/Ht5uBiWdRQPYydpAxvqYRqf0CCxxmrsUVJ0Ov0h4BzLrypC+7FfSPaw0Hv8EF/enW8vPZhSnF
	ueVxoAS3xHRmzz6B01p/EgovRPm1MgKuXypJfNbR+EyV9KRJOdFgTYYVnta4K2rEzki6G3ne8qGlq
	hTXEbVLCVXI3LKWm1FSCi8eOEYb6dZpO2rr/tb7N9xTrYOksM+xEQG3AAkeUGl4lNgNrT3fjfYoYB
	x7o0SAeuJkY/wV/6iyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1W93-00B1au-3D;
	Tue, 23 May 2023 17:50:02 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Uzd-00Aozc-16
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 16:36:14 +0000
Received: from [IPV6:2a01:e0a:120:3210:1ba:3e91:de16:9b34] (unknown [IPv6:2a01:e0a:120:3210:1ba:3e91:de16:9b34])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AB39566058F2;
	Tue, 23 May 2023 17:36:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684859772;
	bh=3CHENV+5lz2J3P/NrtkeHy+T26fSrnBLYvY12RFPujU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Bn/9h34rplwZ8vt11Bie+wDUicXHyWL16UJevssSKdtIhuZdvsOWd59sLMpgNTVke
	 O/kQ+cWgurR1TtUR9ztJy6CuT2wR4ov4Y+6ArXmgUNOT4nC1RC2p01y+3t/y1TyjRz
	 PdaAMa24UeY+oYBNmNyqEb+UX3nksoipZ4MZv2LWF2JQjgtp52oyOKqMXyS9vsN8Z8
	 /Cu5emY1niveMq6OoMuZ9DP24C6nOqEI5pPTrh+K0ZmhHg4OZO7TDpk5xBuLaHgMEN
	 ES5XJu5vg/wF6+/qQNLuc2ILy9d5qCB23+Z1BJFlN3UcjOStELmSaoy0+wZ6Rrk8j8
	 WJ/6zywxuozNQ==
Message-ID: <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
Date: Tue, 23 May 2023 18:36:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
Content-Language: en-US
To: ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 m.tretter@pengutronix.de, didi.debian@cknow.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 hverkuil-cisco@xs4all.nl, kernel@pengutronix.de, regressions@lists.linux.dev
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_093613_509978_5333B589 
X-CRM114-Status: GOOD (  18.87  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIzLzA1LzIwMjMgw6AgMTg6MjUsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIGlzc3VlIG9ic2VydmVkIG9uIE9kcm9pZC1NMSBib2Fy
ZDoKPgo+ICAgVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNl
IGF0IHZpcnR1YWwgYWRkcmVzcyAwMDAwMDAwMDAwMDAwMDA4Cj4gICBNZW0gYWJvcnQgaW5mbzoK
PiAgIC4uLgo+ICAgTW9kdWxlcyBsaW5rZWQgaW46IGNyY3QxMGRpZl9jZSBoYW50cm9fdnB1IHNu
ZF9zb2Nfc2ltcGxlX2NhcmQgc25kX3NvY19zaW1wbGVfY2FyZF91dGlscyB2NGwyX3ZwOSB2NGwy
X2gyNjQgcm9ja2NoaXBfc2FyYWRjIHY0bDJfbWVtMm1lbSB2aWRlb2J1ZjJfZG1hX2NvbnRpZyB2
aWRlb2J1ZjJfbWVtb3BzIHJ0Y19yazgwOCB2aWRlb2J1ZjJfdjRsMiBpbmR1c3RyaWFsaW9fdHJp
Z2dlcmVkX2J1ZmZlciByb2NrY2hpcF90aGVybWFsIGR3bWFjX3JrIHN0bW1hY19wbGF0Zm9ybSBz
dG1tYWMgdmlkZW9kZXYga2ZpZm9fYnVmIGRpc3BsYXlfY29ubmVjdG9yIHZpZGVvYnVmMl9jb21t
b24gcGNzX3hwY3MgbWMgcm9ja2NoaXBkcm0gYW5hbG9naXhfZHAgZHdfbWlwaV9kc2kgZHdfaGRt
aSBkcm1fZGlzcGxheV9oZWxwZXIgcGFuZnJvc3QgZHJtX3NobWVtX2hlbHBlciBncHVfc2NoZWQg
aXBfdGFibGVzIHhfdGFibGVzIGlwdjYKPiAgIENQVTogMyBQSUQ6IDE3NiBDb21tOiB2NGxfaWQg
Tm90IHRhaW50ZWQgNi4zLjAtcmM3LW5leHQtMjAyMzA0MjAgIzEzNDgxCj4gICBIYXJkd2FyZSBu
YW1lOiBIYXJka2VybmVsIE9EUk9JRC1NMSAoRFQpCj4gICBwc3RhdGU6IDYwNDAwMDA5IChuWkN2
IGRhaWYgK1BBTiAtVUFPIC1UQ08gLURJVCAtU1NCUyBCVFlQRT0tLSkKPiAgIHBjIDogaGFudHJv
X3RyeV9mbXQrMHhhMC8weDI3OCBbaGFudHJvX3ZwdV0KPiAgIGxyIDogaGFudHJvX3RyeV9mbXQr
MHg5NC8weDI3OCBbaGFudHJvX3ZwdV0KPiAgIC4uLgo+ICAgQ2FsbCB0cmFjZToKPiAgICBoYW50
cm9fdHJ5X2ZtdCsweGEwLzB4Mjc4IFtoYW50cm9fdnB1XQo+ICAgIGhhbnRyb19zZXRfZm10X291
dCsweDNjLzB4Mjk4IFtoYW50cm9fdnB1XQo+ICAgIGhhbnRyb19yZXNldF9yYXdfZm10KzB4OTgv
MHgxMjggW2hhbnRyb192cHVdCj4gICAgaGFudHJvX3NldF9mbXRfY2FwKzB4MjQwLzB4MjU0IFto
YW50cm9fdnB1XQo+ICAgIGhhbnRyb19yZXNldF9lbmNvZGVkX2ZtdCsweDk0LzB4Y2MgW2hhbnRy
b192cHVdCj4gICAgaGFudHJvX3Jlc2V0X2ZtdHMrMHgxOC8weDM4IFtoYW50cm9fdnB1XQo+ICAg
IGhhbnRyb19vcGVuKzB4ZDQvMHgyMGMgW2hhbnRyb192cHVdCj4gICAgdjRsMl9vcGVuKzB4ODAv
MHgxMjAgW3ZpZGVvZGV2XQo+ICAgIGNocmRldl9vcGVuKzB4YzAvMHgyMmMKPiAgICBkb19kZW50
cnlfb3BlbisweDEzYy8weDQ4Ywo+ICAgIHZmc19vcGVuKzB4MmMvMHgzOAo+ICAgIHBhdGhfb3Bl
bmF0KzB4NTUwLzB4OTM0Cj4gICAgZG9fZmlscF9vcGVuKzB4ODAvMHgxMmMKPiAgICBkb19zeXNf
b3BlbmF0MisweGI0LzB4MTY4Cj4gICAgX19hcm02NF9zeXNfb3BlbmF0KzB4NjQvMHhhYwo+ICAg
IGludm9rZV9zeXNjYWxsKzB4NDgvMHgxMTQKPiAgICBlbDBfc3ZjX2NvbW1vbisweDEwMC8weDEy
MAo+ICAgIGRvX2VsMF9zdmMrMHgzYy8weGE4Cj4gICAgZWwwX3N2YysweDQwLzB4YTgKPiAgICBl
bDB0XzY0X3N5bmNfaGFuZGxlcisweGI4LzB4YmMKPiAgICBlbDB0XzY0X3N5bmMrMHgxOTAvMHgx
OTQKPiAgIENvZGU6IDk3ZmM4YTdmIGY5NDBhYTgwIDUyODY0YTYxIDcyYTY4NmMxIChiOTQwMDgw
MCkKPiAgIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+Cj4gRml4ZXM6IGRi
NmY2OGI1MWU1YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRG8gbm90IHNldCBjb250ZXh0IHNyYy9k
c3QgZm9ybWF0cyBpbiByZXNldCBmdW5jdGlvbnMiKQo+Cj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gLS0tCgpEaWVk
ZXJpY2ssIE1hcmVrLCBNaWNoYWVsLApJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2ggb24gbXkgYm9h
cmRzIGFuZCBJIHNlZSBubyByZWdyZXNzaW9ucyBvbgpkZWNvZGVyIHBhcnQgYW5kIG5vIG1vcmUg
Y3Jhc2ggd2hlbiBwcm9iaW5nIHRoZSBlbmNvZGVyLgpDb3VsZCB5b3UgdGVzdCBpdCBvbiB5b3Vy
IHNpZGUgdG8gY29uZmlybSBpdCBpcyBvayA/CgpUaG9yc3RlbiwgSSB0cnkvdGVzdCByZWd6Ym90
IGNvbW1hbmRzLCBwbGVhc2UgdGVsbCBtZSBpZiBpdCBpcyBjb3JyZWN0LgoKI3JlZ3pib3QgXmlu
dHJvZHVjZWQgZGI2ZjY4YjUxZTVjCiNyZWd6Ym90IHRpdGxlIG1lZGlhOiB2ZXJpc2lsaWNvbjog
bnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHRyeV9mbXQKI3JlZ3pib3QgaWdub3JlLWFjdGl2
aXR5CgoKPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIu
YyB8IDYgKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYwo+IGluZGV4IDgzNTUxODUzNGUzYi4uNjFjZmFhZjRlOTI3IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IEBA
IC0zOTcsMTAgKzM5NywxMiBAQCBoYW50cm9fcmVzZXRfcmF3X2ZtdChzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LCBpbnQgYml0X2RlcHRoKQo+ICAgCWlmICghcmF3X3ZwdV9mbXQpCj4gICAJCXJldHVy
biAtRUlOVkFMOwo+ICAgCj4gLQlpZiAoY3R4LT5pc19lbmNvZGVyKQo+ICsJaWYgKGN0eC0+aXNf
ZW5jb2Rlcikgewo+ICAgCQllbmNvZGVkX2ZtdCA9ICZjdHgtPmRzdF9mbXQ7Cj4gLQllbHNlCj4g
KwkJY3R4LT52cHVfc3JjX2ZtdCA9IHJhd192cHVfZm10Owo+ICsJfSBlbHNlIHsKPiAgIAkJZW5j
b2RlZF9mbXQgPSAmY3R4LT5zcmNfZm10Owo+ICsJfQo+ICAgCj4gICAJaGFudHJvX3Jlc2V0X2Zt
dCgmcmF3X2ZtdCwgcmF3X3ZwdV9mbXQpOwo+ICAgCXJhd19mbXQud2lkdGggPSBlbmNvZGVkX2Zt
dC0+d2lkdGg7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
