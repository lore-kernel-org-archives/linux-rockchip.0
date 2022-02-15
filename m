Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818FFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 19:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8bQDfilh0E6nsPXNOdvlR09Am08xUFK5RNNfjOE9FU=; b=l266NOqKxJYcBz
	ZfkueaRR9qx9SsjGaj/7fJ8unFEuEwJf1sL7cjRN+cy1a8KSVG4g6icKd4/X5rppMeYVWfxCT7N67
	cD+GkO3vvWZqWh58Wt5qQsWPJoWINGBPkfjSUMURT0KyN3CF5mxtU7H+j9YsI+q7xmVWoIhdVJBrO
	6rIIPhXQYg6Yp6IN88lhYLZ2aF7MHz5dDa1ZjoRHqB2c9wgQfXg9fGnLyrejqnY/x4I97kakonM9t
	Z38IvA8IADmB3hfKvZScjjGkb2jChJJbEi+vFNdAxqMqh+cPCnA5eZAbN5nkR/7Z8VoYvPZdGV72h
	TLjO+lixDQ3Sohgss03A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3nx-004OlK-LW; Tue, 15 Feb 2022 19:48:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3nc-004Obe-3y; Tue, 15 Feb 2022 19:47:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 3ABF71F449B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644954463;
 bh=+wF39v+i9uxNDfcWDhypRIJ638tyJz2rqw6HQGEMdlQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=d3zn21eufiv2dWW4/zfxwV3et55Zy0Hdl5er4draQrp9tYcMKEmp7DJwOUM524+48
 mBWMq1rflGWirNr/0VaAEkK1rWaaxQWAo6plZcUOdk0527vp9Xus39ypxCTCMV3TFu
 YEMLg33T4FTWV0+RvlQiWq4W3ywruzN+9dpGOPjLCffuICXcjjZUopehbyhdYhwKdl
 UPPHWlpcoWwaKFHdAOFCP3IWD+ylbYl7TugczKA8EpPWeP4zWJfbmQAZV27UM1w6uG
 fXbS6U2JrEbQ2tvFk3zQDwcT2nKZcphvCGUmU3iZDySC4Gjk43oZn6IKmzc35EppMK
 BCAedlwL6vjFg==
Message-ID: <09ed17be-5780-011b-6801-87a5afd4e907@collabora.com>
Date: Tue, 15 Feb 2022 22:47:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_114744_331150_E5CE1722 
X-CRM114-Status: GOOD (  14.05  )
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

CjA5LjAyLjIwMjIgMTI6NTMsIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ICtzdGF0aWMgaXJx
cmV0dXJuX3Qgdm9wMl9pc3IoaW50IGlycSwgdm9pZCAqZGF0YSkKPiArewo+ICsJc3RydWN0IHZv
cDIgKnZvcDIgPSBkYXRhOwo+ICsJY29uc3Qgc3RydWN0IHZvcDJfZGF0YSAqdm9wMl9kYXRhID0g
dm9wMi0+ZGF0YTsKPiArCXVpbnQzMl90IGF4aV9pcnFzW1ZPUDJfU1lTX0FYSV9CVVNfTlVNXTsK
PiArCWludCByZXQgPSBJUlFfTk9ORTsKPiArCWludCBpOwo+ICsKPiArCS8qCj4gKwkgKiBUaGUg
aXJxIGlzIHNoYXJlZCB3aXRoIHRoZSBpb21tdS4gSWYgdGhlIHJ1bnRpbWUtcG0gc3RhdGUgb2Yg
dGhlCj4gKwkgKiB2b3AyLWRldmljZSBpcyBkaXNhYmxlZCB0aGUgaXJxIGhhcyB0byBiZSB0YXJn
ZXRlZCBhdCB0aGUgaW9tbXUuCj4gKwkgKi8KPiArCWlmICghcG1fcnVudGltZV9nZXRfaWZfaW5f
dXNlKHZvcDItPmRldikpCj4gKwkJcmV0dXJuIElSUV9OT05FOwo+ICsKPiArCWZvciAoaSA9IDA7
IGkgPCB2b3AyX2RhdGEtPm5yX3ZwczsgaSsrKSB7Cj4gKwkJc3RydWN0IHZvcDJfdmlkZW9fcG9y
dCAqdnAgPSAmdm9wMi0+dnBzW2ldOwo+ICsJCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZ2cC0+
Y3J0YzsKPiArCQl1aW50MzJfdCBpcnFzOwo+ICsKPiArCQlpcnFzID0gdm9wMl9yZWFkbCh2b3Ay
LCBSSzM1NjhfVlBfSU5UX1NUQVRVUyh2cC0+aWQpKTsKPiArCQl2b3AyX3dyaXRlbCh2b3AyLCBS
SzM1NjhfVlBfSU5UX0NMUih2cC0+aWQpLCBpcnFzIDw8IDE2IHwgaXJxcyk7Cj4gKwo+ICsJCWlm
IChpcnFzICYgVlBfSU5UX0RTUF9IT0xEX1ZBTElEKSB7Cj4gKwkJCWNvbXBsZXRlKCZ2cC0+ZHNw
X2hvbGRfY29tcGxldGlvbik7Cj4gKwkJCXJldCA9IElSUV9IQU5ETEVEOwo+ICsJCX0KPiArCj4g
KwkJaWYgKGlycXMgJiBWUF9JTlRfRlNfRklFTEQpIHsKPiArCQkJdW5zaWduZWQgbG9uZyBmbGFn
czsKPiArCj4gKwkJCWRybV9jcnRjX2hhbmRsZV92YmxhbmsoY3J0Yyk7Cj4gKwkJCXNwaW5fbG9j
a19pcnFzYXZlKCZjcnRjLT5kZXYtPmV2ZW50X2xvY2ssIGZsYWdzKTsKCklSUSBpcyBkaXNhYmxl
ZCBpbnNpZGUgb2YgSVNSKCksIG5vIG5lZWQgdG8gc2F2ZS9yZXN0b3JlIHRoZSBmbGFncy4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
