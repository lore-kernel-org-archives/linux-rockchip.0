Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E95F9D0C853
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 11:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKNjHNNXRCA3MlP+9WeEpFIEKjkmxYRqXyAbwwGsYuo=; b=AnfOa7TzzvEbgc
	suLsP/VudrsLTJ2NhdRpF0yjpbgXyomcyoGyE8EGUh3b9UiWcXxRVwXWFc47LR4c+FTYfvkSnMWdG
	12rrp06p2nP2lun13GELpNhLQwlQ2zOP845HD11+/zyOdLzsQseEd8YT4J77iTY9fM90/v4Awg6cJ
	qRAZkVAM+APYqCn+P/mAEjZmNiHBPFHwnNfFWfo6WJ005Bz9+O+hzvtRsGhxC52UbYgU224BgzKdP
	RTgyNPzbj58ZkJBBAe+pnVYhnCgEABxPI3VG+Ytp6SFSTBzy4WyAqdc1SeQcFrdKm1UZ4nNnCmFOA
	OvcDPLuJg3SyW+h61e6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcCi-00000006z8M-3AKv;
	Tue, 13 Jan 2026 11:04:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcCh-00000006z85-1NLc;
	Tue, 13 Jan 2026 11:04:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7183C6000A;
	Tue, 13 Jan 2026 11:04:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63185C116C6;
	Tue, 13 Jan 2026 11:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768302290;
	bh=wOormaL9PD1DYwYJHqWiopjDekcsEFD3wPQ8gHBL2cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caCPIhWUJaaWLRUhsVIf6sJpFdGESi270guP9LIaFZ4qr0jAh0mRMI7ntyHpCB7Y0
	 YNVrWfB5Hy5jXNmtaOCcVoFsLjJ0OoOM2cQnSHH0hLwsMB8nmH7urYJONXD9PuUKGl
	 Y952TiVZ/KfWRlYUIrQ+4ZdKfTK9NB2VJeXnXQJK5vmkYAVwM4ra2SEXLnVulhiuYs
	 3UntSOeR+olyVNb1s0b1TdsMV00SzGdWImf2XZ6J3whYDx7vUHXVmGBzbx3sfkxGOh
	 pGC9jmRyLZQB6F9/AazKgBWT5/e9z1+ZpHNN1NGIB7qgn7/0wm46tsC+ahU+kCUDeU
	 Wlc2WyKPCxOKQ==
Date: Tue, 13 Jan 2026 11:04:44 +0000
From: Lee Jones <lee@kernel.org>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Message-ID: <20260113110444.GD1902656@google.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
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

T24gTW9uLCAxMiBKYW4gMjAyNiwgUnVkcmFrc2hhIEd1cHRhIHZpYSBCNCBSZWxheSB3cm90ZToK
Cj4gRnJvbTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KPiAKPiBXaGlsZSB0
aGUgV2lmaSBhbmQgQmx1ZXRvb3RoIGNoaXAgYXJlIGRlZmluZWQgaW4gdGhlIFBpbmVwaG9uZSBQ
cm8ncwo+IERUUywgaXQgYWN0dWFsbHkgaXNuJ3QgYWJsZSB0byBiZSB1c2VkLiBMZXQncyBkZWZp
bmUgcms4MDgtY2xrb3V0MiBzbwo+IHRoYXQgdXNlcnNwYWNlIGNhbiBhY3R1YWxseSBpbnRlcmFj
dCB3aXRoIFdpZmkgYW5kIEJsdWV0b290aAo+IAo+IENvLWRldmVsb3BlZC1ieTogTWFydGlqbiBC
cmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFhbSA8
bWFydGlqbkBicml4aXQubmw+Cj4gU2lnbmVkLW9mZi1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1
ZmFuQGF5dWZhbi5ldT4KPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5j
ej4KPiBTaWduZWQtb2ZmLWJ5OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4K
ClRoaXMgaXMgYSBib25rZXJzIGFtb3VudCBvZiBTb0JzIGZvciBhIDMtbGluZSBjaGFuZ2UuCgpX
aGF0IG9uIGVhcnRoIGlzIGdvaW5nIG9uIGhlcmU/Cgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazh4
eC1jb3JlLmMgIHwgMSArCj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggfCAyICsrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWZkL3JrOHh4LWNvcmUuYyBiL2RyaXZlcnMvbWZkL3JrOHh4LWNvcmUuYwo+IGluZGV4IGRlZjQ1
ODdmZGZiOC4uNjAyMjE4Njk0MzM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL3JrOHh4LWNv
cmUuYwo+ICsrKyBiL2RyaXZlcnMvbWZkL3JrOHh4LWNvcmUuYwo+IEBAIC0yODIsNiArMjgyLDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCByazgwOF9yZWdfZGF0YSByazgxOF9wcmVfaW5pdF9yZWdb
XSA9IHsKPiAgCXsgUks4MThfSDVWX0VOX1JFRywJICBCSVQoMCksCSAgICBSSzgxOF9INVZfRU4g
fSwKPiAgCXsgUks4MDhfVkJfTU9OX1JFRywJICBNQVNLX0FMTCwJICAgIFZCX0xPX0FDVCB8Cj4g
IAkJCQkJCSAgICBWQl9MT19TRUxfMzUwME1WIH0sCj4gKwl7IFJLODA4X0NMSzMyT1VUX1JFRywg
Q0xLMzJLT1VUMl9GVU5DX01BU0ssIENMSzMyS09VVDJfRlVOQyB9LAo+ICB9Owo+ICAKPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfaXJxIHJrODA1X2lycXNbXSA9IHsKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCBiL2luY2x1ZGUvbGludXgvbWZkL3JrODA4LmgK
PiBpbmRleCAyODE3MGVlMDg4OTguLjA3N2ZlMmUxNWI3OCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRl
L2xpbnV4L21mZC9yazgwOC5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAo+IEBA
IC05MzQsNiArOTM0LDggQEAgZW51bSByazgwNl9kdnNfbW9kZSB7Cj4gIAo+ICAjZGVmaW5lIFZP
VVRfTE9fSU5UCUJJVCgwKQo+ICAjZGVmaW5lIENMSzMyS09VVDJfRU4JQklUKDApCj4gKyNkZWZp
bmUgQ0xLMzJLT1VUMl9GVU5DCQkoMCA8PCAxKQo+ICsjZGVmaW5lIENMSzMyS09VVDJfRlVOQ19N
QVNLCUJJVCgxKQo+ICAKPiAgI2RlZmluZSBURU1QMTA1QwkJCTB4MDgKPiAgI2RlZmluZSBURU1Q
MTE1QwkJCTB4MGMKPiAKPiAtLSAKPiAyLjUyLjAKPiAKPiAKCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
