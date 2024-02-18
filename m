Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44C54C5475B
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 11:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfSdVk1+CcRbOmQNj101YKiBCIy14q/2X25h7rVw5+M=; b=0nCSt/CCbJXbsP
	VMVPu4fzUZ2spJRGtH88MAJE1b8wYckxY8LhPG06Ftvg9GcI/RsD45IMbfZ/t9fomEPLoVgBGMA8d
	JoKCiVyARHGvalNLqKlCY1FjwJgLjdFpXlJp9Rj87fHzZCv9Qb4r/9cOqQtX0Wxd75+CG3sQu840L
	c+Lg5wcp/jUijNJy0Cp80a19zCC+nrDheQVFtW3i0VznkDW2y5hpPj8Q5lPtpW9Ov1LikkOVl7uUb
	dbzohEz8xBk4b56Stq48Xagdz3CJcdEBiHuZp/fCWSnwhHS8FDS4MaJZ5p9WvrkeKQm/0+BM+33u2
	XAbgXK+ojwSExxjiN2GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbf8v-00000007aqZ-0rmd;
	Sun, 18 Feb 2024 11:15:33 +0000
Received: from mail-m25472.xmail.ntesmail.com ([103.129.254.72])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbf8r-00000007aoj-1ubu;
	Sun, 18 Feb 2024 11:15:32 +0000
DKIM-Signature: a=rsa-sha256;
	b=AAa0zM2E+Q12+GcmuIFv1U7goDU0DJKrvIT/J3L5khHV86ESFhoQJ+kNQZR+FX6N4AuyM0Mah3+XdQWYwe4YpfrkXIkDw4Zvv1ZPS9vZx/xurswQ+lIplIZwnB7GIDwYfYx5WGSL1QtX+PCB2h1akWZd5Cly6IX/L1rqef6XDEw=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=z/dQY2HoW+YQ89aYc9H+gh/iwK6p8BunDVlsiz6zZYc=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 920A584021C;
	Sun, 18 Feb 2024 19:14:56 +0800 (CST)
Message-ID: <4c66c084-5af6-43fb-a256-4746b2e00192@rock-chips.com>
Date: Sun, 18 Feb 2024 19:14:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm: rockchip: Don't require MIPI DSI device when it's
 used for ISP
Content-Language: en-US
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20240217183941.1752463-1-megi@xff.cz>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20240217183941.1752463-1-megi@xff.cz>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhOGVZNTUpIGRofSk5DHx5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8dbbed244003a4kunm920a584021c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NT46Ijo5VjMcHy4dMg4NCz80
	AlEKFEJVSlVKTEtDSU5PQ0JMTkNCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0JMTzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_031530_071465_A44195A4 
X-CRM114-Status: GOOD (  26.31  )
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

SGksCgpPbiAyLzE4LzI0IDAyOjM5LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBGcm9tOiBPbmRy
ZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiAKPiBPbiBSSzMzOTkgb25lIE1JUEkgRFNJIGRldmlj
ZSBjYW4gYmUgYWx0ZXJuYXRpdmVseSB1c2VkIHdpdGggdGhlIElTUDEsCj4gdG8gcHJvdmlkZSBS
WCBEUEhZLiBXaGVuIHRoaXMgaXMgdGhlIGNhc2UgKElTUDEgaXMgZW5hYmxlZCBpbiBkZXZpY2UK
PiB0cmVlKSwgcHJvYmUgc3VjY2VzcyBvZiBEUk0gaXMgdGllZCB0byBwcm9iZSBzdWNjZXNzIG9m
IElTUDEgY29ubmVjdGVkCj4gY2FtZXJhIHNlbnNvci4gVGhpcyBjYW4gZmFpbCBpZiB0aGUgdXNl
ciBpcyBhYmxlIHRvIGtpbGxzd2l0Y2ggdGhlIGNhbWVyYQo+IHBvd2VyLCBsaWtlIG9uIFBpbmVw
aG9uZSBQcm8uCj4gCj4gRGV0ZWN0IHVzZSBvZiBNSVBJIERTSSBjb250cm9sbGVyIGJ5IElTUCwg
YW5kIGRvbid0IGluY2x1ZGUgaXQgaW4KPiBjb21wb25lbnQgbWF0Y2ggbGlzdCBpbiB0aGF0IGNh
c2UuCj4gCgpJc24ndCB0aGlzIHN1cHBvc2VkIHRvIGJlIHRha2VuIGNhcmUgb2Ygd2l0aGluIHRo
ZSBkdHM/ClNpbmNlIERQSFkxIHNob3VsZCBleGNsdXNpdmVseSB1c2VkIGJ5IE1JUEkgRFNJMSBh
bmQgSVNQMSwgdGhlbiBpZgphIGRldmljZSB3YW50IHRvIHVzZSBJU1AxLCB0aGUgRFNJMSBzaG91
bGQgYmUgZGlzYWJsZWQgaW4gZHRzLgo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1l
Z2lAeGZmLmN6Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV9kcnYuYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQ3
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZHJ2LmMKPiBpbmRleCBhYjU1ZDcxMzI1NTAuLmY0N2RlOTRhZDU3NiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+IEBAIC0zNTQsNiArMzU0
LDQzIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RybV9tYXRjaF9yZW1vdmUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ICAgCQlkZXZpY2VfbGlua19kZWwobGluayk7Cj4gICB9Cj4gICAKPiArLyoKPiAr
ICogQ2hlY2sgaWYgSVNQIGJsb2NrIGxpbmtlZCB0byBhIG1pcGktZHNpIGRldmljZSB2aWEgcGh5
cyBwaGFuZGxlIGlzCj4gKyAqIGVuYWJsZWQgaW4gZGV2aWNlIHRyZWUuCj4gKyAqLwo+ICtzdGF0
aWMgYm9vbCByb2NrY2hpcF9kcm1faXNfbWlwaTFfYW5kX3VzZWRfYnlfaXNwKHN0cnVjdCBkZXZp
Y2UgKmRldikKPiArewo+ICsJc3RydWN0IGRldmljZV9ub2RlICpucCA9IE5VTEwsICpwaHlfbnA7
Cj4gKwo+ICsJaWYgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPm9mX25vZGUsICJyb2Nr
Y2hpcCxyazMzOTktbWlwaS1kc2kiKSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJd2hpbGUg
KHRydWUpIHsKPiArCQlucCA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKG5wLCBOVUxMLCAicm9j
a2NoaXAscmszMzk5LWNpZi1pc3AiKTsKPiArCQlpZiAoIW5wKQo+ICsJCQlicmVhazsKPiArCj4g
KwkJaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5wKSkgewo+ICsJCQlvZl9ub2RlX3B1dChu
cCk7Cj4gKwkJCWNvbnRpbnVlOwo+ICsJCX0KPiArCj4gKwkJcGh5X25wID0gb2ZfcGFyc2VfcGhh
bmRsZShucCwgInBoeXMiLCAwKTsKPiArCQlpZiAoIXBoeV9ucCkgewo+ICsJCQlvZl9ub2RlX3B1
dChucCk7Cj4gKwkJCWNvbnRpbnVlOwo+ICsJCX0KPiArCj4gKwkJb2Zfbm9kZV9wdXQocGh5X25w
KTsKPiArCQlvZl9ub2RlX3B1dChucCk7Cj4gKwo+ICsJCWlmIChwaHlfbnAgPT0gZGV2LT5vZl9u
b2RlKQo+ICsJCQlyZXR1cm4gdHJ1ZTsKPiArCX0KPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gK30K
PiArCj4gICBzdGF0aWMgc3RydWN0IGNvbXBvbmVudF9tYXRjaCAqcm9ja2NoaXBfZHJtX21hdGNo
X2FkZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICB7Cj4gICAJc3RydWN0IGNvbXBvbmVudF9tYXRj
aCAqbWF0Y2ggPSBOVUxMOwo+IEBAIC0zNzEsNiArNDA4LDE2IEBAIHN0YXRpYyBzdHJ1Y3QgY29t
cG9uZW50X21hdGNoICpyb2NrY2hpcF9kcm1fbWF0Y2hfYWRkKHN0cnVjdCBkZXZpY2UgKmRldikK
PiAgIAkJCWlmICghZCkKPiAgIAkJCQlicmVhazsKPiAgIAo+ICsJCQkvKgo+ICsJCQkgKiBJZiBt
aXBpMSBpcyBjb25uZWN0ZWQgdG8gSVNQLCB3ZSBkb24ndCB3YW50IHRvIHdhaXQgZm9yIG1pcGkx
IGNvbXBvbmVudCwKPiArCQkJICogYmVjYXVzZSBpdCB3aWxsIG5vdCBiZSB1c2VkIGJ5IERSTSBh
bnl3YXksIHRvIG5vdCB0aWUgc3VjY2VzcyBvZiBjYW1lcmEKPiArCQkJICogZHJpdmVyIHByb2Jl
IHRvIGRpc3BsYXkgcGlwZWxpbmUgaW5pdGlhbGl6YXRpb24uCj4gKwkJCSAqLwo+ICsJCQlpZiAo
cm9ja2NoaXBfZHJtX2lzX21pcGkxX2FuZF91c2VkX2J5X2lzcChkKSkgewo+ICsJCQkJZGV2X2lu
Zm8oZCwgInVzZWQgYnkgSVNQMSwgc2tpcHBpbmcgZnJvbSBEUk1cbiIpOwo+ICsJCQkJY29udGlu
dWU7Cj4gKwkJCX0KPiArCj4gICAJCQlkZXZpY2VfbGlua19hZGQoZGV2LCBkLCBETF9GTEFHX1NU
QVRFTEVTUyk7Cj4gICAJCQljb21wb25lbnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wb25l
bnRfY29tcGFyZV9kZXYsIGQpOwo+ICAgCQl9IHdoaWxlICh0cnVlKTsKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
