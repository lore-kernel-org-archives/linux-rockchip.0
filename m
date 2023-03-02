Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E834FC7EE2F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Mar 2023 16:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtXstmDyIViMoK7R9DLGN4i7kDXP/DGw+Gs5aw+8eWk=; b=h607XOG63U5K7I
	alh9D1oUW93m/OLj5iFMObZWfB1S+SXEt051iUAfJbUj9f4hkc8Gs9dRWyHqs4Xlm7ES9ORDpqX2q
	hV3JXKtiWz+e4f5Dm/dT8H+dA622M3qDn/jfkF0zNR7Q1HoVi+GseDmeJuOEgmErAKOZ/+1QoIuYB
	8Z/znMqKwAmPqToBn1xPIoIycU/OKe10RbgOiJ1KzxfHRrbzqussfjLPxG3VWgZjowT+JU27lm0SQ
	RlR0g9pVI85DfeVYmmXwUlH7VjkiT+TaVrXc7IdOMUn7id4MGe4TcHv3GmWrfgVBRVBEZtV9mXwZI
	xe8kAW+mCOnuZNw7KmCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXm8x-002tma-8J; Thu, 02 Mar 2023 16:50:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXm8u-002tkr-5U
	for linux-rockchip@lists.infradead.org; Thu, 02 Mar 2023 16:50:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A7654B81223;
	Thu,  2 Mar 2023 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C504C433EF;
	Thu,  2 Mar 2023 16:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677775853;
	bh=bs4a9GzCIldMNY6Lwk2BfD+01omOGUn0cXcDxNdcbIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Go20XSRtq4KkmiqnwjrCyHdYG12ZWZQNsuH5mNARSpxSe2bAOqQKknKYUG/uAxpYW
	 rrv/iC46jo4ivP56qzq1FUrjAkeVrnPww6yhz1gi5oqTGqYP5dkzXLxUPrpFO7luLX
	 T2AycCDDx2/VDIESByet1qEbY0LjdOX7E59nFkYG0aGeswg5SvyShZUAQ4//75Au0l
	 8a0wC3BXgmvBDqyBEJPyoB60dnQlO+qBsXbQCA6Rc4Y8EtKSYvGwaWv6AerdgNMlhk
	 KOEh8O+KFYG2ZxWN35cWFr26LHyNZpqv+BAmMeVnpWnvzeVHBG0dUxOYX74qVynZK1
	 DB27tZvDo3Vjg==
Date: Thu, 2 Mar 2023 16:50:46 +0000
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv6 06/11] mfd: rk8xx-i2c: use device_get_match_data
Message-ID: <20230302165046.GA2303077@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127181244.160887-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_085056_423634_9F70A8D1 
X-CRM114-Status: GOOD (  13.13  )
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

T24gRnJpLCAyNyBKYW4gMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNpbXBsaWZ5
IHRoZSBkZXZpY2UgaWRlbnRpZmljYXRpb24gbG9naWMgYnkgc3VwcGx5aW5nIHRoZSByZWxldmFu
dAo+IGluZm9ybWF0aW9uIHZpYSBvZl9tYXRjaF9kYXRhLiBUaGlzIGFsc28gcmVtb3ZlcyB0aGUg
ZGV2X2luZm8oKQo+IHByaW50aW5nIHRoZSBjaGlwIHZlcnNpb24sIHNpbmNlIHRoYXQncyBzdXBw
bGllZCBieSB0aGUgbWF0Y2ggZGF0YQo+IG5vdy4KPiAKPiBEdWUgdG8gbGFjayBvZiBoYXJkd2Fy
ZSB0aGlzIGNoYW5nZSBpcyBjb21waWxlLXRlc3RlZCBvbmx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL21mZC9yazh4eC1jb3JlLmMgfCAgMiAtCj4gIGRyaXZlcnMvbWZkL3JrOHh4
LWkyYy5jICB8IDg5ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAg
MiBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKCkZvciBt
eSBvd24gcmVmZXJlbmNlIChhcHBseSB0aGlzIGFzLWlzIHRvIHlvdXIgc2lnbi1vZmYgYmxvY2sp
OgoKQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4KCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
