Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A571C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:49:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25CC361352
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:49:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 25CC361352
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVA6YF/ghXIeIMr2YTAuNfn5U+rYIEOowk8CTKNggio=; b=vDCpWFbvtPExdX
	Ws77ZnUVXML6XNKrK9vSsD3TdKPt4xcIVcFZcfNVmQoOMElRBTLLeWKj4H4qtn4ZcUhgPMdyotd2z
	NO9llA5n1bajhFyLxYNQZMpzJ7xWyEQnjbrRwmqXAfh7lKoyGgYqPox2ESvdIa9f6sHbteBdN8B3N
	Gbfw8yI3jBE5BpOkpmxLaptTuc+TX1JpvG7RMmBLPRSl4vxYWyHZu6zKP6tEaxekIRvkzxIXMCBZJ
	xNSuG8miX+pjyM8dznCFgpaQJ6BWbHpUCVs+3psUmv6erubDtCqzR4/JmjkuYcmeY/0ZhbO6Fj/B9
	M7BEaeSWUAfuPftlJjcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvfqJ-007DUs-8R; Tue, 22 Jun 2021 12:49:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvfq6-007DSl-Ao; Tue, 22 Jun 2021 12:49:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C16AE1F41707
Message-ID: <326b03302aeaec817f675e6e0523eb8060bf2f67.camel@collabora.com>
Subject: Re: [PATCH v3 1/8] media: hantro: Trace hevc hw cycles performance
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 22 Jun 2021 09:48:49 -0300
In-Reply-To: <41682f40-3b5e-e21c-d75e-f57f8f3310da@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-2-benjamin.gaignard@collabora.com>
 <418311dac48d3a29b4fe9e363f7d4e82c360f586.camel@collabora.com>
 <41682f40-3b5e-e21c-d75e-f57f8f3310da@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_054914_537799_37768E67 
X-CRM114-Status: UNSURE (   8.61  )
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

T24gVHVlLCAyMDIxLTA2LTIyIGF0IDE0OjIzICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKWy4uXQo+ID4gPiArCj4gPiA+ICtUUkFDRV9FVkVOVChoYW50cm9faGV2Y19wZXJmLAo+ID4g
PiArwqDCoMKgwqDCoMKgwqBUUF9QUk9UTyhzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LCB1MzIgaHdf
Y3ljbGVzKSwKPiA+ID4gKwo+ID4gPiArwqDCoMKgwqDCoMKgwqBUUF9BUkdTKGN0eCwgaHdfY3lj
bGVzKSwKPiA+ID4gKwo+ID4gPiArwqDCoMKgwqDCoMKgwqBUUF9TVFJVQ1RfX2VudHJ5KAo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX19maWVsZChpbnQsIG1pbm9yKQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX19maWVsZCh1MzIsIGh3X2N5Y2xlcykK
PiA+ID4gK8KgwqDCoMKgwqDCoMKgKSwKPiA+ID4gKwo+ID4gPiArwqDCoMKgwqDCoMKgwqBUUF9m
YXN0X2Fzc2lnbigKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9fZW50cnkt
Pm1pbm9yID0gY3R4LT5maC52ZGV2LT5taW5vcjsKPiA+IFRyYWNraW5nIHBlcmZvcm1hbmNlIHBl
ciBtaW5vciBkb2Vzbid0IHNlZW0gdXNlZnVsLAo+ID4gd2UnZCBsaWtlIHRvIHRyYWNrIHBlci1m
ZCAoaS5lLiBwZXIgY29udGV4dCkuCj4gCj4gVGhpcyBwYXJ0IG9mIHRoZSBkcml2ZXIgZG9lc24n
dCBrbm93IGZvciB3aGljaCBmZCB0aGUgZGVjb2Rpbmcgam9iIGlzIGRvbmUKPiBzbyBpbXBvc3Np
YmxlIHRvIGFkZCBpdCB0aGVyZS4KPiAKCk1heWJlIHlvdSBjYW4gZXhwbG9yZSB1c2luZyBzdHJ1
Y3QgdjRsMl9tMm1fY3R4LgpUaGVyZSdzIGFuIFJGQyB3aGVyZSB0aGlzIGlzIGRpc2N1c3NlZDoK
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjEwNTE3MTgzODAxLjEyNTU0
OTYtMS1lbWlsLmwudmVsaWtvdkBnbWFpbC5jb20vCgpLaW5kbHksCkV6ZXF1aWVsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
