Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E61CE7B04
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 02:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajBPAkVaa72c3n8E9iwT387Gt0LtT9umeE735itLSYs=; b=twe7Bp2b3mwZod
	iH0+bPBZBl2U81jSWm0qCVgXSUW+gOCMpG1JtbGfbKsHfP0oVoOxYpCfce4fYkxxb81DbjZe9Q+PS
	uBr8yEGwBoqE3XA6iN+2QJVu7UiEEZvrQGxQJgn15N38yjhC7Im9MC+cayh09pBE4tJ6Yi36+DFsl
	upixxeC1QUJ6GfSNpapq9mBQn4b57d+v2HjSMd8simT6LJKmvNScjpxp66OupESqYdBh/lYxI/Srx
	69w4D4NfDHVnm3Dee5wRXv2apx2nO5sUacpGKHzNUs5B9LJFU4+5jDv4xNHG03eX6E4agzkp9igaV
	T7U8bIEmz+1xFJqbW7yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smld8-0000000E9Ax-4ARL;
	Sat, 07 Sep 2024 02:56:54 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlc7-0000000E94c-0fZS;
	Sat, 07 Sep 2024 02:55:53 +0000
Received: from mail.maildlp.com (unknown [172.19.88.234])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4X0yPv1pjQz1j80V;
	Sat,  7 Sep 2024 10:55:15 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id CDF491400CF;
	Sat,  7 Sep 2024 10:55:38 +0800 (CST)
Received: from [10.67.111.176] (10.67.111.176) by
 kwepemd500012.china.huawei.com (7.221.188.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.34; Sat, 7 Sep 2024 10:55:37 +0800
Message-ID: <852686ba-7578-4a1c-ae65-df7162e4e8bc@huawei.com>
Date: Sat, 7 Sep 2024 10:55:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 00/12] net: Convert using
 devm_clk_get_enabled()/devm_clk_get_optional_enabled()
To: Jeff Johnson <quic_jjohnson@quicinc.com>, <florian.fainelli@broadcom.com>,
	<andrew@lunn.ch>, <olteanv@gmail.com>, <davem@davemloft.net>,
	<edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
	<wens@csie.org>, <jernej.skrabec@gmail.com>, <samuel@sholland.org>,
	<heiko@sntech.de>, <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
	<hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
	<mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
	<ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>, <kvalo@kernel.org>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>
CC: <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-wireless@vger.kernel.org>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <6f3f79f2-5755-4286-98f6-9950e7e994c8@quicinc.com>
From: Li Zetao <lizetao1@huawei.com>
In-Reply-To: <6f3f79f2-5755-4286-98f6-9950e7e994c8@quicinc.com>
X-Originating-IP: [10.67.111.176]
X-ClientProxiedBy: dggpeml500004.china.huawei.com (7.185.36.140) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_195551_870458_EB74AB93 
X-CRM114-Status: GOOD (  10.27  )
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

SGksCgrlnKggMjAyNC85LzcgNzoxNywgSmVmZiBKb2huc29uIOWGmemBkzoKPiBPbiA4LzMwLzIw
MjQgNzoxMyBQTSwgTGkgWmV0YW8gd3JvdGU6Cj4+IFRoZXJlIGFyZSBtYW55IGV4YW1wbGVzWzFd
WzJdIG9mIGNsayByZXNvdXJjZSBsZWFrYWdlIGluIExUUy4gVGhlCj4+IHJlYXNvbiBpcyB0aGF0
IGRldmVsb3BlcnMgbmVlZCB0byBtYWludGFpbiB0aGUgYWxsb2NhdGlvbiBhbmQgcmVsZWFzZQo+
PiBvZiBjbGsgcmVzb3VyY2VzIHRoZW1zZWx2ZXMsIGJ1dCB0aGlzIHdpbGwgaW5jcmVhc2UgdGhl
IGJ1cmRlbiBvbgo+PiBkZXZlbG9wZXJzLiBVc2luZyB0aGUgQVBJIHJlbGF0ZWQgdG8gZGV2bV9j
bGtfZ2V0XypfZW5hYmxlIGVuc3VyZXMKPj4gdGhhdCB0aGUgbGlmZSBjeWNsZSBvZiBjbGsgaXMg
Y29uc2lzdGVudCB3aXRoIHRoYXQgb2YgdGhlIGRldmljZSwKPj4gcmVkdWNpbmcgdGhlIHJpc2sg
b2YgdW5yZWxlYXNlZCByZXNvdXJjZXMgbGlrZSBjbGsuCj4+Cj4+IFNldmVyYWwgb3RoZXIgZGV2
ZWxvcGVycyBhcmUgYWxzbyB3b3JraW5nIG9uIGNvbnZlcnRpbmcgdG8gbW9yZQo+PiBzZWN1cmUg
aW50ZXJmYWNlcywgYW5kIHRoaXMgcGF0Y2ggc2V0IGlzIGluIHByaW5jaXBsZSB0aGUgc2FtZSBh
cwo+PiB0aGVpcnMuCj4gCj4gLi4uCj4gCj4+ICAgZHJpdmVycy9uZXQvZHNhL2JjbV9zZjIuYyAg
ICAgICAgICAgICAgICAgICAgIHwgMjggKystLS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
YWxsd2lubmVyL3N1bjRpLWVtYWMuYyAgIHwgMTMgKy0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvYXJjL2VtYWNfcm9ja2NoaXAuYyAgICAgIHwgMzQgKystLS0tLQo+PiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2V0aG9jLmMgICAgICAgICAgICAgICAgICB8IDE4ICsrLS0KPj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9mYXJhZGF5L2Z0Z21hYzEwMC5jICAgICAgfCAyNyArKy0tLQo+PiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2hpc2lsaWNvbi9oaXNpX2ZlbWFjLmMgICB8IDE3ICstLS0KPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9sYW50aXFfeHJ4MjAwLmMgICAgICAgICAgfCAxNyArLS0t
Cj4+ICAgLi4uL3N0bWljcm8vc3RtbWFjL2R3bWFjLWR3Yy1xb3MtZXRoLmMgICAgICAgIHwgOTgg
KysrKy0tLS0tLS0tLS0tLS0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N1bnBsdXMvc3Bs
MnN3X2RyaXZlci5jICB8IDE4ICstLS0KPj4gICAuLi4vbmV0L2V0aGVybmV0L3hpbGlueC94aWxp
bnhfYXhpZW5ldF9tYWluLmMgfCAxNSArLS0KPj4gICAuLi4vbmV0L3dpcmVsZXNzL21pY3JvY2hp
cC93aWxjMTAwMC9zZGlvLmMgICAgfCAxMCArLQo+PiAgIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21p
Y3JvY2hpcC93aWxjMTAwMC9zcGkuYyB8ICA1ICstCj4gCj4gbm90ZSB0aGUgd2lmaSBkcml2ZXIg
Y2hhbmdlcyBnbyB0aHJvdWdoIHRoZSB3aXJlbGVzcyB0cmVlIGFuZCBub3QgdGhlIG5ldCB0cmVl
Cj4gc28gdGhvc2Ugc2hvdWxkIGJlIHNwbGl0IG91dCBzZXBhcmF0ZWx5CgpJIGhhdmUgc2VwYXJh
dGVkIHRoZSB3aWZpIHJlbGF0ZWQgcGF0Y2hlcyBhbmQgc2VudCB0aGVtIHRvIHRoZSBjb21tdW5p
dHk6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDkwMzExMDIwNS40MTI3NzA2LTEt
bGl6ZXRhbzFAaHVhd2VpLmNvbS8KPiAKPiAKVGhhbmtzLApMaSBaZXRhby4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
