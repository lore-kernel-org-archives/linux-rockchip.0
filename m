Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E97F4C83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 21:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdxgnGbks6LZHxpLd2yC/b9sFUxcK6ZeRmdTlbNdh3A=; b=UHvRC1A0ZXyEvf
	TbaTtMgfOhJ4Zj0QwzvahHrd5ZHGhAwU6wDTlwPzfpeVqg5uOhDHz2nczfQZJ2IYGulB1ivWVYv4e
	UiXpd+89Sz760RoyVaMX1J67aFGRbIYFq0GZWkAI48hcsHgHU99lK5ayd9DrChwNwM22CiufShZHh
	YbP78s87c7E8v1oZdtXmnYs1KhHl86x8+svo/rswvzrAZv9fNPhg4q3wfAmnKhyzjwHzVV48Bcmbg
	pvgLeoDLXtwCJAfjdoQGMcegwJxLv1TPGbIp6GtHB2SznIj5rYFTPlvYBOfxhh5/xbIipWuKKNREf
	EsDrVndughuq6IOQ9A2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZyUa-0000000D1ro-1SCP;
	Thu, 10 Jul 2025 21:07:44 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZwyZ-0000000CoqY-3XRv;
	Thu, 10 Jul 2025 19:30:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1752175820; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=I/ka+SLGhV+QGCE7fhGV9qYnglLgy9/7ibP/VHkpOEkzzlN+hYr3n1hU+m0Czd3JuzQEcq3dJutzOQDlLs4uuTOHYI/Lj8p3iXdTFweEpCXHRjKKkqLQ24u3kz7ogTT6ITQRIH8buzu3rmYlidtSoboB93yZBpHRO+aGTxnuDY4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1752175820; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=2bzdLOutw45NuzUy8PqWXaJAtp7VYXU2KwETf6FwUq4=; 
	b=KGNFyCXuU/Eu7gI53XiCbXZ+2vpS1Ajv5tsP6P5DkQZQ7IogkRrzv2E2nSQ6QPoYGfJZFxB9rHfMFncR5gkPpshEpNmhmshWWYu93Hkr46rex2NKwDW57U5JARz8hTeTCfu6ErwawJQdGWt5x+2Gy63PfS87RHWiQxSiNu09gwk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752175820;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=2bzdLOutw45NuzUy8PqWXaJAtp7VYXU2KwETf6FwUq4=;
	b=kw7up1/5sk7CS9DwqFvhC738rMQmLkDy+YBescJyPukKyMiQXceMUwSSbDObh1iU
	ZFgMXP3VSkSTnRsOVkc3kmN5JNUm1ed5mQHxwFolk5+x8M8+Yi9IJdDT66VzpDBwZwD
	9Sono6bXrQ7cofGqQpGwIZMHjH9DgKP4GZKvxFWQ=
Received: by mx.zohomail.com with SMTPS id 1752175818697100.88359010230067;
	Thu, 10 Jul 2025 12:30:18 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/7] dt-bindings: thermal: rockchip: document otp thermal trim
Date: Thu, 10 Jul 2025 21:30:12 +0200
Message-ID: <6505070.lOV4Wx5bFT@workhorse>
In-Reply-To: <3592348.tdWV9SEqCh@phil>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <20250610-rk3576-tsadc-upstream-v6-4-b6e9efbf1015@collabora.com>
 <3592348.tdWV9SEqCh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_123035_944630_C70F4C74 
X-CRM114-Status: GOOD (  19.42  )
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

T24gVGh1cnNkYXksIDEwIEp1bHkgMjAyNSAxMzoyMToxOSBDZW50cmFsIEV1cm9wZWFuIFN1bW1l
ciBUaW1lIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFtIERpZW5zdGFnLCAxMC4gSnVuaSAyMDI1
LCAxNDozMjo0MCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIE5pY29sYXMg
RnJhdHRhcm9saToKPiA+IFNldmVyYWwgUm9ja2NoaXAgU29Dcywgc3VjaCBhcyB0aGUgUkszNTc2
LCBjYW4gc3RvcmUgY2FsaWJyYXRpb24gdHJpbQo+ID4gZGF0YSBmb3IgdGhlcm1hbCBzZW5zb3Jz
IGluIE9UUCBjZWxscy4gVGhpcyBjYXBhYmlsaXR5IHNob3VsZCBiZQo+ID4gZG9jdW1lbnRlZC4K
PiA+IAo+ID4gU3VjaCBhIHJvY2tjaGlwIHRoZXJtYWwgc2Vuc29yIG1heSByZWZlcmVuY2UgY2Vs
bCBoYW5kbGVzIHRoYXQgc3RvcmUKPiA+IGJvdGggYSBjaGlwLXdpZGUgdHJpbSBmb3IgYWxsIHRo
ZSBzZW5zb3JzLCBhcyB3ZWxsIGFzIGNlbGwgaGFuZGxlcwo+ID4gZm9yIGVhY2ggaW5kaXZpZHVh
bCBzZW5zb3IgY2hhbm5lbCBwb2ludGluZyB0byB0aGF0IHNwZWNpZmljIHNlbnNvcidzCj4gPiB0
cmltIHZhbHVlLgo+ID4gCj4gPiBBZGRpdGlvbmFsbHksIHRoZSB0aGVybWFsIHNlbnNvciBtYXkg
b3B0aW9uYWxseSByZWZlcmVuY2UgY2VsbHMgd2hpY2gKPiA+IHN0b3JlIHRoZSBiYXNlIGluIHRl
cm1zIG9mIGRlZ3JlZXMgY2Vsc2l1cyBhbmQgZGVjaWNlbHNpdXMgdGhhdCB0aGUgdHJpbQo+ID4g
aXMgcmVsYXRpdmUgdG8uCj4gPiAKPiA+IEVhY2ggU29DIHRoYXQgaW1wbGVtZW50cyB0aGlzIGFw
cGVhcnMgdG8gaGF2ZSBhIHNsaWdodGx5IGRpZmZlcmVudAo+ID4gY29tYmluYXRpb24gb2YgY2hp
cC13aWRlIHRyaW0sIGJhc2UsIGJhc2UgZnJhY3Rpb25hbCBwYXJ0IGFuZAo+ID4gcGVyLWNoYW5u
ZWwgdHJpbSwgc28gd2hpY2ggb25lcyBkbyB3aGljaCBpcyBkb2N1bWVudGVkIGluIHRoZSBiaW5k
aW5ncy4KPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5l
bC5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJh
dHRhcm9saUBjb2xsYWJvcmEuY29tPgo+IAo+IEFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+IAo+IHdpdGggb25lIHF1ZXN0aW9uIGJlbG93Cj4gCj4gPiAtLS0KPiA+
ICAuLi4vYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnlhbWwgICAgICAgICB8IDYx
ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNjEgaW5zZXJ0aW9u
cygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC55YW1sCj4gPiBpbmRleCA0OWNl
ZWQ2OGM5MmNlNWEzMmVkOGQ0ZjM5YmQ4OGZkMDUyZGUwZTgwLi41NzNmNDQ3Y2MyNmVkNzEwMDYz
ODI3NzU5OGIwZTc0NWQ0MzZmZDAxIDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC55YW1sCj4gPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFs
LnlhbWwKPiA+IEBAIC00MCw2ICs0MCwxNyBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICAgIC0gY29u
c3Q6IHRzYWRjCj4gPiAgICAgICAgLSBjb25zdDogYXBiX3BjbGsKPiA+ICAKPiA+ICsgIG52bWVt
LWNlbGxzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBjZWxsIGhh
bmRsZSB0byB3aGVyZSB0aGUgdHJpbSdzIGJhc2UgdGVtcGVyYXR1cmUgaXMgc3RvcmVkCj4gPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICAgICAgY2VsbCBoYW5kbGUgdG8gd2hlcmUg
dGhlIHRyaW0ncyB0ZW50aHMgb2YgQ2Vsc2l1cyBiYXNlIHZhbHVlIGlzIHN0b3JlZAo+ID4gKwo+
ID4gKyAgbnZtZW0tY2VsbC1uYW1lczoKPiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25z
dDogdHJpbV9iYXNlCj4gPiArICAgICAgLSBjb25zdDogdHJpbV9iYXNlX2ZyYWMKPiA+ICsKPiAK
PiBhcmUgd2Ugc3VyZSwgd2Ugd2FudCB1bmRlcnNjb3JlcyBoZXJlPwo+IHRyaW0tYmFzZSwgdHJp
bS1iYXNlLWZyYWMgbG9va3Mgc29tZXdoYXQgbmljZXIuCgphIHF1aWNrIGdyZXAgb2YgYWxsIHRo
ZSBiaW5kaW5ncyBzaG93cyBtZSB0aGF0IF8gdnMuIC0gaXMgYWJvdXQgZXZlbi4KSSdtIG5vdCBz
dXJlIGRldmlhdGluZyBmcm9tIHdoYXQgZG93bnN0cmVhbSBjYWxscyBpdCwgd2hhdCBJIGFscmVh
ZHkKc2VudCwgYW5kIHdoYXQgdGhlIGFscmVhZHkgc2VudCBkcml2ZXIgZXhwZWN0cyBpcyByZWFs
bHkgd29ydGggYW55b25lJ3MKdGltZSBhbmQgbWFpbGJveCBzcGFjZSBmb3Igd2hhdCBib2lscyBk
b3duIHRvIGEgbWF0dGVyIG9mIHBlcnNvbmFsCnByZWZlcmVuY2UuCgo+IAo+IEhlaWtvCj4gCgpL
aW5kIHJlZ2FyZHMsCk5pY29sYXMgRnJhdHRhcm9saQoKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
