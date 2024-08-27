Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 137ACC5321D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUXJ2tJRhkaMHUfkP8JtVcaZvd7PrYFEMLKMjgcFdiE=; b=3RCqLT5CIXfbgc
	KFJ0+C+8tSAwPhHPWONx2gE1WVIab8CQRQg3FG4U5Ce0A1Sre8D+JgAJ/eiIwTweHHyBDNVnQKMpd
	OqOLwg3IT6EVeU9cI6r62cr3f8LK9JnYZGundcx2o5unv7sNvFI1rY/59Q4cgVTXoNU6tPlV2lLxM
	OpygzXfI5+6H4UKixpdTjcB2+ama2CVTL5Yh8SQx+/j7ex4G7mDOUGK4s47f9kPILahhh5YF8eS3F
	m4O9uiY1BhenEQzMIeSBwZq5FE6St3NEcGEAWUjap9BE1GADo2q7LbdkyLCy3ZdyNV1INJs5lrEue
	XeLw1GQXl+U+HMpX/Ayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1silFa-00000009MDF-2pCf;
	Tue, 27 Aug 2024 01:44:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1silEF-00000009LxQ-22SY;
	Tue, 27 Aug 2024 01:43:14 +0000
Received: from mail.maildlp.com (unknown [172.19.162.112])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Wt9CX2yzTz20mq7;
	Tue, 27 Aug 2024 09:37:44 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 3B824140120;
	Tue, 27 Aug 2024 09:42:32 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemh500013.china.huawei.com (7.202.181.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 27 Aug 2024 09:42:30 +0800
Message-ID: <9f93fe1f-c7d7-7d96-44ab-2bca0aae407e@huawei.com>
Date: Tue, 27 Aug 2024 09:42:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH -next 2/5] drm/mediatek: Fix missing of_node_put() for
 mtk_drm_get_all_drm_priv()
Content-Language: en-US
To: Marion & Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	<hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
 <20240823092053.3170445-3-ruanjinjie@huawei.com>
 <a4d23c3a-9791-4d2b-9853-9c9b27460db5@wanadoo.fr>
 <6d4ec950-878f-499c-a808-dd5b31c2ddb6@wanadoo.fr>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <6d4ec950-878f-499c-a808-dd5b31c2ddb6@wanadoo.fr>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_184239_794508_695BE748 
X-CRM114-Status: GOOD (  10.20  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDI0LzgvMjUgMTM6MTYsIE1hcmlvbiAmIENocmlzdG9waGUgSkFJTExFVCB3cm90ZToK
PiAKPiAKPiBMZSAyMy8wOC8yMDI0IMOgIDEyOjQ2LCBDaHJpc3RvcGhlIEpBSUxMRVQgYSDDqWNy
aXTCoDoKPj4+IEBAIC05MzMsMTAgKzkzMSw4IEBAIHN0YXRpYyBpbnQgbXRrX2RybV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlCj4+PiAqcGRldikKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gbXRrX2RkcF9jb21wX2luaXQobm9kZSwgJnBy
aXZhdGUtPmRkcF9jb21wW2NvbXBfaWRdLAo+Pj4gY29tcF9pZCk7Cj4+PiAtwqDCoMKgwqDCoMKg
wqAgaWYgKHJldCkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQobm9k
ZSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGdvdG8gZXJyX25vZGU7Cj4+Cj4+IEhpLAo+Pgo+PiBJJ3ZlIHNlZW4gb24gYW5vdGhl
ciB0aHJlYWQgdGhhdCBpcyB3YXMgbm90IHN1cmUgdGhhdCBzY29wZWQgdmVyc2lvbnMKPj4gYW5k
IGdvdG9zIHBsYXllZCB3ZWxsIHRvZ2V0aGVyLgo+Pgo+PiBJdCB3YXMgYXNrZWQgdG8gY2hlY2sg
bW9yZSBpbiBkZXRhaWxzIGFuZCBjb25maXJtIHRoYXQgaXQgd2FzIHNhZmUKPj4gYmVmb3JlIGFw
cGx5aW5nIHRoZSBwYXRjaC4KPj4KPj4gSSd2ZSBub3QgZm9sbG93ZWQgdGhlIGRpc2N1c3Npb24s
IHNvIEkganVzdCBwb2ludCBpdCBvdXQsIGluIGNhc2UgaXQKPj4gaGVscHMuCj4+Cj4+IEknbGwg
dHJ5IHRvIGdpdmUgaXQgYSBsb29rIGluIHRoZSBjb21pbmcgZGF5cy4KPj4KPj4KPj4gQ0oKPj4K
PiAKPiBIaSwKPiBsb29raW5nIGF0IHRoZSBnZW5lcmF0ZWQgYXNtIGZpbGUgKGdjYyAxNC4yLjEp
LCBldmVyeXRoaW5nIGxvb2tzIGZpbmUuCgpZZXMsIGFzIEkgcG9pbnRlZCBvdXQgaW4gYW5vdGhl
ciB0aHJlYWQsIHRoZSB0ZXN0IHNob3cgdGhhdCBnb3RvIHdpdGgKdGhpcyBzY29wZWQgZnVuY3Rp
b24gaXMgZ29vZC4KCj4gCj4gIyBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYu
Yzo5MzM6wqDCoMKgwqDCoMKgwqDCoCByZXQgPQo+IG10a19kZHBfY29tcF9pbml0KG5vZGUsICZw
cml2YXRlLT5kZHBfY29tcFtjb21wX2lkXSwgY29tcF9pZCk7Cj4gwqDCoMKgwqBzYWxxwqDCoMKg
ICQ1LCAlcmF4wqDCoMKgICMsIF8zNgo+IMKgwqDCoMKgbW92bMKgwqDCoCAlcjE0ZCwgJWVkeMKg
wqDCoCAjIGNvbXBfaWQsCj4gwqDCoMKgwqBtb3ZxwqDCoMKgICVyYngsICVyZGnCoMKgwqAgIyBu
b2RlLAo+IMKgwqDCoMKgbGVhccKgwqDCoCA1NTIoJXJicCwlcmF4KSwgJXJzacKgwqDCoCAjLCBf
MjgKPiDCoMKgwqDCoGNhbGzCoMKgwqAgbXRrX2RkcF9jb21wX2luaXTCoMKgwqAgIwo+IMKgwqDC
oMKgbW92bMKgwqDCoCAlZWF4LCAlcjEyZMKgwqDCoCAjIHRtcDIwNSwgPHJldHZhbD4KPiAjIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jOjkzNDrCoMKgwqDCoMKgwqDCoMKg
IGlmIChyZXQpCj4gwqDCoMKgwqB0ZXN0bMKgwqDCoCAlZWF4LCAlZWF4wqDCoMKgICMgPHJldHZh
bD4KPiDCoMKgwqDCoGpuZcKgwqDCoCAuTDIxMsKgwqDCoCAjLAo+IAo+IC4uLgo+IAo+IC5MMjEy
Ogo+ICMgLi9pbmNsdWRlL2xpbnV4L29mLmg6MTM4OiBERUZJTkVfRlJFRShkZXZpY2Vfbm9kZSwg
c3RydWN0IGRldmljZV9ub2RlCj4gKiwgaWYgKF9UKSBvZl9ub2RlX3B1dChfVCkpCj4gwqDCoMKg
wqBtb3ZxwqDCoMKgICVyYngsICVyZGnCoMKgwqAgIyBub2RlLAo+IMKgwqDCoMKgY2FsbMKgwqDC
oCBvZl9ub2RlX3B1dMKgwqDCoCAjCj4gwqDCoMKgwqBqbXDCoMKgwqAgLkwxNzHCoMKgwqAgIwo+
IAo+IENKCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
