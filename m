Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0256CE7CE7
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 09:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKPSdXKQQuB6bQKCImkUz9b2X9wyS6+ZicyLWNQeoug=; b=suIfx1w66a6X5R
	dsUYl86G17aHw5vyxvT7gKuUmDe693w7DRKaqHYG5oYok1rNXM2mq45klQu+XqElU67lR5h30KSHV
	+TxtY6Pz+hbqWI+34/JkTu73KuET6Md0Varxx1syzdAdmq5GaeGbs/Syeb8rQaMrqK2quC6XnYM0Q
	V+v11GpitozJbrqBFV9OfhNHA5K4guIyJa0g3G+TZHSE0T8js9rnkcuVBdqpvuLQrzILal0i+ztjr
	cDDi7jUG5v9ekpPj/iSggyLiVSlS4VH6IpjZr8urBfGCOzrHXfZYy3pH90TqlT0LMRMVWX5/u01e8
	HK7ZOwBnORL+892vaHpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svYqP-00000002BEM-0r6D;
	Tue, 01 Oct 2024 09:06:57 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svYqM-00000002BDP-0ate
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 09:06:55 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helene.moe; s=key1;
	t=1727773612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4Zdv10SJzsReJ9cdAvKhNMK+4CSxsDOH1wiW7DwcRJU=;
	b=O6MiPbSL6N+4wvOtq6fDYRD5nneMzkq5R3ODanXsqIkxfje7mW1umGyEwwqXSzaSPW9ahp
	Ui9KT57n3axkifB34GHdZ0xQtIppAE/fdhT9+tEqQNBNwzXYW7JYqSBAggSRcoTGoWcxVV
	THchCpw4/K5KKKW2A6iHpB0l3MAZxV9D+Hytc17WHRIcFemIhsCwJelHHu1KCWV2seyMI3
	7NKiPjrrBM8tMFKvAYpWiDLY7o/sp56oFm54n5O3PjgF7IFr7SdQu4P21mKsIBKqHoiw1O
	zbn3ISnh/iGJ9arOSbHivu4elN4NbcVbUbFKsAgjcon6l4JFg/iGM0PJyKByaA==
Date: Tue, 01 Oct 2024 11:06:49 +0200
Message-Id: <D4KCMMJN9ED4.1L7FRSI7NHU7C@helene.moe>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: =?utf-8?q?H=C3=A9l=C3=A8ne_Vulquin?= <oss@helene.moe>
To: "Dragan Simic" <dsimic@manjaro.org>, <linux-spi@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Cc: <broonie@kernel.org>, <heiko@sntech.de>, <gregkh@linuxfoundation.org>,
 <rafael@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 5/5] spi: rockchip: Use dev_{err,warn}_probe() in the
 probe path
References: <cover.1727601608.git.dsimic@manjaro.org>
 <5b6bd142dab3ab93d7039db3e2fdcfea6bee2217.1727601608.git.dsimic@manjaro.org>
In-Reply-To: <5b6bd142dab3ab93d7039db3e2fdcfea6bee2217.1727601608.git.dsimic@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_020654_349364_D41AB600 
X-CRM114-Status: UNSURE (   9.27  )
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

T24gU3VuIFNlcCAyOSwgMjAyNCBhdCAxMToyMSBBTSBDRVNULCBEcmFnYW4gU2ltaWMgd3JvdGU6
Cj4gVXNlIGZ1bmN0aW9uIGRldl9lcnJfcHJvYmUoKSBpbiB0aGUgcHJvYmUgcGF0aCBpbnN0ZWFk
IG9mIGRldl9lcnIoKSB3aGVyZQo+IGFwcHJvcHJpYXRlLCB0byBtYWtlIHRoZSBjb2RlIGEgYml0
IG1vcmUgdW5pZm9ybSBhbmQgY29tcGFjdC4gIFVzZSB0aGUgbmV3Cj4gZnVuY3Rpb24gZGV2X3dh
cm5fcHJvYmUoKSB0byBpbXByb3ZlIGVycm9yIGhhbmRsaW5nIGZvciB0aGUgVFggYW5kIFJYIERN
QQo+IGNoYW5uZWwgcmVxdWVzdHMsIHdoaWNoIGFyZSBhY3R1YWxseSBvcHRpb25hbCwgYW5kIHR3
ZWFrIHRoZSBsb2dnZWQgd2FybmluZ3MKPiBhIGJpdCB0byBhZGRpdGlvbmFsbHkgZGVzY3JpYmUg
dGhlaXIgb3B0aW9uYWwgbmF0dXJlLgo+Cj4gUHJldmlvdXNseSwgZGVmZXJyZWQgcmVxdWVzdHMg
Zm9yIHRoZSBUWCBhbmQgUlggRE1BIGNoYW5uZWxzIHByb2R1Y2VkIG5vCj4gZGVidWcgbWVzc2Fn
ZXMsIGFuZCB0aGUgZmluYWwgZXJyb3IgbWVzc2FnZXMgZGlkbid0IGluY2x1ZGUgdGhlIGVycm9y
IGNvZGVzLAo+IHdoaWNoIGFyZSBhbGwgaGlnaGx5IHVzZWZ1bCB3aGVuIGRlYnVnZ2luZyBwZXJt
YW5lbnRseSBmYWlsZWQgRE1BIGNoYW5uZWwKPiByZXF1ZXN0cywgc3VjaCBhcyB3aGVuIHRoZSBy
ZXF1aXJlZCBkcml2ZXJzIGFyZW4ndCBlbmFibGVkLgo+Cj4gU3VnZ2VzdGVkLWJ5OiBIw6lsZW5l
IFZ1bHF1aW4gPG9zc0BoZWxlbmUubW9lPgo+IFNpZ25lZC1vZmYtYnk6IERyYWdhbiBTaW1pYyA8
ZHNpbWljQG1hbmphcm8ub3JnPgoKSSBjYW4gbm93IHNlZSBhcHByb3ByaWF0ZSBtZXNzYWdlcyBm
b3IgcGVuZGluZyBwcm9iZXMgb24gUm9ja2NoaXAgU1BJCmRldmljZXMsIGluc3RlYWQgb2YgIihy
ZWFzb24gdW5rbm93bikiLCB3aGljaCBpcyBpbmNyZWRpYmx5IGhlbHBmdWwKZm9yIGRlYnVnZ2lu
ZyBEZXZpY2VUcmVlcyBhbmQga2VybmVsIGNvbmZpZ3MuCgpUZXN0ZWQgb24gNi4xMSBhbmQgbG9v
a3MgbGlrZSBpdCB3b3JrcyBhcyBpbnRlbmRlZC4KClRoYW5rIHlvdSBmb3IgdGhpcyBwYXRjaCEK
ClRlc3RlZC1ieTogSMOpbMOobmUgVnVscXVpbiA8b3NzQGhlbGVuZS5tb2U+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
