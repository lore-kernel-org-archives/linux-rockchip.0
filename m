Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C98C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 12:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5b4r2AOLvVd/QU7mDglbGugpy/oaZax2RnwLmeo/Uw=; b=I4ykkUBwRtOXic
	lx9FxBvsOaeHZTavAdWGfoDcQogjwl+54FWm3gwCb+EOUSjaRSZQXy8XAekpWwuiYd2EelekyPzPR
	OCSIkW5crvcSRCLIfPUy1Mjy9k3JFOmQ4BCFO2T9lrQVyN0/NF4bqySKp4CD2JnZJ4pYsyi7T06Dj
	UizFC3tTeNMtDWwzgZcCitCJMsykOJ/+xdGcrxPzmfYC9B9QVrNy8FbSrGzrvekY/rCG41YsMhyYH
	V/cgcg37W4ZUQhIiMjI+cJscoJrJiEaMjHJkQJa6sRhPzZi01JYnbqhdBN7Zq9qQbcdWSrYPTRJT6
	C7s+6urMYTeO3Boh0+DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naGlN-005ffQ-Nr; Fri, 01 Apr 2022 12:52:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naGlC-005fcn-UJ
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 12:52:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naGl7-0006gJ-RW; Fri, 01 Apr 2022 14:52:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naGl3-0002Tr-Fq; Fri, 01 Apr 2022 14:52:05 +0200
Date: Fri, 1 Apr 2022 14:52:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220401125205.GL4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:49:29 up 2 days, 1:19, 55 users, load average: 0.37, 0.36, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_055214_999554_2A4033C5 
X-CRM114-Status: GOOD (  25.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgUGlvdHIsCgpPbiBUdWUsIE1hciAyOSwgMjAyMiBhdCAwOTozMTowMUFNICswMjAwLCBQaW90
ciBPbmlzemN6dWsgd3JvdGU6Cj4gCj4gCj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAyOC4wMy4yMDIyLCBv
IGdvZHouIDE3OjEwOgo+ID4gCj4gPiAKPiA+IENoYW5nZXMgc2luY2Ugdjg6Cj4gPiAtIG1ha2Ug
aGNsa192byBhIGNyaXRpY2FsIGNsb2NrIGluc3RlYWQgb2YgZW5hYmxpbmcgaXQgaW4gdGhlIGhk
bWkgZHJpdmVyCj4gPiAtIEZpeCB2b3AyX3NldHVwX2xheWVyX21peGVyKCksIHJlcG9ydGVkIGJ5
IEFuZHkgWWFuCj4gPiAtIExpbWl0IHBsYW5lcyBwb3NzaWJsZV9jcnRjcyB0byBhY3R1YWxseSBl
eGlzdGluZyBjcnRjcwo+ID4gCj4gPiAKPiAKPiBTYXNjaGEsCj4gCj4gRllJOgo+IEkgd2FzIGhv
cGluZyB2OSB3aWxsIGZpeCBncmVlbiBzY3JlZW4gaXNzdWUgaSBzZWUgd2hlbiB2aWRlbyBwbGF5
ZXIgd2FudHMgdG8gZHJhdyB0byBudjEyIGNhcGFibGUgZHJtIHBsYW5lLgo+IEl0IGxvb2sgaXNz
dWUgaXMgc3RpbGwgcHJlc2VudCA6LSgKCkJhc2VkIG9uIHRoZSBkaXNjdXNzaW9uIHdpdGggQW5k
eSBwbGVhc2UgdHJ5IHRoZSBmb2xsb3dpbmcgcGF0Y2gsIGl0CnNob3VsZCBmaXggeW91ciBncmVl
biBzY3JlZW4gaXNzdWUuIE5vdGUgdGhhdCB3aXRoIHRoaXMgcGF0Y2ggdGhlCkNSVEMgYW5kIHBs
YW5lIGlkcyB3aWxsIGNoYW5nZSwgc28gdGhlIG1vZGV0ZXN0IGNvbW1hbmRzIG5lZWQgdG8gYmUK
YWRqdXN0ZWQgYWNjb3JkaW5nbHkuCgpTYXNjaGEKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS04
PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKLS0gCkZyb20gY2JjMDMwNzM2MjNhNzE4MDI0
MzMzMWFjMjRjM2FmYWY5ZGVjNzUyMiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogU2Fz
Y2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpEYXRlOiBGcmksIDEgQXByIDIwMjIg
MTQ6NDg6NDkgKzAyMDAKU3ViamVjdDogW1BBVENIXSBmaXh1cCEgZHJtOiByb2NrY2hpcDogQWRk
IFZPUDIgZHJpdmVyCgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwppbmRl
eCA3ZGJhN2I5YjYzZGM2Li4xNDIxYmYyZjEzM2YxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwpAQCAtMjI4Nyw2ICsyMjg3LDIwIEBAIHN0YXRpYyBp
bnQgdm9wMl9jcmVhdGVfY3J0YyhzdHJ1Y3Qgdm9wMiAqdm9wMikKIAkJCX0KIAkJfQogCisJCWlm
ICh2b3AyLT5kYXRhLT5zb2NfaWQgPT0gMzU2NikgeworCQkJLyoKKwkJCSAqIE9uIFJLMzU2NiB0
aGVzZSB3aW5kb3dzIGRvbid0IGhhdmUgYW4gaW5kZXBlbmRlbnQKKwkJCSAqIGZyYW1lYnVmZmVy
LiBUaGV5IHNoYXJlIHRoZSBmcmFtZWJ1ZmZlciB3aXRoIHNtYXJ0MCwKKwkJCSAqIGVzbWFydDAg
YW5kIGNsdXN0ZXIwIHJlc3BlY3RpdmVseS4KKwkJCSAqLworCQkJc3dpdGNoICh3aW4tPmRhdGEt
PnBoeXNfaWQpIHsKKwkJCWNhc2UgUk9DS0NISVBfVk9QMl9TTUFSVDE6CisJCQljYXNlIFJPQ0tD
SElQX1ZPUDJfRVNNQVJUMToKKwkJCWNhc2UgUk9DS0NISVBfVk9QMl9DTFVTVEVSMToKKwkJCQlj
b250aW51ZTsKKwkJCX0KKwkJfQorCiAJCWlmICh3aW4tPnR5cGUgPT0gRFJNX1BMQU5FX1RZUEVf
T1ZFUkxBWSkKIAkJCXBvc3NpYmxlX2NydGNzID0gKDEgPDwgbnZwcykgLSAxOwogCi0tIAoyLjMw
LjIKClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0s
IEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDkt
NTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
