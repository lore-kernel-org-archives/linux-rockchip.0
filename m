Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC70C83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 14:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fS251aPnHDC8PPb3vhHLfsrQhGaTTs4d+ZPWrUbLvws=; b=hfOeOCWIvp+DEx
	KwWbdiJtrP62OkjtOr8u2XIgosMXB51xUAuOPnGkjIr2K+R4KcCQ39KYkbRHdoC9SNikGAoQClbsd
	N4kb7ygv+SvsS0jbl858qUmsi7EEU5hUTBlazpMgP9RjW/4TGOPI6edIu/0w50/GMZ2ciQW2VcnNm
	3VrP4lQwIKxjv0w8dczPPBXQxBPFcothbapeB9ygKUT6FiGrbZv9s5odB6kWy/PIkvBelo/kShIMD
	xfk13xn6EfW2xqnrYeiq+mRBw10SNzviaJaGpvdxUk4hXItUnelFPHamAVVj/3a9OZUIjIdBsoaZH
	QtkWovk2yNTCZOgCWYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucPLC-0000000AKpv-42PP;
	Thu, 17 Jul 2025 14:12:06 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucOHJ-0000000ACoR-1Pqd;
	Thu, 17 Jul 2025 13:04:03 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id B1AF0C3E4DEE;
	Thu, 17 Jul 2025 15:03:54 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl B1AF0C3E4DEE
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,  Heiko Stuebner
 <heiko@sntech.de>,  Paul Elder <paul.elder@ideasonboard.com>,  Jacopo
 Mondi <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
In-Reply-To: <m3h5zbxkc6.fsf@t19.piap.pl> ("Krzysztof =?utf-8?Q?Ha=C5=82as?=
 =?utf-8?Q?a=22's?= message of
	"Thu, 17 Jul 2025 11:00:57 +0200")
References: <m3h5zbxkc6.fsf@t19.piap.pl>
Date: Thu, 17 Jul 2025 15:03:54 +0200
Message-ID: <m38qknx939.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_060401_537471_DD5B5966 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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

PiBUaGUgInJlZmVyZW5jZSIgKE5YUCkgVlZDYW0gZHJpdmVyIHNpbXBseSBkb2VzIHRoZSBvcGVy
YXRpb25zIHR3aWNlCj4gKGkuZS4sIHJlYWRzIHR3aWNlIHdpdGggdGhlIGZpcnN0IHJlc3VsdCBk
aXNjYXJkZWQsIGFuZCB3cml0ZXMgdHdpY2UpLgo+IFRoaXMgZml4ZXMgdGhlIHByb2JsZW0gb24g
bW9zdCBhY2Nlc3NlcywgYnV0IHRoZSBwcm9ibGVtcyBzdGlsbCBwZXJzaXN0LgoKSXQgYXBwZWFy
cyB0aGUgY29ycnVwdGlvbnMgYXJlIHF1aXRlIGZyZXF1ZW50LCB0aG91Z2guClVzaW5nICJsZHAg
cVhYLCBxWVksIFt4MF0iICgyICogMTI4LWJpdCBsb2FkIHBhaXIpIEkgZ2V0IHJlc3VsdHMgbGlr
ZQp0aGlzIChlYWNoIGRhdGEgcm93IGlzIGEgcmVzdWx0IG9mIGEgc2luZ2xlIGxkcCk6CgphZGRy
OiAgMzJFMjE0MDAgMzJFMjE0MDQgMzJFMjE0MDggMzJFMjE0MEMgMzJFMjE0MTAgMzJFMjE0MTQg
MzJFMjE0MTggMzJFMjE0MUMKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KdmFsdWVzIDNEMDAwMDA3
ICAgICAgIDIwIDNDMzAwMDAwICAgMUZBNDAwICAgICAgICAwICAgICAgICAwICAgICAgICAwIDND
MzgwMDAwIGNvdW50IDk5OTkzMDk3CnZhbHVlcyAgICAgICAgMCAgICAgICAyMCAzQzMwMDAwMCAg
IDFGQTQwMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAzQzM4MDAwMCBjb3VudCA1OTMwCnZh
bHVlcyAgICA3RTkwMCAgICAgICAyMCAzQzMwMDAwMCAgIDFGQTQwMCAgICAgICAgMCAgICAgICAg
MCAgICAgICAgMCAzQzM4MDAwMCBjb3VudCAzMzgKdmFsdWVzICAgIEZEMjAwICAgICAgIDIwIDND
MzAwMDAwICAgMUZBNDAwICAgICAgICAwICAgICAgICAwICAgICAgICAwIDNDMzgwMDAwIGNvdW50
IDIyMwp2YWx1ZXMgM0MzODAwMDAgICAgICAgMjAgM0MzMDAwMDAgICAxRkE0MDAgICAgICAgIDAg
ICAgICAgIDAgICAgICAgIDAgM0MzODAwMDAgY291bnQgMjIwCnZhbHVlcyAgICAgICA0MCAgICAg
ICAyMCAzQzMwMDAwMCAgIDFGQTQwMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAzQzM4MDAw
MCBjb3VudCAxOTIKClRoZSB2YWxpZCB2YWx1ZSAoaW4gMHgzMkUyMTQwMCByZWdpc3RlcikgaXMg
M0QwMDAwMDcgb25seSwgdGhlIHJlc3QgYXJlCmNvcnJ1cHRpb25zOiBjYS4gNiBlcnJvcnMgcGVy
IDEwMGsgcmVhZHMuIFdpdGggb3RoZXIgcmVnaXN0ZXJzLCAxNSBlcnJvcnMKcGVyIDEwMGsgcmVh
ZHMgZXRjLgoKSSBhbHNvIGdvdCB0aGlzOgphZGRyOiAgMzJFMjEzRjAgMzJFMjEzRjQgMzJFMjEz
RjggMzJFMjEzRkMgMzJFMjE0MDAgMzJFMjE0MDQgMzJFMjE0MDggMzJFMjE0MEMKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KdmFsdWVzICAgICAgICAwICAgICAgICAwICAgICAgICAwICAgICAgICAw
IDNEMDAwMDA3ICAgICAgIDIwIDNDMzAwMDAwICAgMUZBNDAwIGNvdW50IDk4NjM4NzczCnZhbHVl
cyAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAgICAgICAyMCAz
QzMwMDAwMCAgIDFGQTQwMCBjb3VudCAxMzMwMjI3CnZhbHVlcyAgICAgICAgMCAgICAgICAgMCAg
ICAgICAgMCAgICAgICAgMCAgICAgICA0MCAgICAgICAyMCAzQzMwMDAwMCAgIDFGQTQwMCBjb3Vu
dCAzNzIxCnZhbHVlcyAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAzQzM4MDAw
MCAgICAgICAyMCAzQzMwMDAwMCAgIDFGQTQwMCBjb3VudCAzMTQKdmFsdWVzICAgICAgICAwICAg
ICAgICAwICAgICAgICAwICAgICAgICAwICAgIDdFOTAwICAgICAgIDIwIDNDMzAwMDAwICAgMUZB
NDAwIGNvdW50IDU3Mgp2YWx1ZXMgICAgICAgIDAgICAgICAgIDAgICAgICAgIDAgICAgICAgIDAg
ICAgRkQyMDAgICAgICAgMjAgM0MzMDAwMDAgICAxRkE0MDAgY291bnQgNDI4CnZhbHVlcyAgICAg
ICAgMCAgICAgICAgMCAgICAgICAgMCAgICAgICAgMCAgICA0QzAxMCAgICAgICAyMCAzQzMwMDAw
MCAgIDFGQTQwMCBjb3VudCAyNTk2NQoKd2hpY2ggaXMgY2EuIDE0IGVycm9ycyBwZXIgMWsgcmVh
ZHMsIHRob3VnaCBtYXliZSBpdCdzIHNwZWNpYWwgLQpub24tTUkvTUkgYm91bmRhcnkgKGF0IDB4
MzJFMjE0MDApLCByZXNlcnZlZCBhZGRyZXNzZXMgKDB4MzJFMjEzRngpIGV0Yy4KCj4gVGhlIHBy
b2JsZW1zIHNob3cgdGhlbXNlbHZlcyBtYXliZSBpbiA1JSBvciAxMCUgb2YgYm9vdHMuCgpXZWxs
LCBub3cgaXQgYXBwZWFycyBtb3JlIGxpa2UgMjAlOiBlLmcuIGluIDQxIHN5c3RlbSBydW5zIChz
b2Z0IHJlYm9vdHMKb25seSwgbm8gcG93ZXItZG93bnMpLCBJIGdvdCBwcm9ibGVtcyA4IHRpbWVz
LgoKT2J2aW91c2x5IEkgY2FuIHBvc3QgdGhlIHRlc3RlciBzb3VyY2UgaWYgYW55b25lIGlzIGlu
dGVyZXN0ZWQuCgoKR2VuZXJhbGx5IElTUCBNSSByZWdpc3RlciByZWFkIGFjY2Vzc2VzIHdoaWNo
IGNhbiBiZSBjb3JydXB0ZWQgYXJlOgotIGZpcnN0IDMyIGJpdHMgcmVhZCBpbiBhIGdpdmVuIHRy
YW5zZmVyLCBhbmQgYWRkaXRpb25hbGx5Ci0gZXZlcnkgMzIgYml0cyBvbiBhIDMyLWJ5dGUgYm91
bmRhcnkgKGFkZHJlc3NlcyAweC4uLi4wMCwgLi4uMjAgZXRjLikuCgpUaGlzIG1lYW5zLCBpbiBw
cmFjdGljZSwgb24gaS5NWDhNUCBvbmx5LCBSS0lTUDFfQ0lGX01JX0NUUkwgYW5kClJLSVNQMV9D
SUZfTUlfTVBfQ0JfU0laRV9JTklUICh3aXRoIHRoZSB3b3JrYXJvdW5kKS4KCldoYXQgaXMgdGhp
cyAzMi1ieXRlIGJvdW5kYXJ5PwoKV3JpdGluZyBpcyBhIGJpZ2dlciBwcm9ibGVtLCB0aG91Z2gu
Ci0tIApLcnp5c3p0b2YgIkNocmlzIiBIYcWCYXNhCgpTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdp
Y3oKUHJ6ZW15c8WCb3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLDs3cgUElBUApBbC4g
SmVyb3pvbGltc2tpZSAyMDIsIDAyLTQ4NiBXYXJzemF3YQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
