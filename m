Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B2B1EEC2AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 23:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ADh0wymjfP7Eh+YpvCJIwo7TQYRoNsCNYnhjrZFNXw=; b=T8jOUQtr+E/T4u
	NRoSUPt1mb03SpWRDPjcy6MmrGcpxPvEbgs2CN7wQG7iIbw48G3RYWtEyWB/NcHk9r8bPD7jZkPZl
	qStRS3VhYXDzvptV7kZ3dpTCxQVTT4n7dCiV2kLOSUzyCSzr2Tri9ObWdCRLar30n3/03Rbllo9eW
	C2g2dDcIcnTIDTqcj380USF1PI9phk+Tfh7oTwkvFOhuhN5ovsDvoFZC+fmUVukVni91qAlIGuh92
	EuMMkKn5jSg/ceePJUmLIHhaZ78Vzb3BMEqQG40wzIQadoQohFm4yDd2/ld+ZcFPBzEbfXs5dQ6bM
	sIDCDDXu0bKQNa9+2+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuezb-000000019SE-0f1b;
	Mon, 23 Feb 2026 23:05:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuezZ-000000019Qt-0UoS;
	Mon, 23 Feb 2026 23:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qpVti8+vQOV41DfAG3g3weD8DWF02pCo1W0kB+w+a5o=; b=i+myjy45ekhukDQ4eO+7yvtmiq
	HY6/bhyCpSYU5KqLbeXBzhd7WqKtHbdccRUhvswbV5ijOZp+U0sy7sL9xcskQMLt986TAW2K5VSRK
	ZnhfncxuaDDEprHps0arI2oOWpXx1iErOKBI7OwJHl8DyYtUOuj8ZK+Ta8Fn/uRwWTDp+sqeL7z38
	ygu+3xe+v6jPQiKW1e0pm3ptbAZ1ksE+uYq7c2ApepgzovPh9c11E9HL1abYCCuT29dyxHP303+vg
	TCOyUO4o+zJNcLXO8Se0YW6deWZSvmwcQR2QRu7sbfknTTrkW4wzYjpsq3xbHhifl4nskSXXlE5EO
	AZUhZJIg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 linux-media@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: dt-bindings: rockchip,vdec: Correct reg-names order
 for RK35{76,88}
Date: Tue, 24 Feb 2026 00:05:19 +0100
Message-ID: <14788642.ZYm5mLc6kN@diego>
In-Reply-To: <20260223-vdec-reg-order-rk3576-v2-1-daf4942dfc02@collabora.com>
References: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
 <20260223-vdec-reg-order-rk3576-v2-1-daf4942dfc02@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_150529_281632_F4471E04 
X-CRM114-Status: GOOD (  15.35  )
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

QW0gTW9udGFnLCAyMy4gRmVicnVhciAyMDI2LCAyMDo0OTo0OSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPiBVcGRhdGUgJ3JlZy1uYW1l
cycgcHJvcGVydHkgdG8gYWxsb3cgcHJvdmlkaW5nIHRoZSByZWdpc3RlciBibG9ja3MgaW4KPiB0
aGUgZXhwZWN0ZWQgYWRkcmVzcy1iYXNlZCBvcmRlciBmb3IgUkszNTc2ICYgUkszNTg4IHZpZGVv
IGRlY29kZXIgYW5kLAo+IGNvbnNlcXVlbnRseSwgZml4IHNvbWUgRFRDIHdhcm5pbmdzLgoKbml0
OiBJIHRoaW5rIHRoaXMgY291bGQgdXNlIGFuIGFkZGl0aW9uYWwgZXhwbGFuYXRpb24sIGRlc2Ny
aWJpbmcgdGhhdCB0aGUKaW5kaXZpZHVhbCBjb21wb25lbnRzIGdvdCBtb3ZlZCBhcm91bmQgaW5z
aWRlIHRoZSB2ZGVjIGlvIGJsb2NrCmF0IGxlYXN0IGJldHdlZW4gcmszNTg4IGFuZCByazM1NzYu
CgoKPiBBZGRpdGlvbmFsbHksIGRyb3AgdGhlICdyZWcnIGRlc2NyaXB0aW9uIGl0ZW1zIGFzIHRo
ZSBvcmRlciBpcyBub3QgZml4ZWQKPiBhbnltb3JlLCB3aGlsZSB0aGUgaW5mb3JtYXRpb24gdGhl
eSBvZmZlciBpcyBub3QgdmVyeSByZWxldmFudCBhbnl3YXkuCj4gCj4gRml4ZXM6IGM2ZmZiN2Ux
ZmI5MCAoIm1lZGlhOiBkdC1iaW5kaW5nczogcm9ja2NoaXA6IERvY3VtZW50IFJLMzU4OCBWaWRl
byBEZWNvZGVyIGJpbmRpbmdzIikKPiBGaXhlczogYTVjNGE2NTI2NDc2ICgibWVkaWE6IGR0LWJp
bmRpbmdzOiByb2NrY2hpcDogQWRkIFJLMzU3NiBWaWRlbyBEZWNvZGVyIGJpbmRpbmdzIikKPiBT
aWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVk
aWEvcm9ja2NoaXAsdmRlYy55YW1sIHwgMTMgKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAsdmRlYy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHZkZWMueWFt
bAo+IGluZGV4IDgwOWZkYTQ1YjNiZC4uMmQzMTY0YTI4ODJiIDEwMDY0NAo+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcCx2ZGVjLnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAsdmRl
Yy55YW1sCj4gQEAgLTI4LDE2ICsyOCwxNSBAQCBwcm9wZXJ0aWVzOgo+ICAKPiAgICByZWc6Cj4g
ICAgICBtaW5JdGVtczogMQo+IC0gICAgaXRlbXM6Cj4gLSAgICAgIC0gZGVzY3JpcHRpb246IFRo
ZSBmdW5jdGlvbiBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyBiYXNlCj4gLSAgICAgIC0gZGVzY3Jp
cHRpb246IFRoZSBsaW5rIHRhYmxlIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJzIGJhc2UKPiAtICAg
ICAgLSBkZXNjcmlwdGlvbjogVGhlIGNhY2hlIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJzIGJhc2UK
PiArICAgIG1heEl0ZW1zOiAzCj4gIAo+ICAgIHJlZy1uYW1lczoKPiAtICAgIGl0ZW1zOgo+ICsg
ICAgb25lT2Y6Cj4gICAgICAgIC0gY29uc3Q6IGZ1bmN0aW9uCj4gLSAgICAgIC0gY29uc3Q6IGxp
bmsKPiAtICAgICAgLSBjb25zdDogY2FjaGUKPiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAg
IC0gY29uc3Q6IGxpbmsKPiArICAgICAgICAgIC0gY29uc3Q6IGZ1bmN0aW9uCj4gKyAgICAgICAg
ICAtIGNvbnN0OiBjYWNoZQo+ICAKPiAgICBpbnRlcnJ1cHRzOgo+ICAgICAgbWF4SXRlbXM6IDEK
PiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
