Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 496B7C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2CJqYUIRwwPdWdTorVtWrXPtHYEY1zVauwghDfLaPs=; b=uIOOZm/uyw7mV7
	kDoJR4DA+wendSxOEVoC9I8lw7NOlhfLIOWyR+lYBBcSob0CDAXbEQgcFz/gXLwIwIIO0auh+msG7
	jT+me9ofmjms54pXCXOVqL5obS3FFem5I6Z8xKfz74l+IL7cp7hL9SA0mgILzD72XsMufcq4ilou1
	icMfYMTQoKKnOJUdbXgxXCuCkPTNKOKlMH/ukwGrWiHmssRbvxHjKWNxGOct5fFe6mXT7i90R3tPS
	ktPYkGFgK2mD53PLBp1Q09Z3wahqPr8lurlLmC7sy4ZYmTdq7u78OA4zihA58RqMpLhFgxun8+Wwt
	kbyoCOhAwcuGUYdqcCUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QlA-0000000Cac7-1wv1;
	Tue, 01 Sep 2026 15:50:52 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Ql8-0000000CabJ-1458
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:50:51 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-39c95395230so10228341fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788277848; x=1788882648; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:content-type:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=sIycX/93dP8h/wj5U80nNU52ZrbLgXUgk65pU9prnfM=;
        b=rnfed+g1e/xNeT8W4IUK1qh1dAIMCKtk5jkK42UBlZOCAFUGY+9ww8b4YPV5t/KiUF
         QbTKmLMk3gBjBlRBg/01vpbiNcx7leNkF5Amqb5YRfvK8OzNO9oBfJ+IlZaRcqknuF5+
         sWLlR4YijQ4gHlaXnxFGt8BdDkQ7JusUVutfPkkezncRY4sIQqQYINWZ/53JXXrTVHLU
         KNAPmofqv3WPS9geQM6T5ObwnH/X6ZXoJFLsA7QdoBY/YTB0cEOMcxg0cKU4YKfZhrw+
         vFO0emnARnA/1AwwlaLbaKHsJOog/jzNvTcDHdviuKSnu6Q6fCq/KYyHRodippkJHedn
         7prQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788277848; x=1788882648;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:content-type:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sIycX/93dP8h/wj5U80nNU52ZrbLgXUgk65pU9prnfM=;
        b=ovYLq8w+sZVcTGIr07cj+ClFSR7ppsvJRlByS9vvJPrHZEpO88ruUbnvFifMz9Jot4
         PYCkroM8UJY2V/8iXiyLKeW2DoGASq4IZb4W7kkKGwQEsh+YAPnjHNxxFyw0c3Fg9pwp
         1V70g9v2sTpJNYj4QjdAEVIRRTVTmrJZkDIrbH3YgQkn9DEU5KAeG/pEZUNYo3WFd1Hv
         6BTD5GVCJbONCxVe+qh201CFNb3j1tsd8D1PhvoatqythbkysFnlbgSr2vNmdhI06gtP
         qvA3p6hrEU2we1Cy8NWeFXp1WXa4xSWbDCVAfapi5Wbt0lqb5zWX63WdZf42TLFrYLVx
         kpZg==
X-Forwarded-Encrypted: i=1; AKwUvBy0fQ81hjwRCL4BqP52AKP6kiLezKnqHTz7J98P5ub3nsq1rdy+RDb1eO6D0Vu0YW9tjh+OfhIck6RuOVdrug==@lists.infradead.org
X-Gm-Message-State: AFuF++kjoPq8aFJXzKc6A6EDOejxN4UAaugaqYK00694RA+cj9m/fN4p
	tSctfg71X+bQCJdTP4S4Fum8anxuslZWjujMaTc0TiHpatJv2yf8cpfb
X-Gm-Gg: AYBFou1IofL06Qd12kuG9mBy38P0wolW7Q691Rn/hj9mQgZn/F7mA5BNvEIzTXthbKT
	0UnlXJib3l7ucNjIQBIv1JQy93VuORmKUg7Dp//+j6nP2KxcZpBn5CTiarcV2pc9/5ni3LAN47H
	5duGaSBUwyWn6cg1ngtd2xy4ZEFeNh7fOD4mc7/a0Ri4FBlLiPVCdaPdN9SNtB2LgjFSDTZK3M6
	3Uw/mmEqr4xF3QhumvWXwg8u2rGLvIg+MOoACCYeDRnFYppJBlsN/v3eIPIlvqONB7uuTv89EE8
	+q9FbCg3TBrO0kAjodTEXVP2euO2v9cqQ4ytHqsZvR7QU9CKw8/igsQjkkckxQ44kQTKSrV/Jxo
	JrlbKm15NBJ/7wCoSwMHsHvaz833Y6kQtaVsMvpebVfPO2krEGwnbWHV63wJVqSeJ/g1DPjaKZX
	iIn3NN2gYkgRuntXF8wMAu5OMHYGhiciKWxq4SO9yFPxREZaTileku9t5qCvjOYKiDghZt5IjnQ
	EAd46TamV7VMq5+PA==
X-Received: by 2002:a05:651c:2117:b0:3a3:4526:e8f4 with SMTP id 38308e7fff4ca-3a345270387mr8689181fa.6.1788277847338;
        Tue, 01 Sep 2026 08:50:47 -0700 (PDT)
Received: from smtpclient.apple ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a34ad010efsm326091fa.21.2026.09.01.08.50.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2026 08:50:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Compute ACR CTS for unlisted TMDS
 rates
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <apbgp2h_tSZQzbdV@venus>
Date: Tue, 1 Sep 2026 19:50:28 +0400
Message-Id: <1035B0DB-D4B0-4E24-A23B-48854B49A3FA@gmail.com>
References: <20260901112541.84588-1-christianshewitt@gmail.com>
 <apbgp2h_tSZQzbdV@venus>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_085050_315270_1D2DB8CF 
X-CRM114-Status: GOOD (  18.43  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Detlev Casanova <detlev.casanova@collabora.com>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Daniel Stone <daniel@fooishbar.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Douglas Anderson <dianders@chromium.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiBPbiAxIFNlcCAyMDI2LCBhdCA2OjI44oCvcG0sIFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiAKPiBIaSwKPiAKPiBPbiBUdWUsIFNl
cCAwMSwgMjAyNiBhdCAxMToyNTo0MUFNICswMDAwLCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+
PiBjb21tb25fdG1kc19jdHNfdGFibGVbXSBob2xkcyBvbmx5IHNpeCBUTURTIGNoYXJhY3RlciBy
YXRlcyAoMjUuMTc1LAo+PiAyNS4yLCAyNywgNTQsIDc0LjI1IGFuZCAxNDguNSBNSHopLCBzbyBk
d19oZG1pX3FwX2ZpbmRfY3RzKCkgcmV0dXJucyAwCj4+IGZvciBldmVyeXRoaW5nIGVsc2UuIGR3
X2hkbWlfcXBfc2V0X2N0c19uKCkgdGhlbiBjbGVhcnMgdGhlIENUUyBvdmVycmlkZQo+PiBlbmFi
bGUgYW5kIHByb2dyYW1zIGEgdmFsdWUgb2YgMCwgbGVhdmluZyB0aGUgc2luayB3aXRoIG5vIENU
UyB0bwo+PiByZWdlbmVyYXRlIHRoZSBhdWRpbyBjbG9jayBmcm9tLgo+PiAKPj4gQW55IGRlZXAg
Y29sb3VyIGxpbmsgZmFsbHMgaW50byB0aGlzIGdhcDogYSAxMCBicGMgUkszNTc2IEhETUkgb3V0
cHV0Cj4+IHJ1bnMgYXQgMTg1NjI1MDAwIEh6ICgxNDguNSBNSHogKiAxLjI1KSwgd2hpY2ggaXMg
YWJzZW50IGZyb20gYm90aAo+PiB0YWJsZXMuIE4gaXMgY29tcHV0ZWQgZHluYW1pY2FsbHkgYW5k
IGNvbWVzIG91dCBjb3JyZWN0IGF0IDYxNDQsIGJ1dAo+PiBBVURQS1RfQUNSX0NPTlRST0wxIHJl
YWRzIGJhY2sgYXMgMC4KPj4gCj4+IEdpdmUgQ1RTIHRoZSBzYW1lIGR5bmFtaWMgZmFsbGJhY2sg
dGhhdCBOIGFscmVhZHkgaGFzLCB1c2luZyB0aGUgZm9ybXVsYQo+PiBmcm9tIHRoZSBBdWRpbyBj
aGFwdGVyIG9mIHRoZSBIRE1JIHNwZWNpZmljYXRpb24sIGFuZCBkcm9wIHRoZSAtRU5PRU5UCj4+
IHJldHVybmVkIGludG8gYW4gdW5zaWduZWQgaW50IGZvciB0aGUgdW5saXN0ZWQgc2FtcGxlIHJh
dGVzLgo+PiAKPj4gRml4ZXM6IGZkMDE0MWQxYThhMmEgKCJkcm0vYnJpZGdlOiBzeW5vcHN5czog
QWRkIGF1ZGlvIHN1cHBvcnQgZm9yIGR3LWhkbWktcXAiKQo+PiBBc3Npc3RlZC1ieTogQ2xhdWRl
OmNsYXVkZS1vcHVzLTUKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0
aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+IC0tLQo+PiBUaGlzIHdhcyBmb3VuZCBhZnRlciB0ZXN0
aW5nIHVucmVsYXRlZCBwYXRjaGVzIGZyb20gRGV0bGV2QyB0aGF0IHJlbmFtZQo+PiB0aGUgUksg
YXVkaW8gY2FyZHMgdG8gc2VlIHRoZSBpbXBhY3QgaW4gS29kaS4gUkszNTg4IGhhZCBhdWRpbyBv
dXRwdXQsCj4+IHdoaWxlIFJLMzU3NiBkaWQgbm90LiBJJ2Qgbm90IHVzZWQgYW4gUkszNTc2IGJv
YXJkIGZvciBhIHdoaWxlIHNvIHRhc2tlZAo+PiBDbGF1ZGUgdG8gaGVscCB0cmlhZ2UgdGhlIHBy
b2JsZW0sIGFuZCB0aGlzIHdhcyB0aGUgZmluZGluZy4gVGhlIHByb2JsZW0KPj4gYXBwZWFycyB0
byBoYXZlIGJlZW4gZXhwb3NlZCBzaW5jZSBLb2RpIHJld29ya2VkIHBsYW5lIHNlbGVjdGlvbiBs
b2dpYwo+PiBhbmQgc3VwcG9ydCBmb3IgMTBicGMgcGxhbmVzOyBlYXJsaWVyIEtvZGkvTGlicmVF
TEVDIGltYWdlcyB3ZXJlIHVzaW5nCj4+IDhicGMgcGxhbmVzIHRodXMgYXZvaWRpbmcgdGhlIHBy
b2JsZW0uCj4gCj4gWW91IGFyZSBsb29raW5nIGZvciB0aGlzIHNlcmllczoKPiAKPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC84NmZjZjM0OS0wYTdhLTQ2MTgtOTAwMS02
MTIzNzFiMGY3MWJAc3ltcGxlLm56LwoKQWhoLCBJIG1pc3NlZCB0aGF0LiBJIGhhdmUgbm93IHRl
c3RlZCB0aGF0IHBhdGNoIChhbmQgd2lsbCByZXBseQp0byBpdCB3aXRoIGEgVEIpIHNvIHBsZWFz
ZSBpZ25vcmUgdGhpcyBwYXRjaC4gVGhhbmtzIQoKQ2hyaXN0aWFuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
