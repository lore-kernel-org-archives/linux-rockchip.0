Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33C0C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 07:53:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 620ED20809
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 07:53:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="U2D5JJS7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 620ED20809
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bOvcjpmv8/4FULlwmdC1x1BsYi8ii063d9n5b3EnKrE=; b=U2D5JJS7ZXAxXL64GRG+F57sH
	ve1b0m2HJomzGyJS3J0qEJjwuooP2314NV9NDL8GaHGgqllRbsaQmaBXjYvUO5zYv4T/hv9483NBf
	SJ/sPiDJaDuJbKOI8XOHY/Sw9W8MNGQdRjOMt1Vxyft+yu3eEDgp5pXQcQ51JDPD18/LUJf9S6buw
	0GkqjwIoApyuOJHANRQ3yiSE5LH+VZCFFFHvIlvzxdhrMy/ViC+mhp+KRYv3UvdGDyRezMIrAM5Ks
	nVcBHxYDDZu+wJXA80vSGwUenuF0i1KeT1x6hdn5ySr5//NGrbQppsiWFFhkBymjcb4ZTIU8IsGqi
	2mwM8be/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGHO7-0005Ed-Sh; Thu, 10 Sep 2020 07:52:59 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGHO3-0005DT-EU; Thu, 10 Sep 2020 07:52:56 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F28D11EF2D70231AC517;
 Thu, 10 Sep 2020 15:52:50 +0800 (CST)
Received: from [127.0.0.1] (10.174.179.108) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 10 Sep 2020 15:52:49 +0800
Subject: Re: [PATCH -next] drm/rockchip: cdn-dp: Mark
 cdn_dp_core_suspend/resume __maybe_unused
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>
References: <20200811021225.50296-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <7b9799c6-96e2-2273-a296-ea1a94e4cade@huawei.com>
Date: Thu, 10 Sep 2020 15:52:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200811021225.50296-1-yuehaibing@huawei.com>
X-Originating-IP: [10.174.179.108]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_035255_730516_A85628DC 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

cGluZy4uLgoKT24gMjAyMC84LzExIDEwOjEyLCBZdWVIYWliaW5nIHdyb3RlOgo+IElmIENPTkZJ
R19QTSBpcyBub3Qgc2V0LCBnY2Mgd2FybnM6Cj4gCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmM6MTEyNDoxMjoKPiAgd2FybmluZzog4oCYY2RuX2RwX3Jlc3VtZeKAmSBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCj4gCj4gTWFyayB0aGVtIF9f
bWF5YmVfdW51c2VkIHRvIGZpeCB0aGlzLgo+IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxo
dWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5n
QGh1YXdlaS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29y
ZS5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiBpbmRleCBh
NGE0NWRhZjkzZjIuLjQxM2IwZTkwZjEwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtY29yZS5jCj4gQEAgLTExMDcsNyArMTEwNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y29tcG9uZW50X29wcyBjZG5fZHBfY29tcG9uZW50X29wcyA9IHsKPiAgCS51bmJpbmQgPSBjZG5f
ZHBfdW5iaW5kLAo+ICB9Owo+ICAKPiAtc3RhdGljIGludCBjZG5fZHBfc3VzcGVuZChzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgY2RuX2RwX3N1c3BlbmQo
c3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHAgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAgCWludCByZXQgPSAwOwo+IEBAIC0xMTIxLDcgKzExMjEs
NyBAQCBzdGF0aWMgaW50IGNkbl9kcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCXJl
dHVybiByZXQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAgCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+ICAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
