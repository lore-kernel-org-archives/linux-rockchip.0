Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978A8CFD36C
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 03:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEoT4okDNFnZYhISh/oNPlY1cuI9NVH1D6Lrth8St0o=; b=3rKhAxhe51XMhx
	xrQAqFBuXsAGsK5QyhCIlk8MIXQ0WhQFq/WbR6GNjc4uYhq2S420sBfBERxmt0Rd7ADlfn4Y2ooaa
	Qs4Tn0LBksqRYtYRPLqm6/V+jAPqyYcLJBy4e9KcYLE5RC2zs/ahppvZ3rNLuVfmkFaPbnOixJRsI
	568KypwtR+1ZJBD8nMij7KuvsPRkTLINPM28wA3wvO9JBX+a9CUqkbwfkOC8rFUlLTYvyGrNsbi65
	1TxOkBw5qPMrAGWVv/zo0N2aUvUotwEeOgXQRnYs0CgonI3af2q0S2Q5AJrrk78SPBuKm3JZRUe/t
	gifbht3g0rbPSnDTYDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNjJl-0000000CeVm-0qJ0;
	Tue, 25 Nov 2025 03:02:14 +0000
Received: from mail-m32116.qiye.163.com ([220.197.32.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNjJi-0000000CeVK-1H4K
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 03:02:12 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ac3df67c;
	Tue, 25 Nov 2025 11:02:03 +0800 (GMT+08:00)
Message-ID: <784f6364-e49d-4452-91c0-c8f24706951b@rock-chips.com>
Date: Tue, 25 Nov 2025 11:02:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Fix command queue support for
 RK3576
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Yifeng Zhao <yifeng.zhao@rock-chips.com>
References: <20251121-rockchip-emmc-cqe-rk3576-fix-v1-1-a77805f40072@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251121-rockchip-emmc-cqe-rk3576-fix-v1-1-a77805f40072@collabora.com>
X-HM-Tid: 0a9ab8f60ac309cckunm1956caa443e704
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5OS1ZCTB0aQkgaHUpMGE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YdC5ZnZo6g2ktdySEBNtohxJI9WNGnnpoTT+W/PO7G853pv6BD2C8rbgzDG7Gi5Z9xoYmpoHSbR5zAoyj4DNQxAkzua1ihNY7SBPxTNm8pp/cyh55QTNEFqQujDBj0SfseYmfDxzz894ektuG0aoL8nXJiSlsGd85wRM/xlWjl0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=SuHFIVlB89k1v2cvDQ8z3NTybDz745v41RWXBeWzgO4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_190210_843422_97D52A4D 
X-CRM114-Status: GOOD (  18.92  )
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

5ZyoIDIwMjUvMTEvMjIg5pif5pyf5YWtIDA6MjYsIFNlYmFzdGlhbiBSZWljaGVsIOWGmemBkzoK
PiBXaGVuIEkgYWRkZWQgY29tbWFuZCBxdWV1ZSBlbmdpbmUgKENRRSkgc3VwcG9ydCBmb3IgdGhl
IFJvY2tjaGlwIGVNTUMKPiBjb250cm9sbGVyLCBJIG1pc3NlZCB0aGF0IFJLMzU3NiBoYXMgYSBz
ZXBhcmF0ZSBwbGF0Zm9ybSBkYXRhIHN0cnVjdC4KPiBXaGlsZSB0aGluZ3MgYXJlIHdvcmtpbmcg
ZmluZSBvbiBSSzM1ODggKEkgdGVzdGVkIHRoZSBST0NLIDVCKSBhbmQKPiB0aGUgc3VzcGVuZCBp
c3N1ZSBpcyBmaXhlZCBvbiB0aGUgUkszNTc2IChJIHRlc3RlZCB0aGUgU2lnZTUpLCB0aGlzCj4g
cmVzdWx0cyBpbiBzdGFiaWxpdHkgaXNzdWVzLiBCeSBhbHNvIGFkZGluZyB0aGUgbmVjZXNzYXJ5
IGhvb2tzIGZvcgo+IHRoZSBSSzM1NzYgcGxhdGZvcm0gdGhlIGZvbGxvd2luZyBwcm9ibGVtcyBj
YW4gYmUgYXZvaWRlZDoKPiAKClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4KCj4gWyAgIDE1LjYwNjg5NV0gbW1jMDogcnVubmluZyBDUUUgcmVjb3ZlcnkK
PiBbICAgMTUuNjE2MTg5XSBtbWMwOiBydW5uaW5nIENRRSByZWNvdmVyeQo+IFsuLi5dCj4gWyAg
IDI1LjkxMTQ4NF0gbW1jMDogcnVubmluZyBDUUUgcmVjb3ZlcnkKPiBbICAgMjUuOTI2MzA1XSBt
bWMwOiBydW5uaW5nIENRRSByZWNvdmVyeQo+IFsgICAyNS45Mjc0NjhdIG1tYzA6IHJ1bm5pbmcg
Q1FFIHJlY292ZXJ5Cj4gWy4uLl0KPiBbICAgMjYuMjU1NzE5XSBtbWMwOiBydW5uaW5nIENRRSBy
ZWNvdmVyeQo+IFsgICAyNi4yNTcxNjJdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0t
LS0tLQo+IFsgICAyNi4yNTc1ODFdIG1tYzA6IGNxaGNpOiBzcHVyaW91cyBUQ04gZm9yIHRhZyAz
MQo+IFsgICAyNi4yNTgwMzRdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDAgYXQgZHJpdmVycy9tbWMv
aG9zdC9jcWhjaS1jb3JlLmM6Nzk2IGNxaGNpX2lycSsweDQ0MC8weDY4Ywo+IFsgICAyNi4yNjM3
ODZdIENQVTogMCBVSUQ6IDAgUElEOiAwIENvbW06IHN3YXBwZXIvMCBOb3QgdGFpbnRlZCA2LjE4
LjAtcmM2LWdkOTg0ZWJiZjBkMTUgIzEgUFJFRU1QVAo+IFsgICAyNi4yNjQ1NjFdIEhhcmR3YXJl
IG5hbWU6IEFybVNvTSBTaWdlNSAoRFQpCj4gWy4uLl0KPiBbICAgMjYuMjcyNzQ4XSBDYWxsIHRy
YWNlOgo+IFsgICAyNi4yNzI5NjRdICBjcWhjaV9pcnErMHg0NDAvMHg2OGMgKFApCj4gWyAgIDI2
LjI3MzI5Nl0gIGR3Y21zaGNfY3FlX2lycV9oYW5kbGVyKzB4NTQvMHg4OAo+IFsgICAyNi4yNzM2
ODldICBzZGhjaV9pcnErMHhiYy8weDEyMDAKPiBbICAgMjYuMjczOTkxXSAgX19oYW5kbGVfaXJx
X2V2ZW50X3BlcmNwdSsweDU0LzB4MWQwCj4gWy4uLl0KPiAKPiBOb3RlIHRoYXQgdGhlIGFib3Zl
IHByb2JsZW1zIGRvIG5vdCBuZWNlc3NhcmlseSBoYXBwZW4gd2l0aCBldmVyeSBib290Lgo+IAo+
IFJlcG9ydGVkLWJ5OiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT4KPiBD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzAxOTQ5YmM5LTQ4
NzMtNDk4Yi1hYzdkLWYwMDgzOTNjY2M0Y0BpbnRlbC5jb20vCj4gRml4ZXM6IGZkYTFlMGFmN2My
OGYgKCJtbWM6IHNkaGNpLW9mLWR3Y21zaGM6IEFkZCBjb21tYW5kIHF1ZXVlIHN1cHBvcnQgZm9y
IHJvY2tjaGlwIFNPQ3MiKQo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IFNvcnJ5IGZvciB0aGUgZGVsYXkg
aW4gc2VuZGluZyB0aGlzIDopCj4gLS0tCj4gICBkcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3
Y21zaGMuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIGIvZHJpdmVycy9t
bWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiBpbmRleCBjNjZhOGRmYWQ0N2MuLmVlMDAwOGQ5
MWI5OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+
ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jCj4gQEAgLTE3NjcsNiAr
MTc2Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdjbXNoY19wbHRmbV9kYXRhIHNkaGNpX2R3
Y21zaGNfcmszNTc2X3BkYXRhID0gewo+ICAgCQkucXVpcmtzMiA9IFNESENJX1FVSVJLMl9QUkVT
RVRfVkFMVUVfQlJPS0VOIHwKPiAgIAkJCSAgIFNESENJX1FVSVJLMl9DTE9DS19ESVZfWkVST19C
Uk9LRU4sCj4gICAJfSwKPiArCS5jcWhjaV9ob3N0X29wcyA9ICZyazM1eHhfY3FoY2lfb3BzLAo+
ICAgCS5pbml0ID0gZHdjbXNoY19yazM1eHhfaW5pdCwKPiAgIAkucG9zdGluaXQgPSBkd2Ntc2hj
X3JrMzU3Nl9wb3N0aW5pdCwKPiAgIH07Cj4gCj4gLS0tCj4gYmFzZS1jb21taXQ6IGRjYmNlMzI4
ZDNhMmQ4Nzc3MDEzMzgzNDIxMGNmMzI4YzA4M2Q0ODAKPiBjaGFuZ2UtaWQ6IDIwMjUxMTIxLXJv
Y2tjaGlwLWVtbWMtY3FlLXJrMzU3Ni1maXgtZWM4YWM3MmU2ZTMyCj4gCj4gQmVzdCByZWdhcmRz
LAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
