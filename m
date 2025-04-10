Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7CDC369A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 12:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/h9vD92qf3vnkNznf8N3g7uhjpxIGI+YTTC4OaQM1c=; b=oVuHF5u0C5WLtV
	u8HwC6e2o2a0fMNmCOAlkzKh6Moly/mjnFfRAD1xdGo4Z9NqHf3Sgw+EgRfCM9+2/Zv0zjdq1b8lp
	zkJtH7bmcCsvs/J0OypHTLX6ueecNbN+e34UlLRz+jDHwen4aLRJ7Gt4Vhfqfm7gePna1p5ZT+sgV
	B2ePvZ+Ly1kz6UyGtNI7yWTQth4nT6RkXgQsPA1aB6jw0EKrnuoJbeSMvAcIXlQASxS/evP+x9Rwo
	S9k9NFGqYlFYwGvF8e7Ml/jOn3FKlPr9dt5M7oU35ENmgxC+/hCAFXm0W9zX5usjO7VKFzvG3XprS
	H7UW9Cm7DQ0zMkKsnwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rKd-0000000AYue-1RYX;
	Thu, 10 Apr 2025 12:48:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rEw-0000000AXdR-34iF;
	Thu, 10 Apr 2025 12:42:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744288948; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dfhjdATU8F1Etf7PJl7wcbRgZisHzpzsl1zZUGvehI7rbOLqvqZtYtB8iNfpq6bYY3UXPB9I8QU2JPdcM8578gM/Q7Q0VqctSSePnMHjd5nl/k7DhqBVpLKbbDMKDIJR+s6HSjyd1pOoxkxrfC0hqoQsqLHJxt1Tg/15CT+J8Xk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744288948; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=qZZP4FNK+HyNHl3VBHbY4FLuHj2CdEKhTPJZ5V5EDJI=; 
	b=RGa+omEExAXwm3HTIRr3CGaUv94lNhWmha+bTKQPBLQZdDt9nDL58F+85vdtZxg+ZqMiNzSOo4m58cZVWf+k9XQ35IrQtCL/jq3ufgNPOFnrcZYAHC09Qs4/RRZzNt8RqLdpyvT4fRpXqWKTRqhw3VsKXjq6+ofnC5H4qrxY89g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744288947;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=qZZP4FNK+HyNHl3VBHbY4FLuHj2CdEKhTPJZ5V5EDJI=;
	b=Tf/s1+X82HlQOSpdb3XknS+1ycW8/ZXBTdpG1AcXIa62D43egli5r/bOXuYYGx3q
	o/wDu9gwN0+JFsMXh3YuM98zUuNCmtiMCumsL4zsMJkbjCjHGgKyIEhnewFjb26ehiM
	3XnA6YhxbTm2YvJa1ayGawiOL7i0UzKOf7E0+224=
Received: by mx.zohomail.com with SMTPS id 174428894677713.690566553537792;
	Thu, 10 Apr 2025 05:42:26 -0700 (PDT)
Message-ID: <c4dc7564-f985-40cd-9d37-4df4ee6e126d@collabora.com>
Date: Thu, 10 Apr 2025 14:42:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicono: Enable NV15 support for Rockchip
 VDPU981
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20250409-b4-hantro-nv15-support-v1-1-7e11e47fd0c9@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250409-b4-hantro-nv15-support-v1-1-7e11e47fd0c9@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_054242_831175_1B13716E 
X-CRM114-Status: GOOD (  15.58  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDA5LzA0LzIwMjUgw6AgMjE6MzAsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBU
aGlzIGlzIGEgImN1c3RvbWVyIiBmb3JtYXQsIHRob3VnaCBvbiBSb2NrY2hpcCBSSzM1ODggaXQg
aGFzIGJlZW4KPiB2ZXJpZmllZCB0byBiZSBOVjE1IGZvcm1hdCwgd2hpY2ggbWF0Y2hlcyB3aGF0
IHRoZSBHUFUgYW5kIGRpc3BsYXkKPiBoYW5kbGVzIGhhcyAxMGJpdCBwaXhlbCBmb3JtYXRzLgo+
Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xs
YWJvcmEuY29tPgoKUmV2aWV3ZWQtYnkgQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWdu
YXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fdjRsMi5jICAgICAgICAgICB8ICAxICsKPiAgIC4uLi9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jICAgICAgfCAgNCArKysrCj4g
ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jICAg
ICAgIHwgMTQgKysrKysrKysrKysrKysKPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYwo+IGluZGV4IDJiY2U5NDBhNTgyMjdjMmJmZWYyYmMzMzQzOTkyZTQ1ODhhYjM2YTQu
LjdjMzUxNWNmN2Q2NGEwOTBhZGZiOGQ4YWZmMzY4ZjlhNjE3ZjhjOGEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gQEAgLTc3
LDYgKzc3LDcgQEAgaW50IGhhbnRyb19nZXRfZm9ybWF0X2RlcHRoKHUzMiBmb3VyY2MpCj4gICAJ
c3dpdGNoIChmb3VyY2MpIHsKPiAgIAljYXNlIFY0TDJfUElYX0ZNVF9QMDEwOgo+ICAgCWNhc2Ug
VjRMMl9QSVhfRk1UX1AwMTBfNEw0Ogo+ICsJY2FzZSBWNEwyX1BJWF9GTVRfTlYxNToKPiAgIAlj
YXNlIFY0TDJfUElYX0ZNVF9OVjE1XzRMNDoKPiAgIAkJcmV0dXJuIDEwOwo+ICAgCWRlZmF1bHQ6
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2No
aXBfdnB1OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IGluZGV4IDY5YjVkOWUxMjkyNmZiNDA4
YzA4ZjhiYTIxMzlkMDViYTQ0Mzg5YjcuLmU0NzAzYmI2YmU3YzE3NWE4OWMwYjg4NjhjZjJlYWZi
ODRhODcyZWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gQEAgLTIyMDIs
NiArMjIwMiwxMCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF92cHU5ODFfcG9zdHByb2NfZW5hYmxl
KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gICAJY2FzZSBWNEwyX1BJWF9GTVRfTlYxMjoKPiAg
IAkJaGFudHJvX3JlZ193cml0ZSh2cHUsICZhdjFfcHBfb3V0X2Zvcm1hdCwgMyk7Cj4gICAJCWJy
ZWFrOwo+ICsJY2FzZSBWNEwyX1BJWF9GTVRfTlYxNToKPiArCQkvKiB0aGlzIG1hcHBpbmcgaXMg
Uksgc3BlY2lmaWMgKi8KPiArCQloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmF2MV9wcF9vdXRfZm9y
bWF0LCAxMCk7Cj4gKwkJYnJlYWs7Cj4gICAJZGVmYXVsdDoKPiAgIAkJaGFudHJvX3JlZ193cml0
ZSh2cHUsICZhdjFfcHBfb3V0X2Zvcm1hdCwgMCk7Cj4gICAJfQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+IGluZGV4IDk2
NDEyMmU3YzM1NTkzNGNkODBlYjQ0MjIxOWY2YmE1MWJiYThiNzEuLmY3YzRhMTc2MTY3YjQwZmU3
OWVjNWE2NzU5ZGZmOGE3N2U4NDlhZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMKPiBAQCAtOTIsNiArOTIsMjAg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fZm10IHJvY2tjaGlwX3ZwdTk4MV9wb3N0cHJv
Y19mbXRzW10gPSB7Cj4gICAJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4gICAJCX0sCj4gICAJ
fSwKPiArCXsKPiArCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX05WMTUsCj4gKwkJLmNvZGVjX21v
ZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+ICsJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gKwkJLnBv
c3Rwcm9jZXNzZWQgPSB0cnVlLAo+ICsJCS5mcm1zaXplID0gewo+ICsJCQkubWluX3dpZHRoID0g
Uk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAo+ICsJCQkubWF4X3dpZHRoID0gRk1UXzRLX1dJRFRI
LAo+ICsJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwKPiArCQkJLm1pbl9oZWlnaHQgPSBST0NLQ0hJ
UF9WUFU5ODFfTUlOX1NJWkUsCj4gKwkJCS5tYXhfaGVpZ2h0ID0gRk1UXzRLX0hFSUdIVCwKPiAr
CQkJLnN0ZXBfaGVpZ2h0ID0gTUJfRElNLAo+ICsJCX0sCj4gKwl9LAo+ICAgCXsKPiAgIAkJLmZv
dXJjYyA9IFY0TDJfUElYX0ZNVF9QMDEwLAo+ICAgCQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RF
X05PTkUsCj4KPiAtLS0KPiBiYXNlLWNvbW1pdDogOWRkYzNkNmMxNmVhMjU4Nzg5OGEzMTVmMjBm
N2I4ZmJkNzkxZGMxYgo+IGNoYW5nZS1pZDogMjAyNTA0MDMtYjQtaGFudHJvLW52MTUtc3VwcG9y
dC0wN2RlZjRlN2E1MzcKPgo+IEJlc3QgcmVnYXJkcywKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
