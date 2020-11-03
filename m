Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 161D0C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 08:20:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B12C6206E3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 08:20:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rBYL/v5s"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B12C6206E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gSmgtmOh8r3Ci6AtA2yrmAt9mOtheoHYLhW1ogyOwNo=; b=rBYL/v5s8f0sxjR8VQFmRPkEs
	KVybNmQYeYs3T/ClTSaoD4qBlPhOOzTulq+CQHTI/0xv/q/XjVmjvv4mHIqi3f+Sdwc+3mCoV7Xwg
	/xntg8sX35rN+cujytRPLferj6VVi0VX6TuhjnaD5XuHluO3pqWY44lX1H/fTfuNOsyW/qcPSC2jy
	T5SSZ+PsE1JDdMxMFsewv92GRhqMPNfPqhk1LD1P9meOZYwtgyY74pDhW/sInhzWx0YLN7cGDx09f
	H85r+WZhGhx2+I+JBLJ40dIUp15xxLdkfrsmGtcSOxFmLog+o2DOCxE2O6hq2nfvf5zhYHaZazypO
	QUNeGu6mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZrYI-000151-5C; Tue, 03 Nov 2020 08:20:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZrY8-00011D-Nq; Tue, 03 Nov 2020 08:20:18 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4CQN4s2bXGzhg9l;
 Tue,  3 Nov 2020 16:20:13 +0800 (CST)
Received: from [10.174.177.149] (10.174.177.149) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Tue, 3 Nov 2020 16:20:07 +0800
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: fix missing
 clk_disable_unprepare() on error in rockchip_saradc_resume
To: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Heiko Stuebner <heiko@sntech.de>
References: <20201103074909.195465-1-miaoqinglang@huawei.com>
From: Qinglang Miao <miaoqinglang@huawei.com>
Message-ID: <6739f62b-c88e-6792-3237-49787c73c662@huawei.com>
Date: Tue, 3 Nov 2020 16:20:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20201103074909.195465-1-miaoqinglang@huawei.com>
X-Originating-IP: [10.174.177.149]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_032017_869723_E344B04E 
X-CRM114-Status: GOOD (  17.73  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgrU2iAyMDIwLzExLzMgMTU6NDksIFFpbmdsYW5nIE1pYW8g0LS1wDoKPiBGaXggdGhlIG1pc3Np
bmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgb2YgaW5mby0+cGNsawo+IGJlZm9yZSByZXR1cm4g
ZnJvbSByb2NrY2hpcF9zYXJhZGNfcmVzdW1lIGluIHRoZSBlcnJvcgo+IGhhbmRsaW5nIGNhc2Ug
d2hlbiBmYWlscyB0byBwcmVwYXJlIGFuZCBlbmFibGUgaW5mby0+Y2xrLgo+IAo+IEZpeGVzOiA0
NGQ2ZjJlZjk0ZjkgKCJpaW86IGFkYzogYWRkIGRyaXZlciBmb3IgUm9ja2NoaXAgc2FyYWRjIikK
PiBTaWduZWQtb2ZmLWJ5OiBRaW5nbGFuZyBNaWFvIDxtaWFvcWluZ2xhbmdAaHVhd2VpLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDUgKysrLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyBiL2RyaXZlcnMvaWlv
L2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+IGluZGV4IDFmM2Q3ZDYzOS4uNWViNTY2Mjc0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+ICsrKyBiL2RyaXZl
cnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+IEBAIC00NjEsOSArNDYxLDEwIEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICAJCXJl
dHVybiByZXQ7Cj4gICAKPiAgIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoaW5mby0+Y2xrKTsK
PiAtCWlmIChyZXQpCj4gKwlpZiAocmV0KSB7Cj4gKwkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlu
Zm8tPnBjbGspOwo+ICAgCQlyZXR1cm4gcmV0Owo+IC0KPiArCX0KPiAgIAlyZXR1cm4gcmV0Owo+
ICAgfQo+ICAgI2VuZGlmCj4gCkhpIGV2ZXJ5b25lLAoKSSBtYWRlIGEgY2FyZWxlc3MgbWlzdGFr
ZSBmb3IgYWRkaW5nIHYyIGFzIHN1YmplY3QtcHJlZml4LCB0aGlzIHBhdGNoIGlzIAp0aGUgYmFz
ZSB2ZXJzaW9uIGFjdHVhbGx5LgoKU29ycnkgYWJvdXQgdGhhdC4KClRoYW5rcy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
