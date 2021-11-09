Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3414C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 02:06:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A8CC61175
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 02:06:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9A8CC61175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	CC:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7U1mZ7rfqqEvhSuUqGeKktXCPKNDU6dEk+NxhRKrBQ0=; b=L+3GFF6a6NnS2xO57zzBdtSjzf
	iaaV4nGmVmfsqZdylcgbvqap8OF95dKpXJabuj7J/CcK4ozgdeqAvpvT5UKQ1/jfj8dEYbyPvOsQu
	4fyZO03NcEgatsiQo+QtwlWTSi1AZNdOk7NV/im5qWVwpzmjKatQzeam70GbbOaKJMtPN6T9pfXGc
	AOpq2k9cCs8h+a1aq0ykgV+blaXz+r8Xs9sM67z1q1qmtsadYVr8Xbp7Oovg5BGGfO5GqyKsE+stY
	a/VXhZCnBdjFEndXAT+t6MOr+tECEp6yF42Hr89MqWkzb59fFCcU9Plf98J1NwZiwCQ4zLpAgR6CH
	jTU2M6VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkGWr-000WEp-Vh; Tue, 09 Nov 2021 02:06:29 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkGWe-000WBn-OF; Tue, 09 Nov 2021 02:06:19 +0000
Received: from dggeme758-chm.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4HpB9R4QBmzVfsf;
 Tue,  9 Nov 2021 10:03:55 +0800 (CST)
Received: from [10.67.110.136] (10.67.110.136) by
 dggeme758-chm.china.huawei.com (10.3.19.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.15; Tue, 9 Nov 2021 10:06:07 +0800
Subject: Re: [PATCH] drm: Fix wrong use of connector in vop_get_edp_connector
From: He Ying <heying24@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <seanpaul@chromium.org>, <gustavo.padovan@collabora.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>, 
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20211025015550.66500-1-heying24@huawei.com>
Message-ID: <60f07638-aca2-a1c5-c80e-c5ea4de6b223@huawei.com>
Date: Tue, 9 Nov 2021 10:06:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20211025015550.66500-1-heying24@huawei.com>
X-Originating-IP: [10.67.110.136]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggeme758-chm.china.huawei.com (10.3.19.104)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_180617_081398_F0241F8A 
X-CRM114-Status: GOOD (  17.15  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

a2luZGx5IHBpbmcuLi4KCtTaIDIwMjEvMTAvMjUgOTo1NSwgSGUgWWluZyDQtLXAOgo+ID5Gcm9t
IHRoZSBjb21tZW50cyBvZiBkcm1fZm9yX2VhY2hfY29ubmVjdG9yX2l0ZXIoKSwgd2Uga25vdwo+
IHRoYXQgImNvbm5lY3RvciBpcyBvbmx5IHZhbGlkIHdpdGhpbiB0aGUgbGlzdCBib2R5LCBpZiB5
b3UKPiB3YW50IHRvIHVzZSBjb25uZWN0b3IgYWZ0ZXIgY2FsbGluZyBkcm1fY29ubmVjdG9yX2xp
c3RfaXRlcl9lbmQoKQo+IHRoZW4geW91IG5lZWQgdG8gZ3JhYiB5b3VyIG93biByZWZlcmVuY2Ug
Zmlyc3QgdXNpbmcKPiBkcm1fY29ubmVjdG9yX2dldCgpIi4gU28gZml4IHRoZSB3cm9uZyB1c2Ug
b2YgY29ubmVjdG9yCj4gYWNjb3JkaW5nIHRvIHRoZSBjb21tZW50cyBhbmQgdGhlbiBjYWxsIGRy
bV9jb25uZWN0b3JfcHV0KCkKPiBhZnRlciB1c2luZyBjb25uZWN0b3IgZmluaXNoZXMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBIZSBZaW5nIDxoZXlpbmcyNEBodWF3ZWkuY29tPgo+IEZpeGVzOiAyY2Jl
YjY0ZjZjNzAgKCJkcm0vcm9ja2NoaXA6IHVzZSBkcm1fZm9yX2VhY2hfY29ubmVjdG9yX2l0ZXIo
KSIpCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5j
IHwgOSArKysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMKPiBpbmRleCBhMjViOThiN2Y1YmQuLjQ2OTkyMmFkMjlmYSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+IEBAIC0xNTgxLDE5ICsxNTgxLDE5
IEBAIHN0YXRpYyB2b2lkIHZvcF9jcnRjX3Jlc2V0KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiAg
ICNpZmRlZiBDT05GSUdfRFJNX0FOQUxPR0lYX0RQCj4gICBzdGF0aWMgc3RydWN0IGRybV9jb25u
ZWN0b3IgKnZvcF9nZXRfZWRwX2Nvbm5lY3RvcihzdHJ1Y3Qgdm9wICp2b3ApCj4gICB7Cj4gLQlz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+ICsJc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciA9IE5VTEw7Cj4gICAJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9pdGVyIGNv
bm5faXRlcjsKPiAgIAo+ICAgCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKHZvcC0+ZHJt
X2RldiwgJmNvbm5faXRlcik7Cj4gICAJZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVyKGNvbm5l
Y3RvciwgJmNvbm5faXRlcikgewo+ICAgCQlpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9
PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKSB7Cj4gLQkJCWRybV9jb25uZWN0b3JfbGlzdF9pdGVy
X2VuZCgmY29ubl9pdGVyKTsKPiAtCQkJcmV0dXJuIGNvbm5lY3RvcjsKPiArCQkJZHJtX2Nvbm5l
Y3Rvcl9nZXQoY29ubmVjdG9yKTsKPiArCQkJYnJlYWs7Cj4gICAJCX0KPiAgIAl9Cj4gICAJZHJt
X2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZjb25uX2l0ZXIpOwo+ICAgCj4gLQlyZXR1cm4gTlVM
TDsKPiArCXJldHVybiBjb25uZWN0b3I7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgdm9wX2Ny
dGNfc2V0X2NyY19zb3VyY2Uoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+IEBAIC0xNjE0LDYgKzE2
MTQsNyBAQCBzdGF0aWMgaW50IHZvcF9jcnRjX3NldF9jcmNfc291cmNlKHN0cnVjdCBkcm1fY3J0
YyAqY3J0YywKPiAgIAllbHNlCj4gICAJCXJldCA9IC1FSU5WQUw7Cj4gICAKPiArCWRybV9jb25u
ZWN0b3JfcHV0KGNvbm5lY3Rvcik7Cj4gICAJcmV0dXJuIHJldDsKPiAgIH0KPiAgIAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
