Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4521610F92FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKpacTwffas+aNHGxxGmRWbNLjMumL+dsfiKg3jxRnc=; b=eyLiMSh56km9PT
	SLpC0Ic80HiSr4Ree/X54BWXhjXMThYyZqUXdsF7JOZvZVN7k0ycmPO1ypqTe9w/zxA6gcur12Qa3
	xlGGLW4ZFM0OhBCj1t3bMxF7J5CVWtAZeu/O61Ph7q+qJUCQEqYuqXKZc+Vu7Y7I2dGSq65lvB/PM
	SDULypQd9RdmhpYjfDE+BuB/oUJCup8+/QxEvvdWQ8uNs5VyQucg67VAU0QmZnEWRoLQFMcV6bZZl
	qSq8GTKhY3THxPQybJNRuSf5u5KCw47oNFWknleO8AjErCkuBGJrsupB0VDs39VQnUgGw0Bkt8hbd
	X4u1iuyVNwKRkCdPAMEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7fZs-0000000DWaa-1ZuA;
	Tue, 31 Mar 2026 20:20:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7fZp-0000000DWa1-3ZcJ;
	Tue, 31 Mar 2026 20:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=j0M0/sXX/s0DXkkv0+EF2fIkGOqZ6C31hkXqcBioYKU=; b=dMmFTAQKdHoK+OMMZ3qvudqnUZ
	4rainb2qsrUHgHOP8R3lPswoGe4ucx+aqtz6sk1eZ0HRM1mTT+QpN8ZdcE7tmTimxinxyvclzImRZ
	rG7gHw2rRZgr+4aMdFknFtkiR23scQZZBBRxWw7pS4M6x2iqb3mZo9bysBw65vl02YInjsf1Jsn5i
	y6i04IKp2U0Jv1hI2U+VKaWjndyOdwY6CAluE4xfowMd481CiK7bPi0bZYrbvpzW5lhh4uQnWs8G2
	Z5kaLATQs5x8Fj9r+SMm31c7fZGXe7UA0JADZw1OIGNK7Ln1HCvdg62W2piCE0HgR6QbG6YNvSRZW
	p+S9lLsQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>, Dennis Gilmore <dennis@ausil.us>
Cc: Jimmy Hon <honyuenkwun@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>,
 Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 John Clark <inindev@gmail.com>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>,
 Chukun Pan <amadeus@jmu.edu.cn>, Peter Robinson <pbrobinson@gmail.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Mykola Kvach <xakep.amatop@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
Date: Tue, 31 Mar 2026 22:19:50 +0200
Message-ID: <2545205.jE0xQCEvom@phil>
In-Reply-To: <CAABkxwsD_59G3YrpMdUi7D1fVHruSuDHn9-gQAZbwTdxGBHaBA@mail.gmail.com>
References: <20260310031002.3921234-1-dennis@ausil.us>
 <CABjd4Yz3MKOp-gE8kNc4EOt3-a0mKZsxvbVYCN4KsbqTRDtWgA@mail.gmail.com>
 <CAABkxwsD_59G3YrpMdUi7D1fVHruSuDHn9-gQAZbwTdxGBHaBA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_132041_917934_22EA6572 
X-CRM114-Status: GOOD (  33.03  )
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

SGkgRGVubmlzLAoKQW0gRGllbnN0YWcsIDMxLiBNw6RyeiAyMDI2LCAyMTo0MTo1MCBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERlbm5pcyBHaWxtb3JlOgo+IE9uIFdlZCwg
TWFyIDExLCAyMDI2IGF0IDk6MjbigK9BTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFdlZCwgTWFyIDExLCAyMDI2IGF0IDU6MjnigK9BTSBEZW5u
aXMgR2lsbW9yZSA8ZGVubmlzQGF1c2lsLnVzPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVHVlLCBN
YXIgMTAsIDIwMjYgYXQgNzoyMOKAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29t
PiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IDxzbmlwPgo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAg
ICAgICB2Y2M1djBfb3RnOiByZWd1bGF0b3ItdmNjNXYwLW90ZyB7Cj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBn
cGlvcyA9IDwmZ3BpbzAgUktfUEM0IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfb3RnX2VuPjsKPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1ib290LW9uOwo+ID4gPiA+IHJlZ3VsYXRvci1hbHdheXMtb24gYW5kIHJlZ3VsYXRvci1i
b290LW9uIGRvZXMgbm90IHNlZW0gcmlnaHQuCj4gPiA+ID4KPiA+ID4gPiBXaHkgd2VyZSB0aGVz
ZSBhZGRlZD8gVGhlIHZlbmRvciBkaWQgbm90IGhhdmUgdGhlbS4KPiA+ID4gPiBodHRwczovL2dp
dGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51eC1vcmFuZ2VwaS9ibG9iLzIzMmVkNGI5N2I2
NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRiOWYzZjEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyNMMjE2LUwyMjYKPiA+ID4gPgo+ID4gPiA+IFdh
cyB0aGlzIG1pc3Rha2VubHkgdGFrZW4gZnJvbSB0aGUgcmVndWxhdG9yIHVzYiAyMCB3aGljaCBp
cyBwb3dlcmluZwo+ID4gPiA+IHRoZSBvbmJvYXJkIHVzYjIuMCBodWI/Cj4gPiA+ID4gaHR0cHM6
Ly9naXRodWIuY29tL29yYW5nZXBpLXh1bmxvbmcvbGludXgtb3JhbmdlcGkvYmxvYi8yMzJlZDRi
OTdiNjVkYTJiN2I2NDdjNGUzYzQ5NmY4NTk0YjlmM2YxL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5kdHMjTDExMS1MMTE5Cj4gPiA+Cj4gPiA+IEl0
IG1heSBoYXZlIGJlZW4gYSBtaXNzcmVhZGluZyBvZiB0aGUgc2NoZW1hdGljLCBidXQgaXQgd2Fz
IGFkZGVkIHRvCj4gPiA+IGdldCBwb3dlciB0byB0aGUgVVNCMyBwb3J0LiBiZWZvcmUgSSBhZGRl
ZCBpdCBkZXZpY2VzIHBsdWdnZWQgaW50byB0aGUKPiA+ID4gVVNCIDMgcG9ydCB3b3VsZCBub3Qg
cG93ZXIgb24KPiA+Cj4gPiBIaSBEZW5uaXMsCj4gPgo+ID4gVGhlIHNjaGVtYXRpYyBzYXlzIHRo
YXQgdGhpcyByZWd1bGF0b3Igc3VwcGxpZXMgdGhlIFZCVVMgdm9sdGFnZSBmb3IKPiA+IHRoZSBV
U0IzIHBhcnQgb2YgeW91ciBUeXBlLUEgT1RHIGNvbm5lY3Rvci4gSWYgeW91IG1ha2UgaXQgYWx3
YXlzLW9uLAo+ID4geW91J2xsIGxpa2VseSBsb3NlIHRoZSBwb3NzaWJpbGl0eSB0byB1c2UgdGhp
cyBwb3J0IGluIGRldmljZSBtb2RlCj4gPiAod2hpY2ggeW91IHdvdWxkIG5lZWQgZS5nLiBmb3Ig
Zmxhc2hpbmcgaW1hZ2VzIG92ZXIgYSBVU0IgY2FibGUgaW4KPiA+IFUtYm9vdCB3aGljaCBhbHNv
IHRha2VzIGRldmljZSB0cmVlIHNvdXJjZXMgZnJvbSBMaW51eCB2aWEKPiA+IGRldmljZXRyZWUt
cmViYXNpbmcpLgo+ID4KPiA+IFlvdSBhbHNvIGxpbmsgaXQgdXAgYXMgdGhlIFBIWSBzdXBwbHkg
b2YgdGhlIFVTQjIgY29udHJvbGxlciwgd2hpY2gKPiA+IGRvZXNuJ3QgZGVzY3JpYmUgdGhlIGFj
dHVhbCBoYXJkd2FyZS4KPiA+Cj4gPiBQbGVhc2Ugc2VlIGlmIHlvdSdkIHJhdGhlciBkZWZpbmUg
YSBjb25uZWN0b3Igbm9kZSBmb3IgeW91ciBUeXBlLUEKPiA+IHBvcnQsIGFuZCBsaXN0IHRoaXMg
cmVndWxhdG9yIGFzIGl0cyBWQlVTIHN1cHBseSBleHBsaWNpdGx5LiBJJ3ZlCj4gPiByZWNlbnRs
eSBzdWJtaXR0ZWQgYSBwYXRjaCBbMV0gdG8gbWFrZSB0aGUgIm9uYm9hcmRfdXNiX2RldiIgZHJp
dmVyCj4gPiB0YWtlIGNhcmUgb2YgZW5hYmxpbmcgVkJVUyBpbiBleGFjdGx5IHRoaXMgdHlwZSBv
ZiBzaXR1YXRpb25zIChpdCdzIGluCj4gPiB1c2ItdGVzdGluZyBub3cgYW5kIHdpbGwgaG9wZWZ1
bGx5IGhpdCAtbmV4dCBzb21ldGltZSBzb29uKS4gSWYgeW91Cj4gPiBuZWVkIGFuIGV4YW1wbGUg
Zm9yIGl0cyB1c2UsIHBsZWFzZSByZWZlciB0byBbMl0uCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+
ID4gQWxleGV5Cj4gPgo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDIx
Ny10eXBlYS12YnVzLXYxLTEtNjU3YjRlNTVhNGMyQGZsaXBwZXIubmV0Lwo+ID4gWzJdIGh0dHBz
Oi8vZ2l0aHViLmNvbS9mbGlwcGVyZGV2aWNlcy9mbGlwcGVyLWxpbnV4LWtlcm5lbC9ibG9iLzJm
ODE0Y2RmMDdmNTBlOTAxZmMxYjEzMjgyMTNlNzY0NjA4NjRjMjAvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NzYtZmxpcHBlci1vbmUtcmV2LWYwYjBjMS5kdHMjTDMwMy1MMzI4Cj4g
Cj4gU29ycnkgZm9yIHRoZSBkZWxheSwgSSBhbSB0YWtpbmcgYSBsb29rIGF0IGl0IG5vdy4gUGxl
YXNlIGxldCBtZSBrbm93Cj4gd2hlbiBpdCBsYW5kcyBpbiAtbmV4dC4gSW4gdGhlIG1lYW50aW1l
LCBJIGJlbGlldmUgd2hhdCBJIGhhdmUgaXMgaW4KPiBnb29kIHNoYXBlIGFuZCBpcyB3b3JraW5n
IHdlbGwgaGVyZS4gSSBhbSBoYXBweSB0byBtYWtlIGEgY2hhbmdlIG9uY2UKPiBzdXBwb3J0IGxh
bmRzIHVwc3RyZWFtLgoKUmV2aWV3IGNvbW1lbnRzIHNob3VsZCBiZSBhZGRyZXNzZWQgYmVmb3Jl
IHBhdGNoZXMgZ2V0IGFwcGxpZWQuCgpTbyB0aGVyZSBpcyBubyB3YWl0aW5nIGZvciAid2hlbiBp
dCBsYW5kcyB1cHN0cmVhbSIgdG8gbWFrZSBhZGRpdGlvbmFsCmZpeGVzLCB3aGVuIHlvdSBrbm93
IGF0IHN1Ym1pc3Npb24gdGltZSwgdGhhdCB0aGluZ3MgbmVlZCBpbXByb3ZlbWVudC4KCgpIZWlr
bwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
