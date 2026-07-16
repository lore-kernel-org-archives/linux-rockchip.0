Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48449C44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzE5xwhu2tpD57VA+fw+dIXRjF9yQ18IdnZhsWNJKRk=; b=iAHBtzav8qHAYc
	tl6jyg8jRs2DcXkNUtFenw2/mLaruJqhgQSRujK7hsFsXcs5VCPND93nocDf0o6TIeK2I8vmOpE7j
	kFnFulUMvdO5z4CPWTT2OqbcwIjZf7SXcZ3HISklK5jUUtG93FmuQKPUrRPkrp9r+85RY2d7inpzA
	LPINcnZKSPfmXxNBOsGtr4bL0RGodm8PznIyvMTQEuHmmYQiDPRkJmzLQldDy47xh/1W9+yJgk/7P
	yvMwYyMoh7LyR4lpj9ZzC+j/StCF5IksWd02Hp2GPXH8daX3e17GNBkVWzgQ+iH5tNK+pZmajJ/vP
	HsGmtu+g//Od5NIrWajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQs9-00000000Okq-0U6E;
	Thu, 16 Jul 2026 18:31:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQs7-00000000Ok9-0wHf;
	Thu, 16 Jul 2026 18:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Dw3v8YNqvr+JafReR5Z5Q1bvgBUca6l2zWI8zP4bBuI=; b=HDq4JOfUdqiH4joBS0lJcZlMYa
	VABto7cXTjoKVWfwsWbgMymrXvMVXLi7ZVdcBZyp1EryW6hyaDTYuvDV1p4hhLNvXkMIxDsFXXD/6
	xHBPeDOkVNqZ/fmjcnb94YDg7O5K50IXaqXS8oS4pVbIWw8TJZF2x7BesSwnIY24mPagQQ2EApzkZ
	cf5q/WVDrB54xvMi+jCBAoq8qEpz2cXYI3v8/6JRfcrHfF0Nx31SX3rK3MIKah2vh0XrOiObKh+Q3
	QpAMP+RWPl+6PIoqaeShlMffHVv/yxbNN68VgtKAunk6k8wXM1VIiFPeix91nUihaPsbHurO7ysFt
	qM7tl9jA==;
From: Heiko Stuebner <heiko@sntech.de>
To: sashiko-reviews@lists.linux.dev,
 Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Diederik de Haas <diederik@cknow-tech.com>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v3 11/12] arm64: dts: rockchip: rk3588s-nanopi-r6: refactor to
 support M6 boards
Date: Thu, 16 Jul 2026 20:31:38 +0200
Message-ID: <3413772.oiGErgHkdL@phil>
In-Reply-To: <CAPSPb=v=ZDGJ41auxGgSOpKo69MycE=FtMyHf9sG9a3ju9PAaQ@mail.gmail.com>
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <20260713204131.C58091F000E9@smtp.kernel.org>
 <CAPSPb=v=ZDGJ41auxGgSOpKo69MycE=FtMyHf9sG9a3ju9PAaQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_113147_263665_C39CA3B5 
X-CRM114-Status: GOOD (  24.31  )
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

SGkgSm9hY2hpbSwKCkFtIERvbm5lcnN0YWcsIDE2LiBKdWxpIDIwMjYsIDExOjI0OjIwIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9hY2hpbSBFYXN0d29vZDoKPiBPbiBN
b24sIDEzIEp1bCAyMDI2IGF0IDIyOjQxLCA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZp
ZXcgZm91bmQgMiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gPiAtIFtNZWRpdW1d
IFVuaW50ZW50aW9uYWwgcmVzdG9yYXRpb24gb2YgYHJlZ3VsYXRvci1ib290LW9uYCBmb3IgYHZk
ZF9ucHVfczBgIGR1cmluZyByZWZhY3RvcmluZy4KPiA+IC0gW0xvd10gRGFuZ2xpbmcgcGhhbmRs
ZSByZWZlcmVuY2UgYCZ2Y2M1djBfdXNiX290ZzBgIGluIHRoZSBjb21tb24gYC5kdHNpYCBmaWxl
Lgo+ID4gLS0KPiA+Cj4gPiAtLS0gUGF0Y2ggWzExXTogW1BBVENIIHYzIDExLzEyXSBhcm02NDog
ZHRzOiByb2NrY2hpcDogcmszNTg4cy1uYW5vcGktcjY6IHJlZmFjdG9yIHRvIHN1cHBvcnQgTTYg
Ym9hcmRzIC0tLQo+ID4gY29tbWl0IDA1NmFkZmY3NWVjMDg5ODliOTZmMDlhZGMwZWZmZjZjM2E1
ZDY2MmYKPiA+IEF1dGhvcjogSm9hY2hpbSBFYXN0d29vZCA8am9hY2hpbS5lYXN0d29vZEBnbWFp
bC5jb20+Cj4gPgo+ID4gYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU4OHMtbmFub3BpLXI2OiBy
ZWZhY3RvciB0byBzdXBwb3J0IE02IGJvYXJkcwo+ID4KPiA+IEZyaWVuZGx5RWxlYyBOYW5vUGk2
IHNlcmllcyBjb25zaXN0cyBvZiBmb3VyIGRpc3RpbmN0IGJvYXJkczsgUjZTLCBSNkMsCj4gPiBN
NiBhbmQgTTZWMi4gUmVmYWN0b3IgRnJpZW5kbHlFbGVjIE5hbm9QaSBSNiBiYXNlIGR0c2kgaW4g
cHJlcGFyYXRpb24KPiA+IGZvciBhZGRpbmcgTmFub1BpIE02IHN1cHBvcnQuCj4gPgo+ID4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4g
PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmE4ZTUz
MmFkOGI3YTgKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kKPiA+Cj4gPiBbIC4uLiBdCj4gPgo+ID4g
PiArJmkyYzIgewo+ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICsKPiA+ID4gKyAg
ICAgdmRkX25wdV9zMDogcmVndWxhdG9yQDQyIHsKPiA+ID4gKyAgICAgICAgICAgICBjb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrODYwMiI7Cj4gPiA+ICsgICAgICAgICAgICAgcmVnID0gPDB4NDI+
Owo+ID4gPiArICAgICAgICAgICAgIGZjcyxzdXNwZW5kLXZvbHRhZ2Utc2VsZWN0b3IgPSA8MT47
Cj4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmRkX25wdV9zMCI7Cj4gPiA+
ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTUwMDAwPjsKPiA+ID4g
KyAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+ID4gPiAr
ICAgICAgICAgICAgIHJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDIzMDA+Owo+ID4gPiArICAgICAg
ICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4KPiA+IFtTZXZlcml0eTogTWVkaXVtXQo+ID4g
SXMgdGhlIGFkZGl0aW9uIG9mIHJlZ3VsYXRvci1ib290LW9uIGhlcmUgaW50ZW50aW9uYWw/Cj4g
Cj4gU2VlbXMgbGlrZSBJIHNjcmV3ZWQgdXAgdGhlIHJlZmFjdG9yaW5nIG9mIHRoZSBjb2RlLCBh
bmQgU2FzaGlrbyBjYXVnaHQgbWUuCj4gSSB3aWxsIGZpeCBpdCBhbmQgc2VuZCBvdXQgYSBuZXcg
cGF0Y2ggc2V0IGxhdGVyLgo+IAo+ID4gVGhpcyBhcHBlYXJzIHRvIGFjY2lkZW50YWxseSByZXZl
cnQgYSBwcmlvciBmaXggdGhhdCByZW1vdmVkIHRoZSBib290LW9uCj4gPiBwcm9wZXJ0eSBmb3Ig
dmRkX25wdV9zMCB0byBzYXZlIHBvd2VyIGR1cmluZyBlYXJseSBib290Lgo+ID4KPiA+ID4gKyAg
ICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4gKwo+ID4gPiArICAg
ICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOwo+ID4gPiArICAgICAgICAgICAgIH07Cj4gPiA+
ICsgICAgIH07Cj4gPiA+ICt9Owo+ID4KPiA+IFsgLi4uIF0KPiA+Cj4gPiA+ICsmdTJwaHkwX290
ZyB7Cj4gPiA+ICsgICAgIHBoeS1zdXBwbHkgPSA8JnZjYzV2MF91c2Jfb3RnMD47Cj4gPgo+ID4g
W1NldmVyaXR5OiBMb3ddCj4gPiBEb2VzIHRoaXMgY3JlYXRlIGEgZGFuZ2xpbmcgcGhhbmRsZSBy
ZWZlcmVuY2UgaW4gdGhlIGNvbW1vbiBkdHNpIGZpbGU/Cj4gPgo+ID4gU2luY2UgdGhlIHZjYzV2
MF91c2Jfb3RnMCByZWd1bGF0b3Igd2FzIGxlZnQgaW4gdGhlIGJvYXJkLXNwZWNpZmljCj4gPiBy
azM1ODhzLW5hbm9waS1yNi5kdHNpIGZpbGUsIGl0IGxvb2tzIGxpa2UgY29tcGlsaW5nIGEgbmV3
IGJvYXJkIChsaWtlIHRoZSBNNikKPiA+IHRoYXQgaW5jbHVkZXMgdGhpcyBjb21tb24gZHRzaSB3
aWxsIGZhaWwgdG8gYnVpbGQgaWYgaXQgZG9lc24ndCBhbHNvIGRlZmluZSBhCj4gPiByZWd1bGF0
b3Igd2l0aCB0aGlzIGV4YWN0IGxhYmVsLgo+IAo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyByZWFs
bHkgYW4gaXNzdWUuIEJvdGggbmFub3BpLXI2LmR0c2kgYW5kIG5hbm9waS1tNi5kdHNpCj4gd2ls
bCBoYXZlIHRob3NlIHJlZ3VsYXRvcnMgZGVmaW5lZC4KPiAKPiBVbmxlc3Mgc29tZW9uZSB0ZWxs
cyBtZSB0aGlzIGlzIGJhZCBwcmFjdGljZSBJIHdpbGwga2VlcCB0aGlzIGFzIGl0IGlzLgoKSSB0
aGluayB0aGlzIGlzIG9rLiBMaWtlIGFzIHlvdSBzYWlkLCB0aGUgcmVndWxhdG9yIHdpbGwgYmUg
ZGVmaW5lZCBieQpib2FyZHMgLSBqdXN0IHdpdGggYSBkaWZmZXJlbnQgZ3BpbyBJIGd1ZXNzLgpB
bmQgbm9ib2R5IGV4cGVjdHMgdG8gYnVpbGQgdGhlIGNvcmUgZHRzaSBhbmQgaWYgYW5vdGhlciBu
ZXcgYm9hcmQKbWF0ZXJpYWxpemVzIHRoYXQgZG9lcyBub3QgaGF2ZSB0aGUgb3RnIHBvcnQgKGFu
ZCB0aHVzIHJlZ3VsYXRvciksIHdlJ2xsCm5lZWQgdG8gbW92ZSBtb3JlIHN0dWZmIGFueXdheSA6
LSkKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
