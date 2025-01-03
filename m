Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29BDAE7718F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 12:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvSJbVHKMFQky67FhsrMeQUvxWo6d48wR28J/KibqKk=; b=EkF7p7Fh10caW6
	jFpPA7tn1ASHQylGVNoBVOQ4ZNHbblrjbKGMSDHmq21tiRPloy1+1axGIohlhHaXV6qQVCV2B1Q/P
	3Dj5vUw9Rrewx7csVTewSQM44HtSbLgka0Gk6613AHeZ3SzsOdvOsBtDz5BewFKck8QP9JB/e7+YW
	XgN1bo9DgOKDLC2XHEIEv2FVsP+jZd7vRwzhxF+Y96i5a+6r2rspnQwR3jyncJW8NJzKXbOdv6HAo
	TUxxnrp02nd+0icE9ZotEyjNu+Ylz/zJBZiPfZo89ZMCYoSgzVFNzYpzKQL43ipyr1QKhSaxccQtl
	zK95xIOb1hl/r2TU+iCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTgvQ-0000000CvGd-22ho;
	Fri, 03 Jan 2025 12:37:12 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTgvN-0000000CvFK-396Q
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jan 2025 12:37:10 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-300479ca5c6so128414281fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jan 2025 04:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735907827; x=1736512627; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lAuQK+/F0O4L5JCDNjDjHjZFUYnk5eRkhwBS+4Hmv8o=;
        b=fdjFU3TfAwawLXxFYYzXOkIJ4FwOpnd1cm/kpcaljU7vYNh7M/o2bol3uRfh0MLiWq
         khSGDt/f0KwV3o8qA1OFjF83H17KIL/dHhf/bde067I6hYrvsC6oF7k/LSm/2IRgz5oz
         9HW+awCI7ac441J7C6rkTJFN0yatcBrpzV52Va5hICYGZYiLG/4aBR1G4NopmIXNhElk
         5RB5dqy18939bNJiYQk7dC6+G+bY2ORdU5euJsaoDZv+8ciB7ALa3rmXtioAeEnvSNws
         2r40zk+YTip0UktMo3Uu98ekdsaZb5ZWbC1YHFChOdUU948dRCfbjgcElvs5BSxvo+NR
         Kijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907827; x=1736512627;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lAuQK+/F0O4L5JCDNjDjHjZFUYnk5eRkhwBS+4Hmv8o=;
        b=jNmt/qoTm4y4wvpIVrCVSZAnwo9njKUxju4KMD3IXHe75mYf8v6D7na6jwm1EVr8KA
         ee3b0iEcqXKN4HnhlbXDCHEyIG71f9vkiW0NpnJvj51JaRv15fBUrFlVGxl/5XDHXVxK
         BSgHqo0Vpn8OJ/rCHeIkJvfq/RdOBFsho2CcjPsf8Tuqr9Hhqd+ah6CoQjPtQY94BmcZ
         byDwsdFjo/ircu+r3AOfeALPxtYMqqPmzqx+YUZiAYCAtt4tMiYV3hC+821uSgkwj2Dv
         TjEMOBquCamn0gDnJc8ivuqDW3wnjZtdERwjQAWDFDFvYyH6/t75aUvlWDRS/nrYbV1k
         GoiA==
X-Forwarded-Encrypted: i=1; AJvYcCWS5dpHc0vaIFOOuVakP8uZGxD9bKAYAlfzVZM3q0G9t8w5rqyJnobKZfgddC1e6WRwgk2baW9EeaTCqyym1g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkWi1Mqgh+cKbCBaWLzPOZfUWHojCX8LY7VnZVV+Jf9j9/Tzdn
	+DfJb0oSvOREpKBzV8IGLK10NjOSe+kgg1TKfNvXKUcWCgk4eEZy7qYb0S7h8LA=
X-Gm-Gg: ASbGnctIqMJrCPLjoCvTIfgBAEUtsbzMJFvsRvE/iPeHIQ1kWkwRaqvCejde7OD3k5d
	o6hD4SoCddb0IvOO3UxFipsh6yP6VFsxbQxT9Ag3XvnX1IENv+4EU32in79m+bexFFAVJbVebJH
	00k+VjSr+4ZhKZsJwTAxi+GGE8khqA7RGXAOm25kidHqmTD4oImxFl2qY9jXjpVjyC3SzA7Xr7F
	RMmnm3MOzWvcT77/8xqyR97gPKsl1e3V/QPz5egxyOHbXtxMZ7xRKFDUgQeMH0aUL5xx7wDLsyV
	5x21vp1xKWToTUaJ3TTZWxIcDWxtH6Z3KofF
X-Google-Smtp-Source: AGHT+IHkmAApyLZ21XYWu+WDHiH0q3Z12bKU9S9jrrq+R629xN6ISaSia7sHBryhTxvay+8ug/2ilQ==
X-Received: by 2002:a2e:743:0:b0:300:4107:6294 with SMTP id 38308e7fff4ca-30468627b2fmr117244791fa.35.1735907827089;
        Fri, 03 Jan 2025 04:37:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b082e47sm45659141fa.111.2025.01.03.04.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 04:37:05 -0800 (PST)
Date: Fri, 3 Jan 2025 14:37:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alain.volmat@foss.st.com, alim.akhtar@samsung.com, andrzej.hajda@intel.com, 
	andy.yan@rock-chips.com, angelogioacchino.delregno@collabora.com, broonie@kernel.org, 
	chunkuang.hu@kernel.org, dave.stevenson@raspberrypi.com, dri-devel@lists.freedesktop.org, 
	heiko@sntech.de, hjc@rock-chips.com, inki.dae@samsung.com, 
	jani.nikula@linux.intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kernel-list@raspberrypi.com, krzk@kernel.org, kyungmin.park@samsung.com, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux@armlinux.org.uk, maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, 
	mcanal@igalia.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	p.zabel@pengutronix.de, perex@perex.cz, ple@baylibre.com, rfoss@kernel.org, 
	rgallaispou@gmail.com, simona@ffwll.ch, sw0312.kim@samsung.com, tiwai@suse.com, 
	tzimmermann@suse.de
Subject: Re: [PATCH v10 03/10] drm/connector: implement generic HDMI audio
 helpers
Message-ID: <x73a2utr5sp4iffk5626zqfth4ayu3x4jkxd7xwjti7ehrgnzi@ploxx4i5db5h>
References: <20241224-drm-bridge-hdmi-connector-v10-3-dc89577cd438@linaro.org>
 <20241231004311.2574720-1-martin.blumenstingl@googlemail.com>
 <l3u3wtnxyhrwjynevkwfjwarisc4yt4xy2rbzf5kb7k5l5dw3n@lxqtimymyjg6>
 <CAFBinCAh8iazDNx6GtOOJyXh_V-NfUs6Uf=ywN9kvQGPEmjrKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFBinCAh8iazDNx6GtOOJyXh_V-NfUs6Uf=ywN9kvQGPEmjrKQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_043709_780429_994BFD33 
X-CRM114-Status: GOOD (  14.58  )
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

T24gVHVlLCBEZWMgMzEsIDIwMjQgYXQgMDc6NDk6NDBQTSArMDEwMCwgTWFydGluIEJsdW1lbnN0
aW5nbCB3cm90ZToKPiBPbiBUdWUsIERlYyAzMSwgMjAyNCBhdCAzOjM04oCvQU0gRG1pdHJ5IEJh
cnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOgo+IFsuLi5dCj4g
PiA+IEkgY2hlY2tlZCBhbGwgaW5zdGFuY2VzIG9mIHN0cnVjdCBoZG1pX2NvZGVjX29wcyBpbiB2
Ni4xMy1yYzMgYW5kIGl0Cj4gPiA+IHNlZW1zIHRoYXQgdGhlcmUgaXMgb25seSBhIHNpbmdsZSBk
cml2ZXIgd2hpY2ggdXNlcyB0aGUgLnByZXBhcmUKPiA+ID4gY2FsbGJhY2sgKGRyaXZlcnMvZ3B1
L2RybS92YzQvdmM0X2hkbWkuYykuIEFsbCBvdGhlciBkcml2ZXJzIHNlZW0gdG8KPiA+ID4gaW1w
bGVtZW50IC5od19wYXJhbXMgaW5zdGVhZC4KPiA+Cj4gPiBZZXMuIEhvd2V2ZXIgLmh3X3BhcmFt
cyBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUgaW5mb2ZyYW1lIGNvbnRlbnRzLCBzbwo+ID4gSSBo
YWQgdG8gc2V0dGxlIG9uIGltcGxlbWVudGluZyAucHJlcGFyZS4KPiBXaGlsZSBkZWJ1Z2dpbmcg
SSBub3RpY2VkIHNvbWV0aGluZyB1bnJlbGF0ZWQgdG8gbXkgcHJvYmxlbToKPiBoZG1pX2NvZGVj
X3NwZGlmX2RhaV9vcHMgZG9lcyBub3QgaW1wbGVtZW50IC5wcmVwYXJlKCkuCj4gRllJIGp1c3Qg
aW4gY2FzZSBzb21lb25lIHdhbnRzIHRvIHVzZSB5b3VyIHBhdGNoZXMgYW5kIGZlZWQgdGhlCj4g
aGRtaS1jb2RlYyB3aXRoIFNQRElGIGluc3RlYWQgb2YgSTJTLgoKQ291bGQgeW91IHBsZWFzZSBz
ZW5kIHN1Ym1pdCBhIHBhdGNoIHRvIHRoZSBoZG1pLWNvZGVjIGRyaXZlcj8KCi0tIApXaXRoIGJl
c3Qgd2lzaGVzCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
