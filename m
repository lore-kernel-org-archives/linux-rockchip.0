Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA735C021A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 01:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Em3LOwm1hGjaUjir3icwsuClPW2t615tSY6ReivbJM=; b=XGHRvfNOoDTGp9
	P6QDCPMLH1+rsqVx9d5yYACo9ZWYw1bJxFc3RV7RIqQsILZjUV8oTdj7pN15o0GMcR7nPDuzRoN8I
	FKAU8JRZFTIEWor272XD8WG+EoLbYrXj136NqSP9aani8pKkgqM1IW+EJq3V+IZtXbSBCVYB6FQkr
	ALGpFPiV/lI+Rcda3VxL+D7FDf/Z1T3CldXQUCgtrxjO7ro28/vFbMlYG/9IIE7tn60NWPRkTF29H
	fBfqIbflZOj+bCySbwzJ3HlTFBgWH/tduLPvYCtals9Q9xXNAqd3Q4vtLfO1ZFRd/CXJgLLlWJkDX
	fX0tcqv3Z07InMLgcaTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjzQ-0000000Fj6Z-2TtE;
	Tue, 25 Feb 2025 01:44:04 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjwn-0000000Fikq-1B6a
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 01:41:22 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3061513d353so53155871fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740447678; x=1741052478; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5BIxNZpAxXmgtUZVoY5Vf5YilI6JIk11YmgayAzmSTM=;
        b=GjFjbHObJHze/8IpyqDYclElJb4hl6vcWKZ6tv7Peb/ZHUA59wOzora1l/BhM98aab
         2ziCh4Nthu17aAizla06PPrsmeWaVW5R6Lv06u3hAiOrLe3RbxmCPEdaPlgT58xWpxqQ
         MavP0gcAVAZvnuqR9L+z2D7t+VNidQrjqXJwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740447678; x=1741052478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5BIxNZpAxXmgtUZVoY5Vf5YilI6JIk11YmgayAzmSTM=;
        b=vBka6F1YjzzEaOiyZ5P0By9ZGDUPUCqU2LMbqtokax1tvb1RKXnd1Wy51/ELrnoTjU
         +ss4I9/wHaEYqbtA0FO5652hJSCXd0sakGfDZqXo8+KTCQ61vCWyQ938qn9H7sEkn8pd
         N1kxQM1/qOAql3+HDR/bdhPIBwAVzuWSQrDNKPeqiAgOzJtK7rTPh7pEcewl729FRspk
         3wbmwMNu1SPWnOQPRdUDy2cYd5ZKY6y+7P+R7GiPUb26/48DXZ2QKP/qTRU/0cPrhDYe
         b/uXrd+I0g6RCDkjpFh46mcw9RKgg6/BFUmEXmDYZPmHUCI/4pcYIWkNrGfh+DqpoGl+
         h79A==
X-Forwarded-Encrypted: i=1; AJvYcCXqv/sdLhte+vUqoRvt7QeefHqmiT654UP6C63EstRfJP9XexsZkPDVvhPP5CX7aNLpJ4MkjZq99oK39GKlTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXpk+zvyWBOiLLGImPhC1seYxxXyX5q5c9uqi0ynvm4vvlKVR2
	bVbXrWVVBqBd7rBFWG/VsWZfUSBFaXOL13OgUSnOJEHXZ2QbPDXYp7kPJVdKO8ZUyL4bgy969hC
	HeQ==
X-Gm-Gg: ASbGncvqPXzDAwJO0+fvlctoaz3g6UFG0QMqhAHCvXa+1cMZqLVzzvjjsOgZTeNGlez
	SaURVvL8yxC8Kun3aaWuKWVqATxGYZGU/UkL0iyyY02O6b6OVF7UZ9lXtGEh4Ap1cLDZDHFwWcp
	AAjZ+aVcLdj1rNyXxXO9WJoMncm10iNr/6OYjMqQSZ1mxyycpu0IhIoPNUciNKQprVdVwfNXL7B
	3DqCg6a+aq4KXbu8G0Em1T8sFCCKMTH3pWxdiYpA/S557u7tEEdb2p+f2TwwvHsTk8dMufzj8XC
	AeMNaq2tVcaXZLg/0kujoc/hmz0uolan1k0OVTZyFhI+veAfSLBqfX5Og7MD10Gb1g==
X-Google-Smtp-Source: AGHT+IG3PkvL0hSyeaSnS0CwORBvy2kxWdXWhCNCHWru2t0DZPEBFaApLlfqh5++cQSPbx1PmNheug==
X-Received: by 2002:a2e:81d0:0:b0:302:3355:f756 with SMTP id 38308e7fff4ca-30a5b21d6e1mr52062231fa.35.1740447678331;
        Mon, 24 Feb 2025 17:41:18 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a81ac48c3sm892951fa.73.2025.02.24.17.41.11
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:41:13 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-548430564d9so2711114e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVy887yhj2dSBgiZGfXg6qFw8VUJYaz4Id+cofMYN4iW5MDePMAqXBh9N3Suj5vGZ7yolMWZ9lAL4OY3QOWAA==@lists.infradead.org
X-Received: by 2002:a05:6512:10c6:b0:540:1f7d:8bce with SMTP id
 2adb3069b0e04-54839268617mr4611865e87.38.1740447670508; Mon, 24 Feb 2025
 17:41:10 -0800 (PST)
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-6-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-6-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:58 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Uu+EvZzuFmCvq5qJ=FeBjmLTtfGT4Aq6QBSoH=Sen8PA@mail.gmail.com>
X-Gm-Features: AWEUYZkhmeaAQLOMDj5xS_yarIgfu2NVlCE358kcuOa-b55Ak-RhS879p-uOQpk
Message-ID: <CAD=FV=Uu+EvZzuFmCvq5qJ=FeBjmLTtfGT4Aq6QBSoH=Sen8PA@mail.gmail.com>
Subject: Re: [PATCH v7 05/15] drm/bridge: analogix_dp: Remove CONFIG_PM
 related check in analogix_dp_bind()/analogix_dp_unbind()
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_174121_319201_72F3AEEE 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjoxNOKAr0FNIERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gUmVtb3ZlIHRoZSBjaGVjayByZWxhdGVk
IHRvIENPTkZJR19QTSBpbiBvcmRlciB0byBtYWtlIHRoZSBjb2RlIG1vcmUKPiBjb25jaXNlLCBh
cyB0aGUgQ09ORklHX1BNIHNob3VsZCBiZSBhIHJlcXVpcmVkIG9wdGlvbiBmb3IgbWFueSBkcml2
ZXJzLgo+Cj4gSW4gYWRkaXRpb24sIGl0IGlzIHByZWZlcmFibGUgdG8gdXNlIGRldm1fcG1fcnVu
dGltZV9lbmFibGUoKSBpbnN0ZWFkIG9mCj4gbWFudWFsbHkgaW52b2tpbmcgcG1fcnVudGltZV9l
bmFibGUoKSBmb2xsb3dlZCBieSBwbV9ydW50aW1lX2Rpc2FibGUoKS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIC4uLi9k
cm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyAgICB8IDMwICsrKystLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25z
KC0pCgpJZiBzb21lb25lIHJlYWxseSBoYXMgYSByZWFzb24gdG8gcnVuIHRoaXMgZHJpdmVyIHdp
dGhvdXQgQ09ORklHX1BNCnRoZW4gaGFwcHkgdG8gaGVhciBhYm91dCBpdC4gVW50aWwgdGhlbiwg
SSdkIHNheSB0aGlzIGlzIGZpbmUgYW5kCm1hdGNoZXMgd2hhdCBtb3N0IGRyaXZlcnMgYXNzdW1l
LgoKU3VnZ2VzdGVkLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+
ClJldmlld2VkLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
