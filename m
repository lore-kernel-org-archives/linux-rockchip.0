Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F17C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 16:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dd/YOeQRF7lT1zyNdofWEr9wkwEo01PWGZ4/i83vDQ=; b=bZqOZfe8NQdFOh
	uYD7XgccE0u0DGirTDhAolU+XFTpCXdgD2uu71C34/0NswQ4UkC778AmbrkLXPt7AB8Xf4W3kVRsI
	M4aU+JXy661czzl9HqKAjsKbJZPkcGVT9uPHaDwNZ4NUwG/VPAR6DE5etcQy4VW8YLXFZIr4c9wzW
	ICleq5asmoV5xDqbAGOIn9eUh3A8CvApWDCJOr1jZUVytul7rVtSXTejiE+bXXItgMPGYWD88QNRD
	hm+KWnlUql6OF2x+gZXOM2ewlFL0ss0/Alp7nCBcvLMo336QkJU70vivpguAg8GGzMKFAOFGouuns
	dbey1u2h+uqjSKRclkmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj1c2-00ANxc-Ik; Mon, 25 Apr 2022 16:30:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj0dN-00A6Zp-Qo
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 15:28:19 +0000
Received: from [IPV6:2a01:e0a:120:3210:ad99:4ace:ca31:d49f] (unknown
 [IPv6:2a01:e0a:120:3210:ad99:4ace:ca31:d49f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 44A8A1F43242;
 Mon, 25 Apr 2022 16:28:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650900494;
 bh=48BaXLY/uNsEmn7xLJgc/GuMlYBzj62kSh+QLbDxIcI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=emQ4pXse6Bh96pAzWV6F0oNzLQR57rq4ITLze0/0n5Dh6rkZBGdTP2h5GhYAvAcPL
 N5GzxvxGBz2mzAhPklCRaI0fuVnjU1uS4m98nXfyD/2Q6tLVvhhiusR1TiHtx9Ckts
 1hhmjBEqrjSwe/JYrEFYjT55PiLVSo0mco5Ic4oLUOVgEsOqN7ZVkLc5ZGGD+i0hb+
 H8C7QFNMbk4LnhbVHDKmUB/1z9eoZRhm8iaV3Ek1zbYkeDNmBshQTwXXkvLOCTWc1c
 OhbTRvt89M83DPlVTpZxccHue3AyIco7oxy6DX9I6Q/eJmkN3WGT3OaGsDEz2WXd3K
 Hh48FCkis4JkQ==
Message-ID: <d2e699a9-6c2d-ab87-f23f-4b42096d64be@collabora.com>
Date: Mon, 25 Apr 2022 17:28:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
Content-Language: en-US
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jon@nanocrew.net,
 Adam Ford <aford173@gmail.com>, Collabora Kernel ML <kernel@collabora.com>
References: <20220425105346.324864-1-benjamin.gaignard@collabora.com>
 <CAAEAJfA2K2-YOruDMUjHixaPa1wfTSwpb3K5A-y_i3H6BF7oKQ@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfA2K2-YOruDMUjHixaPa1wfTSwpb3K5A-y_i3H6BF7oKQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_082818_042156_48A249B1 
X-CRM114-Status: GOOD (  15.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDI1LzA0LzIwMjIgw6AgMTQ6MTIsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IE9u
IE1vbiwgQXByIDI1LCAyMDIyIGF0IDc6NTMgQU0gQmVuamFtaW4gR2FpZ25hcmQKPiA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IEFsd2F5cyBzZXQgcHBzX2NiX3Fw
X29mZnNldCBhbmQgcHBzX2NyX3FwX29mZnNldCB2YWx1ZXMgaW4gSGFudHJvL0cyCj4+IHJlZ2lz
dGVyIHdoYXRldmVyIGlzIFY0TDJfSEVWQ19QUFNfRkxBR19QUFNfU0xJQ0VfQ0hST01BX1FQX09G
RlNFVFNfUFJFU0VOVAo+PiBmbGFnIHZhbHVlLgo+PiBUaGlzIGZpeCBhIGNvdXBsZSBvZiB0ZXN0
cyBpbiBmbHVzdGVyLgo+Pgo+IFdoaWNoIHRlc3RzPwoKQ0FJTklUX0dfU0hBUlBfMyB0ZXN0LgpI
YW50cm8gcHJvcHJpZXRhcnkgc3RhY2sgKGcyZGVjIHRvb2wpIGRvZXMgdGhlIHNhbWUuCgpSZWdh
cmRzLApCZW5qYW1pbgoKPgo+IFRoYW5rcywKPiBFemVxdWllbAo+Cj4+IFNpZ25lZC1vZmYtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5j
IHwgOSArKy0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fZzJfaGV2Y19kZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2cyX2hldmNfZGVjLmMKPj4gaW5kZXggMmM4ZWIwNzIwZGI4Li5iYjUxMjM4OWMxYTUgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNf
ZGVjLmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2
Y19kZWMuYwo+PiBAQCAtMTk0LDEzICsxOTQsOCBAQCBzdGF0aWMgdm9pZCBzZXRfcGFyYW1zKHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+ICAgICAgICAgICAgICAgICAgaGFudHJvX3JlZ193cml0
ZSh2cHUsICZnMl9tYXhfY3VfcXBkX2RlcHRoLCAwKTsKPj4gICAgICAgICAgfQo+Pgo+PiAtICAg
ICAgIGlmIChwcHMtPmZsYWdzICYgVjRMMl9IRVZDX1BQU19GTEFHX1BQU19TTElDRV9DSFJPTUFf
UVBfT0ZGU0VUU19QUkVTRU5UKSB7Cj4+IC0gICAgICAgICAgICAgICBoYW50cm9fcmVnX3dyaXRl
KHZwdSwgJmcyX2NiX3FwX29mZnNldCwgcHBzLT5wcHNfY2JfcXBfb2Zmc2V0KTsKPj4gLSAgICAg
ICAgICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfY3JfcXBfb2Zmc2V0LCBwcHMtPnBw
c19jcl9xcF9vZmZzZXQpOwo+PiAtICAgICAgIH0gZWxzZSB7Cj4+IC0gICAgICAgICAgICAgICBo
YW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2NiX3FwX29mZnNldCwgMCk7Cj4+IC0gICAgICAgICAg
ICAgICBoYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2NyX3FwX29mZnNldCwgMCk7Cj4+IC0gICAg
ICAgfQo+PiArICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfY2JfcXBfb2Zmc2V0LCBw
cHMtPnBwc19jYl9xcF9vZmZzZXQpOwo+PiArICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAm
ZzJfY3JfcXBfb2Zmc2V0LCBwcHMtPnBwc19jcl9xcF9vZmZzZXQpOwo+Pgo+PiAgICAgICAgICBo
YW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2ZpbHRfb2Zmc2V0X2JldGEsIHBwcy0+cHBzX2JldGFf
b2Zmc2V0X2RpdjIpOwo+PiAgICAgICAgICBoYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2ZpbHRf
b2Zmc2V0X3RjLCBwcHMtPnBwc190Y19vZmZzZXRfZGl2Mik7Cj4+IC0tCj4+IDIuMzIuMAo+PgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
