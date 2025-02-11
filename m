Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34EB9C0219E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 18:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFiN/nQlJEsCaJF2nwmW3ZnuJRq/Tov93vveWofiVAY=; b=jUV5APu6VyeRZf
	T6H5hNkmTEBlal5frMpnKNNWK7ZDYOHhyu9klueO6HZad6NkQFqe+CZ+IKZ3Psoteiiwh4+rbtMWh
	ePd/7BtcHs896yzlpYUZFY+vkib4PgTeGcqYXu4xD06CA8gH0Kk/e3bUvwd3WL5pu4Ah/O8kCHiMy
	mLsC3SG86I5bObzrzRJEuMwhLF+K9eYEhERerI9Wg+7bYdcq0k0Hd+C3zdLmRo9tf0bo8z5TzyjG9
	d+ycT6rjeDx8km2OIR3QOxF18zBfHZ1txBb+avD8ERdksctmWm39ZCYv9pCSut1g1M5lEzDUxjLCS
	YqelUrdskU03C/fQdiDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thvQO-00000004vTf-0v8i;
	Tue, 11 Feb 2025 18:56:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thuKM-00000004jxm-14Kp;
	Tue, 11 Feb 2025 17:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OVukLjmjU7JWbNgNRIVE9jMDHO3O38O0IgGphOEr4s4=; b=MJwYhjVEv9hzDwOzAgX+dYyt59
	1F05MlqYJca9e4beQqo5pm/qT4Lli61AFp3VLX9c+i1eY1CF/PXfM21S4+ZUnuvXWE5WPkDfQ1bmd
	6p5dsrk9d3p/wvHRIqkkqh/sSxAyPDwNlBqb0HPqt4JiY/Sck4udJeaQ0P/K2XKgG00RH4XcOCMmA
	N6GGkwdxXPYBwo+2qsB/OiCArDjLmmb12sKKtJLXBryprJQGUKTXeJpbg92VnBsBGF8uGay5UTfAq
	9EY7BFRjIqxblxBAfQLc6NC2F288h+a1GlGUPGCib2mWU8pgfSTtHmB8Am0XIn01rpmpPPEYoBrNd
	WicsWNRQ==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thuKJ-00000000en9-1hJ7;
	Tue, 11 Feb 2025 17:45:41 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-43944181e68so27644005e9.0;
        Tue, 11 Feb 2025 09:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739295937; x=1739900737; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OVukLjmjU7JWbNgNRIVE9jMDHO3O38O0IgGphOEr4s4=;
        b=aE4MwqgPiwdTRdiYklBk/xTyswqZFts7x2YcuXH1hI8w8mE7WO8a3adUCJ9psvJ2ss
         Dxf2WTuKkzTGG4aUlk8Zpd9h7FBpguFTfFCsVlysXczn66YJ78OVhwFtHcJIhHN4evil
         xjd35Sm4beRJfLEfWxDiQP7WjBTkqJ4DH6OWTgx/f/ZHZVq6oGZW9pacblM4zgFn8xze
         9Zk7mqQ23TzhX8zGhXL0fBoWXs8Ibau3tcP/CX7ZRK+zX8JEBcaa4h2mrDy84NlQ6nU4
         uWmfEW//ujZxIkEsMoJQI9BNe4gl9kiYrqHVmhWBgvgBdrWoet1SnINgKMaWzWIXB/pR
         a9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739295937; x=1739900737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OVukLjmjU7JWbNgNRIVE9jMDHO3O38O0IgGphOEr4s4=;
        b=YVv4fT40RrRgeeZK3mFufI/xaud0FpmVQgnSVDk6p2VKtef6BKmJSbLxs7oQgHv2/y
         pQVkjiClte8w7jrqn5kC1gHGQlrevGbWsHn/lOzRjbR9aj1f5nPQEP1/qpkFLrh0idx0
         jlMxKX1D4vs8l7cm0A7iCscecVpDmsBqtXtVTm3zjeB4v553eicz5Lub5mg+8UsDSCJA
         XTzSyfULdFRpbPkOIXIFazMs1T+ZUuG1rcApuM9Ler41WRGw3lHTPh8yrC3UPs4zmRaF
         3+mFE47WhoPqumc0EJlOOn1jGuqwWigFoOL+vsVfvkfoSfXMjFxLRUNFhlVhHb0TYxPW
         Vi/g==
X-Forwarded-Encrypted: i=1; AJvYcCU0/Rd/ddvufgO0SNoaCOgxzbvoBR6NkCCXlZkdtvzIuIgGHMwjeetva9sfYpJUYr1AdyzMjukfscgMI/B/91u8@lists.infradead.org, AJvYcCURkK1DQ6X/wmrlXl2nkfMuhN/Ogo/ulj5BC/CSg/C0kpcjR3wCL5vyVJyPXSM2yAzrQqo8xHZchVBq7v3yCsg=@lists.infradead.org, AJvYcCXHTyjr7h3uER+xUhYujmfXJopgZhZU5Z+hlZBZ6mbpB0yedR0K829T38KWFW1u2AQbIufbq0owh+lq5xf0A+c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxqz0+tKwANLhij6q0rpJonaelkP7Hy8BAofLBMIEmEOZtvfOpR
	gv4b9utajOzhqa7gVksM9+5XTT3J7AYLjwdlrGGOkYldgyLYsJZR
X-Gm-Gg: ASbGncvM2VG1AcBwqhmzEWdGfMaMWBxD/ja++FOHhmNbGykqyfEWkdcvfrS39efA7qa
	6NpmVD4T7R7gpjz02HmZN004Au645F87LqDugXT1HvE6M/z6YD/YtSHV71ISsjaDATeyqlFj9VX
	WDpoN8M5F9CPKEF7X18+/qxd6r9ARzcoVqHO/Hr/0p1oLqvrr4ZqeMSR+xegB2CcaLdl+KmY+h4
	PKYv7dhaF5XaQO1Sj2qaiZOq5NLZvObRtkrEESHt3iVS5pza5PGXhqzajoC0uyS5LGCp/sG7d/V
	P32UBn8sp7rWmTJazrLbYN8RV0sTilCHg/SZ0QOnZDklR9LB3EpXDuOQS1zoUh0=
X-Google-Smtp-Source: AGHT+IHevhnQA52ksSDKCk/5HBFf2WQR6jKC1x+TgyxG0JLSuHfuqUjzxDwjKzCxF5CuvX9dIZjkUA==
X-Received: by 2002:a05:600c:c0c:b0:430:57e8:3c7e with SMTP id 5b1f17b1804b1-439581caafbmr1240075e9.28.1739295936426;
        Tue, 11 Feb 2025 09:45:36 -0800 (PST)
Received: from ?IPV6:2001:861:3385:e20:2acd:89a8:83d9:4be5? ([2001:861:3385:e20:2acd:89a8:83d9:4be5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390db11750sm222041925e9.40.2025.02.11.09.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 09:45:36 -0800 (PST)
Message-ID: <c11a234e-de9e-465e-bd09-bfa516dba6dd@gmail.com>
Date: Tue, 11 Feb 2025 18:45:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] drm/sti: move to devm_platform_ioremap_resource()
 usage
To: Anusha Srivatsa <asrivats@redhat.com>, Joel Stanley <joel@jms.id.au>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, Stefan Agner
 <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu
 <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Alain Volmat
 <alain.volmat@foss.st.com>, Yannick Fertre <yannick.fertre@foss.st.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Jonathan Corbet <corbet@lwn.net>
Cc: linux-aspeed@lists.ozlabs.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20250205-mem-cocci-newapi-v1-0-aebf2b0e2300@redhat.com>
 <20250205-mem-cocci-newapi-v1-7-aebf2b0e2300@redhat.com>
Content-Language: en-US, fr
From: =?UTF-8?Q?Rapha=C3=ABl_Gallais-Pou?= <rgallaispou@gmail.com>
In-Reply-To: <20250205-mem-cocci-newapi-v1-7-aebf2b0e2300@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_174539_566474_AE0A25B4 
X-CRM114-Status: GOOD (  17.84  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpMZSAwNS8wMi8yMDI1IMOgIDIxOjA4LCBBbnVzaGEgU3JpdmF0c2EgYSDDqWNyaXTCoDoKPiBS
ZXBsYWNlIHBsYXRmb3JtX2dldF9yZXNvdXJjZS9fYnluYW1lICsgZGV2bV9pb3JlbWFwCj4gd2l0
aCBqdXN0IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCj4gCj4gVXNlZCBDb2NjaW5l
bGxlIHRvIGRvIHRoaXMgY2hhbmdlLiBTbVBsIHBhdGNoOgo+IAo+IEBydWxlQAo+IGlkZW50aWZp
ZXIgcmVzOwo+IGV4cHJlc3Npb24gaW9yZW1hcDsKPiBpZGVudGlmaWVyIHBkZXY7Cj4gY29uc3Rh
bnQgbWVtOwo+IGV4cHJlc3Npb24gbmFtZTsKPiBAQAo+IC1zdHJ1Y3QgcmVzb3VyY2UgKnJlczsK
PiAuLi4KPiAtcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZShwZGV2LG1lbSxuYW1l
KTsKPiA8Li4uCj4gLWlmICghcmVzKSB7Cj4gLS4uLgo+IC19Cj4gLi4uPgo+IC1pb3JlbWFwID0g
ZGV2bV9pb3JlbWFwKC4uLik7Cj4gK2lvcmVtYXAgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2VfYnluYW1lKHBkZXYsbmFtZSk7Cj4gCj4gYW5kCj4gQHJ1bGVfMkAKPiBpZGVudGlmaWVy
IHJlczsKPiBleHByZXNzaW9uIGlvcmVtYXA7Cj4gaWRlbnRpZmllciBwZGV2Owo+IEBACj4gLXN0
cnVjdCByZXNvdXJjZSAqcmVzOwo+IC4uLgo+IC1yZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2Uo
cGRldiwuLi4pOwo+IDwuLi4KPiAtaWYgKCFyZXMpIHsKPiAtLi4uCj4gLX0KPiAuLi4+Cj4gLWlv
cmVtYXAgPSBkZXZtX2lvcmVtYXAoLi4uKTsKPiAraW9yZW1hcCA9IGRldm1fcGxhdGZvcm1faW9y
ZW1hcF9yZXNvdXJjZShwZGV2LDApOwo+IAo+IHYyOiBGaXggY29tcGlsYXRpb24gZXJyb3IuCgpI
aSBBbnVzaGEsCgpKdXN0IGEgbml0OiBjaGFuZ2Vsb2cgc2hvdWxkIGJlIGFmdGVyIHRoZSDigJgt
LS3igJkgc2VwYXJhdG9yLiA6LSkKCk90aGVyIHRoYW4gdGhpcywgaXQgaXMKQWNrZWQtYnk6IFJh
cGhhZWwgR2FsbGFpcy1Qb3UgPHJnYWxsYWlzcG91QGdtYWlsLmNvbT4KClRoYW5rcywKUmVnYXJk
cywKUmFwaGHDq2wKPiAKPiBDYzogUmFwaGFlbCBHYWxsYWlzLVBvdSA8cmFwaGFlbC5nYWxsYWlz
LXBvdUBmb3NzLnN0LmNvbT4KPiBDYzogQWxhaW4gVm9sbWF0IDxhbGFpbi52b2xtYXRAZm9zcy5z
dC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfY29tcG9zaXRvci5jIHwgMTAg
Ky0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfZHZvLmMgICAgICAgIHwgMTAg
Ky0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRhLmMgICAgICAgIHwgIDkg
Ky0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgICAgICAgfCAxMSAr
LS0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaHF2ZHAuYyAgICAgIHwgMTAg
Ky0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdHZvdXQuYyAgICAgIHwgMTAg
Ky0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdnRnLmMgICAgICAgIHwgMTAg
Ky0tLS0tLS0tLQo+ICAgNyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYzIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9jb21wb3Np
dG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9jb21wb3NpdG9yLmMKPiBpbmRleCAwNjNm
ODJkMjNkODBjNGJhODM2MjRhMDA2NmExODQxNmEyYjM3MzUxLi43YWVmY2U2NzA2YmEyY2Q3ZDk3
YTMzMjI4YzliOTgxMmVkZWNmMDZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdGkv
c3RpX2NvbXBvc2l0b3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2NvbXBvc2l0
b3IuYwo+IEBAIC0xNzcsNyArMTc3LDYgQEAgc3RhdGljIGludCBzdGlfY29tcG9zaXRvcl9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAgPSBkZXYtPm9mX25vZGU7Cj4gICAJc3RydWN0IGRldmljZV9ub2RlICp2dGdfbnA7Cj4gICAJ
c3RydWN0IHN0aV9jb21wb3NpdG9yICpjb21wbzsKPiAtCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+
ICAgCXVuc2lnbmVkIGludCBpOwo+ICAgCj4gICAJY29tcG8gPSBkZXZtX2t6YWxsb2MoZGV2LCBz
aXplb2YoKmNvbXBvKSwgR0ZQX0tFUk5FTCk7Cj4gQEAgLTE5NCwxNCArMTkzLDcgQEAgc3RhdGlj
IGludCBzdGlfY29tcG9zaXRvcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAgCj4gICAJbWVtY3B5KCZjb21wby0+ZGF0YSwgb2ZfbWF0Y2hfbm9kZShjb21wb3NpdG9yX29m
X21hdGNoLCBucCktPmRhdGEsCj4gICAJICAgICAgIHNpemVvZihzdHJ1Y3Qgc3RpX2NvbXBvc2l0
b3JfZGF0YSkpOwo+IC0KPiAtCS8qIEdldCBNZW1vcnkgcmVzc291cmNlcyAqLwo+IC0JcmVzID0g
cGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiAtCWlmIChy
ZXMgPT0gTlVMTCkgewo+IC0JCURSTV9FUlJPUigiR2V0IG1lbW9yeSByZXNvdXJjZSBmYWlsZWRc
biIpOwo+IC0JCXJldHVybiAtRU5YSU87Cj4gLQl9Cj4gLQljb21wby0+cmVncyA9IGRldm1faW9y
ZW1hcChkZXYsIHJlcy0+c3RhcnQsIHJlc291cmNlX3NpemUocmVzKSk7Cj4gKwljb21wby0+cmVn
cyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAgIAlpZiAoY29t
cG8tPnJlZ3MgPT0gTlVMTCkgewo+ICAgCQlEUk1fRVJST1IoIlJlZ2lzdGVyIG1hcHBpbmcgZmFp
bGVkXG4iKTsKPiAgIAkJcmV0dXJuIC1FTlhJTzsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3N0aS9zdGlfZHZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kdm8uYwo+IGluZGV4
IGM2YzJhYmFhMTg5MWNkM2VhMDI1ODA1YjUwZDI3NWVjMzE0NTEyYzMuLjY2MDU4OGYwMWY5MDk1
MGE5YjJjMTgwYWIyMzAxODhjMTk5MDFmMjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3N0aS9zdGlfZHZvLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kdm8uYwo+IEBA
IC01MTEsNyArNTExLDYgQEAgc3RhdGljIGludCBzdGlfZHZvX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gICB7Cj4gICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRl
djsKPiAgIAlzdHJ1Y3Qgc3RpX2R2byAqZHZvOwo+IC0Jc3RydWN0IHJlc291cmNlICpyZXM7Cj4g
ICAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiAgIAo+ICAgCURSTV9J
TkZPKCIlc1xuIiwgX19mdW5jX18pOwo+IEBAIC01MjMsMTQgKzUyMiw3IEBAIHN0YXRpYyBpbnQg
c3RpX2R2b19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCX0KPiAgIAo+
ICAgCWR2by0+ZGV2ID0gcGRldi0+ZGV2Owo+IC0KPiAtCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNv
dXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sICJkdm8tcmVnIik7Cj4gLQlpZiAoIXJl
cykgewo+IC0JCURSTV9FUlJPUigiSW52YWxpZCBkdm8gcmVzb3VyY2VcbiIpOwo+IC0JCXJldHVy
biAtRU5PTUVNOwo+IC0JfQo+IC0JZHZvLT5yZWdzID0gZGV2bV9pb3JlbWFwKGRldiwgcmVzLT5z
dGFydCwKPiAtCQkJcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiArCWR2by0+cmVncyA9IGRldm1fcGxh
dGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImR2by1yZWciKTsKPiAgIAlpZiAo
IWR2by0+cmVncykKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3N0aS9zdGlfaGRhLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZGEu
Ywo+IGluZGV4IGIxMjg2M2JlYTk1NTU5YzRmODc0ZWI5NGNlYTg5Mzg2MDlkNDM1ZDQuLjBiNWRi
YWY0ZDUzMDU5ODk4NDZlMjVhMWNhYjZmODJkMTkxYWE5YTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3N0aS9zdGlfaGRhLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9o
ZGEuYwo+IEBAIC03NTAsMTQgKzc1MCw3IEBAIHN0YXRpYyBpbnQgc3RpX2hkYV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCQlyZXR1cm4gLUVOT01FTTsKPiAgIAo+ICAg
CWhkYS0+ZGV2ID0gcGRldi0+ZGV2Owo+IC0KPiAtCS8qIEdldCByZXNvdXJjZXMgKi8KPiAtCXJl
cyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sICJo
ZGEtcmVnIik7Cj4gLQlpZiAoIXJlcykgewo+IC0JCURSTV9FUlJPUigiSW52YWxpZCBoZGEgcmVz
b3VyY2VcbiIpOwo+IC0JCXJldHVybiAtRU5PTUVNOwo+IC0JfQo+IC0JaGRhLT5yZWdzID0gZGV2
bV9pb3JlbWFwKGRldiwgcmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiArCWhkYS0+
cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImhkYS1y
ZWciKTsKPiAgIAlpZiAoIWhkYS0+cmVncykKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL3N0aS9zdGlfaGRtaS5jCj4gaW5kZXggY2EyZmUxN2RlNGE1ZDFlMDE5OWU1OWE5N2U2Yzc2
MDFlMTM5ZWQ5ZS4uNjY2MTQzYzQ4YjBkMGYyYzIwY2QyNjMyM2RkYmM4ZTY5ZDk2NjYyMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMKPiBAQCAtMTM4MCw3ICsxMzgwLDYgQEAgc3RhdGljIGlu
dCBzdGlfaGRtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCXN0cnVj
dCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gICAJc3RydWN0IHN0aV9oZG1pICpoZG1pOwo+
ICAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGU7Cj4gLQlzdHJ1Y3QgcmVz
b3VyY2UgKnJlczsKPiAgIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKmRkYzsKPiAgIAlpbnQgcmV0Owo+
ICAgCj4gQEAgLTEzOTksMTUgKzEzOTgsNyBAQCBzdGF0aWMgaW50IHN0aV9oZG1pX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJfQo+ICAgCj4gICAJaGRtaS0+ZGV2ID0g
cGRldi0+ZGV2Owo+IC0KPiAtCS8qIEdldCByZXNvdXJjZXMgKi8KPiAtCXJlcyA9IHBsYXRmb3Jt
X2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sICJoZG1pLXJlZyIpOwo+
IC0JaWYgKCFyZXMpIHsKPiAtCQlEUk1fRVJST1IoIkludmFsaWQgaGRtaSByZXNvdXJjZVxuIik7
Cj4gLQkJcmV0ID0gLUVOT01FTTsKPiAtCQlnb3RvIHJlbGVhc2VfYWRhcHRlcjsKPiAtCX0KPiAt
CWhkbWktPnJlZ3MgPSBkZXZtX2lvcmVtYXAoZGV2LCByZXMtPnN0YXJ0LCByZXNvdXJjZV9zaXpl
KHJlcykpOwo+ICsJaGRtaS0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9i
eW5hbWUocGRldiwgImhkbWktcmVnIik7Cj4gICAJaWYgKCFoZG1pLT5yZWdzKSB7Cj4gICAJCXJl
dCA9IC1FTk9NRU07Cj4gICAJCWdvdG8gcmVsZWFzZV9hZGFwdGVyOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9ocXZkcC5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlf
aHF2ZHAuYwo+IGluZGV4IDBmNjU4NzA5YzlkMGQzOThjNGVlZDY1MjAyNDQzZGI5ZDBiNDFmOGMu
LjQyMDM5NTU5OGQxMTlhNDAzZDUzMTIxMTAyMmU2MDA1ZDZhMmJkNTkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaHF2ZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dGkvc3RpX2hxdmRwLmMKPiBAQCAtMTM1Niw3ICsxMzU2LDYgQEAgc3RhdGljIGludCBzdGlfaHF2
ZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlzdHJ1Y3QgZGV2aWNl
ICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqdnRnX25wOwo+ICAg
CXN0cnVjdCBzdGlfaHF2ZHAgKmhxdmRwOwo+IC0Jc3RydWN0IHJlc291cmNlICpyZXM7Cj4gICAK
PiAgIAlEUk1fREVCVUdfRFJJVkVSKCJcbiIpOwo+ICAgCj4gQEAgLTEzNjcsMTQgKzEzNjYsNyBA
QCBzdGF0aWMgaW50IHN0aV9ocXZkcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAgCX0KPiAgIAo+ICAgCWhxdmRwLT5kZXYgPSBkZXY7Cj4gLQo+IC0JLyogR2V0IE1lbW9y
eSByZXNvdXJjZXMgKi8KPiAtCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JF
U09VUkNFX01FTSwgMCk7Cj4gLQlpZiAoIXJlcykgewo+IC0JCURSTV9FUlJPUigiR2V0IG1lbW9y
eSByZXNvdXJjZSBmYWlsZWRcbiIpOwo+IC0JCXJldHVybiAtRU5YSU87Cj4gLQl9Cj4gLQlocXZk
cC0+cmVncyA9IGRldm1faW9yZW1hcChkZXYsIHJlcy0+c3RhcnQsIHJlc291cmNlX3NpemUocmVz
KSk7Cj4gKwlocXZkcC0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2
LCAwKTsKPiAgIAlpZiAoIWhxdmRwLT5yZWdzKSB7Cj4gICAJCURSTV9FUlJPUigiUmVnaXN0ZXIg
bWFwcGluZyBmYWlsZWRcbiIpOwo+ICAgCQlyZXR1cm4gLUVOWElPOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlf
dHZvdXQuYwo+IGluZGV4IGFmNmMwNmY0NDhjNDgxOWRlZjhjYzBkMDgzNmUzMGY5OTE1Mjk2OTAu
LjBiZWJlODE1ZjVlNzU2N2Y4NDM4OGFmOTM3MjNhNmZhN2QyY2M3YTIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdHZvdXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dGkvc3RpX3R2b3V0LmMKPiBAQCAtODM4LDcgKzgzOCw2IEBAIHN0YXRpYyBpbnQgc3RpX3R2b3V0
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJc3RydWN0IGRldmljZSAq
ZGV2ID0gJnBkZXYtPmRldjsKPiAgIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9m
X25vZGU7Cj4gICAJc3RydWN0IHN0aV90dm91dCAqdHZvdXQ7Cj4gLQlzdHJ1Y3QgcmVzb3VyY2Ug
KnJlczsKPiAgIAo+ICAgCURSTV9JTkZPKCIlc1xuIiwgX19mdW5jX18pOwo+ICAgCj4gQEAgLTg1
MCwxNCArODQ5LDcgQEAgc3RhdGljIGludCBzdGlfdHZvdXRfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiAgIAl0dm91dC0+ZGV2
ID0gZGV2Owo+IC0KPiAtCS8qIGdldCBtZW1vcnkgcmVzb3VyY2VzICovCj4gLQlyZXMgPSBwbGF0
Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAidHZvdXQtcmVn
Iik7Cj4gLQlpZiAoIXJlcykgewo+IC0JCURSTV9FUlJPUigiSW52YWxpZCBnbHVlIHJlc291cmNl
XG4iKTsKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiAtCX0KPiAtCXR2b3V0LT5yZWdzID0gZGV2bV9p
b3JlbWFwKGRldiwgcmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiArCXR2b3V0LT5y
ZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LCAidHZvdXQt
cmVnIik7Cj4gICAJaWYgKCF0dm91dC0+cmVncykKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdnRnLmMgYi9kcml2ZXJzL2dw
dS9kcm0vc3RpL3N0aV92dGcuYwo+IGluZGV4IDViYTQ2OWI3MTFiNTMxOGU5ZTllNmQ4ZGYxMjdm
Yjg5MzNkMWZhYzEuLmI1MzUzZmU3NzRkNzJmZDYyOWVjZDNlZjc1YTVkMjgxN2NhODYxN2YgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdnRnLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc3RpL3N0aV92dGcuYwo+IEBAIC0zODAsMjAgKzM4MCwxMiBAQCBzdGF0aWMgaW50
IHZ0Z19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgewo+ICAgCXN0cnVj
dCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gICAJc3RydWN0IHN0aV92dGcgKnZ0ZzsKPiAt
CXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ICAgCWludCByZXQ7Cj4gICAKPiAgIAl2dGcgPSBkZXZt
X2t6YWxsb2MoZGV2LCBzaXplb2YoKnZ0ZyksIEdGUF9LRVJORUwpOwo+ICAgCWlmICghdnRnKQo+
ICAgCQlyZXR1cm4gLUVOT01FTTsKPiAtCj4gLQkvKiBHZXQgTWVtb3J5IHJlc3NvdXJjZXMgKi8K
PiAtCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7
Cj4gLQlpZiAoIXJlcykgewo+IC0JCURSTV9FUlJPUigiR2V0IG1lbW9yeSByZXNvdXJjZSBmYWls
ZWRcbiIpOwo+IC0JCXJldHVybiAtRU5PTUVNOwo+IC0JfQo+IC0JdnRnLT5yZWdzID0gZGV2bV9p
b3JlbWFwKGRldiwgcmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiArCXZ0Zy0+cmVn
cyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAgIAlpZiAoIXZ0
Zy0+cmVncykgewo+ICAgCQlEUk1fRVJST1IoImZhaWxlZCB0byByZW1hcCBJL08gbWVtb3J5XG4i
KTsKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
