Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E494C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKEy0Y26G5biPnb/fC/BTWbkrZkEwwaqcJxVRYVbfEk=; b=nMiw+SugNb1PKK
	roWYh9UODswVi8V8bITJ8/bit6dJj7oEQyeHucffz+j8HOdZJ/xbsw8DCa6GKb0nVACE8XVXFMDDo
	XcDnPGDox0f/woNSF5wE+ZihdbjUjHqURmjkf5s7j+eTzVug0iJ6dzG/549haza+qKdPw9pM70Wdp
	z+mK/Y+DxjamYOm70eFX7Tl+RpTVt4iqJboC0S70edVIIjnrjq1bMlRxrYK2shLoHAkcTfC3Oee78
	FyQ24tDDQNNmt7Szg3D8SQbZmbGfuvqeg33Wgb0kCl/cl+6hh0gucNf0230pIT9lIX8EdTg0X2wi4
	M4J8FMn7oWPs2iR/LRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXPf-000000072KJ-0iyB;
	Mon, 26 Aug 2024 10:57:31 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXM9-000000071E8-23zE;
	Mon, 26 Aug 2024 10:53:55 +0000
Received: from mail.maildlp.com (unknown [172.19.163.252])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4WsnYB2s0kzhXc8;
	Mon, 26 Aug 2024 18:51:42 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 4FD851800A7;
	Mon, 26 Aug 2024 18:53:45 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemh500013.china.huawei.com (7.202.181.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 26 Aug 2024 18:53:43 +0800
Message-ID: <3e0ba029-d658-be41-77ac-6edec75762d1@huawei.com>
Date: Mon, 26 Aug 2024 18:53:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH -next RESEND 00/10] mtd: Use
 for_each_child_of_node_scoped()
Content-Language: en-US
To: Miquel Raynal <miquel.raynal@bootlin.com>
CC: <michal.simek@amd.com>, <richard@nod.at>, <vigneshr@ti.com>,
	<liang.yang@amlogic.com>, <neil.armstrong@linaro.org>,
	<khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <matthias.bgg@gmail.com>,
	<angelogioacchino.delregno@collabora.com>, <heiko@sntech.de>,
	<mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>, <wens@csie.org>,
	<jernej.skrabec@gmail.com>, <samuel@sholland.org>, <kees@kernel.org>,
	<gustavoars@kernel.org>, <linux@treblig.org>, <robh@kernel.org>,
	<u.kleine-koenig@pengutronix.de>, <erick.archer@gmx.com>,
	<christophe.jaillet@wanadoo.fr>, <val@packett.cool>,
	<christophe.kerello@foss.st.com>, <linux-mtd@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-amlogic@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <krzk@kernel.org>,
	<jic23@kernel.org>
References: <20240826094328.2991664-1-ruanjinjie@huawei.com>
 <20240826115213.389acaef@xps-13>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20240826115213.389acaef@xps-13>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_035353_815391_E785F56A 
X-CRM114-Status: UNSURE (   4.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDI0LzgvMjYgMTc6NTIsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gSGkgSmluamllLAo+
IAo+IHJ1YW5qaW5qaWVAaHVhd2VpLmNvbSB3cm90ZSBvbiBNb24sIDI2IEF1ZyAyMDI0IDE3OjQz
OjE4ICswODAwOgo+IAo+PiBVc2Ugc2NvcGVkIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9u
b2RlX3Njb3BlZCgpIHdoZW4gaXRlcmF0aW5nIG92ZXIKPj4gZGV2aWNlIG5vZGVzIHRvIG1ha2Ug
Y29kZSBhIGJpdCBzaW1wbGVyLgo+IAo+IFdoeSBpcyB0aGlzIGEgcmVzZW5kID8gRGlkIEkgbWlz
cyBhIHByZXZpb3VzIGl0ZXJhdGlvbj8KCkhpIE1pcXVlbCwKClRoZSBwcmV2aW91cyBjYyBsaXN0
IGhhcyBtaXNzaW5nIHNvbWUgZW50cmllcy4KCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
