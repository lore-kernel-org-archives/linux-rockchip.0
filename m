Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A6DC4707B
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ibQ6Lqt1eC5ub7dkLySzFE2UWgwdFEzlyy/ysIbhrY=; b=QbGw19aByF89vz
	sUdS7bPS7NWpr4mZe3YwMT6oBrjPUrBq8m792/34hCpVFmuC157jx6E0I4k0j6H1UpZCDbWzyAOGU
	hR0T/gNT2VM3Fmu5wCqdkauV53Ti/h8lUWszN57r842w9UReYf7M4+cCll7mEa5XVly8gJcDc0D4A
	GMDhE9b3GojaVuxxsaL3BonOz/1JGlwmyhbV6R+fp4gcm0FLkjXG+nfXizhK1bG2jldn0b2GK2G2G
	JxOTKFUcLbyj05KSWalnRddkewG2REwEv9usiyheTY6ysM3ZeBSapylRglOLomy/ktOTirJurP9sE
	mfl6E8lh3YcWdXaqrDZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgxb-00GSmP-1x;
	Fri, 05 Jan 2024 09:57:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgxY-00GSlU-0k;
	Fri, 05 Jan 2024 09:57:49 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLgx5-0002Kf-AW; Fri, 05 Jan 2024 10:57:19 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Date: Fri, 05 Jan 2024 10:57:18 +0100
Message-ID: <13141620.VsHLxoZxqI@diego>
In-Reply-To: <acb52035-4f0c-430d-a2d2-26ab37805d7b@rock-chips.com>
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
 <acb52035-4f0c-430d-a2d2-26ab37805d7b@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_015748_266243_CED56846 
X-CRM114-Status: GOOD (  28.21  )
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

SGksCgpBbSBGcmVpdGFnLCA1LiBKYW51YXIgMjAyNCwgMTA6MDQ6NTUgQ0VUIHNjaHJpZWIgQW5k
eSBZYW46Cj4gT24gMS80LzI0IDIzOjU4LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIERv
bm5lcnN0YWcsIDQuIEphbnVhciAyMDI0LCAxNTozOTo1MCBDRVQgc2NocmllYiBDcmlzdGlhbiBD
aW9jYWx0ZWE6Cj4gPj4gQ29tbWl0IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjog
QWRkIHN1cHBvcnQgZm9yIHJrMzU4OCIpCj4gPj4gaW50cm9kdWNlZCBhIHZhcmlhYmxlIHdoaWNo
IGVuZGVkIHVwIGJlaW5nIHVudXNlZC4gIFJlbW92ZSBpdC4KPiA+Pgo+ID4+IHJvY2tjaGlwX2Ry
bV92b3AyLmM6MTY4ODoyMzogd2FybmluZzogdmFyaWFibGUg4oCYaWZfZGNsa19yYXRl4oCZIHNl
dCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4gPj4KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJv
cmEuY29tPgo+ID4gCj4gPiBpbiBnZW5lcmFsLCBwbGVhc2UgZG9uJ3Qgc2VuZCBub24tc2VyaWVz
IHBhdGNoZXMgYXMgcmVwbGllcyB0byBvdGhlciBwYXRjaGVzLgo+ID4gSXQgY29uZnVzZXMgdG9v
bGluZyBsaWtlIGI0IHdheSB0b28gb2Z0ZW4sIGFzIHRoaXMgcGF0Y2ggaXMgbm90IGRlc2lnbmF0
ZWQKPiA+IGFzIGEgMi8yIChzaW1pbGFyIHRvIHRoZSBmaXJzdCBvbmUgbm90IGJlaW5nIDEvMiku
Cj4gPiAKPiA+PiAtLS0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jIHwgMiAtLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4g
Pj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+
ID4+IGluZGV4IDQ0NTA4YzJkZDYxNC4uOTIzOTg1ZDQxNjFiIDEwMDY0NAo+ID4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+PiBAQCAtMTY4NSw3
ICsxNjg1LDYgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcmszNTg4X2NhbGNfY3J1X2NmZyhzdHJ1
Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCwgaW50IGlkLAo+ID4+ICAgCXVuc2lnbmVkIGxvbmcgZGNs
a19jb3JlX3JhdGUgPSB2X3BpeGNsayA+PiAyOwo+ID4+ICAgCXVuc2lnbmVkIGxvbmcgZGNsa19y
YXRlID0gdl9waXhjbGs7Cj4gPj4gICAJdW5zaWduZWQgbG9uZyBkY2xrX291dF9yYXRlOwo+ID4+
IC0JdW5zaWduZWQgbG9uZyBpZl9kY2xrX3JhdGU7Cj4gPj4gICAJdW5zaWduZWQgbG9uZyBpZl9w
aXhjbGtfcmF0ZTsKPiA+PiAgIAlpbnQgSyA9IDE7Cj4gPj4gICAKPiA+PiBAQCAtMTcwMCw3ICsx
Njk5LDYgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcmszNTg4X2NhbGNfY3J1X2NmZyhzdHJ1Y3Qg
dm9wMl92aWRlb19wb3J0ICp2cCwgaW50IGlkLAo+ID4+ICAgCQl9Cj4gPj4gICAKPiA+PiAgIAkJ
aWZfcGl4Y2xrX3JhdGUgPSAoZGNsa19jb3JlX3JhdGUgPDwgMSkgLyBLOwo+ID4+IC0JCWlmX2Rj
bGtfcmF0ZSA9IGRjbGtfY29yZV9yYXRlIC8gSzsKPiA+PiAgIAkJLyoKPiA+PiAgIAkJICogKmlm
X3BpeGNsa19kaXYgPSBkY2xrX3JhdGUgLyBpZl9waXhjbGtfcmF0ZTsKPiA+PiAgIAkJICogKmlm
X2RjbGtfZGl2ID0gZGNsa19yYXRlIC8gaWZfZGNsa19yYXRlOwo+ID4+ICAgCQkgKi8KPiA+IAkJ
KmlmX3BpeGNsa19kaXYgPSAyOwo+ID4gCQkqaWZfZGNsa19kaXYgPSA0Owo+ID4gCj4gPiB3aXRo
IHRoZSBjb2RlIGNvbnRpbnVpbmcgd2l0aCB0aG9zZSBzdGF0aWMgY29uc3RhbnRzIGJ1dCB0aGUg
Y29tbWVudAo+ID4gc2hvd2luZyBhIGZvcnVtdWxhLCBJIGRvIGhvcGUgQW5keSBjYW4gcHJvdmlk
ZSBhIGJpdCBvZiBpbnNpZ2h0IGludG8KPiA+IHdoYXQgaXMgaGFwcGVuaW5nIGhlcmUuCj4gPiAK
PiA+IEkuZS4gSSdkIHJlYWxseSBsaWtlIHRvIHVuZGVyc3RhbmQgaWYgdGhhdCByZWFsbHkgaXMg
anVzdCBhIHJlbW5hbnQgb3IKPiA+IHNvbWV0aGluZyBkaWZmZXJlbnQgaXMgbmVlZGVkLgo+IAo+
IFRoaXMgaXMgbm90IGEgcmVtbmFudCwgaW4gbXkgVjEsIEkgY2FsY3VsYXRlIGFsbCB0aGUgZGl2
IGJ5IGZvcm11bGEsIGJ1dCBTYXNjaGEgcHJlZmVyCj4gbW9yZSBmb3IgYSBjb25zdGFudHMgdmFs
dWVbMF0sIHNvIEkga2VlcCB0aGlzIGZvcm11bGEgYXMgY29tbWVudHMgdG8gaW5kaWNhdGUgaG93
IHRoZXNlIHZhbHVlIGNvbWUgZnJvbS4KPiAKPiBbMF1odHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvcGF0Y2gvMjAyMzExMTQxMTI4NTUuMTc3MTM3Mi0x
LWFuZHlzaHJrQDE2My5jb20vCgp0aGFua3MgZm9yIHJlZmVyZW5jaW5nIHRoZSBzb3VyY2Ugb2Yg
dGhlIGNoYW5nZS4KTGVhdmluZyB0aGUgZm9ybXVsYSBpbiB0aGVyZSB3YXMgdGhlIHJpZ2h0IGNo
b2ljZSBJIHRoaW5rCgpUaGF0IHN0aWxsIGxlYXZlcyB0aGUgaXNzdWUgd2l0aCB0aGUgInVudXNl
ZCIgd2FybmluZy4KCkBDaHJpc3RhbjogaW4gdGhlIGhkbWkgYmxvY2sgaXRzZWxmIGNhbiB5b3Ug
bW92ZSB0aGUgCglpZl9kY2xrX3JhdGUgPSBkY2xrX2NvcmVfcmF0ZSAvIEs7CnRvIHRoZSBjb21t
ZW50IGJsb2NrIHBsZWFzZT8gQW5kIHBvc3NpYmx5IHJlZmVyZW5jZSB0aGUgdXNlCm9mIHRoZSBz
dGF0aWMgdmFsdWVzIGluIHRoZSBjb21tZW50IG1lc3NhZ2UuCgpUaGUgaWZfZGNsa19yYXRlIHZh
ciBkZWNsYXJhdGlvbiBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbiBjYW4gb2YgY291cnNlCmdv
IGF3YXkuCgpUaGF0IHdheSB3ZSBzdGlsbCBrZWVwIGRvY3VtZW50aW5nIGhvdyB0aGVzZSB2YWx1
ZXMgY2FtZSB0byBiZToKCiAgCQkvKgoJCSAqIGlmX2RjbGtfcmF0ZSA9IGRjbGtfY29yZV9yYXRl
IC8gSzsKICAJCSAqICppZl9waXhjbGtfZGl2ID0gZGNsa19yYXRlIC8gaWZfcGl4Y2xrX3JhdGU7
CiAgCQkgKiAqaWZfZGNsa19kaXYgPSBkY2xrX3JhdGUgLyBpZl9kY2xrX3JhdGU7CiAgCQkgKi8K
ClRoYW5rcwpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
