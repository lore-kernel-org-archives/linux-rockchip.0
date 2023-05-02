Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22137C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 06:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UErcInbUuVmSams4sO34dvV779Gfm4ccG3XHwY9qZPA=; b=HxNwEKoe77b/nr
	2iIF8BkFHY+xq1S/CDJt2fRhP5YSAE3zF2zwExOV2aQO9LejyghRfIKNrLn++9GIeVOFdBuuA3A4G
	SgVgJUcPKxUbjrLFiZfGjZMebfpotZOU614soR0mJJli7KfRKMW+nkv2A8IW2jw4J473lWlEMBPEW
	WsHf/a7C6ttnbBW9oTRYT0FYdbXo16mQN0WvJvy2jyeeVz+gfjMtnJLhSW5R5YI2/xRkUwziExjHH
	KQDIJFUKGOOy89EFwnoIAYz6IelhmIBopvLVFXcWRqjchVIugEYNlwHMX+8jSLnGO7EXib1B/1d3c
	Qjh7osyUIxsr0AUTeK+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptjwI-000QYJ-3B;
	Tue, 02 May 2023 06:56:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptjwE-000QWn-1e;
	Tue, 02 May 2023 06:56:40 +0000
Received: from [IPV6:2a01:e0a:120:3210:99ed:5b64:8e6c:9ae8] (unknown [IPv6:2a01:e0a:120:3210:99ed:5b64:8e6c:9ae8])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 29511660321C;
	Tue,  2 May 2023 07:56:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683010594;
	bh=8t4NEIsAniO3bd4vVmshsKlWfKThNbxeZzung0MKcYQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CxRipMmYZnEJokm7XxvfHMn0v1DBzq4htksP9Ch1Ly30DVrbA2Lf+NVuacQR36bXg
	 sDb5sqfb6ovBim+Ivm/Tda+aNmT+fF7vp6hF1soQ64867Oqh1NcCkb2Oz0+gbwLGIW
	 TmsqsojR9eM2zlDUFtiIYUG+4hhEoJIP98bqo7WniUpdZgecqlLcd09EbBzQ7J9rxQ
	 5Pzs1DHnIISvbH9fW9gnYIRHVCFFWB5K34pPPuZYRxc05s7wvtQeJmWKQZ0USzZPCx
	 kQJ3IebZ8CkDQ5VAMLbQqo4zk2VSmIDgeoKJMTf5k47tx/Dg6V0uErtOt6H0a/sR8y
	 VwDr83a7fdfRw==
Message-ID: <05da00c0-2180-62ee-6276-8553ad9341c4@collabora.com>
Date: Tue, 2 May 2023 08:56:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
To: Thorsten Leemhuis <linux@leemhuis.info>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, robert.mader@collabora.com,
 nicolas.dufresne@collabora.co.uk, ezequiel@vanguardiasur.com.ar,
 festevam@gmail.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, linux-imx@nxp.com, regressions@lists.linux.dev
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
 <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
 <dcd317db-3c24-895d-572b-1b139c370ff7@leemhuis.info>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <dcd317db-3c24-895d-572b-1b139c370ff7@leemhuis.info>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_235638_704924_C3662F0E 
X-CRM114-Status: GOOD (  18.80  )
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

CkxlIDAxLzA1LzIwMjMgw6AgMDk6MjEsIFRob3JzdGVuIExlZW1odWlzIGEgw6ljcml0wqA6Cj4g
T24gMjcuMDQuMjMgMDA6MTksIFNocmVleWEgUGF0ZWwgd3JvdGU6Cj4+IE9uIDIwLzAyLzIzIDE2
OjE4LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+IFNldHRpbmcgY29udGV4dCBzb3VyY2Ug
YW5kIGRlc3RpbmF0aW9uIGZvcm1hdHMgc2hvdWxkIG9ubHkgYmUgZG9uZQo+Pj4gaW4gaGFudHJv
X3NldF9mbXRfb3V0KCkgYW5kIGhhbnRyb19zZXRfZm10X2NhcCgpIGFmdGVyIGNoZWNrIHRoYXQK
Pj4+IHRoZSB0YXJnZXRlZCBxdWV1ZSBpcyBub3QgYnVzeS4KPj4+IFJlbW92ZSB0aGVzZSBjYWxs
cyBmcm9tIGhhbnRyb19yZXNldF9lbmNvZGVkX2ZtdCgpIGFuZAo+Pj4gaGFudHJvX3Jlc2V0X3Jh
d19mbXQoKSB0byBjbGVhbiB0aGUgZHJpdmVyLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiBLZXJuZWxD
SSBmb3VuZCB0aGlzIHBhdGNoIGNhdXNlcyBhIHJlZ3Jlc3Npb24gaW4gdGhlCj4+IGJhc2VsaW5l
LmRtZXNnLmFsZXJ0IHRlc3QgWzFdIG9uIHJrMzM5OS1yb2NrLXBpLTRiIFsyXSwKPj4gc2VlIHRo
ZSBiaXNlY3Rpb24gcmVwb3J0IGZvciBtb3JlIGRldGFpbHMgWzNdLgo+Pgo+PiBMZXQgdXMga25v
dyBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zLgo+Pgo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9naXRo
dWIuY29tL2tlcm5lbGNpL2tlcm5lbGNpLWNvcmUvYmxvYi9tYWluL2NvbmZpZy9yb290ZnMvZGVi
b3Mvb3ZlcmxheXMvYmFzZWxpbmUvb3B0L2tlcm5lbGNpL2RtZXNnLnNoCj4+IFsyXSBodHRwczov
L2xpbnV4Lmtlcm5lbGNpLm9yZy90ZXN0L2Nhc2UvaWQvNjQ0MmU4MjVmMTkxMzRkNzRjMmU4NjVk
Lwo+PiBbM10gaHR0cHM6Ly9ncm91cHMuaW8vZy9rZXJuZWxjaS1yZXN1bHRzL21lc3NhZ2UvNDA3
NDAKPiBUaHggZm9yIHRoZSByZXBvcnQuIEZXSVcsIHJlZ3pib3Qgbm90aWNlZCB0aGVyZSBpcyBh
IHBhdGNoIHRoYXQgcmVmZXJzCj4gdG8gdGhlIGN1bHByaXQgdGhhdCBtaWdodCBoYXZlIGJlZW4g
bGFuZGVkIGluIG5leHQgYWZ0ZXIgeW91ciB0ZXN0IHJhbgo+IGZvciB0aGUgbGFzdCB0aW1lIChh
bmQgbWVhbndoaWxlIGl0IHdhcyBtYWlubGluZWQpOiBmMTAwY2UzYmJkNiAoIm1lZGlhOgo+IHZl
cmlzaWxpY29uOiBGaXggY3Jhc2ggd2hlbiBwcm9iaW5nIGVuY29kZXIiKQoKWWVzIHRoYXQgcGF0
Y2ggc2hvdWxkIGZpeCB0aGUgcHJvYmluZyBpc3N1ZS4KTWFyZWsgaXMgd29ya2luZyBvbiBhbiBh
ZGRpdGlvbmFsIG9uZSB0byBmaXggcGl4ZWwgZm9ybWF0IG5lZ290aWF0aW9uCmJ1dCB0aGF0IGRv
ZXNuJ3QgaW1wYWN0IHRoZSBib290LgoKUmVnYXJkcywKQmVuamFtaW4KCj4KPiBJIHdvbmRlciBp
ZiB0aGF0IGlzIHJlbGF0ZWQgb3IgbWlnaHQgZXZlbiBmaXggdGhlIGlzc3VlLgo+Cj4gQ2lhbywg
VGhvcnN0ZW4KPgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fdjRsMi5jIHwgOSArKy0tLS0tLS0KPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPj4+IGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4+PiBpbmRleCBjMGQ0
Mjc5NTYyMTAuLmQ4YWE0MmJkNGNkNCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4+PiBAQCAtMzgyLDEzICszODIsMTAg
QEAgaGFudHJvX3Jlc2V0X2VuY29kZWRfZm10KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+PiAg
wqAgwqDCoMKgwqDCoCB2cHVfZm10ID0gaGFudHJvX2dldF9kZWZhdWx0X2ZtdChjdHgsIHRydWUp
Owo+Pj4gIMKgIC3CoMKgwqAgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+Pj4gLcKgwqDCoMKgwqDC
oMKgIGN0eC0+dnB1X2RzdF9mbXQgPSB2cHVfZm10Owo+Pj4gK8KgwqDCoCBpZiAoY3R4LT5pc19l
bmNvZGVyKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBmbXQgPSAmY3R4LT5kc3RfZm10Owo+Pj4g
LcKgwqDCoCB9IGVsc2Ugewo+Pj4gLcKgwqDCoMKgwqDCoMKgIGN0eC0+dnB1X3NyY19mbXQgPSB2
cHVfZm10Owo+Pj4gK8KgwqDCoCBlbHNlCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGZtdCA9ICZj
dHgtPnNyY19mbXQ7Cj4+PiAtwqDCoMKgIH0KPj4+ICDCoCDCoMKgwqDCoMKgIGhhbnRyb19yZXNl
dF9mbXQoZm10LCB2cHVfZm10KTsKPj4+ICDCoMKgwqDCoMKgIGZtdC0+d2lkdGggPSB2cHVfZm10
LT5mcm1zaXplLm1pbl93aWR0aDsKPj4+IEBAIC00MDgsMTEgKzQwNSw5IEBAIGhhbnRyb19yZXNl
dF9yYXdfZm10KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+PiAgwqDCoMKgwqDCoCByYXdfdnB1
X2ZtdCA9IGhhbnRyb19nZXRfZGVmYXVsdF9mbXQoY3R4LCBmYWxzZSk7Cj4+PiAgwqAgwqDCoMKg
wqDCoCBpZiAoY3R4LT5pc19lbmNvZGVyKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgY3R4LT52cHVf
c3JjX2ZtdCA9IHJhd192cHVfZm10Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByYXdfZm10ID0g
JmN0eC0+c3JjX2ZtdDsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZW5jb2RlZF9mbXQgPSAmY3R4
LT5kc3RfZm10Owo+Pj4gIMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4+IC3CoMKgwqDCoMKgwqDCoCBj
dHgtPnZwdV9kc3RfZm10ID0gcmF3X3ZwdV9mbXQ7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHJh
d19mbXQgPSAmY3R4LT5kc3RfZm10Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBlbmNvZGVkX2Zt
dCA9ICZjdHgtPnNyY19mbXQ7Cj4+PiAgwqDCoMKgwqDCoCB9Cj4+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
