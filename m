Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FDAE7B61B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 14:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvFsKgLNnmhm5hFkZBfCfkNypcqC7LCLp6HoCRmXGI4=; b=UFHiiVDLkzi2hO
	B5ZDUZKcAkOgGeQhpSBbpuR3JdZuvWiRqrIo2AE1j05e+S2tSCVQYV5p5x94LulhUCPbjSyxYwJ8O
	yEr/bMw01QFAngfvOrMPAtZPlMEw7O4g73E+62/9Q3qT9qMeR9/F45bwDgVaXi8HG1sT8Cc6jfpnT
	5jaB0ENU999VMtdrzUSltt5xWNEpbMqvNdJat/o2mc/ZtIFSU1f1EFFO5U2942hDn2fFc9YjaQ/3e
	LARd+2+gWqOETkdvubKOQRo0zorofdrlizeXjI014iklAf+ySDDJjTPqXA+5TZT5MSq8T6vO7Sh6C
	fpyCeSeeEMg/ENg6SXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo2Zd-000Bqa-1m;
	Wed, 04 Oct 2023 14:10:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo2Za-000BpJ-0d
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Oct 2023 14:09:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1qo2ZP-0000Tb-KC; Wed, 04 Oct 2023 16:09:47 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1qo2ZO-00B3KG-OD; Wed, 04 Oct 2023 16:09:46 +0200
Received: from mtr by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1qo2ZO-00CmAP-LV; Wed, 04 Oct 2023 16:09:46 +0200
Date: Wed, 4 Oct 2023 16:09:46 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH 02/13] media: rockchip: rga: extract helper to fill
 descriptors
Message-ID: <20231004140946.GC3042281@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
 <20230914-rockchip-rga-multiplanar-v1-2-abfd77260ae3@pengutronix.de>
 <8175c3d7-9e28-4483-a573-c64109784c60@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8175c3d7-9e28-4483-a573-c64109784c60@xs4all.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_070958_385409_1FBB643C 
X-CRM114-Status: GOOD (  30.95  )
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

T24gTW9uLCAyNSBTZXAgMjAyMyAwOTozMjo0OSArMDIwMCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+
IE9uIDE0LzA5LzIwMjMgMTQ6NDAsIE1pY2hhZWwgVHJldHRlciB3cm90ZToKPiA+IFRoZSBJT01N
VSBvZiB0aGUgUkdBIGlzIHByb2dyYW1tZWQgd2l0aCBhIGxpc3Qgb2YgRE1BIGRlc2NyaXB0b3Jz
IHRoYXQKPiA+IGNvbnRhaW4gYW4gMzIgYml0IGFkZHJlc3MgcGVyIDRrIHBhZ2UgaW4gdGhlIHZp
ZGVvIGJ1ZmZlcnMuIFRoZSBhZGRyZXNzCj4gPiBpbiB0aGUgZGVzY3JpcHRvciBwb2ludHMgdG8g
dGhlIHN0YXJ0IGFkZHJlc3Mgb2YgdGhlIHBhZ2UuCj4gPiAKPiA+IEludHJvZHVjZSAnc3RydWN0
IHJnYV9kbWFfZGVzYycgdG8gbWFrZSB0aGUgaGFuZGxpbmcgb2YgdGhlIERNQQo+ID4gZGVzY3Jp
cHRvcnMgZXhwbGljaXQgaW5zdGVhZCBvZiBoaWRpbmcgdGhlbSBiZWhpbmQgc3RhbmRhcmQgdHlw
ZXMuCj4gPiAKPiA+IEFzIHRoZSBkZXNjcmlwdG9ycyBvbmx5IGhhbmRsZSAzMiBiaXQgYWRkcmVz
c2VzLCBhZGRyZXNzZXMgYWJvdmUgNCBHQgo+ID4gY2Fubm90IGJlIGFkZHJlc3NlZC4gSWYgdGhp
cyBpcyBkZXRlY3RlZCwgc3RvcCBmaWxsaW5nIHRoZSBkZXNjcmlwdG9yCj4gPiBsaXN0IGFuZCBy
ZXBvcnQgYW4gZXJyb3IuCj4gPiAKPiA+IFdoaWxlIGF0IGl0LCB1c2UgcHJvdmlkZWQgaGVscGVy
cyBmb3IgaXRlcmF0aW5nIHRoZSBzZ190YWJsZSBpbnN0ZWFkIG9mCj4gPiBtYW51YWxseSBjYWxj
dWxhdGluZyB0aGUgRE1BIGFkZHJlc3Nlcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFl
bCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCA0NyArKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuaCAgICAgfCAgOCArKystLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygr
KSwgMjIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EtYnVmLmMKPiA+IGluZGV4IDgxNTA4ZWQ1YWJmMy4uZGY1ZWJjOTBlMzJk
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LWJ1Zi5jCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Et
YnVmLmMKPiA+IEBAIC01LDYgKzUsNyBAQAo+ID4gICAqLwo+ID4gIAo+ID4gICNpbmNsdWRlIDxs
aW51eC9wbV9ydW50aW1lLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3NjYXR0ZXJsaXN0Lmg+Cj4g
PiAgCj4gPiAgI2luY2x1ZGUgPG1lZGlhL3Y0bDItZGV2aWNlLmg+Cj4gPiAgI2luY2x1ZGUgPG1l
ZGlhL3Y0bDItaW9jdGwuaD4KPiA+IEBAIC0xNSw2ICsxNiwyNSBAQAo+ID4gICNpbmNsdWRlICJy
Z2EtaHcuaCIKPiA+ICAjaW5jbHVkZSAicmdhLmgiCj4gPiAgCj4gPiArc3RhdGljIGludCBmaWxs
X2Rlc2NyaXB0b3JzKHN0cnVjdCByZ2FfZG1hX2Rlc2MgKmRlc2MsIHN0cnVjdCBzZ190YWJsZSAq
c2d0KQo+ID4gK3sKPiA+ICsJc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgaXRlcjsKPiA+ICsJc3Ry
dWN0IHJnYV9kbWFfZGVzYyAqdG1wID0gZGVzYzsKPiA+ICsJdW5zaWduZWQgaW50IG51bV9kZXNj
ID0gMDsKPiA+ICsJZG1hX2FkZHJfdCBhZGRyOwo+ID4gKwo+ID4gKwlmb3JfZWFjaF9zZ3RhYmxl
X2RtYV9wYWdlKHNndCwgJml0ZXIsIDApIHsKPiA+ICsJCWFkZHIgPSBzZ19wYWdlX2l0ZXJfZG1h
X2FkZHJlc3MoJml0ZXIpOwo+ID4gKwkJaWYgKHVwcGVyXzMyX2JpdHMoYWRkcikgIT0gMEwpCj4g
PiArCQkJcmV0dXJuIC0xOwo+ID4gKwkJdG1wLT5hZGRyID0gbG93ZXJfMzJfYml0cyhhZGRyKTsK
PiA+ICsJCXRtcCsrOwo+ID4gKwkJbnVtX2Rlc2MrKzsKPiA+ICsJfQo+ID4gKwo+ID4gKwlyZXR1
cm4gbnVtX2Rlc2M7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBpbnQKPiA+ICByZ2FfcXVldWVf
c2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAqdnEsCj4gPiAgCQl1bnNpZ25lZCBpbnQgKm5idWZmZXJz
LCB1bnNpZ25lZCBpbnQgKm5wbGFuZXMsCj4gPiBAQCAtMTE0LDExICsxMzQsOCBAQCB2b2lkIHJn
YV9idWZfbWFwKHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPiA+ICB7Cj4gPiAgCXN0cnVjdCByZ2Ff
Y3R4ICpjdHggPSB2YjJfZ2V0X2Rydl9wcml2KHZiLT52YjJfcXVldWUpOwo+ID4gIAlzdHJ1Y3Qg
cm9ja2NoaXBfcmdhICpyZ2EgPSBjdHgtPnJnYTsKPiA+IC0Jc3RydWN0IHNnX3RhYmxlICpzZ3Q7
Cj4gPiAtCXN0cnVjdCBzY2F0dGVybGlzdCAqc2dsOwo+ID4gLQl1bnNpZ25lZCBpbnQgKnBhZ2Vz
Owo+ID4gLQl1bnNpZ25lZCBpbnQgYWRkcmVzcywgbGVuLCBpLCBwOwo+ID4gLQl1bnNpZ25lZCBp
bnQgbWFwcGVkX3NpemUgPSAwOwo+ID4gKwlzdHJ1Y3QgcmdhX2RtYV9kZXNjICpwYWdlczsKPiA+
ICsJdW5zaWduZWQgaW50IG51bV9kZXNjID0gMDsKPiA+ICAKPiA+ICAJaWYgKHZiLT50eXBlID09
IFY0TDJfQlVGX1RZUEVfVklERU9fT1VUUFVUKQo+ID4gIAkJcGFnZXMgPSByZ2EtPnNyY19tbXVf
cGFnZXM7Cj4gPiBAQCAtMTI2LDIzICsxNDMsMTMgQEAgdm9pZCByZ2FfYnVmX21hcChzdHJ1Y3Qg
dmIyX2J1ZmZlciAqdmIpCj4gPiAgCQlwYWdlcyA9IHJnYS0+ZHN0X21tdV9wYWdlczsKPiA+ICAK
PiA+ICAJLyogQ3JlYXRlIGxvY2FsIE1NVSB0YWJsZSBmb3IgUkdBICovCj4gPiAtCXNndCA9IHZi
Ml9wbGFuZV9jb29raWUodmIsIDApOwo+ID4gLQo+ID4gLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwg
c2dsLCBzZ3QtPm5lbnRzLCBpKSB7Cj4gPiAtCQlsZW4gPSBzZ19kbWFfbGVuKHNnbCkgPj4gUEFH
RV9TSElGVDsKPiA+IC0JCWFkZHJlc3MgPSBzZ19waHlzKHNnbCk7Cj4gPiAtCj4gPiAtCQlmb3Ig
KHAgPSAwOyBwIDwgbGVuOyBwKyspIHsKPiA+IC0JCQlkbWFfYWRkcl90IHBoeXMgPSBhZGRyZXNz
ICsKPiA+IC0JCQkJCSAgKChkbWFfYWRkcl90KXAgPDwgUEFHRV9TSElGVCk7Cj4gPiAtCj4gPiAt
CQkJcGFnZXNbbWFwcGVkX3NpemUgKyBwXSA9IHBoeXM7Cj4gPiAtCQl9Cj4gPiAtCj4gPiAtCQlt
YXBwZWRfc2l6ZSArPSBsZW47Cj4gPiArCW51bV9kZXNjID0gZmlsbF9kZXNjcmlwdG9ycyhwYWdl
cywgdmIyX2RtYV9zZ19wbGFuZV9kZXNjKHZiLCAwKSk7Cj4gPiArCWlmIChudW1fZGVzYyA8IDAp
IHsKPiA+ICsJCWRldl9lcnIocmdhLT5kZXYsICJGYWlsZWQgdG8gbWFwIGJ1ZmZlciIpOwo+ID4g
KwkJcmV0dXJuOwo+ID4gIAl9Cj4gPiAgCj4gPiAgCS8qIHN5bmMgbG9jYWwgTU1VIHRhYmxlIGZv
ciBSR0EgKi8KPiA+ICAJZG1hX3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UocmdhLT5kZXYsIHZpcnRf
dG9fcGh5cyhwYWdlcyksCj4gPiAtCQkJCSAgIDggKiBQQUdFX1NJWkUsIERNQV9CSURJUkVDVElP
TkFMKTsKPiA+ICsJCQkJICAgbnVtX2Rlc2MgKiBzaXplb2YoKnBhZ2VzKSwgRE1BX0JJRElSRUNU
SU9OQUwpOwo+ID4gIH0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5oCj4gPiBpbmRleCA1ZmE5ZDJmMzY2ZGMuLjIyZjdkYTI4YWM1MSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4gPiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAo+ID4gQEAgLTQwLDYgKzQwLDEw
IEBAIHN0cnVjdCByZ2FfZnJhbWUgewo+ID4gIAl1MzIgc2l6ZTsKPiA+ICB9Owo+ID4gIAo+ID4g
K3N0cnVjdCByZ2FfZG1hX2Rlc2Mgewo+ID4gKwl1MzIgYWRkcjsKPiA+ICt9Owo+ID4gKwo+ID4g
IHN0cnVjdCByb2NrY2hpcF9yZ2FfdmVyc2lvbiB7Cj4gPiAgCXUzMiBtYWpvcjsKPiA+ICAJdTMy
IG1pbm9yOwo+ID4gQEAgLTgxLDggKzg1LDggQEAgc3RydWN0IHJvY2tjaGlwX3JnYSB7Cj4gPiAg
CXN0cnVjdCByZ2FfY3R4ICpjdXJyOwo+ID4gIAlkbWFfYWRkcl90IGNtZGJ1Zl9waHk7Cj4gPiAg
CXZvaWQgKmNtZGJ1Zl92aXJ0Owo+ID4gLQl1bnNpZ25lZCBpbnQgKnNyY19tbXVfcGFnZXM7Cj4g
PiAtCXVuc2lnbmVkIGludCAqZHN0X21tdV9wYWdlczsKPiA+ICsJc3RydWN0IHJnYV9kbWFfZGVz
YyAqc3JjX21tdV9wYWdlczsKPiA+ICsJc3RydWN0IHJnYV9kbWFfZGVzYyAqZHN0X21tdV9wYWdl
czsKPiAKPiBUaGlzIGJyZWFrcyBjb21waWxhdGlvbjoKPiAKPiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYzogSW4gZnVuY3Rpb24g4oCYcmdhX3Byb2Jl4oCZOgo+IGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jOjg3NToyODogZXJyb3I6IGFz
c2lnbm1lbnQgdG8g4oCYc3RydWN0IHJnYV9kbWFfZGVzYyAq4oCZIGZyb20gaW5jb21wYXRpYmxl
IHBvaW50ZXIgdHlwZSDigJh1bnNpZ25lZCBpbnQgKuKAmSBbLVdlcnJvcj1pbmNvbXBhdGlibGUt
cG9pbnRlci10eXBlc10KPiAgIDg3NSB8ICAgICAgICAgcmdhLT5zcmNfbW11X3BhZ2VzID0KPiAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYzo4ODE6Mjg6IGVycm9yOiBhc3NpZ25tZW50IHRvIOKAmHN0
cnVjdCByZ2FfZG1hX2Rlc2MgKuKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUg4oCY
dW5zaWduZWQgaW50ICrigJkgWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCj4g
ICA4ODEgfCAgICAgICAgIHJnYS0+ZHN0X21tdV9wYWdlcyA9Cj4gICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCj4gCj4gSXQncyBwcm9iYWJseSBzb21ldGhpbmcgdGhhdCBpcyBm
aXhlZCBpbiBhIGxhdGVyIHBhdGNoLCBidXQgYXMgaXQgaXMgcmlnaHQKPiBub3cgdGhpcyBzZXJp
ZXMgYnJlYWtzIGJpc2VjdC4KClRoYW5rcy4gSSdsbCBmaXggdGhpcyBpbiB2Mi4KCk1pY2hhZWwK
Cj4gCj4gUmVnYXJkcywKPiAKPiAJSGFucwo+IAo+ID4gIH07Cj4gPiAgCj4gPiAgc3RydWN0IHJn
YV9mcmFtZSAqcmdhX2dldF9mcmFtZShzdHJ1Y3QgcmdhX2N0eCAqY3R4LCBlbnVtIHY0bDJfYnVm
X3R5cGUgdHlwZSk7Cj4gPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
