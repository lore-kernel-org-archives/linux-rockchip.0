Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE5FED1950F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 18:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxAOxQSry1LPm8eRI8UdEwSjl/Lir6PZThJmyTpiIA8=; b=BNil+Y+cfCBEKJ
	mhlyKXOelmE2ukAaDMiF6SX8CXyyxk2ObzUECHKtGjoaW3wutcR318sfd/5jKQNpb16GhlwUEIc0G
	9MKuXRnJ4m6uO3ZshCgZiMQ8Zv60DQIlHYb+xhNLExx8lmZtjZ8MQchx/bjuBWx4Fm/2jYH/nuyCP
	SQOVnrypqBpboh9C5t2KkDRZtYTnQMB0gRepWxyYGRRx0aiRZIpX1TNqHPnjrJuDYs0AxTgjbYFHz
	zCODc+ZkoeNWjex9voecn6OcXpl6JP/x7/n+tQB13HXflQAIJt8Xg+8cUeG930hujGduS8nmS7mKX
	tWbM2ni8SYJ/A9oaaHYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRFr-0000000D4aP-1fjl;
	Mon, 26 Jan 2026 18:24:03 +0000
Received: from sender4-op-o10.zoho.com ([136.143.188.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRFo-0000000D4Zx-2ldK;
	Mon, 26 Jan 2026 18:24:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769451824; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SARI57JCNzYUUJvgh5eiMna3J/xzOo986mBnMyrAONQhI5Ckq1wW+md4pBj1D04wWCFgQk+ASsX/JkWViCpLqa8+V75LsyVjSPilsQawwi0Xtndi5X94D+e6u9/S4+x2xtyeI06vlzxIEZgwx+Zi6tc94erz6MvOOLJxT26Sg2c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769451824; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BCcFyc82BL5NjswhEby+qpxccQGrfqrQSMirNpyrbzw=; 
	b=NzZXtJEyPvI5ud8vMlfP/9ZgKDH/t2ffp68CjMpG8UGpyZSflFkvJFa1K2wyk/V/qTvudZu8j+JhGHcnX25rENNSrDJ1BoD0HjYoepXHybwB+UXYD9Lt/RnRQoIQcBouG8XKLI92QgtQ1VtO4qfbk9aT+ptTzdY9lo+FPQguJjw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nfraprado@collabora.com;
	dmarc=pass header.from=<nfraprado@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769451824;
	s=zohomail; d=collabora.com; i=nfraprado@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=BCcFyc82BL5NjswhEby+qpxccQGrfqrQSMirNpyrbzw=;
	b=lMJVcvAPA4rxh1kwJCUc8CEOB2ucn9J16f4xqryuUecWSHSQ05a8RjLJ7VVfmpnM
	x4zAGt0gsDnHAsXY3WNm7f2sjzEejobAv+luekczVyTceEi1b8865LHIlOxl2Cs4KC0
	xKYI3BQKMVIjVuFFVD+l+dEOxI5BTunLnlAAhlRU=
Received: by mx.zohomail.com with SMTPS id 176945182249825.35003191071928;
	Mon, 26 Jan 2026 10:23:42 -0800 (PST)
Message-ID: <1425ed35a21bcd9633524d4fc747b71a17068363.camel@collabora.com>
Subject: Re: [PATCH v4 2/4] drm: Add CRTC background color property
From: =?ISO-8859-1?Q?N=EDcolas?= "F. R. A. Prado" <nfraprado@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Maarten Lankhorst
	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sandy Huang	 <hjc@rock-chips.com>, Heiko
 =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,  Andy Yan
 <andy.yan@rock-chips.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed	 <hamohammed.sa@gmail.com>, Melissa Wen
 <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 26 Jan 2026 15:23:35 -0300
In-Reply-To: <20251219-rk3588-bgcolor-v4-2-2ff1127ea757@collabora.com>
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
	 <20251219-rk3588-bgcolor-v4-2-2ff1127ea757@collabora.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_102400_749863_BA54A99B 
X-CRM114-Status: GOOD (  20.76  )
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

T24gRnJpLCAyMDI1LTEyLTE5IGF0IDIzOjQ2ICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4gU29tZSBkaXNwbGF5IGNvbnRyb2xsZXJzIGNhbiBiZSBoYXJkd2FyZSBwcm9ncmFtbWVk
IHRvIHNob3cgbm9uLWJsYWNrCj4gY29sb3JzIGZvciBwaXhlbHMgdGhhdCBhcmUgZWl0aGVyIG5v
dCBjb3ZlcmVkIGJ5IGFueSBwbGFuZSBvciBhcmUKPiBleHBvc2VkIHRocm91Z2ggdHJhbnNwYXJl
bnQgcmVnaW9ucyBvZiBoaWdoZXIgcGxhbmVzLsKgIFRoaXMgZmVhdHVyZQo+IGNhbgo+IGhlbHAg
cmVkdWNlIG1lbW9yeSBiYW5kd2lkdGggdXNhZ2UsIGUuZy4gaW4gY29tcG9zaXRvcnMgbWFuYWdp
bmcgYSBVSQo+IHdpdGggYSBzb2xpZCBiYWNrZ3JvdW5kIGNvbG9yIHdoaWxlIHVzaW5nIHNtYWxs
ZXIgcGxhbmVzIHRvIHJlbmRlcgo+IHRoZQo+IHJlbWFpbmluZyBjb250ZW50Lgo+IAo+IFRvIHN1
cHBvcnQgdGhpcyBjYXBhYmlsaXR5LCBpbnRyb2R1Y2UgdGhlIEJBQ0tHUk9VTkRfQ09MT1Igc3Rh
bmRhcmQKPiBEUk0KPiBtb2RlIHByb3BlcnR5LCB3aGljaCBjYW4gYmUgYXR0YWNoZWQgdG8gYSBD
UlRDIHRocm91Z2ggdGhlCj4gZHJtX2NydGNfYXR0YWNoX2JhY2tncm91bmRfY29sb3JfcHJvcGVy
dHkoKSBoZWxwZXIgZnVuY3Rpb24uCj4gCj4gQWRkaXRpb25hbGx5LCBkZWZpbmUgYSA2NC1iaXQg
QVJHQiBmb3JtYXQgdmFsdWUgdG8gYmUgYnVpbHQgd2l0aCB0aGUKPiBoZWxwIG9mIGEgY291cGxl
IG9mIGRlZGljYXRlZCBEUk1fQVJHQjY0X1BSRVAqKCkgaGVscGVycy7CoCBJbmRpdmlkdWFsCj4g
Y29sb3IgY29tcG9uZW50cyBjYW4gYmUgZXh0cmFjdGVkIHdpdGggZGVzaXJlZCBwcmVjaXNpb24g
dXNpbmcgdGhlCj4gY29ycmVzcG9uZGluZyBEUk1fQVJHQjY0X0dFVCooKSBtYWNyb3MuCj4gCj4g
Q28tZGV2ZWxvcGVkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29s
bGFib3JhLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRlX2hl
bHBlci5jIHzCoCAxICsKPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuY8KgwqDC
oMKgwqDCoMKgwqAgfMKgIDQgKysKPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fYmxlbmQuY8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAzOSArKysrKysrKysrKysrKysrLS0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysrCj4g
wqBpbmNsdWRlL2RybS9kcm1fYmxlbmQuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgNCArLQo+IMKgaW5jbHVkZS9kcm0vZHJtX2NydGMuaMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTIgKysrKysrCj4gwqBpbmNsdWRlL2RybS9kcm1fbW9k
ZV9jb25maWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNSArKysKPiDCoGluY2x1ZGUv
dWFwaS9kcm0vZHJtX21vZGUuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA2Nwo+ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiDCoDggZmlsZXMgY2hhbmdlZCwgMTMzIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpZb3Ugc2hvdWxkIGFsc28gYWRkIGEgZHVtcCBm
b3IgdGhpcyBwcm9wZXJ0eSBpbgpkcm1fYXRvbWljX2NydGNfcHJpbnRfc3RhdGUoKS4KCj4gCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jcnRjLmggYi9pbmNsdWRlL2RybS9kcm1fY3J0
Yy5oCj4gaW5kZXggNjYyNzhmZmVlYmQ2Li5kOTlhNzQyNThkM2QgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2NydGMuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9jcnRjLmgKPiBAQCAt
Mjc0LDYgKzI3NCwxOCBAQCBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgewo+IMKgCSAqLwo+IMKgCXN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqZ2FtbWFfbHV0Owo+IMKgCj4gKwkvKioKPiArCSAqIEBi
YWNrZ3JvdW5kX2NvbG9yOgo+ICsJICoKPiArCSAqIFJHQiB2YWx1ZSByZXByZXNlbnRpbmcgdGhl
IHBpcGUncyBiYWNrZ3JvdW5kIGNvbG9yLsKgIFRoZQo+IGJhY2tncm91bmQKPiArCSAqIGNvbG9y
IChha2EgImNhbnZhcyBjb2xvciIpIG9mIGEgcGlwZSBpcyB0aGUgY29sb3IgdGhhdAo+IHdpbGwg
YmUgdXNlZAo+ICsJICogZm9yIHBpeGVscyBub3QgY292ZXJlZCBieSBhIHBsYW5lLCBvciBjb3Zl
cmVkIGJ5Cj4gdHJhbnNwYXJlbnQgcGl4ZWxzCj4gKwkgKiBvZiBhIHBsYW5lLsKgIFRoZSB2YWx1
ZSBoZXJlIHNob3VsZCBiZSBidWlsdCB1c2luZwo+IERSTV9BUkdCNjRfUFJFUCooKQo+ICsJICog
aGVscGVycywgd2hpbGUgdGhlIGluZGl2aWR1YWwgY29sb3IgY29tcG9uZW50cyBjYW4gYmUKPiBl
eHRyYWN0ZWQgd2l0aAo+ICsJICogZGVzaXJlZCBwcmVjaXNpb24gdmlhIHRoZSBEUk1fQVJHQjY0
X0dFVCooKSBtYWNyb3MuCj4gKwkgKi8KPiArCXU2NCBiYWNrZ3JvdW5kX2NvbG9yOwo+ICsKCi9z
L3BpcGUvQ1JUQy8gLiBwaXBlIGlzIGFuIGludGVsIHRlcm0gYnV0IHRoaXMgaXMgYSBnZW5lcmlj
IENSVEMKcHJvcGVydHkuCgoKT3RoZXIgdGhhbiB0aGF0LAoKUmV2aWV3ZWQtYnk6IE7DrWNvbGFz
IEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNvbT4KCi0tIApUaGFua3MsCgpO
w61jb2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
