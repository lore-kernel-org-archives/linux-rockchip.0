Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05534C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLt/LhY1GtdWYksruAZz90aNUg0bSR940qLzu84z0js=; b=EXCXKaMwlJYBAc
	KfnBUXEuCVscTTds8ZvQ4I5c9CeLQ7ViVF+U4Y7313miCGGd8mw6d4sFmV29c2eyIo/8FawAft8iz
	YDxvHvjdgYTAvE4MjIfMRGCJyaKpvHJ7AnspdyPS71syjWK/9hsz0JmP1eVUeywmhR7x1ZWMLGkwu
	iB3RriLQ7vYpwAJzfiM4LoRijN4jE2SsLBHTwVtAqkdOAjqN/hnnBceoiA6N7Gk9q5T/L/p/uSmYN
	fpKj5dEa7/3Lodoq9K5QuaUhxtA4ZTp05YDtKVe2wi4wD/C8XeIovgXH9ThlR9YMnqwV0HuwZILVR
	/HBp9UZrqKEoOupX9IPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKgm9-00AdCM-30; Thu, 17 Feb 2022 13:24:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKglu-00Ad6a-Ha; Thu, 17 Feb 2022 13:24:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 905D41F45B52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645104273;
 bh=lsIfh5sbMJI4WTP9N2IRqlEUycgB2AeckJcRBUnq8ao=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lzHbuZ2gFiSAjaNLa3T7PR090kaaJAVlPwS2PnJ5aCZaealX1zqQknnpf9CKbrOXf
 7Q+jbbY6uO0BagvCWblUzDl8sKDA8wwlUhOuq+9ZGVXMIoMdFFWxBZxrOYjdkGyo11
 TNrrOMr13ZDhgbRj2Uaoes4aX3gXj18eGIdAT6W2NXYZ378DLtDvVeoEZTJUuj3nlS
 LxV3WdDafBmp44y632lsfVRk/XNTVsv8Ua1KmzysetWUr5LIbOEa5tl8FS1KpTGDOx
 8ssWlTK+HinOWSB2ejLkLjmaJ5iT48yqyZNJiOmZhwlYGJ04+y2gwZQtNQkZUQY+2C
 ehK+5V3f8uP4g==
Message-ID: <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
Date: Thu, 17 Feb 2022 16:24:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-22-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_052434_738834_74D6023C 
X-CRM114-Status: UNSURE (   8.63  )
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

MTcuMDIuMjAyMiAxMToyOSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gQEAgLTI4LDYgKzI4
LDEyIEBAIGNvbmZpZyBST0NLQ0hJUF9WT1AKPiAgCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9y
IHRoZSBWT1AgZHJpdmVyLiBZb3Ugc2hvdWxkIGVuYWJsZSBpdAo+ICAJICBvbiBhbGwgb2xkZXIg
U29DcyB1cCB0byBSSzMzOTkuCj4gIAo+ICtjb25maWcgUk9DS0NISVBfVk9QMgo+ICsJYm9vbCAi
Um9ja2NoaXAgVk9QMiBkcml2ZXIiCj4gKwloZWxwCj4gKwkgIFRoaXMgc2VsZWN0cyBzdXBwb3J0
IGZvciB0aGUgVk9QMiBkcml2ZXIuIFlvdSBzaG91bGQgZW5hYmxlIGl0Cj4gKwkgIG9uIGFsbCBu
ZXdlciBTb0NzIGJlZ2lubmluZyBmb3JtIFJLMzU2OC4KCnMvZm9ybS9mcm9tLwoKVGhlIFJPQ0tD
SElQX1ZPUCBvcHRpb24gaXMgImRlZmF1bHQgeSIuIERvIHlvdSByZWFsbHkgd2FudCAiZGVmYXVs
dCBuIgpmb3IgdGhlIFZPUDI/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
