Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8EB4C7115D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 09:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7DvWRstx1TE3trhrcS3hdKyN8Mqwl6QS349a7hX0EY=; b=CdMdMrDGfXc/7r
	YGGhg6xbXa89ilGO5CdHgakOyEHa7Oj2wt6ExMIc4KWoaFe3j9Vh1SfiFERVe0U7GOQJ9srB1LzJO
	56UCoWVv2UrdhsbDK8T5H257rqccGWiQvKzhM/ZK1TOcpc0kpvGzFsgJZxgOrW4vIMpgtD0exBOBB
	Ha0m5JYEHm2MpfrAiEtMPaF+JA4r7zYJuX4dl+UBnsNCtC8/GvtuRRu2QyGNOIgcQfizUlT+gmdx8
	WQRSlz1NY/dGWcM1U2x33WEneCKms+Jj77r+uqyc6o1CCKk8U8fEbmo2zU658UGcH0PddxQF+3/q3
	CmYlWvo979pv8rAhGvWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYXE-0000000FHWF-1xlW;
	Fri, 20 Jun 2025 09:59:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXM9-0000000F6QL-49J5;
	Fri, 20 Jun 2025 08:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2s1EfWhxZp+wUTpU6Av5sVxwB2ULwd+lJ/meBWs9Yxw=; b=kAG2XmNtW0d1LmL2rKWT6Lc/QX
	SOz6rnT0Lf4mLMiWEdu+MrXH2fAX12ZY4taDEwh3skekpPZaMOtfzgTWyUfwLAp1H3Y+U3ZQzHMj6
	r3dU5uIdxxv1pk2lk6bG5ADNU4W1XP0eA2O4VDOqTIBXnSxEoe4b1hsbdOAd+2VN+GbYQJk2SbFRT
	2gJFf/sXWDj53EnwotPMjuB20DX+VaDNAUvGbGO/BZCom166KZVRBQgiqAw/DX9tIfHH43d2QBsUG
	5G1P8jwrqMj3gP/BDb79MEdnrK2Dpd+tqftocvtzcPDkaeEmG2zDEU+NoO3bBS/SyoyYypq2tiy2D
	EjHMgqZA==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSXM7-0007ky-L9; Fri, 20 Jun 2025 10:44:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: enable further peripherals on ArmSoM
 Sige5
Date: Fri, 20 Jun 2025 10:44:14 +0200
Message-ID: <5004008.8F6SAcFxjW@phil>
In-Reply-To: <CABjd4Yzz9mh0G5BhpPOGAoadD-A5eX4kdsF8rGrWk82hAE-MYQ@mail.gmail.com>
References: <20250614-sige5-updates-v2-0-3bb31b02623c@gmail.com>
 <175036770856.1520003.17823147228060153634.b4-ty@sntech.de>
 <CABjd4Yzz9mh0G5BhpPOGAoadD-A5eX4kdsF8rGrWk82hAE-MYQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_014418_049297_955AAF0D 
X-CRM114-Status: GOOD (  18.34  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>, stable@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMjAuIEp1bmkgMjAyNSwgMTA6NDA6NDkgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiBPbiBGcmksIEp1biAyMCwgMjAyNSBh
dCAxOjE34oCvQU0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPgo+
ID4KPiA+IE9uIFNhdCwgMTQgSnVuIDIwMjUgMjI6MTQ6MzIgKzA0MDAsIEFsZXhleSBDaGFya292
IHdyb3RlOgo+ID4gPiBMaW5rIHVwIHRoZSBDUFUgcmVndWxhdG9ycyBmb3IgRFZGUywgZW5hYmxl
IFdpRmkgYW5kIEJsdWV0b290aC4KPiA+ID4KPiA+ID4gRGlmZmVyZW50IGJvYXJkIHZlcnNpb25z
IHVzZSBkaWZmZXJlbnQgaW5jb21wYXRpYmxlIFdpRmkvQmx1ZXRvb3RoIG1vZHVsZXMKPiA+ID4g
c28gc3BsaXQgdGhlIHZlcnNpb24tc3BlY2lmaWMgYml0cyBvdXQgaW50byBhbiBvdmVybGF5LiBC
YXNpYyBXaUZpCj4gPiA+IGZ1bmN0aW9uYWxpdHkgd29ya3MgZXZlbiB3aXRob3V0IGFuIG92ZXJs
YXksIGJ1dCBPT0IgaW50ZXJydXB0cyBhbmQKPiA+ID4gYWxsIEJsdWV0b290aCBzdHVmZiByZXF1
aXJlcyBvbmUuCj4gPiA+Cj4gPiA+IFsuLi5dCj4gPgo+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4K
PiA+IFsxLzRdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBsaXN0IGFsbCBDUFUgc3VwcGxpZXMgb24g
QXJtU29NIFNpZ2U1Cj4gPiAgICAgICBjb21taXQ6IGM3NmJjYzdkMWYyNGU5MGEyZDdiOThkMWU1
MjNkNzUyNDI2OWZjNTYKPiA+IFsyLzRdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgU0RJTyBj
b250cm9sbGVyIG9uIFJLMzU3Ngo+ID4gICAgICAgY29tbWl0OiBlNDkwZjg1NGI0NjM2OWIwOTZm
M2QwOWMwYzZhMDBmMzQwNDI1MTM2Cj4gPiBbMy80XSBhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IHZlcnNpb24taW5kZXBlbmRlbnQgV2lGaS9CVCBub2RlcyBvbiBTaWdlNQo+ID4gICAgICAgY29t
bWl0OiAzNThjY2MxZDhiMjQyYjhjNjU5ZTVlMTc3Y2FlZjE3NDYyNGU4Y2I2Cj4gPiBbNC80XSBh
cm02NDogZHRzOiByb2NrY2hpcDogYWRkIG92ZXJsYXkgZm9yIHRoZSBXaUZpL0JUIG1vZHVsZSBv
biBTaWdlNSB2MS4yCj4gPiAgICAgICBjb21taXQ6IGE4Y2RjYmU2YTlmNjRmNTZlZTI0YzllODMy
NWZiODljZjQxYTVkNjMKPiA+Cj4gPiBQYXRjaCAxIGFzIGZpeCBmb3IgdjYuMTYKPiA+Cj4gPiBJ
J3ZlIGFsc28gZml4ZWQgdGhlIHdpZmlAMSBub2RlIGluIHRoZSBvdmVybGF5IC0gd2hpY2ggd2Fz
IHVzaW5nCj4gPiBzcGFjZXMgaW5zdGVhZCBvZiB0YWJzLgo+IAo+IFRoYW5rcyBIZWlrbyEgSXQn
cyBhbm5veWluZyB0aGF0IFlBTUwgZG9lc24ndCBsaWtlIHRhYnMsIHNvIGNvcHlpbmcKPiBmcm9t
IGJpbmRpbmcgZXhhbXBsZXMgaXMgbm90IGEgdW5pdmVyc2FsbHkgZ29vZCBpZGVhIDopCj4gCj4g
QnkgdGhlIHdheSwgaXMgdGhlcmUgYW55IHRvb2wgdGhhdCBoZWxwcyBjYXRjaCB0aG9zZT8KCmNo
ZWNrcGF0Y2gucGwgd291bGQgYmUgdGhlIHRvb2wgdG8gZG8gdGhhdCwgYnV0IEknbSBub3Qgc3Vy
ZSBpdCBoYW5kbGVzCnRoaXMgYXQgdGhpcyB0aW1lLgoKSSBhbHNvIG9ubHkgc2F3IHRoaW5ncyB3
aGVuIEkgbG9va2VkIGF0IHRoZSBwYXRjaCBpbiAibWNlZGl0IiwgYmVjYXVzZQppdCBuaWNlbHkg
ZGlzdGluZ3Vpc2hlcyBiZXR3ZWVuIHRhYnMgYW5kIHNwYWNlcyA6LSkgLgoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
