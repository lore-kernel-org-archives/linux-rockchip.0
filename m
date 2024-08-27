Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A59B7C5472E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 02:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aI7aBiz1eMeoiwJXEb+MFf5d1KsQzA7EWU76v7NrX0w=; b=Ril3pE5qU7kbdL
	Svcy9+yymk6pniStdgv29AY+QusMjoyDXXsRqZoWbKnsrQPuZKJUuIU5NvTOnYP+ohvDTqCfxVtFz
	/v4WJ7TX3w2RdlQ8OOxsJ3gMIavUGDHH3kFADbQgxx2cvMtle/fbJYa+g6x+K461Jr9ZIUhwbsGG0
	G6eFSWjrfVJwqtcABOE0Ag+ZaLeCPbz0tDkrZ+ylwEd90ueptYsimf24iLilLgC/m8JldP4AfZXhP
	aRjWS28fMdOERmCQhwHWmnq1hzHORWIYQvjAqXzgSzsK7MJnsnB/CQqnilAtpswCP4d59GdgqWppk
	dQjv/uiFytK4x7ecaj5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simD2-00000009UfN-1UFJ;
	Tue, 27 Aug 2024 02:45:28 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1silBu-00000009LgO-1vrr;
	Tue, 27 Aug 2024 01:41:10 +0000
Received: from mail.maildlp.com (unknown [172.19.163.174])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Wt9Fm1yyvzyRDc;
	Tue, 27 Aug 2024 09:39:40 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 14645140257;
	Tue, 27 Aug 2024 09:40:09 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemh500013.china.huawei.com (7.202.181.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 27 Aug 2024 09:40:08 +0800
Message-ID: <5d6debd0-1a02-f631-649e-26fb69e164e2@huawei.com>
Date: Tue, 27 Aug 2024 09:40:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH -next 1/5] drm/rockchip: Use
 for_each_child_of_node_scoped()
Content-Language: en-US
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
CC: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
 <20240823092053.3170445-2-ruanjinjie@huawei.com>
 <20240823123203.00002aac@Huawei.com>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20240823123203.00002aac@Huawei.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_184014_964830_C8EB5297 
X-CRM114-Status: GOOD (  20.46  )
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

CgpPbiAyMDI0LzgvMjMgMTk6MzIsIEpvbmF0aGFuIENhbWVyb24gd3JvdGU6Cj4gT24gRnJpLCAy
MyBBdWcgMjAyNCAxNzoyMDo0OSArMDgwMAo+IEppbmppZSBSdWFuIDxydWFuamluamllQGh1YXdl
aS5jb20+IHdyb3RlOgo+IAo+PiBBdm9pZHMgdGhlIG5lZWQgZm9yIG1hbnVhbCBjbGVhbnVwIG9m
X25vZGVfcHV0KCkgaW4gZWFybHkgZXhpdHMKPj4gZnJvbSB0aGUgbG9vcC4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogSmluamllIFJ1YW4gPHJ1YW5qaW5qaWVAaHVhd2VpLmNvbT4KPiAKPiBUaGVyZSBp
cyBtb3JlIHRvIGRvIGhlcmUsIGFuZCBsb29raW5nIGF0IHRoZSBjb2RlLCBJJ20gZmFyIGZyb20K
PiBzdXJlIGl0IGlzbid0IHJlbGVhc2luZyByZWZlcmVuY2VzIGl0IG5ldmVyIGhhZC4KPiAKPj4g
LS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jIHwgOCArKyst
LS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4+IGluZGV4IDlh
MDFhYTQ1MDc0MS4uZjViM2YxODc5NGRkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9sdmRzLmMKPj4gQEAgLTU0OCw3ICs1NDgsNyBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX2x2ZHNfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwK
Pj4gIAlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXI7Cj4+ICAJc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcjsKPj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKnJlbW90ZSA9IE5VTEw7Cj4+
IC0Jc3RydWN0IGRldmljZV9ub2RlICAqcG9ydCwgKmVuZHBvaW50Owo+IAo+IE9kZCBleHRyYSBz
cGFjZSBiZWZvcmUgKnBvcnQgaW4gb3JpZ2luYWwuIENsZWFuIHRoYXQgdXAgd2hpbHN0IGhlcmUu
Cj4gCj4gCj4+ICsJc3RydWN0IGRldmljZV9ub2RlICAqcG9ydDsKPiAKPiBVc2UgX19mcmVlKGRl
dmljZV9ub2RlKSBmb3IgKnBvcnQgYXMgd2VsbC4KClllc++8jHRoYXQgaXMgcmlnaHQuCgo+IAo+
IFNvIHdoZXJlIHRoZSBjdXJyZW50IGFzaWdubWVudCBpcy4KPiAJc3RydWN0IGRldmljZV9ub2Rl
ICpwb3J0ID0gb2ZfZ3JhcGhfZ2V0X3BvcnRfYnlfaWQoZGV2LT5vZl9ub2RlLCAxKTsKPiAKPj4g
IAlpbnQgcmV0ID0gMCwgY2hpbGRfY291bnQgPSAwOwo+PiAgCWNvbnN0IGNoYXIgKm5hbWU7Cj4+
ICAJdTMyIGVuZHBvaW50X2lkID0gMDsKPj4gQEAgLTU2MCwxNSArNTYwLDEzIEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfbHZkc19iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAq
bWFzdGVyLAo+PiAgCQkJICAgICAgImNhbid0IGZvdW5kIHBvcnQgcG9pbnQsIHBsZWFzZSBpbml0
IGx2ZHMgcGFuZWwgcG9ydCFcbiIpOwo+PiAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gIAl9Cj4+IC0J
Zm9yX2VhY2hfY2hpbGRfb2Zfbm9kZShwb3J0LCBlbmRwb2ludCkgewo+PiArCWZvcl9lYWNoX2No
aWxkX29mX25vZGVfc2NvcGVkKHBvcnQsIGVuZHBvaW50KSB7Cj4+ICAJCWNoaWxkX2NvdW50Kys7
Cj4+ICAJCW9mX3Byb3BlcnR5X3JlYWRfdTMyKGVuZHBvaW50LCAicmVnIiwgJmVuZHBvaW50X2lk
KTsKPj4gIAkJcmV0ID0gZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKGRldi0+b2Zfbm9kZSwg
MSwgZW5kcG9pbnRfaWQsCj4+ICAJCQkJCQkgICZsdmRzLT5wYW5lbCwgJmx2ZHMtPmJyaWRnZSk7
Cj4+IC0JCWlmICghcmV0KSB7Cj4+IC0JCQlvZl9ub2RlX3B1dChlbmRwb2ludCk7Cj4+ICsJCWlm
ICghcmV0KQo+PiAgCQkJYnJlYWs7Cj4gCj4gVGhpcyB0aGVuIGNhbiBzaW1wbHkgYmUKPiAJCQly
ZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwKPiAJCQkJCSAgICAgImZhaWxlZCB0byBmaW5k
IHBhbm5lbCBhbmQgYnJpZGdlIG5vZGVcbiIpOwo+PiAtCQl9CgpJdCBzZWVtcyB0byBtZSB0aGVy
ZSdzIG5vIGVhc3kgd2F5IHJldHVybiBoZXJlLCBhcyBpdCB3aWxsIHRyeQpkcm1fb2ZfZmluZF9w
YW5lbF9vcl9icmlkZ2UoKSBmb3IgZWFjaCBjaGlsZCBub2RlLCBvbmx5ICJjaGlsZF9jb3VudCA9
CjAiIG9yIGFsbCBjaGlsZCBub2RlICBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSBmYWls
cyBpdCB3aWxsIGVycm9yCmFuZCByZXR1cm4uCgo+IAo+IFZhcmlvdXMgb3RoZXIgcGF0aHMgYmVj
b21lIGRpcmVjdCByZXR1cm5zIGFzIHdlbGwuCj4gCj4+ICAJfQo+IAo+IFRoZSBsYXRlciBjb2Rl
IHdpdGggcmVtb3RlIGxvb2tzIHN1c3BlY3QgYXMgbm90IG9idmlvdXMgd2hvIGdvdCB0aGUgcmVm
ZXJlbmNlIHRoYXQKPiBpcyBiZWluZyBwdXQgYnV0IGFzc3VtaW5nIHRoYXQgaXMgY29ycmVjdCwg
aXQncyBhbm90aGVyIHBvc3NpYmxlIHBsYWNlIGZvciBfX2ZyZWUgYmFzZWQKPiBjbGVhbnVwLgoK
WWVzLCB0aGUgcmVtb3RlIGxvb2tzIHN1c3BlY3QuCgo+IAo+IAo+PiAgCWlmICghY2hpbGRfY291
bnQpIHsKPj4gIAkJRFJNX0RFVl9FUlJPUihkZXYsICJsdmRzIHBvcnQgZG9lcyBub3QgaGF2ZSBh
bnkgY2hpbGRyZW5cbiIpOwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
