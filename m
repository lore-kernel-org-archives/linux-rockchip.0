Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086BCC7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 17:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoHMfLj4sy9PsBy+B6RwoY7SDsndH5WS6bmxspXKPV4=; b=3BgzSZzBdC2oq4
	c8WUbd1KLbbn6sCbu+sWDaZesKgI4oH7fwGv1a1fC5J1f0ptwlhEe2ElzAU2SENssbHjlOD7yjawL
	gCRXDPUc0pzN8k45o1ofpC0WDKFf2bU+OfFiadE6nOKPQSOLwdVvsT06/OX71kwWtrBIe0QlJkfhN
	fYY9ZwS8bLWn2s+nQ04k+bzRie5rGl9Y8v/VFlUXmrbQx81nzgF/v+3fjrRRGnpBuvhCBxaVMdkek
	B1+lBkA8sJI3WD22JyINvNpP2r57keS377T08rzxLFWCRw3HYVYBEwFWh+JBeTpCndIt8QWBRk30t
	vKCwsX0idjjWN2RT0b4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VTI-00Au3D-2G;
	Tue, 23 May 2023 17:06:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VTF-00Au18-37
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 17:06:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q1VT6-000211-QU; Tue, 23 May 2023 19:06:40 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q1VT3-0000Bx-RL; Tue, 23 May 2023 19:06:37 +0200
Date: Tue, 23 May 2023 19:06:37 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	m.szyprowski@samsung.com, didi.debian@cknow.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	hverkuil-cisco@xs4all.nl, kernel@pengutronix.de,
	regressions@lists.linux.dev
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
Message-ID: <20230523170637.GE9943@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	m.szyprowski@samsung.com, didi.debian@cknow.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	hverkuil-cisco@xs4all.nl, kernel@pengutronix.de,
	regressions@lists.linux.dev
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_100650_006372_EC198820 
X-CRM114-Status: GOOD (  25.46  )
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

T24gVHVlLCAyMyBNYXkgMjAyMyAxODozNjowOSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4gCj4gTGUgMjMvMDUvMjAyMyDDoCAxODoyNSwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNy
aXTCoDoKPiA+IFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyBpc3N1ZSBvYnNlcnZlZCBvbiBPZHJv
aWQtTTEgYm9hcmQ6Cj4gPiAKPiA+ICAgVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2lu
dGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1YWwgYWRkcmVzcyAwMDAwMDAwMDAwMDAwMDA4Cj4gPiAg
IE1lbSBhYm9ydCBpbmZvOgo+ID4gICAuLi4KPiA+ICAgTW9kdWxlcyBsaW5rZWQgaW46IGNyY3Qx
MGRpZl9jZSBoYW50cm9fdnB1IHNuZF9zb2Nfc2ltcGxlX2NhcmQgc25kX3NvY19zaW1wbGVfY2Fy
ZF91dGlscyB2NGwyX3ZwOSB2NGwyX2gyNjQgcm9ja2NoaXBfc2FyYWRjIHY0bDJfbWVtMm1lbSB2
aWRlb2J1ZjJfZG1hX2NvbnRpZyB2aWRlb2J1ZjJfbWVtb3BzIHJ0Y19yazgwOCB2aWRlb2J1ZjJf
djRsMiBpbmR1c3RyaWFsaW9fdHJpZ2dlcmVkX2J1ZmZlciByb2NrY2hpcF90aGVybWFsIGR3bWFj
X3JrIHN0bW1hY19wbGF0Zm9ybSBzdG1tYWMgdmlkZW9kZXYga2ZpZm9fYnVmIGRpc3BsYXlfY29u
bmVjdG9yIHZpZGVvYnVmMl9jb21tb24gcGNzX3hwY3MgbWMgcm9ja2NoaXBkcm0gYW5hbG9naXhf
ZHAgZHdfbWlwaV9kc2kgZHdfaGRtaSBkcm1fZGlzcGxheV9oZWxwZXIgcGFuZnJvc3QgZHJtX3No
bWVtX2hlbHBlciBncHVfc2NoZWQgaXBfdGFibGVzIHhfdGFibGVzIGlwdjYKPiA+ICAgQ1BVOiAz
IFBJRDogMTc2IENvbW06IHY0bF9pZCBOb3QgdGFpbnRlZCA2LjMuMC1yYzctbmV4dC0yMDIzMDQy
MCAjMTM0ODEKPiA+ICAgSGFyZHdhcmUgbmFtZTogSGFyZGtlcm5lbCBPRFJPSUQtTTEgKERUKQo+
ID4gICBwc3RhdGU6IDYwNDAwMDA5IChuWkN2IGRhaWYgK1BBTiAtVUFPIC1UQ08gLURJVCAtU1NC
UyBCVFlQRT0tLSkKPiA+ICAgcGMgOiBoYW50cm9fdHJ5X2ZtdCsweGEwLzB4Mjc4IFtoYW50cm9f
dnB1XQo+ID4gICBsciA6IGhhbnRyb190cnlfZm10KzB4OTQvMHgyNzggW2hhbnRyb192cHVdCj4g
PiAgIC4uLgo+ID4gICBDYWxsIHRyYWNlOgo+ID4gICAgaGFudHJvX3RyeV9mbXQrMHhhMC8weDI3
OCBbaGFudHJvX3ZwdV0KPiA+ICAgIGhhbnRyb19zZXRfZm10X291dCsweDNjLzB4Mjk4IFtoYW50
cm9fdnB1XQo+ID4gICAgaGFudHJvX3Jlc2V0X3Jhd19mbXQrMHg5OC8weDEyOCBbaGFudHJvX3Zw
dV0KPiA+ICAgIGhhbnRyb19zZXRfZm10X2NhcCsweDI0MC8weDI1NCBbaGFudHJvX3ZwdV0KPiA+
ICAgIGhhbnRyb19yZXNldF9lbmNvZGVkX2ZtdCsweDk0LzB4Y2MgW2hhbnRyb192cHVdCj4gPiAg
ICBoYW50cm9fcmVzZXRfZm10cysweDE4LzB4MzggW2hhbnRyb192cHVdCj4gPiAgICBoYW50cm9f
b3BlbisweGQ0LzB4MjBjIFtoYW50cm9fdnB1XQo+ID4gICAgdjRsMl9vcGVuKzB4ODAvMHgxMjAg
W3ZpZGVvZGV2XQo+ID4gICAgY2hyZGV2X29wZW4rMHhjMC8weDIyYwo+ID4gICAgZG9fZGVudHJ5
X29wZW4rMHgxM2MvMHg0OGMKPiA+ICAgIHZmc19vcGVuKzB4MmMvMHgzOAo+ID4gICAgcGF0aF9v
cGVuYXQrMHg1NTAvMHg5MzQKPiA+ICAgIGRvX2ZpbHBfb3BlbisweDgwLzB4MTJjCj4gPiAgICBk
b19zeXNfb3BlbmF0MisweGI0LzB4MTY4Cj4gPiAgICBfX2FybTY0X3N5c19vcGVuYXQrMHg2NC8w
eGFjCj4gPiAgICBpbnZva2Vfc3lzY2FsbCsweDQ4LzB4MTE0Cj4gPiAgICBlbDBfc3ZjX2NvbW1v
bisweDEwMC8weDEyMAo+ID4gICAgZG9fZWwwX3N2YysweDNjLzB4YTgKPiA+ICAgIGVsMF9zdmMr
MHg0MC8weGE4Cj4gPiAgICBlbDB0XzY0X3N5bmNfaGFuZGxlcisweGI4LzB4YmMKPiA+ICAgIGVs
MHRfNjRfc3luYysweDE5MC8weDE5NAo+ID4gICBDb2RlOiA5N2ZjOGE3ZiBmOTQwYWE4MCA1Mjg2
NGE2MSA3MmE2ODZjMSAoYjk0MDA4MDApCj4gPiAgIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAw
MDAwMDAgXS0tLQo+ID4gCj4gPiBGaXhlczogZGI2ZjY4YjUxZTVjICgibWVkaWE6IHZlcmlzaWxp
Y29uOiBEbyBub3Qgc2V0IGNvbnRleHQgc3JjL2RzdCBmb3JtYXRzIGluIHJlc2V0IGZ1bmN0aW9u
cyIpCgpUaGlzIHBhdGNoIHBhcnRpYWxseSByZXZlcnRzIHRoZSBwcmV2aW91cyBjb21taXQuIEkg
d29uZGVyIHdoZXRoZXIgdGhlIHJlYXNvbgpmb3IgcmVzZXR0aW5nIHRoZSBjb250ZXh0IGZvcm1h
dCBvbmx5IGlmIHRoZSB0YXJnZXRlZCBxdWV1ZSBpcyBub3QgYnVzeSBzdGlsbApzdGFuZHMuCgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KClRlc3RlZC1ieTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJA
cGVuZ3V0cm9uaXguZGU+Cgo+ID4gLS0tCj4gCj4gRGllZGVyaWNrLCBNYXJlaywgTWljaGFlbCwK
PiBJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2ggb24gbXkgYm9hcmRzIGFuZCBJIHNlZSBubyByZWdy
ZXNzaW9ucyBvbgo+IGRlY29kZXIgcGFydCBhbmQgbm8gbW9yZSBjcmFzaCB3aGVuIHByb2Jpbmcg
dGhlIGVuY29kZXIuCj4gQ291bGQgeW91IHRlc3QgaXQgb24geW91ciBzaWRlIHRvIGNvbmZpcm0g
aXQgaXMgb2sgPwo+IAo+IFRob3JzdGVuLCBJIHRyeS90ZXN0IHJlZ3pib3QgY29tbWFuZHMsIHBs
ZWFzZSB0ZWxsIG1lIGlmIGl0IGlzIGNvcnJlY3QuCj4gCj4gI3JlZ3pib3QgXmludHJvZHVjZWQg
ZGI2ZjY4YjUxZTVjCj4gI3JlZ3pib3QgdGl0bGUgbWVkaWE6IHZlcmlzaWxpY29uOiBudWxsIHBv
aW50ZXIgZGVyZWZlcmVuY2UgaW4gdHJ5X2ZtdAo+ICNyZWd6Ym90IGlnbm9yZS1hY3Rpdml0eQo+
IAo+IAo+ID4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMgfCA2ICsrKystLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fdjRsMi5jCj4gPiBpbmRleCA4MzU1MTg1MzRlM2IuLjYxY2ZhYWY0ZTkyNyAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fdjRsMi5jCj4gPiBAQCAtMzk3LDEwICszOTcsMTIgQEAgaGFudHJvX3Jlc2V0X3Jhd19mbXQo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwgaW50IGJpdF9kZXB0aCkKPiA+ICAgCWlmICghcmF3X3Zw
dV9mbXQpCj4gPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAtCWlmIChjdHgtPmlzX2VuY29kZXIp
Cj4gPiArCWlmIChjdHgtPmlzX2VuY29kZXIpIHsKPiA+ICAgCQllbmNvZGVkX2ZtdCA9ICZjdHgt
PmRzdF9mbXQ7Cj4gPiAtCWVsc2UKPiA+ICsJCWN0eC0+dnB1X3NyY19mbXQgPSByYXdfdnB1X2Zt
dDsKPiA+ICsJfSBlbHNlIHsKPiA+ICAgCQllbmNvZGVkX2ZtdCA9ICZjdHgtPnNyY19mbXQ7Cj4g
PiArCX0KPiA+ICAgCWhhbnRyb19yZXNldF9mbXQoJnJhd19mbXQsIHJhd192cHVfZm10KTsKPiA+
ICAgCXJhd19mbXQud2lkdGggPSBlbmNvZGVkX2ZtdC0+d2lkdGg7Cj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
