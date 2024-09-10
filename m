Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 944BEEDE99F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 15:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCoe/sZWY8pxge4HyO2gKs4JelweQwXASIjmS6fEUes=; b=uIAdk95ZbMkmlu
	Icgu5bi+DsKec1nr0sAZukOdzTftl44zohcksQB5L+gGJTNqyQ5gDPJCIb7LppZSyGvDO92QNHJ2i
	wn4eZBrugpJW8SnIGolRs6jPWy2lY2CCRnZO8lMUQs5xOidYvCciFcJb044IxUqTtDaCA+5u4tTgf
	hKcdedlAXhTSbOKJx1kU7UOePCR8uL1Kjx93HeF+/fNT7EsWrzRIKCiGQWgq/9Z8A3cvtkmCIMHzl
	BLaltiw7WEEE4CycSkqr4W/y5FhhKQGy0/0ieKSnMvYVBbe2w044I1W1w5WCwlSw0mW4WdK3Nal1r
	C213ZTuEy9dyhh3NJhaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so3Cm-00000006F4b-2bTH;
	Tue, 10 Sep 2024 15:55:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so3AU-00000006EUu-3jZp;
	Tue, 10 Sep 2024 15:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725983557;
	bh=VqVYu4N/Tf1UtM3sawFVKjYsdrOcwFFbjlE2c3Q5n6o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eQguQaDhVq678MgrPKfPcNoIMM+tkkuOFHGC4Nfix43E7Oqd4JTJqZUW3043HaUQG
	 brN2zMOxEQ3YE8qsp8XT8qjaxfA0cPPhVj8mE+aPqHARpYIhuBv95ZYVNOJeN9JTIK
	 8rxZ1EjcGMV0Ui7aHnw6oltLy99/yrWBpYKKvue3LZ9cTlX4TGsN0iS6ab8lG4xB+a
	 45uzTdAnunuUvTjqO+unl/H+VH802SJaVkurGGZ2oB/abHUN2tctLqmN6tBxbkEzGT
	 aCxBdWj+tSvxBaN3Dtj74F7fRp23DVaapGtixCj6b9zk7xbvOrmcLlm4QeLSmOuwHh
	 TcOWGrZ9IzLsA==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3B9FA17E12D3;
	Tue, 10 Sep 2024 17:52:36 +0200 (CEST)
Message-ID: <ae4db880-d64c-446b-bbf8-954b7bebca83@collabora.com>
Date: Tue, 10 Sep 2024 18:52:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] drm/bridge: synopsys: Add DW HDMI QP TX Controller
 support library
To: Markus Elfring <Markus.Elfring@web.de>,
 Algea Cao <algea.cao@rock-chips.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Andrzej Hajda <andrzej.hajda@intel.com>, Andy Yan <andy.yan@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mark Yao <markyao0591@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Alexandre Arnoud <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240831-b4-rk3588-bridge-upstream-v5-2-9503bece0136@collabora.com>
 <ab8a17d0-9505-4e81-b5ec-4a3025c48245@web.de>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <ab8a17d0-9505-4e81-b5ec-4a3025c48245@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_085239_113848_20873089 
X-CRM114-Status: UNSURE (   8.75  )
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

T24gOS84LzI0IDEyOjExIFBNLCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPiDigKYKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPj4gQEAgLTAsMCAr
MSw3MDggQEAKPiDigKYKPj4gK3N0YXRpYyBpbnQgZHdfaGRtaV9xcF9pMmNfeGZlcihzdHJ1Y3Qg
aTJjX2FkYXB0ZXIgKmFkYXAsCj4+ICsJCQkgICAgICAgc3RydWN0IGkyY19tc2cgKm1zZ3MsIGlu
dCBudW0pCj4+ICt7Cj4g4oCmCj4+ICsJbXV0ZXhfbG9jaygmaTJjLT5sb2NrKTsKPiDigKYKPj4g
Kwlkd19oZG1pX3FwX21vZChoZG1pLCAwLCBJMkNNX09QX0RPTkVfTUFTS19OIHwgSTJDTV9OQUNL
X1JDVkRfTUFTS19OLAo+PiArCQkgICAgICAgTUFJTlVOSVRfMV9JTlRfTUFTS19OKTsKPj4gKwo+
PiArCW11dGV4X3VubG9jaygmaTJjLT5sb2NrKTsKPj4gKwo+PiArCXJldHVybiByZXQ7Cj4+ICt9
Cj4g4oCmCj4gCj4gVW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB3b3VsZCB5b3UgYmVjb21lIGlu
dGVyZXN0ZWQgdG8gYXBwbHkgYSBzdGF0ZW1lbnQKPiBsaWtlIOKAnGd1YXJkKG11dGV4KSgmaTJj
LT5sb2NrKTvigJ0/Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEtcmM2
L3NvdXJjZS9pbmNsdWRlL2xpbnV4L211dGV4LmgjTDE5NgoKQXBwbGllZCBmb3IgdGhlIHVwY29t
aW5nIHY3LgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
