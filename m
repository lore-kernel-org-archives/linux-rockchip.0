Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD3ACC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whjps8r4SIaMQG+YWZ2e+JT5eci749mC0RzIjOO6UC4=; b=ReSC2W+WRS57aT
	asOsehRew0VKop7sUB0DcG996Ht+UyLWTHbKuqIFnauaxms5w9plt6tBEWRxh7IqVV83ueO7260h6
	K1bs1vPIau56xhtw+MPSp901yPG81NtGi8Rqj8spgeAdP+ktp7S1zShlcpbXwn8Jd6oOe1tjLpe4A
	cbTBoTtyVWda6zCEF9viEhLRrICi26gN0JzqfejOzi1mCxLWC387mpT5qBGf4x6MjSABjoJiGKu1h
	9dwqEDdbkavse2t5L44SF3wlqzBraVhkkX8IkhxZz0umRz/UQuouyUFS0u3p5B1tOFIFXCOZNzLgj
	6l1dADbYjtTeWF4VzbsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKgiH-00AbOJ-O9; Thu, 17 Feb 2022 13:20:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKghr-00AbB6-GI; Thu, 17 Feb 2022 13:20:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 314181F45C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645104021;
 bh=frvkPvpz6EtNe12MCXtRLAiBcdyezvJMEVigFM8+kGY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=RGsVsI/lQpoUKPA6V3Twhpxur+3Y+o6SyrYEKhCHhJnVUkGSdRrTbzhckA6Z8vruL
 ZFCkGZ7FZ3XA2nHIdLJ+811J/y2ivyUjsdG8WaVsdZMh4ZCVViUbinVp7sQmWQFiDy
 3t9IGpwnR2aDxLUD7Yx45IdCTohzsP/YfefaFo6ENeMRJQ96FaIbQ0jV/JBsvxQwfD
 gzJJJED0QxI7RA3ui1ytubcIxPQ1iZuWyqMKve9fg7CTJ6TzBvBC5hlCQhxpuobfei
 Gyv3aKQIsS5Yv1FuVr9MU3UZUHh/jG1zOfB/kS5Zkw+0IshM7cq00jpEX+7ptY8sdz
 QAdJg4pLtwH1w==
Message-ID: <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
Date: Thu, 17 Feb 2022 16:20:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 02/23] drm/rockchip: dw_hdmi: rename vpll clock to
 reference clock
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-3-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_052023_692636_578B39C7 
X-CRM114-Status: UNSURE (   6.49  )
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

MTcuMDIuMjAyMiAxMToyOSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gKwloZG1pLT5yZWZf
Y2xrID0gZGV2bV9jbGtfZ2V0KGhkbWktPmRldiwgInJlZiIpOwo+ICsJaWYgKFBUUl9FUlIoaGRt
aS0+cmVmX2NsaykgPT0gLUVOT0VOVCkKPiArCQloZG1pLT5yZWZfY2xrID0gZGV2bV9jbGtfZ2V0
KGhkbWktPmRldiwgInZwbGwiKTsKPiArCj4gKwlpZiAoUFRSX0VSUihoZG1pLT5yZWZfY2xrKSA9
PSAtRU5PRU5UKSB7Cj4gKwkJaGRtaS0+cmVmX2NsayA9IE5VTEw7CgpJIG1pc3NlZCBpbiB2NSB0
aGF0IGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGNvdWxkIGJlIHVzZWQgaGVyZS4gQnV0IHRoaXMK
ZG9lc24ndCB3b3J0aCB0aGUgdjcgYnkgaXRzZWxmLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
