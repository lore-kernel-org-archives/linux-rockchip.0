Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3019C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 19:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5WuJV0V+x+B5zwHG2RvbeTBhMMX9jvfYyAWrnjMDBw=; b=FNyrQci4eNpWoZ
	EpggQrkYCdu3rUTMLPhxZwGvjKcfemIqpYVIxi5qsMOly1wvQiISEsAl6rSAHYsTQQuCr3c6PleSW
	lkJGdoZJQtL7Nl6Q6SV9ci8kKuS/8U4NKzU+6WYur+p9PmdDQCC1vIqpqqahaCXD6kz04l7ECuzzx
	tbbpCtTlXb+Q7wNTHycJG2mjUnUgyFKSKZpnpqk/cHoMnj13r7ChfDZuks+XqNFmWttWvs02KzCiK
	7b37qA0zvIxnDjddcilmY8gj3ikcsX2gkhU5z3G3vjNT8rKe0e0CukBuH/WWo3WAbtMZXdsOQk9/Y
	/++jruEhrID7GNxCdKcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEaK0-00000003ewD-2Rcx;
	Tue, 04 Jun 2024 19:59:52 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEaJv-00000003evR-3Oi7;
	Tue, 04 Jun 2024 19:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717531186;
	bh=EpLslpOhbstzvxy+NYlgIPTSA2o5f/zg2UQ0tpvgRHM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=1c7rpUHesbw02lPnXOn8AFTz4w1v0JZu/mrxPQ+jL0jaBE0t4CjPp62zwGXNaxSK4
	 T6SdFlgfPy/ZSmbCWTvZj7JfIzl394TtBTuKEVF0oygF768FXSmwJNXmlAeFWZpsKI
	 y3ztlP96IL25CLWxwVLz/mMuf6nzvfWXknnxPAs+T5SiMidC3RjOW+Osx7gNmFeri8
	 XAEUFD5QU6XjQswu+Bg7UGJGvPuDNggK5Ergy7KIzhI3QwA6ZYBe6r89IlidQCPKqp
	 /RhulzRfkZWkIKflPQ2r924/wpKExYCfeAu9ygr/vvxUpxi7qCnA2fYf0T1bbv1jpj
	 hBxPrjzz7teJA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5A9A63782172;
	Tue,  4 Jun 2024 19:59:44 +0000 (UTC)
Message-ID: <4e683887-d963-40f8-89de-c7f7d9d0cab9@collabora.com>
Date: Tue, 4 Jun 2024 22:59:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <E1316DC2-0822-4B82-BCD0-99904D4741EF@gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <E1316DC2-0822-4B82-BCD0-99904D4741EF@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_125948_029362_662A2398 
X-CRM114-Status: GOOD (  11.00  )
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

T24gNi8yLzI0IDEwOjU5IEFNLCBQaW90ciBPbmlzemN6dWsgd3JvdGU6Cj4gKHJlc2VudCBhcyBw
bGFpbiB0ZXh0IGluc3RlYWQgb2YgaHRtbCkKPiAgCj4gQ3Jpc3RpYW4sCj4gCj4gSSB3YXMgYXdh
aXRpbmcgb3ZlciB5ZWFyIGZvciB0aGlzIHdvcmshCj4gCj4gSeKAmW0gZGV2ZWwuIDIgZGlzdHJv
cyB3aGVyZSBzaW5nbGUgbWFpbmxpbmUga2VybmVsIHNlcnZlcyAyODM1LzI3MTEvMjcxMi9oNi9o
MzEzL2g2MTYvaDYxOC9yazMzMjgvcmszMzk5L3JrMzU2Ni9yazM1NjgvcmszNTg4L3M5MDUvczkx
Mi9zbTEvZzEyLgo+IAo+IEJlZm9yZSB0aGlzIHdvcmsgcmszNTg4IHdhcyBleGNsdWRlZCBiZWNh
dXNlIHJrMzU4OCBoZG1pIHdhcyByZWdyZXNzaW5nIGhkbWkgb24gb3RoZXIgc29jcy4KPiBXaXRo
IHRoaXMgY29kZSBhbGwgb3RoZXIgc29jcyBzZWVtcyB3b3JrIG9rIG5vdy4gUGVyZmVjdC4KCk1h
bnkgdGhhbmtzIGZvciBnaXZpbmcgdGhpcyBhIHRyeSBvbiBhIGJyb2FkIHJhbmdlIG9mIFNvQ3Ms
IGVzcGVjaWFsbHkKY29uc2lkZXJpbmcgbXkgbGltaXRlZCB0ZXN0aW5nIGNhcGFiaWxpdGllcyEK
Cj4gQXMgb25lIG9mIG15IHByb2plY3QgaXMgbXVsdGltZWRpYSBhcHBsaWFuY2UgLSBnb29kIG5l
d3MgaXMgdGhhdCBub3cgaSBjYW4gbmljZWx5IHBsYXkgaGR0diBvbiByazM1ODggdXNpbmcgbWFp
bmxpbmUgY29tbW9uIDYuOS4zIGtlcm5lbCBhbmTigKYuc3RhcnRlZCB0byBoZWFyIGZyb20gbXkg
dXNlcnMgYSBsb3Qgb2YgUXMgbGlrZTog4oCeYWggc28gbmljZSEgcmszNTg4IG5vdyB3b3JrcyBu
aWNlbHnigKYuYnV0IHdoZXJlIGlzIGhkbWkgYXVkaW8gYW5kIGNlYz/igJ0KPiAKPiBJdCB3aWxs
IGJlIGZhbnRhc3RpYyB0byBhZGQgKGUuZy4gYnkgYmFja3BvcnQgRGV0bGV2IGh0dHBzOi8vZ2l0
bGFiLmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4
Ly0vdHJlZS9yazM1ODgtaGRtaS1hdWRpbz9yZWZfdHlwZT1oZWFkcyApIGF1ZGlvIGNvZGUgdG8g
Z2V0IGJhc2ljIHN1cHBvcnQgaGRtaSBhdWRpbz8KClRoZSBtYWluIGZvY3VzIGlzIG5vdyBvbiB1
cHN0cmVhbWluZyB0aGUgYmFzaWMgc3VwcG9ydC4gVGhpcyBzaG91bGQKZnVydGhlciBmYWNpbGl0
YXRlIGFkZGluZyB0aGUgbWlzc2luZyBmZWF0dXJlcywgc28gd2Ugd2lsbCBzbG93bHkgZ2V0CnRo
ZXJlLCBldmVudHVhbGx5LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
