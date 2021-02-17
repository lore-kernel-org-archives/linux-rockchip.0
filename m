Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80479C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:15:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30AFA64E5F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:15:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30AFA64E5F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i+IA9Ut2yMzUJZWaDxgyWNIQZuafsMWbFjYPJvZ7zSo=; b=CqroDvyNFIcJOK4N5iFYMZaPC
	Z7/qA3zIYw0gzluP0TiwvzfcJMYPBkDRAsmn4gfjxvKp9qLLR+oKvhmeb0d09/4tNrAq1Lp1J78ju
	jxHath+yWkK+6ndFy+7ZdNhFNedTIhTXt7tUjp2AdtnXElyLrf5T1dvFbFV39+a9JkgtW2Y5ll0uo
	gF3gpGwrPvFbrjrF+2aGOw/JZZDS+WQDM8cW3DiRaJMXNRJDloew6UEvgEGXgUW+Pd+I37bvHMS6F
	K5assDbhCAqNLR6wE1LZe/9Olajqx9/Lm8eK437gK22DbMIWz+bL+L2zIToL6TlNkuqsfAHyCi4GT
	GCFKaQZ3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTEf-00089M-AF; Wed, 17 Feb 2021 20:15:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTEa-000888-Oi; Wed, 17 Feb 2021 20:15:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E92FB1F40F2C
Message-ID: <9d0ddec3cc244e36483abb28b54053fa02babb5c.camel@collabora.com>
Subject: Re: [PATCH v1 07/18] media: hantro: Add a field to distinguish the
 hardware versions
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:15:27 -0300
In-Reply-To: <20210217080306.157876-8-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-8-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_151540_944658_4BF7BC2C 
X-CRM114-Status: GOOD (  17.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBEZWNvZGVycyBoYXJkd2FyZSBibG9ja3MgY291bGQgZXhpc3QgaW4gbXVsdGlwbGUgdmVy
c2lvbnM6IGFkZAo+IGEgZmllbGQgdG8gZGlzdGluZ3Vpc2ggdGhlbSBhdCBydW50aW1lLgo+IEtl
ZXAgdGhlIGRlZmF1bHQgYmVoYXZvaXIgdG8gYmUgRzEgaGFyZHdhcmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5owqDCoMKg
wqAgfCA1ICsrKysrCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
YyB8IDIgKysKPiDCoDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gaW5kZXggYmRlNjUyMzFmMjJmLi4yYTU2NmRm
YzJmZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8u
aAo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBAQCAtMzYs
NiArMzYsOSBAQCBzdHJ1Y3QgaGFudHJvX2NvZGVjX29wczsKPiDCoCNkZWZpbmUgSEFOVFJPX0gy
NjRfREVDT0RFUsKgwqDCoMKgQklUKDE4KQo+IMKgI2RlZmluZSBIQU5UUk9fREVDT0RFUlPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4ZmZmZjAwMDAKPiDCoAo+ICsjZGVmaW5lIEhB
TlRST19HMV9SRVbCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NjczMQo+ICsjZGVmaW5lIEhBTlRST19H
Ml9SRVbCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NjczMgo+ICsKPiDCoC8qKgo+IMKgICogc3RydWN0
IGhhbnRyb19pcnEgLSBpcnEgaGFuZGxlciBhbmQgbmFtZQo+IMKgICoKPiBAQCAtMTcwLDYgKzE3
Myw3IEBAIGhhbnRyb192ZGV2X3RvX2Z1bmMoc3RydWN0IHZpZGVvX2RldmljZSAqdmRldikKPiDC
oCAqIEBlbmNfYmFzZTrCoMKgwqDCoMKgwqDCoMKgwqDCoE1hcHBlZCBhZGRyZXNzIG9mIFZQVSBl
bmNvZGVyIHJlZ2lzdGVyIGZvciBjb252ZW5pZW5jZS4KPiDCoCAqIEBkZWNfYmFzZTrCoMKgwqDC
oMKgwqDCoMKgwqDCoE1hcHBlZCBhZGRyZXNzIG9mIFZQVSBkZWNvZGVyIHJlZ2lzdGVyIGZvciBj
b252ZW5pZW5jZS4KPiDCoCAqIEBjdHJsX2Jhc2U6wqDCoMKgwqDCoMKgwqDCoMKgTWFwcGVkIGFk
ZHJlc3Mgb2YgVlBVIGNvbnRyb2wgYmxvY2suCj4gKyAqIEBjb3JlX2h3X2RlY19yZXbCoMKgwqDC
oFJ1bnRpbWUgZGV0ZWN0ZWQgSFcgZGVjb2RlciBjb3JlIHJldmlzaW9uCj4gwqAgKiBAdnB1X211
dGV4OsKgwqDCoMKgwqDCoMKgwqDCoE11dGV4IHRvIHN5bmNocm9uaXplIFY0TDIgY2FsbHMuCj4g
wqAgKiBAaXJxbG9jazrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgU3BpbmxvY2sgdG8gc3luY2hyb25p
emUgYWNjZXNzIHRvIGRhdGEgc3RydWN0dXJlcwo+IMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzaGFyZWQgd2l0aCBpbnRlcnJ1cHQgaGFuZGxlcnMuCj4gQEAg
LTE4OSw2ICsxOTMsNyBAQCBzdHJ1Y3QgaGFudHJvX2RldiB7Cj4gwqDCoMKgwqDCoMKgwqDCoHZv
aWQgX19pb21lbSAqZW5jX2Jhc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoHZvaWQgX19pb21lbSAqZGVj
X2Jhc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoHZvaWQgX19pb21lbSAqY3RybF9iYXNlOwo+ICvCoMKg
wqDCoMKgwqDCoHUzMiBjb3JlX2h3X2RlY19yZXY7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IG11dGV4IHZwdV9tdXRleDvCoC8qIHZpZGVvX2RldmljZSBsb2NrICovCj4gwqDCoMKgwqDC
oMKgwqDCoHNwaW5sb2NrX3QgaXJxbG9jazsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IGluZGV4IDA1NzAwNDdjN2ZhMC4uZTE0NDNjMzk0ZjYyIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBAQCAtODQwLDYgKzg0
MCw4IEBAIHN0YXRpYyBpbnQgaGFudHJvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoMKgwqDCoMKgwqDCoMKgdnB1LT5lbmNfYmFzZSA9
IHZwdS0+cmVnX2Jhc2VzWzBdICsgdnB1LT52YXJpYW50LT5lbmNfb2Zmc2V0Owo+IMKgwqDCoMKg
wqDCoMKgwqB2cHUtPmRlY19iYXNlID0gdnB1LT5yZWdfYmFzZXNbMF0gKyB2cHUtPnZhcmlhbnQt
PmRlY19vZmZzZXQ7Cj4gK8KgwqDCoMKgwqDCoMKgLyogYnkgZGVmYXVsdCBkZWNvZGVyIGlzIEcx
ICovCj4gK8KgwqDCoMKgwqDCoMKgdnB1LT5jb3JlX2h3X2RlY19yZXYgPSBIQU5UUk9fRzFfUkVW
Owo+IMKgCgpXaGF0J3MgdGhlIHVzZSBvZiB0aGlzIGZpZWxkPyBDYW4ndCB3ZSBzaW1wbHkgcmVs
eSBvbiB0aGUgY29tcGF0aWJsZSBzdHJpbmc/CgpUaGFua3MsCkV6ZXF1aWVsCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
