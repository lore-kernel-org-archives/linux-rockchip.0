Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16C92C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 12:04:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C3FF2242A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 12:04:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Idw87X7Y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C3FF2242A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hcHp0zCduiqvRcT56iU16lrQq/kZ4y/ocSGyb6h8hk0=; b=Idw87X7Yqb0U+aHzA5iW8MkHe
	f9Q5NbS8Fit+6mmSWJu3ISQEnZP3urxWsgLQaK1xd4MUCFmUvzA5hk4SbDHuwJykDMT5qNVkY0tZb
	NmszIXhthOXY4Nj9+nZZ64EIkSoXqiyHozkEM22gF4B6fWX7rjV40kjnk/sU+jwxZDZhKZncYL+Oa
	F3I7rr8jjO2Nxb6V5XNV8KZtP+GEymNE9nL0qHQz3f1XC0H4bKzEdHyKVSmN7av3ojvqvb1hIbYH+
	tHMo746eHh063ZvU7Qvp5r+4eE74BVwe3dZYFtaEoGEzx5pG+g55qhPh0ph1JMIhpQQY41qrjlwgc
	RKtHQwI9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZv3J-0006cS-OS; Tue, 03 Nov 2020 12:04:41 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZv37-0006ak-JH; Tue, 03 Nov 2020 12:04:30 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CQT3Y5tlyz15R0b;
 Tue,  3 Nov 2020 20:04:25 +0800 (CST)
Received: from [10.174.177.149] (10.174.177.149) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Tue, 3 Nov 2020 20:04:24 +0800
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: fix missing
 clk_disable_unprepare() on error in rockchip_saradc_resume
To: Robin Murphy <robin.murphy@arm.com>, Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Heiko Stuebner <heiko@sntech.de>
References: <20201103074909.195465-1-miaoqinglang@huawei.com>
 <50da9bf1-7317-b24b-9a87-e9dfb4e4a694@arm.com>
From: Qinglang Miao <miaoqinglang@huawei.com>
Message-ID: <c86c7e85-31ec-725f-ed75-563c804868c7@huawei.com>
Date: Tue, 3 Nov 2020 20:04:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <50da9bf1-7317-b24b-9a87-e9dfb4e4a694@arm.com>
X-Originating-IP: [10.174.177.149]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_070429_920225_34EB3C8E 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgrlnKggMjAyMC8xMS8zIDE5OjExLCBSb2JpbiBNdXJwaHkg5YaZ6YGTOgo+IE9uIDIwMjAtMTEt
MDMgMDc6NDksIFFpbmdsYW5nIE1pYW8gd3JvdGU6Cj4+IEZpeCB0aGUgbWlzc2luZyBjbGtfZGlz
YWJsZV91bnByZXBhcmUoKSBvZiBpbmZvLT5wY2xrCj4+IGJlZm9yZSByZXR1cm4gZnJvbSByb2Nr
Y2hpcF9zYXJhZGNfcmVzdW1lIGluIHRoZSBlcnJvcgo+PiBoYW5kbGluZyBjYXNlIHdoZW4gZmFp
bHMgdG8gcHJlcGFyZSBhbmQgZW5hYmxlIGluZm8tPmNsay4KPj4KPj4gRml4ZXM6IDQ0ZDZmMmVm
OTRmOSAoImlpbzogYWRjOiBhZGQgZHJpdmVyIGZvciBSb2NrY2hpcCBzYXJhZGMiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBRaW5nbGFuZyBNaWFvIDxtaWFvcWluZ2xhbmdAaHVhd2VpLmNvbT4KPj4gLS0t
Cj4+IMKgIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDUgKysrLS0KPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyAKPj4gYi9kcml2ZXJz
L2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKPj4gaW5kZXggMWYzZDdkNjM5Li41ZWI1NjYyNzQg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+PiArKysg
Yi9kcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKPj4gQEAgLTQ2MSw5ICs0NjEsMTAg
QEAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfcmVzdW1lKHN0cnVjdCBkZXZpY2UgCj4+ICpk
ZXYpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiDCoMKgwqDCoMKgIHJldCA9
IGNsa19wcmVwYXJlX2VuYWJsZShpbmZvLT5jbGspOwo+PiAtwqDCoMKgIGlmIChyZXQpCj4+ICvC
oMKgwqAgaWYgKHJldCkgewo+PiArwqDCoMKgwqDCoMKgwqAgY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KGluZm8tPnBjbGspOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPiAKPiBObyBu
ZWVkIHRvIGFkZCBicmFjZXMsIGp1c3QgcmVwbGFjZSB0aGlzIHV0dGVybHkgcG9pbnRsZXNzICJl
YXJseSIgCj4gcmV0dXJuIDspCj4gCj4gUm9iaW4uCllvdSBhcmUgcmlnaHQgUm9iaW4sIHRoYW5r
cyBhIGxvdCEgOkQKCkkndmUgc2VudCBhICdyZWFsJyB2MiBwYXRjaCBiYXNlZCBvbiB5b3VyIGFk
dmljZS4KPiAKPj4gLQo+PiArwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiDC
oCB9Cj4+IMKgICNlbmRpZgo+Pgo+IC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
