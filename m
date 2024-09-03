Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB504CD379F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKTo2Yqu/q7F3kLVvsLwu/PcO/91x6FulG9NzFhEwl4=; b=N1DaKI4c8EH7Ha
	KJuBQXWbD95Jdrn/uZ3/bsErXuo+uiqL1FEAgbaOBAppt3xAhwHTrzoq4vAQxHXBXMsEnkdQ/RbL2
	3EsHzpHrMCRI0Acbztyif5SiobGr7OOSb90HeXJjevAZllHY8TDVtV0oLQrgEboe0k4q0IygxUp/B
	wmd/3pEotpSe4Z3hrk1G8ejiHczXeTBpsIcAQURZ6N/gu6jcjSD6/hpTTjVB1+/P6rCv0VtDqgXV5
	CVy9KcjUMg4fcclhaYP309tsyPRV0YQWANarS1lOhsbLuvnGKWkqeLrfQtevo4Aga0GGyahljkWL2
	OKLvhRgaKQDGkpiSc+Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWmV-00000001Cfh-3HBU;
	Tue, 03 Sep 2024 16:53:27 +0000
Received: from smtp-21.smtpout.orange.fr ([80.12.242.21] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWlZ-00000001CUb-0SUj;
	Tue, 03 Sep 2024 16:52:31 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id lWlNsbmsJ730VlWlNsh1V8; Tue, 03 Sep 2024 18:52:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1725382342;
	bh=cwVfF8H0QS64J1x+SwhsjVu91hAQp1BfUEaNeMwuXkg=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=DzpI6K34IIH3dAKxh6ht8AxRWIBNZgB028OPqyyPNBOBy9GNPDdEL9+5Dv/iO83mf
	 aC/KrAwrz5GNC03ZU8fjINnM+OtXO73Z4X4LFSrItdrfCXxj9xYW0cmA6qR9CamcDS
	 cQLu4JTrJwwnIvWU35+vQ9V/XeEOKDaOAIBbBAPbIE3EBKclKa0EuK7oB16S6cvTgv
	 R9uSqM/sT0yCWATony4HnQsByJdUXAkw1IMmN2r428HN+HOa6vPMjPPTl6iS9y3WM6
	 /U/G3pEaHMdJxJFgCu4vX+ZCvh6T6Gs5u1itnBvgfzculN4uv/2WNuc9mZACq6VPAm
	 cApbiIQnP9d6A==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Tue, 03 Sep 2024 18:52:22 +0200
X-ME-IP: 90.11.132.44
Message-ID: <6555c378-f230-480e-9dd4-625ea550074f@wanadoo.fr>
Date: Tue, 3 Sep 2024 18:52:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] gpio: rockchip: replace mutex_lock() with
 guard()
To: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
 brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com
Newsgroups: gmane.linux.kernel.gpio,gmane.linux.ports.arm.kernel,gmane.linux.ports.arm.rockchip,gmane.linux.kernel
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
 <20240903073649.237362-13-ye.zhang@rock-chips.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240903073649.237362-13-ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_095229_582112_8C358243 
X-CRM114-Status: GOOD (  17.95  )
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

TGUgMDMvMDkvMjAyNCDDoCAwOTozNiwgWWUgWmhhbmcgYSDDqWNyaXTCoDoKPiBSZXBsYWNpbmcg
bXV0ZXhfbG9jayB3aXRoIGd1YXJkKCkgc2ltcGxpZmllcyB0aGUgY29kZSBhbmQgaGVscHMgYXZv
aWQKPiBkZWFkbG9ja3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWUgWmhhbmcgPHllLnpoYW5nQHJv
Y2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyB8IDE0
ICsrKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5j
IGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IGluZGV4IDczZTU3ZWZiNDZmYy4uZDVj
NTc2MTdmYzg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiAr
KysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gQEAgLTc2NSwyMCArNzY1LDE5IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ICAgCQl9Cj4gICAJfQo+ICAgCj4gLQlyZXQgPSByb2NrY2hpcF9nZXRfYmFua19kYXRh
KGJhbmspOwo+IC0JaWYgKHJldCkKPiAtCQlnb3RvIGVycl9kaXNhYmxlZF9jbGs7Cj4gLQo+ICAg
CS8qCj4gICAJICogUHJldmVudCBjbGFzaGVzIHdpdGggYSBkZWZlcnJlZCBvdXRwdXQgc2V0dGlu
Zwo+ICAgCSAqIGJlaW5nIGFkZGVkIHJpZ2h0IGF0IHRoaXMgbW9tZW50Lgo+ICAgCSAqLwo+IC0J
bXV0ZXhfbG9jaygmYmFuay0+ZGVmZXJyZWRfbG9jayk7Cj4gKwlndWFyZChtdXRleCkoJmJhbmst
PmRlZmVycmVkX2xvY2spOwo+ICsJcmV0ID0gcm9ja2NoaXBfZ2V0X2JhbmtfZGF0YShiYW5rKTsK
CnJvY2tjaGlwX2dldF9iYW5rX2RhdGEoKSB3YXMgb3V0IG9mIHRoZSBsb2NrIGJlZm9yZSwgbm93
IGl0IGlzIGluc2lkZS4KCkl0IGxvb2tzIG9rLCBidXQgaXMgaXQgb24gcHVycG9zZT8gSWYgc28s
IG1heWJlIGl0IGNvdWxkIGJlIG1lbnRpb25lZCBvciAKZXhwbGFpbmVkIHdoeSBpbiB0aGUgY2hh
bmdlbG9nID8KCkNKCgo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGVycl9kaXNhYmxlZF9jbGs7Cj4g
ICAKPiAgIAlyZXQgPSByb2NrY2hpcF9ncGlvbGliX3JlZ2lzdGVyKGJhbmspOwo+ICAgCWlmIChy
ZXQpIHsKPiAgIAkJZGV2X2VycihiYW5rLT5kZXYsICJGYWlsZWQgdG8gcmVnaXN0ZXIgZ3BpbyAl
ZFxuIiwgcmV0KTsKPiAtCQlnb3RvIGVycl91bmxvY2s7Cj4gKwkJZ290byBlcnJfZGlzYWJsZWRf
Y2xrOwo+ICAgCX0KPiAgIAo+ICAgCXdoaWxlICghbGlzdF9lbXB0eSgmYmFuay0+ZGVmZXJyZWRf
cGlucykpIHsKPiBAQCAtODA1LDE0ICs4MDQsMTEgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlv
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJCWtmcmVlKGNmZyk7Cj4g
ICAJfQo+ICAgCj4gLQltdXRleF91bmxvY2soJmJhbmstPmRlZmVycmVkX2xvY2spOwo+ICAgCj4g
ICAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgYmFuayk7Cj4gICAJZGV2X2luZm8oZGV2LCAi
cHJvYmVkICVwT0ZcbiIsIG5wKTsKPiAgIAo+ICAgCXJldHVybiAwOwo+IC1lcnJfdW5sb2NrOgo+
IC0JbXV0ZXhfdW5sb2NrKCZiYW5rLT5kZWZlcnJlZF9sb2NrKTsKPiAgIGVycl9kaXNhYmxlZF9j
bGs6Cj4gICAJaWYgKGJhbmstPm1hbnVhbF9jbGtfcmVsZWFzZSkKPiAgIAkJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKGJhbmstPmNsayk7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
