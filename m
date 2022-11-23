Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 053F2C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gh9XMvVdXcWAWI0JD9uS90ZVqkSOXI1AddY1xz/9jQw=; b=koJDMQufTlpNHbK2UF1zE5s8iu
	Y0IU6HbdxewBDUxCfA2xPSCo0Lg9eQvhDnKrjtW6fBEmz9tppWk8jK+Y+f0U+jJuD7+E41Dt6NoQ7
	939Oa87eJ/t8jfIQmne+7CBlZoGWyRdTdFaJehG3v6xjPyHVIE3PvWkEPhk2C6qWElCkeLEb9z6Il
	X0Qx/dkKA0009VxArDNbl1zOFmxEzOLmysJ8iDSmor2Q/Zowp+sMesytqb1g+1Vh8NI7WVd9giw0G
	ypqvn4dxhQlTLmJWM2ctNWynX9NIdukOjgQ4uv6c0jpiGdCpc7RXrdPdz6Y9kG2TlRIbJZmxj6drW
	Ta/bNV+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlwh-00FsqH-FG; Wed, 23 Nov 2022 09:21:31 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlwL-00Fsgd-N5; Wed, 23 Nov 2022 09:21:11 +0000
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NHFwL6JCWz15MqQ;
	Wed, 23 Nov 2022 17:20:34 +0800 (CST)
Received: from [10.67.110.112] (10.67.110.112) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 17:21:05 +0800
Subject: Re: [PATCH] clk: rockchip: Fix memory leak in
 rockchip_clk_register_pll()
To: Heiko Stuebner <heiko@sntech.de>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <mturquette@linaro.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20221123032237.64567-1-xiujianfeng@huawei.com>
 <6301679.31r3eYUQgx@phil>
From: xiujianfeng <xiujianfeng@huawei.com>
Message-ID: <648ff5d2-9a52-3a73-46b8-a903315202d9@huawei.com>
Date: Wed, 23 Nov 2022 17:21:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <6301679.31r3eYUQgx@phil>
X-Originating-IP: [10.67.110.112]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_012109_948804_DAB62D80 
X-CRM114-Status: GOOD (  15.82  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgrU2iAyMDIyLzExLzIzIDE3OjAxLCBIZWlrbyBTdHVlYm5lciDQtLXAOgo+IEhpLAo+IAo+
IEFtIE1pdHR3b2NoLCAyMy4gTm92ZW1iZXIgMjAyMiwgMDQ6MjI6MzcgQ0VUIHNjaHJpZWIgWGl1
IEppYW5mZW5nOgo+PiBJZiBjbGtfcmVnaXN0ZXIoKSBmYWlscywgQHBsbC0+cmF0ZV90YWJsZSBt
YXkgaGF2ZSBhbGxvY2F0ZWQgbWVtb3J5IGJ5Cj4+IGttZW1kdXAoKSwgc28gaXQgbmVlZHMgdG8g
YmUgZnJlZWQsIG90aGVyd2lzZSB3aWxsIGNhdXNlIG1lbW9yeSBsZWFrCj4+IGlzc3VlLCB0aGlz
IHBhdGNoIGZpeGVzIGl0Lgo+Pgo+PiBGaXhlczogOTBjNTkwMjU0MDUxICgiY2xrOiByb2NrY2hp
cDogYWRkIGNsb2NrIHR5cGUgZm9yIHBsbCBjbG9ja3MgYW5kIHBsbCB1c2VkIG9uIHJrMzA2NiIp
Cj4+IFNpZ25lZC1vZmYtYnk6IFhpdSBKaWFuZmVuZyA8eGl1amlhbmZlbmdAaHVhd2VpLmNvbT4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jIHwgMSArCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGstcGxsLmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcGxsLmMKPj4g
aW5kZXggNGI5ODQwOTk0Mjk1Li5kYzRjZTI4MGQxMjUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1wbGwuYwo+PiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGst
cGxsLmMKPj4gQEAgLTEyMDAsNiArMTIwMCw3IEBAIHN0cnVjdCBjbGsgKnJvY2tjaGlwX2Nsa19y
ZWdpc3Rlcl9wbGwoc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4LAo+PiAgIAljbGtf
dW5yZWdpc3RlcihtdXhfY2xrKTsKPj4gICAJbXV4X2NsayA9IHBsbF9jbGs7Cj4+ICAgZXJyX211
eDoKPj4gKwlrZnJlZShwbGwtPnJhdGVfdGFibGUpOwo+IAo+IEkgdGhpbmsgdGhpcyBmcmVlIG5l
ZWRzIHRvIGdvIHVwIHRvIHRoZSBlcnJfcGxsIGJsb2NrLgo+IAo+IEluIHRoZSBjb2RlIGl0IGlz
Cj4gLSBjbGtfcmVnaXN0ZXIocGxsX211eC0+aHcpICAgLT4gZXJyX211eAo+IC0ga21lbWR1cAo+
IC0gY2xrX3JlZ2lzdGVyKHBsbC0+aHcpCS0+IGVycl9wbGwKPiAKPiBzbyB0aGUga2ZyZWUgZm9y
IHRoZSByYXRlLXRhYmxlIHNob3VsZCBwcm9iYWJseQo+IGJlIGF0Cj4gCWVycl9wbGw6Cj4gCQlr
ZnJlZShyYXRlX3RhYmxlKQoKVGhhbmtzIGZvciB5b3UgcmV2aWV3LCBJIHRoaW5rIGhlcmUgc2hv
dWxkIGJlIGtmcmVlKHBsbC0+cmF0ZV90YWJsZSkgCmluc3RlYWQgb2Yga2ZyZWUocmF0ZV90YWJs
ZSksIGJlY2F1c2UgQHJhdGVfdGFibGUgaXMgdGhlIGludHB1dCBwYXJhbSAKd2hpbGUgcGxsLT5y
YXRlX3RhYmxlIGlzIHRoZSBuZXcgYWxsb2NhdGVkIG1lbW9yeS4KCnYyIGFscmVhZHkgc2VudC4K
Cj4gCQljbGtfdW5yZWdpc3RlcihtdXhfY2xrKTsKPiAJCS4uLgo+IAo+IAo+IEhlaWtvCj4gCj4+
ICAgCWtmcmVlKHBsbCk7Cj4+ICAgCXJldHVybiBtdXhfY2xrOwo+PiAgIH0KPj4KPiAKPiAKPiAK
PiAKPiAKPiAuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
