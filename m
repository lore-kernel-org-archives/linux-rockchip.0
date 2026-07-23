Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705BDC531D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 15:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E13zrA/4GmyUIjdYe9Q4MJ7+2YEN72HwBKs/Az+u6DI=; b=XkLiChmPanXv44
	oQn9uvhbHsY2XmMQVASkvGbAXqInLciT2u7vIxWACfn1CXaLPP4dz7wWwDjiAojafG8eFFBoCqi0E
	pd+cTszoCyYZiVE8FE7dWQhmZ33xx4Y0FDg/OWIAvEY4ffUKc6/CkCxV3Ftcp5z7zHKOxqlEdjRpP
	0r4YjWaPnDN20b2zlm6beHc6oEhUJt6DAPawRKpX83gPoaNfb5lB5dvu5HN7SubZaEUYEqLb3wDb2
	nz2b1nKRtp5yiCyL6E7VTly/ilej2gwy13yMLh9cj2PylWv9pfDi8udUgogsyeKTjciEatii4ALmM
	HC9XxpklmQG1Tj0h3c3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmveV-0000000EdLh-1LPy;
	Thu, 23 Jul 2026 15:48:03 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmveS-0000000EdKh-1Ojv
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 15:48:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784821674; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nV3GWbEp0XVXoaHH8AELKpRqI5Ple7OfQZc6LPrS0wbJiCOiU1kZOu+gh9idRaimyX4rqaA+vPIKTMwfhTtmbDY+XJAqwFNooF2/CQjx0ytDw2VoJDYpZaEb7XOdWBbtjNmaSX/x2s6xKURT+4rW0TZSoaUT+Wpi80rMzvi4UOo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784821674; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4f10VgaedUle4y917j0RkomsQFduTcKlicQl04iv244=; 
	b=iDozdgvqLZVSbXnmx986QBg63V5ontWBSgTJFvFf3D4T0VVr0eupXl4Szo85VYBMjxh8PUGxzlvHSTeLsjxLzlSUzOlPG5MUg1bIofgAEhxBDhPeoiIO8BIX1mOzMx177gQJt5nMhJYEA9bv2g7E/dmaby8e+f4w75urHm6aIVU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784821674;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4f10VgaedUle4y917j0RkomsQFduTcKlicQl04iv244=;
	b=TkZ8ufJv+ODKNZ7LV1Wkje/LBQkGE/i2X/j6bwD+Ki/kmjhlXxn5vMWjhZotelwS
	+nMbPXS+OUPGv2B4fz5IuVBTm/NGKObRlPMChnIJt7ohsB7FI8w60bbwvegZd8IrnL0
	HfAvohhqLBHbwJOFyOfkqLnyomldxOab1GzlCqUE=
Received: by mx.zohomail.com with SMTPS id 1784821672515696.391367355813;
	Thu, 23 Jul 2026 08:47:52 -0700 (PDT)
Message-ID: <f005676b-0229-47a2-9ea7-bd1809396c43@collabora.com>
Date: Thu, 23 Jul 2026 17:47:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: hantro: disable runtime PM before hardware
 teardown
To: Tharit Tangkijwanichakul <tharitt97@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Hans Verkuil
 <hverkuil@kernel.org>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org,
 me@brighamcamplbell.com, jkoolstra@xs4all.nl
References: <20260722160820.2401-1-tharitt97@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260722160820.2401-1-tharitt97@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_084800_416083_52A33858 
X-CRM114-Status: GOOD (  19.49  )
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

CkxlIDIyLzA3LzIwMjYgw6AgMTg6MDgsIFRoYXJpdCBUYW5na2lqd2FuaWNoYWt1bCBhIMOpY3Jp
dMKgOgo+IFJlbW92aW5nIHRoZSBIYW50cm8gZHJpdmVyIG1heSB0cmlnZ2VyIGFuIFNFcnJvciBv
biBSSzM1ODg6Cj4gCVNFcnJvciBJbnRlcnJ1cHQgb24gQ1BVNiwgY29kZSAweDAwMDAwMDAwYmUw
MDAwMTEgLS0gU0Vycm9yCj4gCS4uLgo+IAlkb19zZXJyb3IrMHg1Yy8weDc0Cj4gCWVsMWhfNjRf
ZXJyb3JfaGFuZGxlcisweDM0LzB4NTAKPiAJZWwxaF82NF9lcnJvcisweDZjLzB4NzAKPiAJcmVn
bWFwX21taW9fcmVhZDMybGUrMHgxMC8weDIwIChQKQo+IAlfcmVnbWFwX2J1c19yZWdfcmVhZCsw
eDZjLzB4YjQKPiAJX3JlZ21hcF9yZWFkKzB4NjAvMHhkYwo+IAlyZWdtYXBfcmVhZCsweDRjLzB4
ODAKPiAJcm9ja2NoaXBfcGRfcG93ZXIrMHhlNC8weDYwMAo+IAlyb2NrY2hpcF9wZF9wb3dlcl9v
ZmYrMHgxYy8weDYwCj4gCV9nZW5wZF9wb3dlcl9vZmYrMHg5OC8weDE5OAo+IAlnZW5wZF9wb3dl
cl9vZmYucGFydC4wKzB4MTc4LzB4Mjg4Cj4gCWdlbnBkX3J1bnRpbWVfc3VzcGVuZCsweDIxMC8w
eDMwMAo+IAlfX3JwbV9jYWxsYmFjaysweDQ4LzB4MWUwCj4gCXJwbV9jYWxsYmFjaysweDc0LzB4
ODAKPiAJcnBtX3N1c3BlbmQrMHgxMGMvMHg1ODAKPiAJcnBtX2lkbGUrMHgxMzQvMHgxYjgKPiAJ
dXBkYXRlX2F1dG9zdXNwZW5kKzB4MzAvMHhjNAo+IAlfX3BtX3J1bnRpbWVfdXNlX2F1dG9zdXNw
ZW5kKzB4NDgvMHg2NAo+IAloYW50cm9fcmVtb3ZlKzB4OGMvMHhhOCBbaGFudHJvX3ZwdV0KPiAJ
Li4uCj4KPiBoYW50cm9fcmVtb3ZlKCkgY3VycmVudGx5IGFzc2VydHMgdGhlIGRldmljZSByZXNl
dHMgYmVmb3JlIGRpc2FibGluZwo+IHJ1bnRpbWUgUE0uCj4KPiBDYWxsaW5nIHBtX3J1bnRpbWVf
ZG9udF91c2VfYXV0b3N1c3BlbmQoKSBjYXVzZXMgYW4gaWRsZSBkZXZpY2UgdG8gYmUKPiBydW50
aW1lLXN1c3BlbmRlZCBpbW1lZGlhdGVseS4gQXQgdGhhdCBwb2ludCB0aGUgSGFudHJvIGhhcmR3
YXJlIGhhcwo+IGFscmVhZHkgYmVlbiB0b3JuIGRvd24sIHdoaWxlIHRoZSBnZW5lcmljIHBvd2Vy
LWRvbWFpbiBnZW5wZCBjb2RlCj4gc3RpbGwgcGVyZm9ybXMgdGhlIHBvd2VyLW9mZiBzZXF1ZW5j
ZS4gZ2VucGQgcmVnbWFwX21taW9fcmVhZCBjYXVzZXMgcGFuaWMKPiBzdWJzZXF1ZW50bHkgYmVj
YXVzZSB0aGUgcmVzZXQgbGluZXMgd2VyZSBhc3NlcnRlZC4KPgo+IERpc2FibGUgcnVudGltZSBQ
TSBiZWZvcmUgYXNzZXJ0aW5nIHRoZSByZXNldCBsaW5lcyBzbyB0aGF0IG5vIHJ1bnRpbWUtUE0K
PiB0cmFuc2l0aW9uIGNhbiByYWNlIHdpdGggaGFyZHdhcmUgdGVhcmRvd24uCj4KPiBBcHBseSB0
aGUgc2FtZSBvcmRlcmluZyB0byB0aGUgcHJvYmUgZXJyb3IgcGF0aHMgYXMgd2VsbC4KPgo+IEZp
eGVzOiBlYTcxNjMxYjcxMjkgKCJtZWRpYTogaGFudHJvOiBhZGQgc3VwcG9ydCBmb3IgcmVzZXQg
bGluZXMiKQo+IFNpZ25lZC1vZmYtYnk6IFRoYXJpdCBUYW5na2lqd2FuaWNoYWt1bCA8dGhhcml0
dDk3QGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4u
Z2FpZ25hcmRAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyB8IDkgKysrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiBpbmRleCAyZTgxODc3ZjY0MGYu
LmJiZWVjNWFlNTA5YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19kcnYuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX2Rydi5jCj4gQEAgLTEyMTIsNyArMTIxMiw3IEBAIHN0YXRpYyBpbnQgaGFu
dHJvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJcmV0ID0gY2xrX2J1
bGtfcHJlcGFyZSh2cHUtPnZhcmlhbnQtPm51bV9jbG9ja3MsIHZwdS0+Y2xvY2tzKTsKPiAgIAlp
ZiAocmV0KSB7Cj4gICAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0byBwcmVwYXJlIGNs
b2Nrc1xuIik7Cj4gLQkJZ290byBlcnJfcnN0X2Fzc2VydDsKPiArCQlnb3RvIGVycl9wbV9kaXNh
YmxlX2Fzc2VydF9yZXNldDsKPiAgIAl9Cj4gICAKPiAgIAlyZXQgPSB2NGwyX2RldmljZV9yZWdp
c3RlcigmcGRldi0+ZGV2LCAmdnB1LT52NGwyX2Rldik7Cj4gQEAgLTEyNjYsOCArMTI2NiwxMSBA
QCBzdGF0aWMgaW50IGhhbnRyb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAgCXY0bDJfZGV2aWNlX3VucmVnaXN0ZXIoJnZwdS0+djRsMl9kZXYpOwo+ICAgZXJyX2Nsa191
bnByZXBhcmU6Cj4gICAJY2xrX2J1bGtfdW5wcmVwYXJlKHZwdS0+dmFyaWFudC0+bnVtX2Nsb2Nr
cywgdnB1LT5jbG9ja3MpOwo+IC1lcnJfcnN0X2Fzc2VydDoKPiArZXJyX3BtX2Rpc2FibGVfYXNz
ZXJ0X3Jlc2V0Ogo+ICsJcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZCh2cHUtPmRldik7
Cj4gKwlwbV9ydW50aW1lX2Rpc2FibGUodnB1LT5kZXYpOwo+ICAgCXJlc2V0X2NvbnRyb2xfYXNz
ZXJ0KHZwdS0+cmVzZXRzKTsKPiArCXJldHVybiByZXQ7Cj4gICBlcnJfcG1fZGlzYWJsZToKPiAg
IAlwbV9ydW50aW1lX2RvbnRfdXNlX2F1dG9zdXNwZW5kKHZwdS0+ZGV2KTsKPiAgIAlwbV9ydW50
aW1lX2Rpc2FibGUodnB1LT5kZXYpOwo+IEBAIC0xMjg3LDkgKzEyOTAsOSBAQCBzdGF0aWMgdm9p
ZCBoYW50cm9fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJdjRsMl9t
Mm1fcHV0KHZwdS0+bTJtX2Rldik7Cj4gICAJdjRsMl9kZXZpY2VfdW5yZWdpc3RlcigmdnB1LT52
NGwyX2Rldik7Cj4gICAJY2xrX2J1bGtfdW5wcmVwYXJlKHZwdS0+dmFyaWFudC0+bnVtX2Nsb2Nr
cywgdnB1LT5jbG9ja3MpOwo+IC0JcmVzZXRfY29udHJvbF9hc3NlcnQodnB1LT5yZXNldHMpOwo+
ICAgCXBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwo+ICAgCXBtX3J1
bnRpbWVfZGlzYWJsZSh2cHUtPmRldik7Cj4gKwlyZXNldF9jb250cm9sX2Fzc2VydCh2cHUtPnJl
c2V0cyk7Cj4gICB9Cj4gICAKPiAgICNpZmRlZiBDT05GSUdfUE0KPgo+IGJhc2UtY29tbWl0OiBk
YzU5ZTRmZWE5ZDgzZjAzYmFkNmJkZGYzZmEyZTUyNDkxNzc3NDgyCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
