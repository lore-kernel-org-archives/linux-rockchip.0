Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A521C44533
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmT8hZcLGHyIkUeC8D8h5dcSx5JrVfklfRKTBP9r69I=; b=uuWkW82cPWgONd
	va1p9sbeIVyhBLZOrupk0J37LIrKpDSbbTIQiYT3oRTJSbZ9wkHiZjw4pnsmuN0OGgplJm3WTqrQi
	2/KLpnHCCHEV+JO4NeRX6AoTdKq6e0ipn1Y//VDFOaqyjjDdMFx8j2bIrPKl7wJ0kMkEu4yBOvLSQ
	wv8Glc8PJnJnN6of7Zq8vi86oEEvNpOxn3ojtOWxYFPWR0XWTQ+E1DCMH9wMfDrSQoKi4yu6ys0vM
	YjxuhUF4ytmZY9W9tAktlFpEmauwPvtSxE5ueiZddtN9wm8TMMOHak266cYD+Co6z2Esr7L7qEayI
	+TB3trkUd3zXiP/DTJsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRyY-0000000BCan-00oy;
	Wed, 22 Jul 2026 08:06:46 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRyW-0000000BCZr-1iGb
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 08:06:45 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-698ae09e356so16743740a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 01:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784707602; cv=none;
        d=google.com; s=arc-20260327;
        b=SbvgVXoiYwzXg4JHLMDJFVwJX2cVq2+U2mljsyxBMjMr+qFwQPiqCNLed0fSRZ4ait
         KvJ74mcahaNPVNIVLHPb+1Bdao4s1EMtM6QEdo//PowEHx5ZZYHr2BcwsDhmcnifTwbX
         niZSx5tjvADoyKP1Wz3/ibeeAqHCN2jh55AYE9skn5DfZ7t/MsVXkjnpmquhw8ECBdB0
         k2fAP8BaJhRA5GMDG9yAa193neGlgzyI6JUtbaXxCc3MjyaUGA5wMzYhLYWhO3pf5ZBN
         ntS20knAjYURjAatv0ScXy0ww58OlTddAiJ/k9eRaGf+vC1tqf9xlX/yv4/JPyyNsdHX
         Auzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dNnBgtMvRWoIDKMpvV9eibQpg+sWb3zuYV0OsS+F7RY=;
        fh=cGH4d7r1ytQVefa9//Yzsv/28URHIDCcVfhPfJ4B0A0=;
        b=SdH6gptzQ58jNwOME5OeYAqVeiXRDaetw3J+l9O8asSf/u+k5zgE6OU4vWyPkJyCcO
         DMTW9E9MeJU3W0v8H8PssWNgSXYuyOCK3VowzRACZB3c5CCDt7gGeqpO8lXLpT+g44tN
         stI3od2eW3uv3KCW62T+fcnhGLhwsUGru7oDX8En/qYwgWxP1RHVyrcm0V4QlVadIKv8
         5kr/XqezWig1SkB9IKCV3+R81cVZjB+skLKJIJCgfp16YgMWX0D/041IT3g+d0c6wT1i
         QFQeeTzKxn7pn1PNXalJynbcZY1Wq9xCIamQFS8d/7BZs3ydMefA0WOySl0H3zXU0hTh
         XDgg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784707602; x=1785312402; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dNnBgtMvRWoIDKMpvV9eibQpg+sWb3zuYV0OsS+F7RY=;
        b=a5na9YPrODDR7svb0cxbD7Qn0nzK0EDISG6tFBSlnHZ0uC4awz0rex3taDbqqvY5Nv
         HMeyzIpH87dARIFG6m0Mdq5NNoKc7FrA+o/usjSzkMfJdSBgFaLWO7JRodQa2X7Y4Ush
         oYntSxuJi+/BIiz3JzongKVjhpl8KLCBQkHLAnq5IVPo401Duy5tXZhEOuw8ZpTqfacc
         4z05j6jOXs9dofjdJH4i/Azoq9Y4nLOIl/zy4lKSRZJIbwg6ZtCON5vBY6VZhC2DBp7/
         xMnq1hXnt7eKuexoapqI6wwXe25Q98G9kfDp8JL1Ck94nzIDvlwzodOwVqbmXy9Lup6C
         P5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784707602; x=1785312402;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dNnBgtMvRWoIDKMpvV9eibQpg+sWb3zuYV0OsS+F7RY=;
        b=Sh/84aTCarEs6VLbA0zVPxpA9jl4blxlkH3Vzyd4gUdRKNnMblA6NIPMX9fLCeFvbZ
         +g0tZrFToFO0Hg3s4RhAsoR7LyOICFQwaZKdt9v89x5DiEFqnS1PQdaW8WsS4i+urS2t
         iNEIizsw405A9BgwkXeUZtXkF3+mYjBJkI3Idu4CsTS28Xp0TmS4yuZRugekidioZC2Y
         xQrVnAsCiC3kMvD3duj6PcsdTu14W42RDkYPwn7kCpfChLN3JlVfj5hMkwq4ehnby4NJ
         ly3N0wi+M7uDm8qxtS3ZPno9kre0VpSYhAZ+lSOMPaT/Q1SODc/jrBYAWNWtsAS06ih3
         9lQA==
X-Forwarded-Encrypted: i=1; AHgh+RqYY2/8uWgxzWFMZihfond/UOmypmZPEg0s6VInoZztKIyh/W/Hpf/zVfGzPBFf37egXADjyodhRokIqnBLMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyQ+R3ZYfOSrpGAMX26x4bbIuUgwCcFe3E2Jgw4mvPa3oVJSdfZ
	MX6m/7juJbTWs+S6R2A2xdR5+csz7w6KpeN9lXWeNdBlFwugm3M2erNMNOFq8MkRCFfLML3pS5n
	ZD6bFvYVzaQ2phC1mYX0EvXw3GNRsKi98/P2FWNRAvw==
X-Gm-Gg: AR+sD11I6jkhTvM3BHZCOHMZJz4Jt+ispicTsPiLU1Boy+1UPiw18teiXxW8tDDR5lw
	VXXBy4R+EhKBEY/SA4igGN+y7V1ECatnVGD4YNyY1le1oeHjryE25wt+iQEgIIROk3+5CxSv+bA
	jnm0v+rRQXWpho/LbGdGCAHn6cVt9M1QEK1jnS/5kY5M3DLfw+Bej0Ded/f/hu5I3cea14aV3Qw
	qkUSdN8nN+P1Qn5iAXFXCKYq3udd2OIGl0LYdXiU8lyt3fwgXsLKZVjcHfWozJRMjVNBqFl8sc9
	brWYcAWU2xAG+8ZBWGZqPHCEV8+B
X-Received: by 2002:a17:907:72cd:b0:c16:3187:997e with SMTP id
 a640c23a62f3a-c16b46ade61mr848716466b.7.1784707602465; Wed, 22 Jul 2026
 01:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
 <20260721-synopsys-dw-dp-improvements-v4-10-f0f4a4ede712@collabora.com>
In-Reply-To: <20260721-synopsys-dw-dp-improvements-v4-10-f0f4a4ede712@collabora.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 22 Jul 2026 12:06:33 +0400
X-Gm-Features: AUfX_mzBw-mJbEQ5WnpY1t4r4yErUbUBJRWK9UICtFzIcvZnEWvrXDi7mlfnRTM
Message-ID: <CAKTNdwE6OOPHYpMQXYfWPtdA26AiPJjSi6N_J-yGSU0mSL7HSg@mail.gmail.com>
Subject: Re: [PATCH v4 10/10] drm/bridge: synopsys: dw-dp: Add audio support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_010644_481487_0EE45713 
X-CRM114-Status: GOOD (  13.23  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ViYXN0aWFuLAoKT24gVHVlLCBKdWwgMjEsIDIwMjYgYXQgOTo1MuKAr1BNIFNlYmFzdGlh
biBSZWljaGVsCjxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IElt
cGxlbWVudCBhdWRpbyBzdXBwb3J0IGZvciB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBEaXNwbGF5
UG9ydAo+IGNvbnRyb2xsZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1kcC5jIHwgMjMwICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMjkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKVGhhbmtzIGZvciB5b3VyIHdvcmsgb24gdGhpcyEKClF1aWNrIHF1ZXN0aW9uLiBJdCBsb29r
cyBsaWtlIHRoZSBhdWRpby1yZWxhdGVkIGNoYW5nZSBhbG9uZyB3aXRoIHRoZQpEVCBiaW5kaW5n
IHVwZGF0ZSBpcyBpbmRlcGVuZGVudCBvZiB0aGUgaG90cGx1Zy9QTSBwYXJ0LCBhbmQgc2hvdWxk
bid0CnJlYWxseSBkZXBlbmQgb24gdGhlIChsYXJnZSEpIFVTQkRQIFBIWSBjaGFuZ2VzLiBXb3Vs
ZCBpdCBiZSBwb3NzaWJsZQp0byBzcGxpdCBpdCBvdXQgYXMgYSBzZXBhcmF0ZSBtaW5pLXNlcmll
cywgc28gdGhhdCB0aGUgd2hvbGUgdGhpbmcKZG9lc24ndCBoYXZlIHRvIHdhaXQgZm9yIHRoZSBm
YXRlIG9mIHRoZSBVU0JEUCBQSFkgc2VyaWVzPwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
