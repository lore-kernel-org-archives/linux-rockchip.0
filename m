Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 835DAC48BE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 15:51:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DBC2613DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 15:51:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DBC2613DF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85Advcl1eOVFEyx04cazXe1xYNNXZ19vLlNYIAaZ6W0=; b=Eqglc13W9pXRhL
	H1xPOmx9hBXZpSSXNEyXEmHfKo2hBlfFNJUtWHuMWZoTbD12Zx6qPo7L2eh2+KbpjTy2/Q2JStpWV
	U2xHoZX/cKKBcuXmN8pNzkGnRcf5x3NyzaLrlHK+foho8Rsv//b+UDpGbXUMQso6NALP4T5zCFDw4
	EV9XSkiBTQHWPkzgLXEcqiKEzV2QtxGvaCIcdt5PUTTCMYaCaaXAOWrH9EDplofAvXg+Mvj7YPodG
	HKzfCISbn81VwaBL7pRdUGdiTzSaB3ZnjK5/Tb0tk/+OVRWJnt3SoMJrPsiabQ4/homhisRBrGGk1
	agDRd5msXtPysiCGMs+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrjRE-005rmi-ND; Fri, 11 Jun 2021 15:51:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrjR1-005r9Y-Ol; Fri, 11 Jun 2021 15:51:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0B6ED1F447EC
Message-ID: <09885c89dd37ca56305630c96da88333e81a2f25.camel@collabora.com>
Subject: Re: [PATCH v2 06/12] media: hantro: add support for Rockchip RK3066
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Alex Bee <knaerzche@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Rob Herring <robh+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,  Lee Jones
 <lee.jones@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 11 Jun 2021 12:50:50 -0300
In-Reply-To: <20210527154455.358869-7-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-7-knaerzche@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_085103_964105_04F29660 
X-CRM114-Status: GOOD (  13.86  )
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

SGkgQWxleCwKCk9uIFRodSwgMjAyMS0wNS0yNyBhdCAxNzo0NCArMDIwMCwgQWxleCBCZWUgd3Jv
dGU6Cj4gUkszMDY2J3MgVlBVIElQIGJsb2NrIGlzIHRoZSBwcmVkZWNlc3NvciBmcm9tIHdoYXQg
UkszMjg4IGhhcy4KPiBUaGUgaGFyZHdhcmUgZGlmZmVyZW5jZXMgYXJlOgo+IMKgIC0gc3VwcG9y
dHMgZGVjb2RpbmcgZnJhbWUgc2l6ZXMgdXAgdG8gMTkyMHgxMDg4IG9ubHkKPiDCoCAtIGRvZXNu
J3QgaGF2ZSB0aGUgJ0cxX1JFR19TT0ZUX1JFU0VUJyByZWdpc3Rlcgo+IMKgwqDCoCAocmVxdWly
ZXMgYW5vdGhlciAucmVzZXQgY2FsbGJhY2sgZm9yIGhhbnRyb19jb2RlY19vcHMsCj4gwqDCoMKg
wqAgc2luY2Ugd3JpdGluZyB0aGlzIHJlZ2lzdGVyIHdpbGwgcmVzdWx0IGluIG5vbi13b3JraW5n
Cj4gwqDCoMKgwqAgSVAgYmxvY2spCj4gwqAgLSBoYXMgb25lIEFDTEsvSENMSyBwZXIgdmRwdS92
ZXB1Cj4gwqAgLSBBQ0xLcyBjYW4gYmUgY2xvY2tlZCB1cCB0byAzMDAgTUh6IG9ubHkKCkhhdmUg
eW91IHRlc3RlZCB0cnlpbmcgNDAwIE1IeiAob3IgbW9yZSkgPwoKPiDCoCAtIG5vIE1NVQo+IMKg
wqDCoCAobm8gY2hhbmdlcyByZXF1aXJlZDogQ01BIHdpbGwgYmUgdHJhbnNwYXJlbnRseSB1c2Vk
KQo+IAo+IEFkZCBhIG5ldyBSSzMwNjYgdmFyaWFudCB3aGljaCByZWZsZWN0IHRoaXMgZGlmZmVy
ZW5jZXMuIFRoaXMgdmFyaWFudAo+IGNhbiBiZSB1c2VkIGZvciBSSzMxODggYXMgd2VsbC4KPiAK
ClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+CgpU
aGFua3MhCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
