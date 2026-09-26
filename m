Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88AB3C98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 07:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIvnu/gckMeAeMq1JZtHsX38O/qAgM6N9WeI2wysZQ0=; b=z64pai+agHmzJM
	bRlORjHmX8J6ReBnnI/mkmZ12CSlm5+8HsuBf7PAt8pRGFo4ILD684wQRelas1uBDLn3G/+195F7c
	QCHxptLRkRNPnEkHc3G9jHFkvniK+9CtbvGaTg/lqpxLJRtYEKZKnEHi17PRUshPA7Gu/0cXjSLGh
	skCyVR/jxUBJYOKaAZLUaJAUclr3geQIjkclVDwKC3SKXmu+JWE8xPd0aaPXojZCVMGGXkvisaB42
	cHHtntPC82Ht2Yy7UkftBQDPNEBu+FCpSlfYTjmPFN8iCcu/wCuW/r2J9lcrXQ3gaSHUIEUDtpuTn
	ApBmd4vYxCFVHmbhVVBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANCM-0000000F861-3oYP;
	Sat, 26 Sep 2026 07:51:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANCL-0000000F85O-0k1T;
	Sat, 26 Sep 2026 07:51:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CF05B4363D;
	Sat, 26 Sep 2026 07:51:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 560021F000FF;
	Sat, 26 Sep 2026 07:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409112;
	bh=2ZjpK0JF2cbHk95sp5z75srSxbkoRMjDiFL2rI+O++w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ROLQiP8aWqQQ69Hn/WkAeq1snYbT8drZS+6o19Ia14LkQiCjM1vr1ZvQfzKYQTXKK
	 EqUIJHbdRUlY4NSV8Z1FeoNE23zwF0QzFXFH9VFg51Ca/WyPCQ2PD6XHE9UxBEbRoc
	 IVi5PG/Wy9e8NixqFQi/nBnLIh3b7LEo3EkzntQrAWnNeMoHhndkR1kOmsAEqEzWql
	 xEeKz0leX6MpQYE+IiPN28mfQpOy2jep2cTrTjQ9qSLtclI6cbtASZMercHGtL8eJ2
	 tgN6SUC2+OO2qB7f0fQU9N5Yt7I81BSJ7C36SMn4DEbyOjJyjA1U3EtOPglZpDgibS
	 vAfMT+VeamWAQ==
Date: Sat, 26 Sep 2026 09:51:37 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v16 4/6] usb: dwc3: rockchip: support PHY reset
 notifications
Message-ID: <totpimqouuaa4lysn57ga36y5u7htss5kju26s3yi3ey4d2vmr@4vpymy6enqhi>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-4-126a2e9133c3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-4-126a2e9133c3@collabora.com>
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

T24gVGh1LCBTZXAgMjQsIDIwMjYgYXQgMDc6MjU6NDBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gT24gcmVjZW50IFJvY2tjaGlwIHBsYXRmb3JtcyAoYXQgbGVhc3QgUkszNTg4
ICYgUkszNTc2KSwgRFdDMyBJUCBpcyB1c2VkCj4gd2l0aCBhIFVTQkRQIFBIWSBwcm92aWRpbmcg
VVNCMyBhbmQgRFAuIFRoaXMgUEhZIG5lZWRzIHRvIGJlIHJlc2V0IHdoZW4KPiB0aGUgbW9kZSBj
aGFuZ2VzLCB3aGljaCBtYXkgaGFwcGVuIHdoZW4gcGx1Z2dpbmcgaW4gZGlmZmVyZW50IFVTQi1D
Cj4gZGV2aWNlcy4KPiAKPiBJZiB0aGUgVVNCRFAgUEhZIHJlc2V0cyB3aXRoIHRoZSBEV0MzIElQ
IHJ1bm5pbmcsIGl0cyBpbnRlcm5hbCBzdGF0ZQo+IGNvcnJ1cHRzIHJlc3VsdGluZyBpbiB0aGUg
VVNCRFAgUEhZIG5vdCBiZWluZyBhYmxlIHRvIGxvY2sgc29tZSBQTEwKPiBjbG9ja3MsIHdoaWNo
IGVmZmVjdGl2ZWx5IHJlbmRlcnMgVVNCMyB1bnVzYWJsZS4KPiAKPiBUbyBmaXggdGhlIGlzc3Vl
IHRoaXMgYWRkcyBoYW5kbGluZyBmb3IgdGhlIG5ldyBQSFkgZnJhbWV3b3JrIHJlc2V0Cj4gbm90
aWZpY2F0aW9ucywgd2hpY2ggd2lsbCBhc3NlcnQgUEhZU09GVFJTVCBiZWZvcmUgdGhlIGFjdHVh
bCBQSFkKPiBpcyBkaXNhYmxlZCBhbmQgd2lsbCBkZWFzc2VydCBpdCBvbmNlIHRoZSBQSFkgcmV0
dXJucy4KPiAKPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNv
bT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gQWNrZWQtYnk6IFRoaW5oIE5ndXllbiA8VGhpbmguTmd1
eWVuQHN5bm9wc3lzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPiAgIyBQSFkKCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
