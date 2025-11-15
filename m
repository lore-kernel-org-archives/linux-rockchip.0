Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE319CEBF86
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3rkeekqnk3/YC+nUymPsDm98tsK7sFNoZpE9R/4u7w=; b=a+J+qSZnAavA/E
	hu/nHiaDi6EynbHaYKNlUZYGatlSRnCFEPEPBECv6RTgUBFdE6clL6NTdq/oY7luhanXAHvkZpWb4
	VIpgQzd8hSl/pbamvqJVd51G7x0R9YDlVgclNSU9mhNbJhRPLOTRxzXJh+fOn+9CQU48NKYbqrvwX
	R8/TqOYSb75ob94XJA+CFpsUh4qK8IRdP8WaKxoLsrk2fu1R+8iNM8d0dh2MlGimnFH7coV35SQMb
	n/ko5VmCPRgm3a6m1AmYME5ocFqYOyAlAeKdlxNwAlhyJtYk9w+GGeY+DS63JsFs5Q/owTuwd7cu/
	jBMMXqk6Szl6khy6+Nzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPga-0000000EC1p-2N5u;
	Sat, 15 Nov 2025 23:28:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPgV-0000000EC1A-2Dwh;
	Sat, 15 Nov 2025 23:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=l82rx51AsbqXiASt6mT5fRvFZ6R8MXZa4sonzok/Imc=; b=kPR3e9wPKNamPD854AOIQaiw7l
	4xZAMXQlw5rAnZnUA1xYhV+d34O7688QgFE2vXy7evtO4fro+OUGIzZrB//0wFT5hdNSahDyScp1k
	2Dtgi/V3CBdov3nX9VbfibUDul+kavFcjajuE3iif/w06k4cWaUs3nRFb9cJLsOlupJraZAEwCsgG
	hqAyHSnhCVoSVA2Aivj25mxGAhAqjylfTMWE33/PMMIK+6J9hQgk52XNYQTiLY0MHOwsZlhmhv/CH
	IaZzAn/EjPhn03M7HfHYiA7CAAOF3mM/0MguWXmqVH2Tv1xWb5jGEfPknhK2hP2O4yIwJr50mR33b
	CEsbmNAg==;
Received: from i53875bd0.versanet.de ([83.135.91.208] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vKPgK-0001oE-GP; Sun, 16 Nov 2025 00:27:48 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Asus Tinker Board 3 and 3S
 device tree
Date: Sun, 16 Nov 2025 00:27:47 +0100
Message-ID: <2455319.NG923GbCHz@diego>
In-Reply-To: <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
 <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
 <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_152759_615689_5469D0A2 
X-CRM114-Status: GOOD (  25.70  )
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

QW0gU2Ftc3RhZywgMTUuIE5vdmVtYmVyIDIwMjUsIDA4OjE0OjU4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+IEhlbGxvIE1pY2hhZWwsCj4gCj4g
T24gU2F0dXJkYXksIE5vdmVtYmVyIDE1LCAyMDI1IDA3OjAzIENFVCwgTWljaGFlbCBPcGRlbmFj
a2VyIDxtaWNoYWVsLm9wZGVuYWNrZXJAcm9vdGNvbW1pdC5jb20+IHdyb3RlOgo+ID4gT24gMTEv
MTUvMjUgMDE6NTMsIERyYWdhbiBTaW1pYyB3cm90ZToKPiA+ID4gVGhhbmtzIGZvciB0aGUgdjIh
ICBQbGVhc2UsIHNlZSBvbmUgbml0cGljayBiZWxvdy4KPiA+ID4KPiA+ID4gT24gRnJpZGF5LCBO
b3ZlbWJlciAxNCwgMjAyNSAxNjo0NiBDRVQsIG1pY2hhZWwub3BkZW5hY2tlckByb290Y29tbWl0
LmNvbSB3cm90ZToKPiA+ID4+IEZyb206IE1pY2hhZWwgT3BkZW5hY2tlciA8bWljaGFlbC5vcGRl
bmFja2VyQHJvb3Rjb21taXQuY29tPgo+ID4gPiBJJ20gc29ycnkgZm9yIG5vdCBtZW50aW9uaW5n
IGl0IGluIG15IGVhcmxpZXIgcmVzcG9uc2VzLCBidXQgdGhpcwo+ID4gPiBsaW5lIGlzIHJlZHVu
ZGFudCwgYmVjYXVzZSBpdCBkdXBsaWNhdGVzIHRoZSBGcm9tIHZhbHVlIGZvdW5kIGluCj4gPiA+
IHRoZSBhY3R1YWwgZW1haWwgbWVzc2FnZS4KPiA+IAo+ID4gVGhpcyBhY3R1YWxseSBjb21lcyBm
cm9tIG15IEdpdCBzZXR0aW5ncy4gSSBuZWVkIHRoaXMgd2hlbiBJIHNlbmQgCj4gPiBwYXRjaGVz
IHRvIHRoZSBZb2N0byBwcm9qZWN0IGFuZCBPcGVuRW1iZWRkZWQuIFRoYXQncyBiZWNhdXNlIHRo
ZWlyIAo+ID4gbWFpbGluZyBsaXN0IHNlcnZlciB3aGljaCBhbHRlcnMgdGhlIGFkZHJlc3Mgb2Yg
c2VuZGVycyAoIjxzZW5kZXI+IHZpYSAKPiA+IGxpc3RzLnlvY3RvcHJvamVjdC5vcmciKSwgYW5k
IHVsdGltYXRlbHkgdGhlIGNvbW1pdCBhdXRob3IgaWRlbnRpdHkgaW4gCj4gPiBHaXQuIFNlZSAK
PiA+IGh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL2NvbnRyaWJ1dG9yLWd1aWRlL3N1Ym1p
dC1jaGFuZ2VzLmh0bWwjZml4aW5nLXlvdXItZnJvbS1pZGVudGl0eQo+ID4gCj4gPiBJJ3ZlIGNo
ZWNrZWQgdGhhdCBteSBwYXRjaGVzIGFwcGx5IGZpbmUgYW5kIHRoYXQgdGhpcyAiRnJvbToiIGxp
bmUgCj4gPiBkb2Vzbid0IGFwcGVhciBpbiB0aGUgY29tbWl0cyBpbiB0aGUgdHJlZS4KPiA+IFNv
LCBjYW4gSSBrZWVwIHRoaXM/CgpZZXMgeW91IGNhbiBrZWVwIHRoYXQsIEkgZG9uJ3Qgc2VlIGEg
cHJvYmxlbSB3aXRoIHRoYXQgYWRkaXRpb25hbApGcm9tIGhlYWRlci4KCj4gQWN0dWFsbHksIEkg
Zm9yZ290IHRvIG1lbnRpb24gdGhhdCB0aGUgRnJvbSBoZWFkZXJzIGluIHlvdXIgcGF0Y2gKPiBz
dWJtaXNzaW9ucyBhcmUgYSBiaXQgd3JvbmcgYnkgY29udGFpbmluZyBqdXN0IHRoZSBlbWFpbCBh
ZGRyZXNzLAo+IHdpdGhvdXQgdGhlIGZpcnN0IGFuZCBsYXN0IG5hbWUuICBUaGF0IGlzc3VlIHNo
b3VsZCBiZSBmaXhlZCBmaXJzdCwKPiByZWdhcmRsZXNzIG9mIHRoZSBwcmVzZW5jZSAob3IgYWJz
ZW5jZSkgb2YgRnJvbSB0YWdzLgo+IAo+IFRoYW5rcyBmb3IgY2xhcmlmeWluZyB3aGF0J3MgdGhl
IHJlYXNvbiBmb3IgaGF2aW5nIHRoZSBGcm9tIHRhZ3MKPiByZWdhcmRsZXNzIG9mIHRoZSBhY3R1
YWwgbmVlZCBmb3IgaGF2aW5nIHRoZW0uICBNYXliZSBzZXR0aW5nIEdpdCdzCj4gImZvcm1hdC5m
cm9tIiBvcHRpb24gdG8gdHJ1ZSBhdCB0aGUgcmVwb3NpdG9yeSBsZXZlbCBjb3VsZCBzb2x2ZQo+
IHRoaXMgbmljZWx5LCB3aGlsZSBhbHNvIGV4ZXJjaXNpbmcgdGhlIEdpdC1mdSBhIGJpdD8gOikK
PiAKPiBCVFcsIG15IHJlc3BvbnNlcyBhcmUgY3VycmVudGx5IGphaWxlZCBieSB0aGUgbGludXgt
cm9ja2NoaXAgbWFpbGluZwo+IGxpc3QsIHJlcXVpcmluZyBtYW51YWwgYXBwcm92YWwsIGFzIGEg
cmVzdWx0IG9mIHRoZSBtYWlsIHNlcnZlciBJJ20KPiB1c2luZyBzb21ldGltZXMgaW5zZXJ0aW5n
IHNvbWUgc3RyYW5nZSBpbnZpc2libGUgVVRGLTggY2hhcmFjdGVycwo+IGludG8gdGhlIGVtYWls
IHN1YmplY3RzLiAgT2ggd2VsbC4gOikKCkkgZ3Vlc3MgdGhhdCBtYWlsc2VydmVyIG5lZWRzIGEg
Zml4IDotKQoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
