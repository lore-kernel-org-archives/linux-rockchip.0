Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9420CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dh1VXBX/0lRhamMaBX01B99BUWgGFTBr/ft2EsHDEVY=; b=0dPUvvhRCguc04
	L0PCLcJY5I94B8SARifw8tLbyCLb69lHsSP/lOa9Isuv/sO87mJi6pUvS6/5GN9g5UFC7dlK4RENr
	0zlOgfBWlQvLXUyQ5lB4/7NvHFE/QrvRoS4jKCyQXsnNQ0n7/4XnkKjEF9n3Puzmqh/0rMbVeZt8C
	w31VD1Fumf7D9r6dEFXCo0PXf+Kfy95kVYuP9Girt0VbsU9dopCulkiaMSFF8QBGxbhMNuotw0k49
	gc0/0GtdljhI4aV1v1qAHfgAV2B+UrZF004r4DZM+aTFQY71k/nasa1iEyImumHTlmF3SV2VV3sr5
	cFrDEzpp/X0FRnDxm0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRAZ-0000000HQIj-2Fgm;
	Tue, 03 Sep 2024 10:53:55 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slR9d-0000000HQ5i-0Isu;
	Tue, 03 Sep 2024 10:52:58 +0000
Received: from mail.maildlp.com (unknown [172.19.162.254])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Wyj9k0Zx5z145xm;
	Tue,  3 Sep 2024 18:51:54 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 262C31800FE;
	Tue,  3 Sep 2024 18:52:50 +0800 (CST)
Received: from [10.67.111.176] (10.67.111.176) by
 kwepemd500012.china.huawei.com (7.221.188.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.34; Tue, 3 Sep 2024 18:52:49 +0800
Message-ID: <021d4b46-a559-4047-a6ca-98e30fd3e6b3@huawei.com>
Date: Tue, 3 Sep 2024 18:52:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 11/12] wifi: wilc1000: Convert using
 devm_clk_get_optional_enabled() in wilc_sdio_probe()
To: Kalle Valo <kvalo@kernel.org>
CC: <florian.fainelli@broadcom.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
	<davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
	<pabeni@redhat.com>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
	<samuel@sholland.org>, <heiko@sntech.de>, <yisen.zhuang@huawei.com>,
	<salil.mehta@huawei.com>, <hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>,
	<joabreu@synopsys.com>, <mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
	<ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
	<netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-wireless@vger.kernel.org>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-12-lizetao1@huawei.com> <87a5gqko2q.fsf@kernel.org>
From: Li Zetao <lizetao1@huawei.com>
In-Reply-To: <87a5gqko2q.fsf@kernel.org>
X-Originating-IP: [10.67.111.176]
X-ClientProxiedBy: dggpeml500005.china.huawei.com (7.185.36.59) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_035257_395281_8CE44B4F 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
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

SGksCgrlnKggMjAyNC85LzMgMDozOCwgS2FsbGUgVmFsbyDlhpnpgZM6Cj4gTGkgWmV0YW8gPGxp
emV0YW8xQGh1YXdlaS5jb20+IHdyaXRlczoKPiAKPj4gVXNlIGRldm1fY2xrX2dldF9vcHRpb25h
bF9lbmFibGVkKCkgaW5zdGVhZCBvZiBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoKSArCj4+IGNsa19w
cmVwYXJlX2VuYWJsZSgpLCB3aGljaCBjYW4gbWFrZSB0aGUgY2xrIGNvbnNpc3RlbnQgd2l0aCB0
aGUgZGV2aWNlCj4+IGxpZmUgY3ljbGUgYW5kIHJlZHVjZSB0aGUgcmlzayBvZiB1bnJlbGVhc2Vk
IGNsayByZXNvdXJjZXMuIFNpbmNlIHRoZQo+PiBkZXZpY2UgZnJhbWV3b3JrIGhhcyBhdXRvbWF0
aWNhbGx5IHJlbGVhc2VkIHRoZSBjbGsgcmVzb3VyY2UsIHRoZXJlIGlzCj4+IG5vIG5lZWQgdG8g
ZXhlY3V0ZSBjbGtfZGlzYWJsZV91bnByZXBhcmUoY2xrKSBvbiB0aGUgZXJyb3IgcGF0aCwgZHJv
cAo+PiB0aGUgY2xrX2Rpc2FibGVfdW5wcmVwYXJlIGxhYmVsLCBhbmQgdGhlIG9yaWdpbmFsIGVy
cm9yIHByb2Nlc3MgY2FuIGNoYW5nZQo+PiB0byBkaXNwb3NlX2lycS4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogTGkgWmV0YW8gPGxpemV0YW8xQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMv
bmV0L3dpcmVsZXNzL21pY3JvY2hpcC93aWxjMTAwMC9zZGlvLmMgfCAxMCArKystLS0tLS0tCj4+
ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiB3
aWZpIHBhdGNoZXMgKHBhdGNoZXMgMTEgYW5kIDEyKSBnbyB2aWEgd2lyZWxlc3MtbmV4dCwgcGxl
YXNlIHN1Ym1pdAo+IHRob3NlIHNlcGFyYXRlbHkuCk9rLCBJIHdpbGwgcmVzZW5kIHRob3NlIHNl
cGFyYXRlbHkuCj4gCgpUaGFua3MsCkxpIFpldGFvLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
