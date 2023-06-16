Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD986EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 03:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEpOXfWa41eMhtr94U5on/EZ4lGCdSpUm/SL+1BqQCM=; b=YNZESyqCZhldAf
	s3V4+DnlD6Y5HnFryQah2Xhftfyo5RQkvuJGmkSiG9DudJGO2QV8e+iA2PWgno8PN6jI9501fnbdn
	r+yBEEC6vs0O05Vi65a5Mx+/rJxs0r3OEES9r+NHZmbpbmsAgFPiYlIFiZrRt9eKNDWEEBIljgBkH
	PYdmfYAbMPymxbbKFlZ2AE3R9WQZkRyPAUMAN9ZQbQrHEtIdck5vZDyTNSLWL8nuBPej8JwezlgJu
	Lj96RGVdqHm8uZsLxrgITtlEkKAVbq1VDK76ZmG3O8FniAF8m/umM8MfZLTkyh9dtQs9JBUPq1JWi
	bLTBoTDoBa5BdKg3a8ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zkL-00Ggf0-1y;
	Fri, 16 Jun 2023 03:03:33 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9zkI-00GgeJ-06
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 03:03:31 +0000
Received: from [192.168.60.56] (unknown [103.29.142.67])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id B72D02803D6;
	Fri, 16 Jun 2023 11:03:14 +0800 (CST)
Message-ID: <f4bc4e7e-b9d4-432b-2157-f5b30c160a3a@rock-chips.com>
Date: Fri, 16 Jun 2023 11:03:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: usb: typec: tcpm: fix cc role at port reset
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>
Cc: heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230616022001.25819-1-frank.wang@rock-chips.com>
 <3c3fbecd-caf9-c432-0890-93cceade98c1@roeck-us.net>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <3c3fbecd-caf9-c432-0890-93cceade98c1@roeck-us.net>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGE5PVh0YHR8ZQkMfTRpLH1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpISkJIS1VKS0tVS1kG
X-HM-Tid: 0a88c228375a2eb1kusnb72d02803d6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46Ohw5GD1MPhAMSUIIKlY2
	ETIaFEtVSlVKTUNNQ0NPTkJNS0NIVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUhPQkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_200330_226604_E17B6C60 
X-CRM114-Status: GOOD (  12.71  )
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

SGkgR3VlbnRlciwKCk9uIDIwMjMvNi8xNiAxMDoyNywgR3VlbnRlciBSb2VjayB3cm90ZToKPiBP
biA2LzE1LzIzIDE5OjIwLCBGcmFuayBXYW5nIHdyb3RlOgo+PiBJbiB0aGUgY3VycmVudCBpbXBs
ZW1lbnRhdGlvbiwgdGhlIHRjcG0gc2V0IENDMS9DQzIgcm9sZSB0byBvcGVuIHdoZW4KPj4gaXQg
ZG8gcG9ydCByZXNldCB3b3VsZCBjYXVzZSB0aGUgVkJVUyByZW1vdmVkIGJ5IHRoZSBUeXBlLUMg
cGFydG5lci4KPj4KPj4gVGhpcyBzZXRzIENDMS9DQzIgYWNjb3JkaW5nIHRvIHRoZSBkZWZhdWx0
IHN0YXRlIG9mIHBvcnQgdG8gZml4IGl0Lgo+Pgo+PiBDb21tZW50cyBhcmUgc3VnZ2VzdGVkIGJ5
IEd1ZW50ZXIgUm9lY2suCj4+Cj4KPiBJIGhhdmUgbm8gaWRlYSAocmVjb2xsZWN0aW9uKSBvZiB3
aGF0IEkgc3VnZ2VzdGVkIGhlcmUgOi0oCgpBaGEsIHRoaXMgaXMgYWxzbyBhbiBvbGQgcGF0Y2gg
SSBoYXZlIHNlbnQgYmVmb3JlLCB5b3Ugc3VnZ2VzdGVkIHRoYXQgCnRoZSBjYyByb2xlIHNob3Vs
ZCByZXF1aXJlIHNvbWUgdHdlYWtpbmcgYmFzZWQgb24gdGhlIHBvcnQgdHlwZSBvciAKZGVmYXVs
dCBzdGF0ZSwgZG8geW91IHJlbWVtYmVyIGl0IG5vdz8KCkFueXdheSwgQ2FuIHlvdSBoZWxwIHRv
IHJldmlldyB0aGlzIHBhdGNoIGFnYWluPwoKCkJSLgpGcmFuawoKPgo+IEd1ZW50ZXIKPgo+PiBT
aWduZWQtb2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3BtLmMgfCAzICsrLQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYyAKPj4gYi9kcml2ZXJzL3VzYi90eXBl
Yy90Y3BtL3RjcG0uYwo+PiBpbmRleCAzYzZiMGM4ZTJkM2FlLi45ZjZhYWEzZTcwY2E4IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYwo+PiArKysgYi9kcml2ZXJz
L3VzYi90eXBlYy90Y3BtL3RjcG0uYwo+PiBAQCAtNDg4NSw3ICs0ODg1LDggQEAgc3RhdGljIHZv
aWQgcnVuX3N0YXRlX21hY2hpbmUoc3RydWN0IHRjcG1fcG9ydCAKPj4gKnBvcnQpCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBicmVhazsKPj4gwqDCoMKgwqDCoCBjYXNlIFBPUlRfUkVTRVQ6Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB0Y3BtX3Jlc2V0X3BvcnQocG9ydCk7Cj4+IC3CoMKgwqDCoMKgwqDC
oCB0Y3BtX3NldF9jYyhwb3J0LCBUWVBFQ19DQ19PUEVOKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHRj
cG1fc2V0X2NjKHBvcnQsIHRjcG1fZGVmYXVsdF9zdGF0ZShwb3J0KSA9PSBTTktfVU5BVFRBQ0hF
RCA/Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVFlQRUNfQ0NfUkQgOiB0Y3Bt
X3JwX2NjKHBvcnQpKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHRjcG1fc2V0X3N0YXRlKHBvcnQs
IFBPUlRfUkVTRVRfV0FJVF9PRkYsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgUERfVF9FUlJPUl9SRUNPVkVSWSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmVh
azsKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
