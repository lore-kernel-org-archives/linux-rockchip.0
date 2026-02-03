Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E843E87834
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjmOyNmkHGO4g+M3vfhv6IJoItB6hS4QWFghFRuQOM4=; b=qdjfWRiAJTj1ES
	W0VhpUKkE4F7MbzsTqA1+RTSQe3f6rKIFwQKy8xGfkqjySPijHxKxdwaZbukUtmD6iII6GZvzPLVq
	Oll1tN1onWkUijA5gr8FK7Tto09JD5Sa5QTWLhOyzWZKDdHhV4Ibjlu443K/TGst41TO9TDqkhLC9
	dceMHUq0LOnA1DZbYUnp9JzvvsRTMmTJOidx3+4fKV6fuAJb9wHOVnrmaBGlEH1/DVOKz2YfCD698
	bGRurJak9aA6OOZrkzqPIj7V/DDLOR0+nn6jvF+mG9s9V/IsO4k3204l5EnqqVFFU0RRzzj0sK5/X
	y7oZRLWZGNxu1tQP/eSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnH6K-00000006jeG-408K;
	Tue, 03 Feb 2026 14:09:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnH6H-00000006jco-21vD;
	Tue, 03 Feb 2026 14:09:55 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id AA6CA5B2;
	Tue,  3 Feb 2026 15:09:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770127745;
	bh=Rv0gnZrGTVnHq8ksG/uGGrkDZi1zIa4ztL46UEkonLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QP1vaF/qoOoTBXHPASYDi3HJe2FmO+pobt2RlBUxJF0hAgilkmQ+sAxpCisOQR058
	 rAIBf/hU7mmVDZi2gn8Ik0+Yc/jrD75aLWjNNQRrF1W6XRBxbiGTYTsI4HjC/LdrFE
	 s/P/zP/t+p4sFm/xjtW23cZZu9j6yFOfaUuQzi/0=
Date: Tue, 3 Feb 2026 16:09:45 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Damon Ding <damon.ding@rock-chips.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
	sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
	alim.akhtar@samsung.com, jingoohan1@gmail.com,
	p.zabel@pengutronix.de, hjc@rock-chips.com, heiko@sntech.de,
	andy.yan@rock-chips.com, dianders@chromium.org,
	m.szyprowski@samsung.com, jani.nikula@intel.com,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 05/18] drm/bridge: Move legacy bridge driver out of
 imx directory for multi-platform use
Message-ID: <20260203140945.GC12013@killaraus>
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-6-damon.ding@rock-chips.com>
 <DG2S064XPGXL.1MQDAKWZEK50K@bootlin.com>
 <7256ecf9-b10b-428c-a1a6-e35e80a686ed@rock-chips.com>
 <9e1da672-a52d-4ec3-a20a-fe6f8ca15496@rock-chips.com>
 <DG58VCQ54OZA.2QHGR8JFIATY2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DG58VCQ54OZA.2QHGR8JFIATY2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_060953_661862_D9E88E45 
X-CRM114-Status: GOOD (  36.16  )
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

T24gVHVlLCBGZWIgMDMsIDIwMjYgYXQgMTE6MTE6NTBBTSArMDEwMCwgTHVjYSBDZXJlc29saSB3
cm90ZToKPiBPbiBUdWUgRmViIDMsIDIwMjYgYXQgMjozMSBBTSBDRVQsIERhbW9uIERpbmcgd3Jv
dGU6Cj4gPiBPbiAyLzIvMjAyNiAxMDo1NCBBTSwgRGFtb24gRGluZyB3cm90ZToKPiA+PiBPbiAx
LzMxLzIwMjYgODozMyBQTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPiA+Pj4gT24gV2VkIERlYyAx
NywgMjAyNSBhdCAxMDozMyBBTSBDRVQsIERhbW9uIERpbmcgd3JvdGU6Cj4gPj4+PiBBcyBzdWdn
ZXN0ZWQgYnkgRG1pdHJ5LCB0aGUgRFJNIGxlZ2FjeSBicmlkZ2UgZHJpdmVyIGNhbiBiZSBwdWxs
ZWQKPiA+Pj4+IG91dCBvZiBpbXgvIHN1YmRpciBmb3IgbXVsdGktcGxhdGZvcm0gdXNlLiBUaGUg
ZHJpdmVyIGlzIGFsc28gcmVuYW1lZAo+ID4+Pj4gdG8gbWFrZSBpdCBtb3JlIGdlbmVyaWMgYW5k
IHN1aXRhYmxlIGZvciBwbGF0Zm9ybXMgb3RoZXIgdGhhbiBpLk1YLgo+ID4+Pj4KPiA+Pj4+IFNp
Z25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4gPj4+
PiBTdWdnZXN0ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1
YWxjb21tLmNvbT4KPiA+Pj4+IFRlc3RlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgo+ID4+Pj4KPiA+Pj4+IC0tLQo+ID4+Pj4KPiA+Pj4+IENoYW5nZXMg
aW4gdjc6Cj4gPj4+PiAtIFJlbmFtZSBsZWdhY3ktYnJpZGdlIHRvIG9mLWRpc3BsYXktbW9kZS1i
cmlkZ2UuCj4gPj4+PiAtIFJlbW92ZSB1bm5lY2Vzc2FyeSBBUEkgZHJtX2JyaWRnZV9pc19sZWdh
Y3koKS4KPiA+Pj4KPiA+Pj4gLi4uCj4gPj4+Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL0tjb25maWcKPiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZp
Zwo+ID4+Pj4gQEAgLTI0NCw2ICsyNDQsMTYgQEAgY29uZmlnIERSTV9OWFBfUFROMzQ2MAo+ID4+
Pj4gwqDCoMKgwqDCoCBoZWxwCj4gPj4+PiDCoMKgwqDCoMKgwqDCoCBOWFAgUFROMzQ2MCBlRFAt
TFZEUyBicmlkZ2UgY2hpcCBkcml2ZXIuCj4gPj4+Pgo+ID4+Pj4gK2NvbmZpZyBEUk1fT0ZfRElT
UExBWV9NT0RFX0JSSURHRQo+ID4+Pj4gK8KgwqDCoCB0cmlzdGF0ZQo+ID4+Pj4gK8KgwqDCoCBk
ZXBlbmRzIG9uIERSTV9CUklER0UgJiYgT0YKPiA+Pj4+ICvCoMKgwqAgaGVscAo+ID4+Pj4gK8Kg
wqDCoMKgwqAgVGhpcyBpcyBhIERSTSBicmlkZ2UgaW1wbGVtZW50YXRpb24gdGhhdCB1c2VzCj4g
Pj4+PiBvZl9nZXRfZHJtX2Rpc3BsYXlfbW9kZQo+ID4+Pj4gK8KgwqDCoMKgwqAgdG8gYWNxdWly
ZSBkaXNwbGF5IG1vZGUuCj4gPj4+PiArCj4gPj4+PiArwqDCoMKgwqDCoCBOZXdlciBkZXNpZ25z
IHNob3VsZCBub3QgdXNlIHRoaXMgYnJpZGdlIGFuZCBzaG91bGQgdXNlIHByb3Blcgo+ID4+Pj4g
cGFuZWwKPiA+Pj4+ICvCoMKgwqDCoMKgIGRyaXZlciBpbnN0ZWFkLgo+ID4+Pgo+ID4+PiAiTmV3
ZXIgZGVzaWducyBzaG91bGQgbm90IHVzZSB0aGlzIGJyaWRnZSIsIGJ1dCBpbiBwYXRjaCA4IHlv
dSBhcmUKPiA+Pj4gaW50cm9kdWNpbmcgYSBuZXcgdXNlIG90IGRldm1fZHJtX29mX2Rpc3BsYXlf
bW9kZV9icmlkZ2UoKS4gU2hvdWxkbid0IHlvdQo+ID4+PiBpbnN0ZWFkICJ1c2UgcHJvcGVyIHBh
bmVsIGRyaXZlciBpbnN0ZWFkIiBpbiBwYXRjaCA4Pwo+ID4+Pgo+ID4+PiBDYW4geW91IHBvaW50
IHRvIHRoZSBjb252ZXJzYXRpb24gd2hlcmUgdGhlIGNvbnZlcnN0YWlvbiB3aGVyZSBEbWl0cnkK
PiA+Pj4gc3VnZ2VzdGVkIHRoaXMgY2hhbmdlPyBNYXliZSBpdCBhbHJlYWR5IGNvbnRhaW5zIHRo
ZSBhbnN3ZXIgdG8gbXkKPiA+Pj4gcXVzdGlvbi4gQWxzbyBhZGRpbmcgYSBsaW5rIHRvIHRoYXQg
Y29udmVyc2F0aW9uIGluIHRoZSBjb21taXQgbWVzc2FnZQo+ID4+PiB3b3VsZSBiZSB1c2VmdWwu
Cj4gPj4+Cj4gPj4KPiA+PiBGaXJzdCBvZiBhbGwsIHRoYW5rcyBmb3IgeW91ciByZXZpZXdzIG9u
IHRoaXMgcGF0Y2ggc2VyaWVzLgo+ID4+Cj4gPj4gbGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLwo+ID4+IHh3ZW55Y3NjYWx6ZGxwdXh5dG9yYml5dmVqM2s3cHYzbGh4d3RhZGlseHE2
NWlwd3N2QHg1cnhtNTN3NWUyMi8KPiA+Pgo+ID4+IEkgdGhpbmsgaXQgbWF5IGJlIGEgbWlzbGVh
ZGluZyBpc3N1ZSBjYXVzZWQgYnkgZGlyZWN0bHkgY29weWluZyB0aGUKPiA+PiBwcmV2aW91cyBL
Y29uZmlnIGRlc2NyaXB0aW9uLiBOb3cgdGhhdCB0aGUgbmV3Cj4gPj4gZGV2bV9kcm1fb2ZfZGlz
cGxheV9tb2RlX2JyaWRnZSgpIGhlbHBlciBoYXMgYmVlbiBhZGRlZCwgZHJpdmVycyB1c2luZwo+
ID4+IHRoZSBwYW5lbC1icmlkZ2UgZnJhbWV3b3JrIGNhbiByZWx5IG9uIGl0IHRvIG1haW50YWlu
IGNvbXBhdGliaWxpdHkgd2l0aAo+ID4+IGxlZ2FjeSBkaXNwbGF5IG1vZGUgcGFyc2luZy4KPiAK
PiBBaCwgSSB0aGluayBJIGdvdCB0aGUgcG9pbnQ6IHRoZSBtb2RlIGRlc2NyaXB0aW9uIGluIGRl
dmljZSB0cmVlIGlzIGxlZ2FjeSwKPiBidXQgdGhlIGRyaXZlciBpdHNlbGYgaXMgbm90IGxlZ2Fj
eSBhbmQgd2lsbCBiZSBjdXJyZW50IHVudGlsIHdlIG5lZWQgdG8KPiBzdXBwb3J0IGxlZ2FjeSBk
ZXZpY2UgdHJlZS4gQ29ycmVjdD8KPiAKPiBJZiB0aGF0J3MgY29ycmVjdCwgdGhpcyBwYXRjaCBs
b29rcyBPSyB0byBtZSB3aXRoIGEgbmV3IEtjb25maWcgaGVscCB0ZXh0LgoKVGhlIGRldm1fZHJt
X29mX2Rpc3BsYXlfbW9kZV9icmlkZ2UoKSBmdW5jdGlvbiBuZWVkcyBkb2N1bWVudGF0aW9uCnRo
b3VnaCwgd2l0aCBhIHdhcm5pbmcgdGhhdCB0ZWxscyBpdCBtdXN0IG5vdCBiZSB1c2VkIGluIG5l
dyBkcml2ZXJzLgpDYXRjaGluZyBuZXcgdXNlcnMgaW4gY2hlY2twYXRjaC5wbCAob3Igc29tZXdo
ZXJlIGVsc2UpIHdvdWxkIGJlIGlkZWFsLgoKSSB3b3VsZCBhbHNvIG5vdCBjcmVhdGUgYSBzZXBh
cmF0ZSBtb2R1bGUgZm9yIHRoaXMgYW5kIG1vdmUgdGhlIGZ1bmN0aW9uCnRvIGRybV9icmlkZ2Uu
YywgYnV0IEkgZG9uJ3QgbWluZCB0aGF0IG11Y2ggaWYgdGhlIGNvbnNlbnN1cyBpcyB0aGF0IGEK
c2VwYXJhdGUgbW9kdWxlIGlzIGJldHRlci4KCj4gPj4gSXQgd291bGQgYmUgYmV0dGVyIHRvIHVw
ZGF0ZSB0aGUgY29tbWVudCBhcyBmb2xsb3dzOgo+ID4+Cj4gPj4gVGhpcyBpcyBhIERSTSBicmlk
Z2UgaW1wbGVtZW50YXRpb24gdGhhdCB1c2VzIG9mX2dldF9kcm1fZGlzcGxheV9tb2RlIHRvCj4g
Pj4gYWNxdWlyZSBkaXNwbGF5IG1vZGUuCj4gPj4KPiA+PiBJdCBleGlzdHMgZm9yIGNvbXBhdGli
aWxpdHkgd2l0aCBsZWdhY3kgZGlzcGxheSBtb2RlIHBhcnNpbmcsIGluIG9yZGVyCj4gPj4gdG8g
Y29uZm9ybSB0byB0aGUgcGFuZWwtYnJpZGdlIGZyYW1ld29yay4KPiA+Pgo+ID4KPiA+IERtaXRy
eSwgd2hhdCdzIHlvdSB0YWtlIG9uIHRoaXM/Cj4gCj4gRG1pdHJ5J3Mgb3BpbmlvbiB3b3VsZCBi
ZSBtdWNoIG1vcmUgcmVsZXZhbnQgdGhhbiBtaW5lLiBJIGRvbid0IGtub3cgbXVjaAo+IG15c2Vs
ZiBhYm91dCB0aGlzIGRyaXZlci4KCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
