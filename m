Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315EDC282DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 02:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQNBva9DzX5x7NjVBDgNTc9noDeiyVkfdCkDOyk+HN4=; b=XkUGxTJ1l5O6aO
	qD4xCxgdg3vYv8ENNBjFICT29CItNas51u6dBU15yNla18dC5twIf7QgrfpfIhwEAwKdmqd3BdnfZ
	pu08/Gr1KevOELOjZlektY4mZdKHXRTqXfH4+Rl/BHCT4FGKoN1lfEt+jhqyLe2ryZRayQ4j+RW3/
	hfwhB+9m6K3PTYxjwyxAa4qhi/o2aFNjCrgbhM5Ht32frHI6kBpt22b/n2UsiTwroaj0I/2rubIVj
	keWoGI2DBry5FJ+h7m+e+4roUKSQnSC6NehEP2+Jnb0e9TatdduVeFHDqMcYErmssUT75mX7qFtig
	J+nr+hkUjs956DesZodw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsuur-0000000CxPu-1lSJ;
	Fri, 14 Mar 2025 02:36:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsutQ-0000000CxK7-2i9k
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 02:35:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5497e7bf2e0so1958233e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919722; x=1742524522; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VK4KlxY3uUa17qisCA7GoD5gggjvWR4zuA8FgG9CVRU=;
        b=bYseDhiuyWCA8j7smqjrg1kZXCzTcPLHjzL1Ct4ucHR3tThny1at0uUYkjdL/Vfmod
         Rj70QCBrKMGEL9kSfVuRlo9TgrvX3kN3NNqAS4ba9082Yo2j2ZdFwpmnWALDk8aRDvCn
         JWZ1oF9UsYpFrrhpqNY1RRtA3HBZIcFfGIWQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919722; x=1742524522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VK4KlxY3uUa17qisCA7GoD5gggjvWR4zuA8FgG9CVRU=;
        b=iOFMmk1o9FaIxkKI60W5mzVg4Y8XMk4/uSchppz+3R4K4Uh7pqM71BKyZ0lgEGvrJF
         dAp6NdGRWCeQC4nAGsZubkStCAoBBklyRbTCgOSApFxXfTNEBke8CH1H5o2b9JGZ1shO
         eMuiyVIMu1A1x+Afrghtx1DwZol3ugQwYpFcISJber7aT1H8QsqLzli/AMblhSDgi5CE
         OZl2dXfykhhNBRdm8cvaNLmGcnisEKgW1WY9aiHuSWmpLDsqjdKoTUv7NL4kztQEfk5/
         K8Ri0eKO9qep/x5xuK6JKr52aArsbhq+vmMz4gSFg7yuYtxClf4jiRc8fdyhWcH2GCAe
         N+lw==
X-Forwarded-Encrypted: i=1; AJvYcCWeyQSL17+XIEQKgM9ifoxGij/wjhk72WTSWqeqbEVwVF1x/SbExh8VP+PbNKkNgbBeZsw+GKQ/yx3iCjREiw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVtDkpTnf0vRDqjc8g+9Wa38kY3Npa/PShqpewrh6LPuvRw72w
	l4FD+U76Ea5Dcq87CnxREmkiGcXmaowPaOvp2Dh3cKIJsbvFpRa9PRd4PVJNzdl3T4J5bHjYMdG
	PWc4+
X-Gm-Gg: ASbGncsi8Dbt3deoPU5BBR1Mgw7pEovJBUJw64/Vu8yKtuQT7szDrrdXdaMlvihAV2/
	ItoF9Spvhv9V0u9P9erCwill811OFJ/dv8Ul5xi5LtcwwiCawI5iHu2XbELCUTVe706hR0zjcMA
	mqES2+ePzWRok55CdOqu9lLpMxsRaOC6A6n62uyOtny7Ook27NqyThQIm7/Djq4//DET4JqO1AZ
	/a4T9in3aB1drbKafCbnjNDaqV1it2Zqk/OJOEJIEVvdH3parkFl58W4yv1OhnDER2+KRGUW3Yg
	+L7JGD5wd5J6Tzvi1yZLM7mLFn3WzMpj3TsF2FWv6SguHO31vcIScwc4A7m1PHi20a0/+c9YgLS
	4WUGDl+FgSL8u
X-Google-Smtp-Source: AGHT+IGlErn9U240irgttdti+8qXj2mA99X8XofY/J6WVmfZjSczFxYeKKLl9TJUK2pu+ZuKSNXS4Q==
X-Received: by 2002:a05:6512:6cc:b0:549:8f47:e67d with SMTP id 2adb3069b0e04-549c396e52dmr281823e87.34.1741919722530;
        Thu, 13 Mar 2025 19:35:22 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a85d2sm392122e87.35.2025.03.13.19.35.22
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:35:22 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30613802a04so17872901fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:35:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWqS6uxa8NirjlcUlWJbOJoJCBYulATZlDJkx/8DpDglTgvOWvcqSGptZWp8SYUxN8UzV+Penh4tGLNeb+5Tw==@lists.infradead.org
X-Received: by 2002:a05:6512:3a8e:b0:549:4d78:2418 with SMTP id
 2adb3069b0e04-549c38f7d9cmr254376e87.27.1741919283647; Thu, 13 Mar 2025
 19:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-8-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-8-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XigZ7k9ZmyT8wEeJKB79ef4ut7XrKdmXGqLbwdbxwe_w@mail.gmail.com>
X-Gm-Features: AQ5f1JqOO-vARbb-qxWvQyFu_Kv3lXKxcHR_dDdzPTPbj0JZAG253PMvReLZCQo
Message-ID: <CAD=FV=XigZ7k9ZmyT8wEeJKB79ef4ut7XrKdmXGqLbwdbxwe_w@mail.gmail.com>
Subject: Re: [PATCH v8 07/13] drm/bridge: analogix_dp: Add support for &drm_dp_aux.wait_hpd_asserted()
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_193524_676483_D4F90976 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIE1hciAxMCwgMjAyNSBhdCAzOjQy4oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBBZGQgYW5hbG9naXhfZHBhdXhfd2FpdF9o
cGRfYXNzZXJ0ZWQoKSB0byBoZWxwIGNvbmZpcm0gdGhlIEhQRCBzdGF0ZQo+IGJlZm9yZSBkb2lu
ZyBBVVggdHJhbnNmZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGlu
Z0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgLi4uL2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9n
aXhfZHBfY29yZS5jICAgIHwgMjEgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBpbmRleCAyYjc2YTljZjNiY2IuLmI3ZTE0M2Iz
ZmY3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4X2RwX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5h
bG9naXhfZHBfY29yZS5jCj4gQEAgLTE1NDgsNiArMTU0OCwyNiBAQCBzdGF0aWMgc3NpemVfdCBh
bmFsb2dpeF9kcGF1eF90cmFuc2ZlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LAo+ICAgICAgICAg
cmV0dXJuIHJldDsKPiAgfQo+Cj4gK3N0YXRpYyBpbnQgYW5hbG9naXhfZHBhdXhfd2FpdF9ocGRf
YXNzZXJ0ZWQoc3RydWN0IGRybV9kcF9hdXggKmF1eCwgdW5zaWduZWQgbG9uZyB3YWl0X3VzKQo+
ICt7Cj4gKyAgICAgICBzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCA9IHRvX2RwKGF1eCk7
Cj4gKyAgICAgICBpbnQgdmFsOwo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBpZiAo
ZHAtPmZvcmNlX2hwZCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7CgpBcyBtZW50aW9uZWQg
cHJldmlvdXNseSBbMV0sIGl0J3MgX3Bvc3NpYmxlXyB0aGF0IHRoaXMgc2hvdWxkIGhhdmUgYQpk
ZWxheSBsaWtlIHdlIGhhZCBpbiBzbjY1ZHNpODYsIHRob3VnaCBtYXliZSB0aGF0IHdhcyB0byBk
ZWFsIHdpdGgKbGVnYWN5IGRldmljZSB0cmVlcz8gSXQncyBiZWVuIGEgd2hpbGUuIE9oLCBJIHJl
bWVtYmVyLiBJdCdzIGJlY2F1c2UKZXZlbiBpZiBIUEQgd2FzIGhvb2tlZCB1cCB0byB0aGUgY29u
dHJvbGxlciBsaWtlIGl0J3Mgc3VwcG9zZWQgdG8gYmUKd2UgZG9uJ3QgYWN0dWFsbHkgaW1wbGVt
ZW50IEhQRCBpbiB0aGUgZHJpdmVyIGZvciB0aGUgZURQIGNvbnRyb2xsZXIKKGxvbmcgc3Rvcnkp
LiAuLi5zbyB3ZSB3b3JrZWQgYXJvdW5kIHRoYXQgd2l0aCBhIGRlbGF5LgoKUmlnaHQsIHNvIHlv
dXIgY29kZSBsb29rcyBjb3JyZWN0LiA6LSkKClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
L0NBRD1GVj1Xb2lnRERURzZ3VEswc21zeEFTVmZLNUJ6elc2S05wS1dxOTd2NEdBZ3Ztd0BtYWls
LmdtYWlsLmNvbQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9t
aXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
