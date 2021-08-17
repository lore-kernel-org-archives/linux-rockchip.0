Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C165FC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:39:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55F1E600D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 03:39:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 55F1E600D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ix3hLz66fcs5Qs+k9oPvw7qlm7Ak0SEmm3uTXXX0h1Q=; b=Uii94u3szbrV3m
	9UQPehQrNwc0TXIS1j6jsoHIuPNtPtMEtb0ozwEyhSbOeLK1qkv4oBXoF8e7QaPIYilCoE99kCv4g
	iUF9l3zChVPAAYqI6AUF4wWggDFBQWmNEvJn168MoCCi2MbkQ7luSa3bwShAi88yLdwSvHiCRyesQ
	1odWi68wO1uuOTIHDqAFZhAAyoUvpR6/iyXljQKy1oCzieVKG2jCrYHIhQtTRcnqunkco/qNf+eWJ
	Xlgm34gw+1/cc06zS2xZH+q0wdYFjM9SiuaE4VVHFfgHctNgUwgPIInZMzIEokFyeaaLyAy5DLBjd
	1RIiUD+LWMhHFJ0d37nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFpx1-000ydB-QK; Tue, 17 Aug 2021 03:39:43 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFpc8-000vIE-HW
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 03:18:10 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 042D963F;
 Tue, 17 Aug 2021 11:17:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from desktop-sg5v5ea (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26932T140040732657408S1629170276240462_; 
 Tue, 17 Aug 2021 11:17:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8ec111e5d84d0c184ab01b7c44e2c098>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Date: Tue, 17 Aug 2021 11:17:55 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Mark Brown" <broonie@kernel.org>
Cc: lgirdwood <lgirdwood@gmail.com>, ulf.hansson <ulf.hansson@linaro.org>, 
 "Lee Jones" <lee.jones@linaro.org>, 
 "Zhang Changzhong" <zhangchangzhong@huawei.com>, 
 =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>
Subject: Re: Re: [PATCH 2/4] regulator: core: notify regulator enable with the
 voltage value
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>, 
 <20210816032003.1162779-3-jay.xu@rock-chips.com>, 
 <20210816120059.GA4253@sirena.org.uk>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202108171117556125066@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_201808_883607_D40A8C27 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksIE1hcmsKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBNb24sIEF1
ZyAxNiwgMjAyMSBhdCAxMToyMDowMUFNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+Cj4+ICsJ
cmV0ID0gX3JlZ3VsYXRvcl9nZXRfdm9sdGFnZShyZGV2KTsKPj4gKwlpZiAocmV0IDwgMCkKPj4g
KwlyZXQgPSAwOwo+PiArCj4+wqAgX25vdGlmaWVyX2NhbGxfY2hhaW4ocmRldiwgUkVHVUxBVE9S
X0VWRU5UX0VOQUJMRSwKPj4gLQnCoMKgwqDCoCBOVUxMKTsKPj4gKwnCoMKgwqDCoCAmcmV0KTsK
Pgo+VGhpcyBpcyBnb2luZyB0byBiZSByZWFsbHkgZXhwZW5zaXZlIGZvciBkZXZpY2VzIHdpdGhv
dXQgYSBjYWNoZSBhbmQKPml0J3MgZ29pbmcgdG8gYmUgKnZlcnkqIHJhcmVseSB1c2VkIGlmIGV2
ZXIuIAoKSG93IGFib3V0IHRvIG9ubHkgdG8gbm90aWZ5IHRoZSBFVkVOVF9FTkFCTEUgd2l0aG91
dCBnZXQgdm9sdGFnZSwgdGhlbiBkcml2ZXIgd2hvIGNhcmUgYWJvdXQgdGhpcyBldmVudApjb3Vs
ZCBnZXQgdGhlIHZvbHRhZ2UgaXRzZWxmID8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
