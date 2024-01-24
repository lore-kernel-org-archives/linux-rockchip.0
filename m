Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F37ADC47DDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 00:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofgBXF8UG/rSAjYQf5pGBa0SukI0fIa5iVYl+P4V9B4=; b=cH8kFc2yitDs2z
	OSVtnCUgmTiB4wLArhXWx+boHhKWInHKSexu3Z7UwlH467kZ1bugXH3YJhgFrdixos9Mnzvv8pn0S
	zsP12EqK1Ntm7chkeBV7/e2qmdGpBCAh7NNTHmeSOa4aMBC0bOvErk70n4tsLDgWi11aH3hANxfza
	HwPpjB58K+J6VKyWdgvo6kThODJZbRXWCzJa2KbmZCR7eoahBQ0nndzMftHlXx/UJ/YjtL/1cgFBP
	B9mwhWrxejqM3T8bRmYf2h8iie4JpWNKmFD91SNwvMirT04HVMc+cC8pETx0YzuTIP8L1l3oqjxLO
	VDuGOSKHm0Qr28HMUo+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSR4P-000uem-2Q;
	Wed, 24 Jan 2024 00:24:45 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSR4L-000ubT-2I;
	Wed, 24 Jan 2024 00:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706055876;
	bh=1Ilef9mn2H+4EwNKZD3TwdLOWn1+suThiEC0pHeCWIw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EgLvktNb+xFV5neKx76QNUz8Z6PPviCRKinW7BzxHLZO1KWzI0qzXvuVuWr3naKRD
	 t7boXipAQId+6NrFpby105Ebs67n+knviJsu4/Xc6fXMVhJ4nSbJUZ+zQKyYq1hhpK
	 BGeeCn4z1XqWwBXo/DR3QlGnVEljBMqYSu9Wodipu9yWstwAWPEY1315bYR0I0a7Nl
	 zdsDTJzZXs56kUABSuzQUNzvZjSKxNh6uH7YufGKAI7mCJksKpTrooIRpZV2MoZZzo
	 cLAtdcb43RImuABmsrMTHbEIs52y0imxjhQanzf0k1OxWl6LAWGqL2oj0h5Klkh5LG
	 chz8vkBvwMabA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C780D3782066;
	Wed, 24 Jan 2024 00:24:35 +0000 (UTC)
Message-ID: <ba848de7-1a20-47ee-9013-10500eb3da00@collabora.com>
Date: Wed, 24 Jan 2024 02:24:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Content-Language: en-US
To: Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
 <298b7a10-2acb-4297-92cd-2ee4d890bfb2@rock-chips.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <298b7a10-2acb-4297-92cd-2ee4d890bfb2@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_162441_960217_20CBE60C 
X-CRM114-Status: GOOD (  13.77  )
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

SGkgQW5keSwKCk9uIDEvMjIvMjQgMTI6MTcsIEFuZHkgWWFuIHdyb3RlOgo+IEhpIENyaXN0aWFu
Ogo+IAo+IE9uIDEvMjAvMjQgMDM6MzgsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4gQWRk
IGRyaXZlciBmb3IgdGhlIFJvY2tjaGlwIEhETUkvZURQIFRYIENvbWJvIFBIWSBmb3VuZCBvbiBS
SzM1ODggU29DLgoKWy4uLl0KCj4+ICtzdGF0aWMgaW50IHJvY2tjaGlwX2hkcHR4X3BoeV9wb3dl
cl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IHJvY2tjaGlwX2hk
cHR4X3BoeSAqaGRwdHggPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4gK8KgwqDCoCBpbnQgYnVz
X3dpZHRoID0gcGh5X2dldF9idXNfd2lkdGgoaGRwdHgtPnBoeSk7Cj4+ICvCoMKgwqAgaW50IGJp
dF9yYXRlID0gYnVzX3dpZHRoICYgREFUQV9SQVRFX01BU0s7Cj4+ICvCoMKgwqAgaW50IHJldDsK
Pj4gKwo+PiArwqDCoMKgIGRldl9kYmcoaGRwdHgtPmRldiwgIiVzIGJ1c193aWR0aD0leCByYXRl
PSVkXG4iLAo+PiArwqDCoMKgwqDCoMKgwqAgX19mdW5jX18sIGJ1c193aWR0aCwgYml0X3JhdGUp
Owo+PiArCj4+ICvCoMKgwqAgcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChoZHB0eC0+
ZGV2KTsKPj4gK8KgwqDCoCBpZiAocmV0KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGhk
cHR4LT5kZXYsICJGYWlsZWQgdG8gcmVzdW1lIHBoeTogJWRcbiIsIHJldCk7Cj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gcmV0Owo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGlmIChidXNf
d2lkdGggJiBIRE1JX0VBUkNfTUFTSykKPj4gK8KgwqDCoMKgwqDCoMKgIGhkcHR4LT5lYXJjX2Vu
ID0gdHJ1ZTsKPj4gK8KgwqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoCBoZHB0eC0+ZWFyY19l
biA9IGZhbHNlOwo+PiArCj4+ICvCoMKgwqAgaWYgKGJ1c193aWR0aCAmIEhETUlfTU9ERV9NQVNL
KSB7Cj4gCj4gSGVyZSB1c2UgcGh5LT5hdHRycy5idXNfd2lkdGggdG8gaW5kaWNhdGUgZGlmZmVy
ZW50IHdvcmsgbW9kZSwKPiB3ZSBhbHNvIHVzZSB0aGUgc2FtZSBpbiBvdXIgYnNwLCBidXQgbm90
IHN1cmUgaWYgaXQgaXMgdGhlIGFwcHJvcHJpYXRlIHdheS4KClVuZm9ydHVuYXRlbHkgdGhlIFBI
WSBBUEkgZG9lc24ndCBzZWVtIHRvIHByb3ZpZGUgYSBjbGVhbiB3YXkgdG8gcGFzcwphcmJpdHJh
cnkgZGF0YS4gIFByb2JhYmx5IGZvciB0aGUgaW5pdGlhbCBzdXBwb3J0IHdlIGNvdWxkIHNpbXBs
eSBkcm9wCnRoZSAxMC1iaXQgY29sb3IgZGVwdGgsIEZSTCBhbmQgRUFSQyBmZWF0dXJlcy4KClRo
YW5rcywKQ3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
