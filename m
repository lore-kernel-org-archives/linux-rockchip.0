Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 676D5E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 15:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NteJMaQQcmYcovq1XZhNVctE1zGsFu18eJ3Y0rHmMNo=; b=YHUcU0UT1wN6hA
	FEwBYLZc4AgdE9I4Ad7GAscchBgUQr9A2MgmInP7TVKAxUj46ZxMTl90Sk8R0xBM7FRLGjv8WED23
	WcQbg9CzhIvontIgtRKKhGEXVo41lzFdK50NHMWWz3J0aPIug1wOmc8yTcSLZv4eDXUGdJUH80Ubr
	Cc8Vhr4V40Uxcs1avy4i4r+vJQdE69IRPhl0DmV+VRDitI332Kx0BDxb3td1jREHG9iLrMuUvDk2A
	CIkBCuv5oOwYB0oXvijzu/7mrBagpj/CIUFNGnO4sjGo2ZajUPdDRlqft0qq5tS/YK8vAXzOIDkF5
	MC9IypxUj8BjvBwPTxGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOvj-0000000FJsl-3GSr;
	Wed, 11 Dec 2024 15:47:15 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOty-0000000FJUr-0vjl;
	Wed, 11 Dec 2024 15:45:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733931906; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GTxSzouE/mJE+KcWqIisOlkVG9j+OotNYODT4LEZjRPdaSYKc7i1d0Crd7pyMjvDqdU5eLTRAX/5IeTigPpE5dHS8QXY1M4Jrn3NnjBVtKwOEaAb5Z5EktNEONCh+XYNOQCPSC6Br72m6UZTTrYsbjK8gBMsPTsLpkfFRVXWgDc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733931906; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=OHdp4oLrGWXBegQfCTP9oaUHfCcRbALc/9btYKwbm/g=; 
	b=RRnoLm5el6MLEoSqg88YRisYqGEx4pCOHZTWeSIdwTFwAa5e9+bRtwp+6zz1NaoPvMj8ouM9AxoI9MRiqTrYbcGY2YhARM/0SC6JpRC2Avt10K4KSe+oPS1dJog8rJ8+3gtXha+sFsmrpps0DAq2Xo7RzrcUJZ8Mv6SCxeWHqo4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733931906;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=OHdp4oLrGWXBegQfCTP9oaUHfCcRbALc/9btYKwbm/g=;
	b=Pt7bzOnOJxObbbrVV2c8d+mjSfJf2B1OyEdq1aUsl6K6KJ04U4xsbT8gez0v24Bu
	R1VLpZQv362bO7DGcB5tjH/VGBBwZcXzaLjyJk1HH+zdCKborvP0hG7Tr1kl96XVi8e
	FGuQlhU9cF2G4AfJVjHSIeh8h5wbkRjmyJArBfG8=
Received: by mx.zohomail.com with SMTPS id 1733931903262633.7303262296845;
	Wed, 11 Dec 2024 07:45:03 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
 s.hauer@pengutronix.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 kernel@collabora.com
Subject: Re: [PATCH v5 05/18] drm/rockchip: vop2: Set AXI id for rk3588
Date: Wed, 11 Dec 2024 10:45:01 -0500
Message-ID: <5843712.DvuYhMxLoT@bootstrap>
In-Reply-To: <2d381563.5e54.193b46d2f30.Coremail.andyshrk@163.com>
References: <20241209122943.2781431-1-andyshrk@163.com> <5839604.DvuYhMxLoT@trenzalore>
 <2d381563.5e54.193b46d2f30.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_074526_334262_F9F0F397 
X-CRM114-Status: GOOD (  20.23  )
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

T24gV2VkbmVzZGF5LCAxMSBEZWNlbWJlciAyMDI0IDAxOjM0OjM0IEVTVCBBbmR5IFlhbiB3cm90
ZToKPiBIaSBEZXRsZXYsCj4gCj4gQXQgMjAyNC0xMi0xMSAwMjo0MDoxNCwgIkRldGxldiBDYXNh
bm92YSIgPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tPiAKd3JvdGU6Cj4gPkhpIEFuZHks
Cj4gPgo+ID5PbiBNb25kYXksIDkgRGVjZW1iZXIgMjAyNCAwNzoyOToxOCBFU1QgQW5keSBZYW4g
d3JvdGU6Cj4gPj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ID4+
IAo+ID4+IFRoZXJlIGFyZSB0d28gQVhJIGJ1cyBpbiB2b3AyLCB3aW5kb3dzIGF0dGFjaGVkIG9u
IHRoZSBzYW1lIGJ1cyBtdXN0Cj4gPj4gaGF2ZSBhIHVuaXF1ZSBjaGFubmVsIFlVViBhbmQgUkdC
IGNoYW5uZWwgSUQuCj4gPj4gCj4gPj4gVGhlIGRlZmF1bHQgSURzIHdpbGwgY29uZmxpY3Qgd2l0
aCBlYWNoIG90aGVyIG9uIHRoZSByazM1ODgsIHNvIHRoZXkKPiA+PiBuZWVkIHRvIGJlIHJlYXNz
aWduZWQuCj4gPj4gCj4gPj4gRml4ZXM6IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9w
MjogQWRkIHN1cHBvcnQgZm9yIHJrMzU4OCIpCj4gPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4g
PGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ID4+IFRlc3RlZC1ieTogRGVyZWsgRm9yZW1hbiA8
ZGVyZWsuZm9yZW1hbkBjb2xsYWJvcmEuY29tPgo+ID4+IAo+ID4+IC0tLQo+ID4+IAo+ID4+IENo
YW5nZXMgaW4gdjU6Cj4gPj4gLSBBZGRlZCBpbiBWNQo+ID4+IAo+ID4+ICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE0ICsrKysrKysrKysrCj4gPj4gIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5oIHwgIDkgKysrKysrKwo+
ID4+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYyB8IDI2ICsr
KysrKysrKysrKysrKysrKystCj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4+IAo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMgaW5kZXgKPiA+PiBkYzRlZGQ2NWJjOWUuLjhiOWNhMDQ2
ZWVlYiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcDIuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jCj4gPj4gQEAgLTE0MjYsNiArMTQyNiwxMiBAQCBzdGF0aWMgdm9pZCB2b3AyX3Bs
YW5lX2F0b21pY191cGRhdGUoc3RydWN0Cj4gPj4gZHJtX3BsYW5lICpwbGFuZSwgJmZiLT5mb3Jt
YXQtPmZvcm1hdCwKPiA+PiAKPiA+PiAgCQlhZmJjX2VuID8gIkFGQkMiIDogIiIsICZ5cmdiX21z
dCk7Cj4gPj4gCj4gPj4gKwlpZiAodm9wMi0+ZGF0YS0+c29jX2lkID4gMzU2OCkgewo+ID4KPiA+
U2hvdWxkbid0IHRoaXMgYmUgZG9uZSBvbmx5IGZvciByazM1ODgsIGFzIHNwZWNpZmllZCBpbiB0
aGUgY29tbWVudHMgYmVsb3cKPiA+PyBUaGUgdGVzdCB3ZSBkaWQgYmVmb3JlIHNob3dlZCB0aGF0
IGl0IGlzIGZhaWxpbmcgb24gcmszNTc2IGFuZCAzNTc2IGlzID4KPiA+MzU4OC4KPiBJIHRoaW5r
IHRoaXMgaXMgYmVjYXVzZSB5b3UgdGVzdGVkIGJlZm9yZSB3aXRoIHRoZSBwYXRjaCBJIGdhdmUg
RGVyZWsgCj4gd2l0aG91dCBheGkgaWQgYXNzaWduZWQgZm9yIHJrMzU3Ni4KPiBJIGFzc2lnbmVk
IGF4aSBpZCBmb3IgcmszNTc2IGluIHRoaXMgdmVyc2lvbiAxOC8xOO+8iFRoZSBuZXcgSUQgYXNz
aWdubWVudCBjYW4KPiBhZGFwdCB0byBtb3JlIGFwcGxpY2F0aW9uIHNjZW5hcmlvcy7vvIksIGNh
biB5b3UgdGVzdCBpdCB3aXRoIHRoZSB3aG9sZSBWNQo+IHZlcnNpb24gYWdhaW4/CgpZZXMsIEkg
d2lsbCBkbyB0aGF0LiBCdXQgcGF0Y2ggMTggbWVudGlvbnM6CisgICAgICAgLyogUmVhZCBvbmx5
IGJpdCBvbiByazM1NzYqLworICAgICAgIFtWT1AyX1dJTl9BWElfQlVTX0lEXSA9IFJFR19GSUVM
RChSSzM1NjhfQ0xVU1RFUl9DVFJMLCAxMywgMTMpLAoKQW5kIHRoZSBiaXQgaXMgYmVpbmcgd3Jp
dHRlbiBoZXJlLiBJZiBpdCBpcyBpbmRlZWQgd3JpdGFibGUsIHRoZW4gSSB3b3VsZCBkcm9wIAp0
aGF0IGNvbW1lbnQuCgo+ID5JIHN1Z2dlc3QKPiA+Cj4gPglpZiAodm9wMi0+ZGF0YS0+c29jX2lk
ID09IDM1ODgpIHsKPiA+Cj4gPlJlZ2FyZHMsCj4gPkRldGxldgo+ID4KPiA+PiArCQl2b3AyX3dp
bl93cml0ZSh3aW4sIFZPUDJfV0lOX0FYSV9CVVNfSUQsIHdpbi0+ZGF0YS0KPiA+Pgo+ID4+YXhp
X2J1c19pZCk7Cj4gPj4KPiA+PiArCQl2b3AyX3dpbl93cml0ZSh3aW4sIFZPUDJfV0lOX0FYSV9Z
UkdCX1JfSUQsIHdpbi0+ZGF0YS0KPiA+Pgo+ID4+YXhpX3lyZ2Jfcl9pZCk7Cj4gPj4KPiA+PiAr
CQl2b3AyX3dpbl93cml0ZSh3aW4sIFZPUDJfV0lOX0FYSV9VVl9SX0lELCB3aW4tPmRhdGEtCj4g
Pj4KPiA+PmF4aV91dl9yX2lkKTsKPiA+Pgo+ID4+ICsJfQo+ID4+ICsKPiA+PiAKPiA+PiAgCWlm
ICh2b3AyX2NsdXN0ZXJfd2luZG93KHdpbikpCj4gPj4gIAkKPiA+PiAgCQl2b3AyX3dpbl93cml0
ZSh3aW4sIFZPUDJfV0lOX0FGQkNfSEFMRl9CTE9DS19FTiwKPiA+Cj4gPmhhbGZfYmxvY2tfZW4p
Owo+ID4KCkRldGxldi4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
