Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA589E77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8g9KNhwtQYpdHAKWgE1mfuyBTzSD/1OG1OuCHJj1r9U=; b=XkAxaj0yf4ZzNt
	gYOV9P67sJnM/OrCsTXp5cUHybyo2TuL8aLmNGS7NL2Vcy1NtZPAzja6hkz1eTTpABpLPDAviGvZ8
	ZdaSsCAKf5Wcuj/UJYgtqVXNbD04ZdiEO2KdBYQ4ewiKIP6Nb7FGrpXC9oxbOOy9oZU09ZuNeK8La
	Upv7wwE0P5I9V9JEvFn4Sw5mITQxXuD9Yqzi+5/JPlGIH0y1D36VGYBY3/GAQuY06/0suZIZ4dIxc
	jhGjM/Yx5eOuI8cG9qZgwF01OhuEuzTPpJ2RpkPYAQKRObcT9scv7y4A+Edeu4XunQiC0NF8ctp5W
	3JhrJw+3uIGUBTzUB2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKcWP-00000007ca6-2Xy5;
	Mon, 09 Dec 2024 12:05:53 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKcWH-00000007cWG-3C0r
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:05:51 +0000
X-QQ-mid: bizesmtpip2t1733745894t12g1rh
X-QQ-Originating-IP: FCGHQIL8wqSCmJKer6km0MXNCC/re3TnueY7PBB3GNs=
Received: from [IPV6:240f:10b:7440:1:a0b7:f16b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 09 Dec 2024 20:04:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11391674911926168947
Message-ID: <D823208EACD51A7F+ab5e9bd9-2daf-41a3-a882-9b017d31dd1b@radxa.com>
Date: Mon, 9 Dec 2024 21:04:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan
 for Radxa ROCK 5A/5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241204045447.1036-1-naoki@radxa.com>
 <20241204045447.1036-2-naoki@radxa.com>
 <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MACXe2l6e7j9HxR+aajrKyiBH+aN/o1RiqMbdTZPzh62zmnIrPwh2VPL
	/mhtJW1m+z+SPZKzIS2if9y86/LICwOibfpKhxGdI3Jxdd87gGxIcQS+5j47EhuA0XGWivo
	KwiILp79aTzdojVZ0/9RSmazF8ThwqKeTGnSyxcfvJ6VU3jGnoOLDOCX50KZyEMVToTO+mA
	whveCavBfHfdW05hQcbGKSqwQg+a6w+py0zkGeQ+CuY1C1zqw+3/HMx4WfwpRdNmHDTIRLO
	RCyEGDy7LbcgITP35GTqtiDyTRWtz20si0A2AVf/YKxhBnDzkdmQWFNSYxSYvgxxl/53utf
	xNy3tJH8KJ55GK28balZcq7KONhM6bGN6oOwzHFnkOv9ADcYmF3m6GrT3WInE1T/+rWYPJV
	2Fz1BkRCIz4okc0QIhJ86Rlq0onNIhjQw41+gg9le7FMjCiO+8BECjP7j83DspDyZhvWuc9
	iDDGhOBBXCV3lLrSu2TzrSAkwWQsr4AALt3HkN9b0sC3jFljffMDboPHzEdas/T/5oJyGFs
	PIwtJXds5FflNumHIrUBSLDnfpghLuOwpD2DGA5PFmQn3YOj/bM1L7kuej3Lf1HgLBegOtD
	MW8n/VBcVnUNgKBdXjywWsvhDBOa1EPkXpzteg/0/IgJlRilsPzXGS6WCtPsHRZEQUePkd3
	bQJlfk0Wh6C0rMraLAU447x/WKQCaCOSMyV0t/EodUHUUyM7S+3Pbp/GAZfEAsNEjjDo42F
	yIqCl/PjetcHBzpGJQJ1KoCv3Sj6bGzH/ELiRq5uzzFwZtVT5KhFYHOxxCY7770d8tLmijM
	DvKAafZHmZJYT9hmT8Gwx8m3b4mRLMPQqvU/AJdqb9QiBvgz32g65YzsyZXjrwe9zC3mHKs
	bZ71wMds+a5py1wwhwjAL/k/PbiZjoyGHz2PB8D+knU=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_040546_257249_431A5337 
X-CRM114-Status: GOOD (  11.58  )
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

SGksCgp0aGFuayB5b3UgZm9yIHlvdXIgcmV2aWV3IQoKT24gMTIvNC8yNCAxNDozMywgRHJhZ2Fu
IFNpbWljIHdyb3RlOgo+IEhlbGxvIEZ1a2F1bWksCj4gCj4gT24gMjAyNC0xMi0wNCAwNTo1NCwg
RlVLQVVNSSBOYW9raSB3cm90ZToKPj4gZmFuIGJlaGF2aW9yIGlzIGJldHRlciB0aGFuIGN1cnJl
bnQgY29uZmlndXJhdGlvbi4KPiAKPiBDb3VsZCB5b3UsIHBsZWFzZSwgZGVzY3JpYmUgYmV0dGVy
IHdoYXQgbWFrZXMgdGhpcyBjb25maWd1cmF0aW9uCj4gYmV0dGVyLCB3aGljaCBmYW4gbWFrZSBh
bmQgbW9kZWwgYXJlIHlvdSB1c2luZywgZXRjLj8KCkkgaGF2ZSB0aHJlZSBIZWF0c2hpbmsgMjUx
M1sxXSBhbmQgSSBub3RpY2VkIHRoZXkgYmVoYXZlIHZlcnkgCmRpZmZlcmVudGx5Li4uIGl0J3Mg
ZGlmZmljdWx0IHRvIHNheSB3aGljaCBjb29saW5nLWxldmVscyBpcyBiZXR0ZXIgb3IgCndvcnNl
IHdpdGggdGhlc2UgaGVhdHNpbmsuCgpJJ2xsIGRyb3AgdGhpcyBwYXRjaC4KCkJlc3QgcmVnYXJk
cywKClsxXSBodHRwczovL3JhZHhhLmNvbS9wcm9kdWN0cy9hY2Nlc3Nvcmllcy9oZWF0c2luay0y
NTEzCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQu
Cgo+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+IC0t
LQo+PiB0aGlzIHBhdGNoIGRlcGVuZHMgb24gWzFdIHdoaWNoIGRlcGVuZHMgb24gWzJdLgo+Pgo+
PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlw
LyAKPj4gY292ZXIvMjAyNDExMjgxMjE5MjkuNjI2NDYtMS1uYW9raUByYWR4YS5jb20vCj4+IFsy
XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvIAo+
PiBwYXRjaC8yMDI0MTExOTA5NTExMy43ODE1MS0xLW5hb2tpQHJhZHhhLmNvbS8KPj4gLS0tCj4+
IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNS5kdHNpIHwgMiAr
LQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2st
NS5kdHNpCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNS5k
dHNpCj4+IGluZGV4IGExY2FjNDBkNDM5ZS4uNDcyYjQxZjBkNDdmIDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01LmR0c2kKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNS5kdHNpCj4+IEBAIC0z
Niw3ICszNiw3IEBAIGFuYWxvZy1zb3VuZCB7Cj4+IMKgwqDCoMKgIGZhbjogZmFuIHsKPj4gwqDC
oMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInB3bS1mYW4iOwo+PiDCoMKgwqDCoMKgwqDCoMKg
ICNjb29saW5nLWNlbGxzID0gPDI+Owo+PiAtwqDCoMKgwqDCoMKgwqAgY29vbGluZy1sZXZlbHMg
PSA8MCA2NCAxMjggMTkyIDI1NT47Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb29saW5nLWxldmVscyA9
IDwwIDEyMCAxNTAgMTgwIDIxMCAyNDAgMjU1PjsKPj4gwqDCoMKgwqDCoMKgwqDCoCBmYW4tc3Vw
cGx5ID0gPCZ2Y2NfNXYwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoCBwd21zID0gPCZwd20zIDAgNjAw
MDAgMD47Cj4+IMKgwqDCoMKgIH07Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
