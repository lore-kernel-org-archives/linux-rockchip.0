Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A0C11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 11:19:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 175B261DD1
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 11:19:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 175B261DD1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DYJrh52TfubVo9J2u7COhmV1JLnaOzVTd4WemHDg66I=; b=A12tw1moG4zY7R+Au0ZnMDk3kM
	StsQHcWMIJLoRc1EXfwmoyzlvpd6e5ePMAxl+iWh5tsgAwe6TZ+ZKL2I1ItcGBJrPO0HE9plgfqLS
	r2FF/2Yw7YSfHhpAcaqN90U+N80Iisp9LQE0TPY2Kwp2EjKMuepEQ6i1c6QxCNRtoOxpkLbdv8BK0
	zGIOBo62bJN24II8tvQOGgksGf+s632TOk8sbobLyRVPIOGt1WxxY4poyqIMFGHeTY4HFfoZg+1M3
	dFi7V98A8MRtE4h8PIBNc2Qm82Ly1F4mKwxnCtjNCf5huqq4Y6EaIurX21eGBCtWmPZgXj6CzER7H
	5lPmBXPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyBlZ-00Ae5p-6E; Tue, 29 Jun 2021 11:18:57 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyBlL-00Ae3q-Py; Tue, 29 Jun 2021 11:18:45 +0000
Received: from localhost (unknown [192.168.167.105])
 by regular1.263xmail.com (Postfix) with ESMTP id A4493F12;
 Tue, 29 Jun 2021 19:18:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.10] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13110T140560568407808S1624965510067257_; 
 Tue, 29 Jun 2021 19:18:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3fcf2cd44b3224a230bc17c7e69a24d8>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] drm/rockchip: Check iommu itself instead of it's parent
 for device_is_available
To: Robin Murphy <robin.murphy@arm.com>, hjc@rock-chips.com, heiko@sntech.de, 
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210627084737.309163-1-andy.yan@rock-chips.com>
 <66fb4977-4e6f-f7ed-0dac-18710ebd782a@arm.com>
From: Andy Yan <andy.yan@rock-chips.com>
Message-ID: <f20e1547-649e-2d9b-cd90-7b8291d505a6@rock-chips.com>
Date: Tue, 29 Jun 2021 19:18:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <66fb4977-4e6f-f7ed-0dac-18710ebd782a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_041844_052578_DDDD394A 
X-CRM114-Status: GOOD (  17.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iaW46CgpPbiA2LzI4LzIxIDU6NTQgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAy
MDIxLTA2LTI3IDA5OjQ3LCBBbmR5IFlhbiB3cm90ZToKPj4gV2hlbiBpb21tdSBpdHNlbGYgaXMg
ZGlzYWJsZWQgaW4gZHRzLCB3ZSBzaG91bGQKPj4gZmFsbGJhY2sgdG8gbm9uLWlvbW11IGJ1ZmZl
ciwgY2hlY2sgaW9tbXUgcGFyZW50Cj4+IGlzIG1lYW5sZXNzIGhlcmUuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAyICstCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyAKPj4g
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4+IGluZGV4IDIx
MmJkODdjMGM0YS4uMGQyMGM4Y2MxZmZhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPj4gQEAgLTM2Niw3ICszNjYsNyBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX2RybV9wbGF0Zm9ybV9vZl9wcm9iZShzdHJ1Y3QgCj4+IGRldmljZSAqZGV2KQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqAgaW9tbXUgPSBv
Zl9wYXJzZV9waGFuZGxlKHBvcnQtPnBhcmVudCwgImlvbW11cyIsIDApOwo+PiAtwqDCoMKgwqDC
oMKgwqAgaWYgKCFpb21tdSB8fCAhb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShpb21tdS0+cGFyZW50
KSkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFpb21tdSB8fCAhb2ZfZGV2aWNlX2lzX2F2YWls
YWJsZShpb21tdSkpIHsKPgo+IEp1c3Qgd29uZGVyaW5nLCBjb3VsZCB5b3UgdXNlIGRldmljZV9p
b21tdV9tYXBwZWQoKSB0byBhdm9pZCBwb2tpbmcgYXQgCj4gdGhlIERUIGF0IGFsbCBoZXJlLCBv
ciBpcyBpdCB0aGF0IHlvdSBuZWVkIHRvIGNoZWNrIHJlbW90ZSBncmFwaCAKPiBlbmRwb2ludHMg
d2hvc2Ugc3RydWN0IGRldmljZSBtYXkgbm90IGJlIHJlYWR5IHlldD8KCgpkZXZpY2VfaW9tbXVf
bWFwcGVkKGRldinCoCBjYW4ndCBiZSBjYWxsZWQgZnJvbSByb2NrY2hpcF9kcm1faW5pdF9pb21t
dSwgCmFzIHRoZXJlIGlzIG5vwqAgaW9tbXUgZGV2KHZvcCkgaW4gdGhlc2UgZnVuY3Rpb24uCgo+
Cj4gUm9iaW4uCj4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX0RFVl9ERUJVRyhk
ZXYsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm5v
IGlvbW11IGF0dGFjaGVkIGZvciAlcE9GLCB1c2luZyBub24taW9tbXUgCj4+IGJ1ZmZlcnNcbiIs
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydC0+
cGFyZW50KTsKPj4KPgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
