Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC97CD37BC
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 01:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqpvxELc2iHXx8vkuakeKVjXh99KdZbGPhvSlBYe9hY=; b=HkipS9ary45R2J
	0n/CioCac7a9PCMeRgcVBnsRNF5vIWViv0j7sY9jIrWojO52mIThKttSRzWdbONGDXfeexfYARpz8
	mKS2TF5DLCF3m3FlCvoimW53aR8ppuDtLfixT1nPviKnkofguVk73FQ98CQWpW3eWLQCA3FeiUepg
	ijPLDS7pJ84aJJfL4kqxqFal+Sis0Im3/BSSgK2+EbWZgDNJwcU0S7R8iuYPeQNxRomw12DsQ6K2+
	e0o5LrP+oaPBgdb7oXi+oyln7sKNgBPw/5DloSlKXnWidCzZQRUzhJ3qWA1eSiOUD/kzT4aAjp/Qq
	Zq3hJ7WIg70q/5AsUBAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sleof-00000002U5j-4ANd;
	Wed, 04 Sep 2024 01:28:13 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slenk-00000002TpZ-1wKl;
	Wed, 04 Sep 2024 01:27:18 +0000
Received: from mail.maildlp.com (unknown [172.19.88.105])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Wz4Tv11ddz69LX;
	Wed,  4 Sep 2024 09:22:11 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 35A5D140158;
	Wed,  4 Sep 2024 09:27:08 +0800 (CST)
Received: from [10.67.111.176] (10.67.111.176) by
 kwepemd500012.china.huawei.com (7.221.188.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.34; Wed, 4 Sep 2024 09:27:07 +0800
Message-ID: <b4f6e9ae-bda8-4496-82a7-de70004e2f29@huawei.com>
Date: Wed, 4 Sep 2024 09:27:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 09/12] net: ethernet: sunplus: Convert using
 devm_clk_get_enabled() in spl2sw_probe()
To: Jakub Kicinski <kuba@kernel.org>
CC: <florian.fainelli@broadcom.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
	<davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
	<wens@csie.org>, <jernej.skrabec@gmail.com>, <samuel@sholland.org>,
	<heiko@sntech.de>, <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
	<hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
	<mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
	<ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>, <kvalo@kernel.org>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
	<netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-wireless@vger.kernel.org>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-10-lizetao1@huawei.com>
 <20240903151649.1b466145@kernel.org>
From: Li Zetao <lizetao1@huawei.com>
In-Reply-To: <20240903151649.1b466145@kernel.org>
X-Originating-IP: [10.67.111.176]
X-ClientProxiedBy: dggpeml100007.china.huawei.com (7.185.36.28) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_182716_747455_1A676A07 
X-CRM114-Status: UNSURE (   4.76  )
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

SGksCgrlnKggMjAyNC85LzQgNjoxNiwgSmFrdWIgS2ljaW5za2kg5YaZ6YGTOgo+IE9uIFNhdCwg
MzEgQXVnIDIwMjQgMTA6MTM6MzEgKzA4MDAgTGkgWmV0YW8gd3JvdGU6Cj4+ICsJY29tbS0+Y2xr
ID0gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoJnBkZXYtPmRldiwgTlVMTCk7Cj4gCj4gWW91IGNhbiBy
ZW1vdmUgY2xrIGZyb20gdGhlIGRyaXZlciBzdHJ1Y3Qgbm93LgpJIGRvbuKAmXQgcXVpdGUgdW5k
ZXJzdGFuZCB3aHkgY2xrIGNhbiBiZSByZW1vdmVkIGZyb20gdGhlIGRyaXZlciBzdHJ1Y3QsIApt
YXliZSBJIG1pc3NlZCBzb21lIGltcG9ydGFudCBkaXNjdXNzaW9uIGluZm9ybWF0aW9uIGluIHRo
ZSBjb21tdW5pdHksIApwbGVhc2UgbGV0IG1lIGtub3csIHRoYW5rIHlvdS4KPiBQbGVhc2UgY2hl
Y2sgaWYgdGhlIHNhbWUgYXBwbGllcyB0byBvdGhlciBwYXRjaGVzLgoKVGhhbmtzLApMaSBaZXRh
by4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
