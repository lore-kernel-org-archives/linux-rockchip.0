Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5B47C02190
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 13:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5q93WkH8iFXSviX9e4Z3y/qfPhabpR0AE427XNJWyu4=; b=A6/sri17oBpSFW
	/n/8E8MpMjn/SVwW/cwn3gr4uO9PTrtw984LOchM5bllMblYvdaSzTqF/UVdbwNTjrQNdI42WGTdH
	SUUtlpEVqvnuPSxDlld4Qq7BZErJnQcZRHkH9awCo5eau5Gs6kErFxykix3qqWZ8DG4FB1Bg+XFrd
	99bvctW3MqMAVGYFceYeZD3SnB1pGIUfG4WP+GRgHVEdy0hua3qde+mGFZCTR9zf6ozpaLRHmcxnt
	81UeibWIfhWkFgGMRQShnCgxZY6/CXqylkAWTKFvxnWOidIeYLiBgOXFYmIIKvHiIQMGadFSDfgSs
	2c7oC8Dged7OfV3oXsmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td7xS-0000000703F-1hYN;
	Wed, 29 Jan 2025 13:18:18 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td7xO-0000000700H-3jKk
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jan 2025 13:18:16 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-3022484d4e4so72441021fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jan 2025 05:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1738156692; x=1738761492; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+CHJ8n+1weOhv4NN8WEDPgNRoao7eEb7VxTBwhD7To=;
        b=gVgZv+sMHicAO7GASrmbUug82EJp1O1zBpDVbb8GUMAv8VE7pDlNXjVBw9kD0B7Mn2
         +47gC+HSnMlT/UvvgstqIO2Zvg6MXiKQL/1b28iPpZtThfRr9hB9x82NsijBjLD2BiA5
         GfLF7JRK7+cKrmTJnZb76po/8xAgqTYb1ObLH0v+O+cHP7X8jpSvwg9Bfkc73hdOrME6
         EIfa6tl5XNONKmqNftDu/ka+ixYG2eFZ5VcTNSNZvBtW3KN1ST2gzL4um0ESO2N7SJoh
         RvGSnekcSNJNG7vpXrkJpuMzi1MJV/Sl1wYWdAX+LyZGCpxDt8AcPRUotsBjKc9yi6Ic
         t4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738156692; x=1738761492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f+CHJ8n+1weOhv4NN8WEDPgNRoao7eEb7VxTBwhD7To=;
        b=UWaheFnT9fWZd1VAdWZq7hQoQVaGH7ga/rcnfgorxKuOKJCcToOcm4KH+Zg1KZu9CI
         /3btMZf3E7H4LicYZEDMgfVzKLZISzplvB5IAYmC6kFpqhOXDubvNYT2kZL541c+IQWK
         +R0dyvQq5/e+loPJANSRmD1Ykzk4qqPhFdHbd2pj+doECbqGZSteBNeZGJqPT5AV7gm4
         ZHr3rtO+kADnCl9v2WOYC2zx17wdYuXgMwxGhNPd4owl7TTOdrYMM2gIYwBVQvlG0KqM
         QaWFm9m5mrRHE0LOneEJj23YHwXKtn9B6lY4D7cpOFNVb6ni2QbuklBVhLJqMgaUDC8j
         7nWw==
X-Forwarded-Encrypted: i=1; AJvYcCWcpccJ6ipOzVRcqpzrYF+UmqVgRmp17CfQ6yeXW9iVH3d8w4v9v+/fg10Y86v8q3z0GxdkSuMJ7Cd3wZcpcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMjEn0Uu2sNEUyg83ccxmvGHWYTI+1pZAFeSCSaAZd9iyVG8ep
	alydp/95lujgnsfVCGyijtyKoht4Y1eQ1MK61VsWbNLrFTctdA2sDs7qVDPiCuSO87/zCadlUnt
	HL6aEvRqhhqmx62Ecflcnp61UPhDjzr/8WzXFsQ==
X-Gm-Gg: ASbGncubpdupXyssNxKRKBtZjul4RR4/bVQ/DhkCZK8fM6xIRuldrC54Hwh/xvO3txW
	n2b5vOmZqT1eognKTNZPz4xleQdjVrrwHnFRk2IRqpS4s1QFOddAClotRXNlCikvBNEDsr8yzYe
	MJoNYB1BM+Xm0/Z6F/4RkW8u2+s8Ku
X-Google-Smtp-Source: AGHT+IGFRC+m+r/a8Okn6oewxCN7IKGCsP32ORqURIUMiUOfm5o7kOj6AXMqnFWDbj2MV05dJpu5VXuc2FEJhvoxCWI=
X-Received: by 2002:a2e:be9c:0:b0:307:2bc6:5eb4 with SMTP id
 38308e7fff4ca-307968bfa7bmr8911111fa.3.1738156692452; Wed, 29 Jan 2025
 05:18:12 -0800 (PST)
MIME-Version: 1.0
References: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com> <20250128-cocci-memory-api-v1-13-0d1609a29587@redhat.com>
In-Reply-To: <20250128-cocci-memory-api-v1-13-0d1609a29587@redhat.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 29 Jan 2025 13:17:54 +0000
X-Gm-Features: AWEUYZktkNT_EsHcnViFnfugP1naRJeQlMuaRyszOFwlglEWr7DXeU7KaxFISbw
Message-ID: <CAPY8ntBvJpSFhOwqBPmiN59Z0EpienEm-=M-euHdQU8XLGgXUA@mail.gmail.com>
Subject: Re: [PATCH 13/14] drm/vc4: move to devm_platform_ioremap_resource() usage
To: Anusha Srivatsa <asrivats@redhat.com>
Cc: Joel Stanley <joel@jms.id.au>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Stefan Agner <stefan@agner.ch>, 
	Alison Wang <alison.wang@nxp.com>, Xinliang Liu <xinliang.liu@linaro.org>, 
	Tian Tao <tiantao6@hisilicon.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu <yongqin.liu@linaro.org>, 
	John Stultz <jstultz@google.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Marek Vasut <marex@denx.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Yannick Fertre <yannick.fertre@foss.st.com>, 
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Alexey Brodkin <abrodkin@synopsys.com>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jonathan Corbet <corbet@lwn.net>, 
	linux-aspeed@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
	linux-doc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_051815_010911_FB0ED82B 
X-CRM114-Status: GOOD (  15.54  )
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

SGkgQW51c2hhCgpPbiBUdWUsIDI4IEphbiAyMDI1IGF0IDIyOjMzLCBBbnVzaGEgU3JpdmF0c2Eg
PGFzcml2YXRzQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gUmVwbGFjZSBwbGF0Zm9ybV9nZXRfcmVz
b3VyY2VfYnluYW1lICsgZGV2bV9pb3JlbWFwX3Jlc291cmNlCj4gd2l0aCBqdXN0IGRldm1fcGxh
dGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCj4KPiBVc2VkIENvY2NpbmVsbGUgdG8gZG8gdGhpcyBj
aGFuZ2UuIFNtUGwgcGF0Y2g6Cj4gLy9ydWxlIHMvKGRldm1fKXBsYXRmb3JtX2dldF9yZXNvdXJj
ZV9ieW5hbWUgKwo+IC8vKGRldm1fKWlvcmVtYXAvZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291
cmNlLgo+IEBydWxlXzNACj4gaWRlbnRpZmllciByZXM7Cj4gZXhwcmVzc2lvbiBpb3JlbWFwOwo+
IGlkZW50aWZpZXIgcGRldjsKPiBjb25zdGFudCBtZW07Cj4gZXhwcmVzc2lvbiBuYW1lOwo+IEBA
Cj4gLXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+IC4uLgo+IC1yZXMgPSBwbGF0Zm9ybV9nZXRfcmVz
b3VyY2VfYnluYW1lKHBkZXYsbWVtLG5hbWUpOwo+IDwuLi4KPiAtaWYgKCFyZXMpIHsKPiAtLi4u
Cj4gLX0KPiAuLi4+Cj4gLWlvcmVtYXAgPSBkZXZtX2lvcmVtYXAoLi4uKTsKPiAraW9yZW1hcCA9
IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldixuYW1lKTsKPgo+IENj
OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gQ2M6IERhdmUgU3RldmVuc29u
IDxkYXZlLnN0ZXZlbnNvbkByYXNwYmVycnlwaS5jb20+Cj4gQ2M6ICJNYcOtcmEgQ2FuYWwiIDxt
Y2FuYWxAaWdhbGlhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFzcml2
YXRzQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYyB8
IDkgKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5jCj4gaW5kZXggNDdkOWFkYTk4NDMwNjM0Y2Zk
OGMxZTIxYzJhNGQwMGQ1MDFiYWI3ZS4uZTIyNzMzZjgxNTlhYTRiMjQ3YTkxNWUyNGEyMzZmNjIw
YmFlOTMyYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMKPiBAQCAtMjk1MSwxNSArMjk1MSwx
MCBAQCBzdGF0aWMgaW50IHZjNV9oZG1pX2luaXRfcmVzb3VyY2VzKHN0cnVjdCBkcm1fZGV2aWNl
ICpkcm0sCj4gIHsKPiAgICAgICAgIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB2YzRf
aGRtaS0+cGRldjsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4g
LSAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAgICAgICAgIGludCByZXQ7Cj4KPiAtICAg
ICAgIHJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9N
RU0sICJoZG1pIik7Cj4gLSAgICAgICBpZiAoIXJlcykKPiAtICAgICAgICAgICAgICAgcmV0dXJu
IC1FTk9ERVY7Cj4gLQo+IC0gICAgICAgdmM0X2hkbWktPmhkbWljb3JlX3JlZ3MgPSBkZXZtX2lv
cmVtYXAoZGV2LCByZXMtPnN0YXJ0LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiArICAgICAgIHZjNF9oZG1pLT5o
ZG1pY29yZV9yZWdzID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJoZG1pIik7CgpXaGlsc3QgSSB0b3RhbGx5IGFncmVlIHdpdGgg
dGhpcyBjaGFuZ2UsIHdoeSB3YXMgb25seSBvbmUgb2YgdGhlIDgKaW5zdGFuY2VzIG9mIHRoaXMg
cGF0dGVybiB3aXRoaW4gdGhpcyBmdW5jdGlvbiB1cGRhdGVkPyBJcyB0aGF0IGEKbGltaXRhdGlv
biBpbiB5b3VyIHNjcmlwdD8KaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2Iv
bWFzdGVyL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYyNMMjk1Ny1MMzAyMAoKICBEYXZl
Cgo+ICAgICAgICAgaWYgKCF2YzRfaGRtaS0+aGRtaWNvcmVfcmVncykKPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9NRU07Cj4KPgo+IC0tCj4gMi40Ny4wCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
