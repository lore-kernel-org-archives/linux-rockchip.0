Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B693C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:15:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C272C6143A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:15:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C272C6143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEvjmYdkBI/iogItg24O565pka4a5jAjPcwo3ZTeso0=; b=pX+L/sL9KLqxwnB/Xi816pKXH
	Pbq5WaFHZABJWEPZYhd/vRvlTi1G7Gw2j6aohkWYbGFC0+zE9bGGhzfcbP/xRPzl8yq+PhJgLzjPa
	YI9FOgFjrdVL5nyVcPaDaRygE3pSB0HB814jg5uaUB6UZOgeaP2WdTbr314sx6CIgUCTwj5C+h4Y5
	1p9FSupzLQnw8GwlAQ9YOFkkaUBmMqnDW+3zAdRBfFiFmNpASaouZsPtH+KrN6IH+MiC3jJp9/yV9
	065Po3R9K5X+jO8MkNXrNLGNOUusVajt0kiD0Pw96IgkYUR5f1zz/ZW7cDHi6SI1GAWQrANAfVahl
	x+ADZN5yg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbnmA-003zGc-Cq; Wed, 28 Apr 2021 17:15:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnm7-003zG8-TZ
 for linux-rockchip@desiato.infradead.org; Wed, 28 Apr 2021 17:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=wn/rf2ALur3a7wEP+4SFTYAeXwRJMyIKCD3O2YJ0Ln4=; b=zJmqQ008yMwOIqBQEZD+pidY9A
 u/jaYqJgx87fH8DDSmjuu1s+RD0IvfPDeZ3XHl5pEmXvqrM0mmf9oBjj7zaWHwa/qKh4FGuJB96bh
 7l2gpsfN8PDnaLfGDKV+unhJFwfZC7cm/NqfyOU24P8d+BjMrr8pK6MC7Kmkxs1G+gmjYj0UHhpE/
 F6CqxYZj5JdwIRMBWv3ke6k3zdk7vfRt6ZDMlJrcBz5W/GlL59Ho12F3LGZSeShSAmNSqO0e0yKbS
 cMacXoWxGUDh124w+YVeKR+LxWPDkWStdnjHFE5e4ixjxO0z5IvZITX7CMgL+9bPT74n/iBt0dJ9q
 Ddp+ArJQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnm4-0003TD-Q2
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 17:14:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8F6591F42B79
Message-ID: <bf45f7c8031ce2320a4425475982aba51c1e4b48.camel@collabora.com>
Subject: Re: [PATCH v4 78/79] media: hantro: use pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 28 Apr 2021 14:14:45 -0300
In-Reply-To: <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_101457_397601_698364B4 
X-CRM114-Status: GOOD (  17.67  )
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

T24gV2VkLCAyMDIxLTA0LTI4IGF0IDE2OjUyICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gQ29tbWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
Cj4gZGV2LT5wb3dlci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFdoaWxl
IHRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3aXRoIHRoZSBjdXJyZW50IHVzYWdlIG9uIHRoaXMgZHJp
dmVyLAo+IGFzIHdlJ3JlIGdldHRpbmcgcmlkIG9mIHRoZSBwbV9ydW50aW1lX2dldF9zeW5jKCkg
Y2FsbCBhbGwgb3Zlcgo+IHRoZSBtZWRpYSBzdWJzeXN0ZW0sIGxldCdzIHJlbW92ZSB0aGUgbGFz
dCBvY2N1cnJlbmNlIG9uIHRoaXMKPiBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8g
Q2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgoKTG9va3MgZ29vZC4K
ClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+CgpU
aGFua3MsCkV6ZXF1aWVsCgo+IC0tLQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMgfCAyMyArKysrKysrKysrKysrKysrLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBpbmRleCA1OTVlODJhODI3MjguLjI1ZmEzNmU3
ZTc3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19k
cnYuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4g
QEAgLTU2LDE0ICs1NiwxMiBAQCBkbWFfYWRkcl90IGhhbnRyb19nZXRfcmVmKHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsIHU2NCB0cykKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGhhbnRyb19nZXRf
ZGVjX2J1Zl9hZGRyKGN0eCwgYnVmKTsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgdm9pZCBoYW50cm9f
am9iX2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaGFudHJvX2N0eCAq
Y3R4LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0KQo+ICtzdGF0aWMgdm9pZCBoYW50
cm9fam9iX2ZpbmlzaF9ub19wbShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZiMl9idWZmZXJf
c3RhdGUgcmVzdWx0KQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmIyX3Y0bDJfYnVm
ZmVyICpzcmMsICpkc3Q7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX21hcmtfbGFz
dF9idXN5KHZwdS0+ZGV2KTsKPiAtwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX3B1dF9hdXRvc3Vz
cGVuZCh2cHUtPmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoGNsa19idWxrX2Rpc2FibGUodnB1LT52
YXJpYW50LT5udW1fY2xvY2tzLCB2cHUtPmNsb2Nrcyk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKg
c3JjID0gdjRsMl9tMm1fbmV4dF9zcmNfYnVmKGN0eC0+ZmgubTJtX2N0eCk7Cj4gQEAgLTgxLDYg
Kzc5LDE2IEBAIHN0YXRpYyB2b2lkIGhhbnRyb19qb2JfZmluaXNoKHN0cnVjdCBoYW50cm9fZGV2
ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzdWx0KTsKPiDCoH0KPiDCoAo+ICtz
dGF0aWMgdm9pZCBoYW50cm9fam9iX2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0KQo+
ICt7Cj4gK8KgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSh2cHUtPmRldik7
Cj4gK8KgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwo+
ICsKPiArwqDCoMKgwqDCoMKgwqBoYW50cm9fam9iX2ZpbmlzaF9ub19wbSh2cHUsIGN0eCwgcmVz
dWx0KTsKPiArfQo+ICsKPiDCoHZvaWQgaGFudHJvX2lycV9kb25lKHN0cnVjdCBoYW50cm9fZGV2
ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZi
Ml9idWZmZXJfc3RhdGUgcmVzdWx0KQo+IMKgewo+IEBAIC0xNTUsNyArMTYzLDggQEAgc3RhdGlj
IHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtf
YnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9j
a3MpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9y
dW50aW1lX2dldF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGN0eC0+ZGV2LT5kZXYpOwo+IMKgwqDCoMKgwqDC
oMKgwqBpZiAocmV0IDwgMCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8g
ZXJyX2NhbmNlbF9qb2I7Cj4gwqAKPiBAQCAtMTY1LDcgKzE3NCw3IEBAIHN0YXRpYyB2b2lkIGRl
dmljZV9ydW4odm9pZCAqcHJpdikKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgCj4gwqBl
cnJfY2FuY2VsX2pvYjoKPiAtwqDCoMKgwqDCoMKgwqBoYW50cm9fam9iX2ZpbmlzaChjdHgtPmRl
diwgY3R4LCBWQjJfQlVGX1NUQVRFX0VSUk9SKTsKPiArwqDCoMKgwqDCoMKgwqBoYW50cm9fam9i
X2ZpbmlzaF9ub19wbShjdHgtPmRldiwgY3R4LCBWQjJfQlVGX1NUQVRFX0VSUk9SKTsKPiDCoH0K
PiDCoAo+IMKgc3RhdGljIHN0cnVjdCB2NGwyX20ybV9vcHMgdnB1X20ybV9vcHMgPSB7CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
