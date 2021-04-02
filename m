Return-Path: <SRS0=QsPW=I7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFE50C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Apr 2021 12:27:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 936F661055
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Apr 2021 12:27:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 936F661055
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mrcx76NiSJvKOfTlKfzUKDbWEQaRcDcrio8X+r5sWrs=; b=HdKB1cmTIxB02DmPly/hfiNuG
	T6TVkCMetGsnShYcNxFCg356413bQkES6uMvzdqE1LiStHUb0UDiANC4BbjbCRYvMeR3IDZttfD+Y
	0UG5ImnbITouaGfe2sILq7LLkYRxLHi2+AkHaFr9dQQSqys581C2ORfHhlHnKpKmeK1mhEK6m5Q3B
	SBh/5nmcZ5ypbtI1sGPSIGOw0GlLIgBTVpK8G3YwiRMF5fjCaFv8VHMWIqZOvSxVhe5Pb5NfwplGp
	p2wNx7xtTVqKfzzkWNwbHIY3IeX1EBuj7RE2aJFkPhowmZPYL25cUS387miPgBXe6Rw2eJaFqJ31D
	hocItApkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSItz-00Cy7O-9U; Fri, 02 Apr 2021 12:27:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSItp-00Cy6j-Ax; Fri, 02 Apr 2021 12:27:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5C3AE1F442CC
Message-ID: <5674859659f93ba547cad43528ac94ef145347b3.camel@collabora.com>
Subject: Re: [PATCH v8 09/13] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Fri, 02 Apr 2021 09:27:28 -0300
In-Reply-To: <20210401160003.88803-10-benjamin.gaignard@collabora.com>
References: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
 <20210401160003.88803-10-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_132741_464990_F1CCB751 
X-CRM114-Status: GOOD (  26.26  )
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

SGkgQmVuamFtaW4sCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIFRodSwgMjAyMS0wNC0wMSBh
dCAxNzo1OSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gVGhlIEhFVkMgSEFOVFJP
IGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4gdGhl
IGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVj
aWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJvbAo+IHRoYXQgdGhp
cyBwdXJwb3NlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IHZlcnNpb24gNToKPiDCoC0gQmUgZXZl
biBtb3JlIHZlcmJvc2UgaW4gY29udHJvbCBkb2N1bWVudGF0aW9uLgo+IMKgLSBEbyBub3QgY3Jl
YXRlIGNsYXNzIGZvciB0aGUgY29udHJvbC4KPiB2ZXJzaW9uIDQ6Cj4gLSBUaGUgY29udHJvbCBp
cyBub3cgYW4gaW50ZWdlciB3aGljaCBpcyBlbm91Z2ggdG8gcHJvdmlkZSB0aGUgbnVtYmVycwo+
IMKgIG9mIGJpdHMgdG8gc2tpcC4KPiB2ZXJzaW9uIDM6Cj4gLSBGaXggdHlwbyBpbiBmaWVsZCBu
YW1lCj4gCj4gwqAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3TCoMKg
wqDCoMKgwqDCoMKgIHwgMTQgKysrKysrKysrKysrKysKPiDCoC4uLi91c2Vyc3BhY2UtYXBpL21l
ZGlhL2RyaXZlcnMvaW5kZXgucnN0wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoGluY2x1
ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDEzICsrKysrKysrKysrKysKPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9u
cygrKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9t
ZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCBiL0RvY3VtZW50YXRpb24vdXNl
cnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzhkY2QyYTQ0YTAzCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QK
PiBAQCAtMCwwICsxLDE0IEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
Cj4gKwo+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09Cj4gKwo+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGltcGxlbWVu
dHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29udHJvbHM6Cj4gKwo+ICtgYFY0TDJf
Q0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIChpbnRlZ2VyKWBgCj4gK8KgwqDCoCBT
cGVjaWZpZXMgdG8gSGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIgdGhlIG51bWJlciBv
ZiBkYXRhIChpbiBiaXRzKSB0bwo+ICvCoMKgwqAgc2tpcCBpbiB0aGUgc2xpY2Ugc2VnbWVudCBo
ZWFkZXIuCj4gK8KgwqDCoCBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZy
b20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPiArwqDCoMKgIHRvIGJlZm9yZSBz
eW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxhZyIuCj4gK8KgwqDC
oCBJZiBJRFIsIHRoZSBza2lwcGVkIGJpdHMgYXJlIGp1c3QgInBpY19vdXRwdXRfZmxhZyIKPiAr
wqDCoMKgIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5k
ZXgucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgu
cnN0Cj4gaW5kZXggMWE5MDM4ZjVmOWZhLi4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4gKysrIGIv
RG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4gQEAg
LTMzLDYgKzMzLDcgQEAgRm9yIG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0
aGUgc291cmNlIGRpc3RyaWJ1dGlvbiBvZiBMaW51eC4KPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBj
Y3MKPiDCoMKgwqDCoMKgwqDCoMKgY3gyMzQxeC11YXBpCj4gK8KgwqDCoMKgwqDCoMKgIGhhbnRy
bwo+IMKgwqDCoMKgwqDCoMKgwqBpbXgtdWFwaQo+IMKgwqDCoMKgwqDCoMKgwqBtYXgyMTc1Cj4g
wqDCoMKgwqDCoMKgwqDCoG1leWUtdWFwaQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGlu
dXgvdjRsMi1jb250cm9scy5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+
IGluZGV4IGYzMzc2YWFmZWE2NS4uMWRmYjg3NGI2MjcyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
dWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdjRs
Mi1jb250cm9scy5oCj4gQEAgLTg2OSw2ICs4NjksMTkgQEAgZW51bSB2NGwyX21wZWdfbWZjNTFf
dmlkZW9fZm9yY2VfZnJhbWVfdHlwZSB7Cj4gwqAjZGVmaW5lIFY0TDJfQ0lEX01QRUdfTUZDNTFf
VklERU9fSDI2NF9BREFQVElWRV9SQ19TVEFUSUPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
KFY0TDJfQ0lEX0NPREVDX01GQzUxX0JBU0UrNTMpCj4gwqAjZGVmaW5lIFY0TDJfQ0lEX01QRUdf
TUZDNTFfVklERU9fSDI2NF9OVU1fUkVGX1BJQ19GT1JfUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoChWNEwyX0NJRF9DT0RFQ19NRkM1MV9CQVNFKzU0KQo+IMKgCj4gKy8qwqAgTVBFRy1j
bGFzcyBjb250cm9sIElEcyBzcGVjaWZpYyB0byB0aGUgSGFudHJvIGRyaXZlciBhcyBkZWZpbmVk
IGJ5IFY0TDIgKi8KCldlIGFyZSBtb3ZpbmcgYXdheSBmcm9tICJNUEVHIiB0ZXJtaW5vbG9neSBm
b3IgY29kZWNzLgoKPiArI2RlZmluZSBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoVjRMMl9D
VFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQoKVXNpbmcgVjRMMl9DVFJMX0NMQVNTX0NPREVDX1NU
QVRFTEVTUyBpcyBJTU8gYmV0dGVyLApzaW5jZSB0aGlzIGJlbG9uZ3MgdG8gYSBzdGF0ZWxlc3Mg
ZGVjb2Rlci4KCkFuZCBhbHNvLCBzaW5jZSB3ZSBhcmUgc3RpbGwgYSBiaXQgdW5zdXJlIGFib3V0
IHRoZQpzeW50YXggb2YgdGhpcyBwYXJhbWV0ZXIgKGdpdmVuIGl0J3Mgbm90IGRvY3VtZW50ZWQp
OgoKaG93IGFib3V0IGtlZXBpbmcgdGhlIFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURF
Ul9TS0lQCmRlZmluaXRpb24gaW4gZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8u
aCA/CgpUaGlzIHdvdWxkIGJlIGEgaGludCBmb3IgYXBwbGljYXRpb25zIHRoYXQgdGhpcyBjb250
cm9sCmlzIGEgcXVpcmsuCgpIYW5zLCBQaGlsaXBwLCBhbnkgdGhvdWdodHMgb24gdGhpcz8KClJl
Z2FyZHMsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
