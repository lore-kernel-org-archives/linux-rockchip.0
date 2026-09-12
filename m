Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B1CC88E56
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 20:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sa0ZHhrw2G6siV/ObAK9woE52yY7vBmGjBVTf3mnl/k=; b=dm8g+F/+vi+oeU
	AZ86/lAM78x0MmTuwDYhTUEyVX68kYYPPCPG+Px41+1DowUheCTGERuVfvfVoO7QOvPch9U1s7MDE
	/KxnoVSOEHUOYKYrcuANLDlyQV18d/xyB76VZ6ycN0ZvO0hhFfwaD3lzuxcXfObedXcFs4uCxiqBR
	cYrfRuIrrraf9017+5VixfHTCXIX76xVbLtU1equ4PiLcmsUy1t808gyfMUWme5AAcXtVObeaRg8F
	HvOUtqYAxMCvmdng3G5/nAZHmUCOgUc/SItbaCk1JNBu6dAhcoY1lCCJQEkKNtQ+PcW7DczDiUXmJ
	0EeSduNx6HYK7n4/JK9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5UPb-00000001ANo-0EbF;
	Sat, 12 Sep 2026 20:33:23 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5UPX-00000001AMJ-3Xfd
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Sep 2026 20:33:22 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c294938a983so107226566b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2026 13:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789245197; cv=none;
        d=google.com; s=arc-20260327;
        b=ccStN0sr/NjvPgStcdW2us6BlvGxxjSyLFO1lj8DJVw/N7pD3MEJTyVqCae63Rupet
         iMy8U8cVTolTzE0Cwu8dSqv2CAydkLNV5DuBENRqZ3i0egFkX7EToU0s+FAyZSD6xU/p
         0aJIhwj5a8z9z8nois6RPD+R0udDBQET88ploeewm05Qx8i8Vl2eA38a9+f9XbdWQcGj
         j8/jvMloxKYMZuY0f5YJBawf29fiwBZ7VKT1I0rRWxXplNUoX0JgzwAjRcVb/4U6DsJC
         Y+hisoI0SkEVug31S3/49shwZfzgLWuwPLWUNo1++Lf0ueXKbzLnJ9ft24s6I+adbt42
         v+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        fh=77/dKziV3ZlTUw8ebqkv+59b4JDKai3cHNVnDfv95R4=;
        b=JA7Uv3GMbWwMxL/8CXG6zMiFhfyJeFuwCIPgGOf8xjSOgUl+VDeC7y+PzqtY707k6O
         AZP09P/DPC0BAZbodmbpud3Q1rh2DZ/b+QirSrjxe8iThWMC5gJhXLahM4Zkz5QLh4LE
         A7UjCdY9bRoycEsYPJy7stGhODk682p0pnsowddAS4E8URL5GArcFumQOKY0Mg3OczOZ
         hAbpEAKNs6SZmvJmri7W/UY4OJl/6DQXSkejDzLGR4st8LdhkiuTPKTTaqnMfwaVLgOr
         fnG3ii7ML34JX3FVH51P21FByAM8AWo/nQpOBqchGm3rpKHONLYbBJb88xTaijUBB2xT
         iaHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789245197; x=1789849997; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        b=nVUaoogTaAonFjYzZ0a/JkPVspUIVh1KfzZ6J0V23nQ+RRvDV3Tl/1AiP5MPBMCVf9
         f9TIRJDZ+WdXuxYrUzzYISMyYf1Mn/H5RcbethvaEEjeEvGZk2OeCH2xBQiOzbnwBQTm
         c6CWaE6lgBVQzXQJ9okBiXVhp+Pb1Zmhkpy+zwmdQ/3E3TgdbdjGTTVdsjw9L9YxA9/B
         MElV4+RcQaa5MYCUKM8dZEgZTN0VowW72oP+eCamnf8otcCjH+HfOA4eqesU3KGBZDrS
         nT4Tq9bEJYa/mgYFvGYKkXGi6GpztbWxNimnXt6jwHjRntKuTJqhajIF42vtkkdbX+b3
         /7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789245197; x=1789849997;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fXb2RdQOVdFeimkTuBnAC0nV21XWeOYpcj6vU3s52nc=;
        b=pKCzhOesZhQxNK0jJHM4QxPrllHhWpstzsf7xnRHRS34yGTJziuG1tlkrWDm6E2pRp
         bnGgocwznJTcALcltS5KKSHFp+dti3JOjYQFeTcaRaa/xCMdNRkuQoZyh62qBlV1kMxu
         KeW5cNt4fFVfBT005FHKXx5KmC1D9M0em2ZBT6jxagLF9YIYBNBC7k0rQxbxvoXdcvSh
         E8D/OX7dSUy5SBIYwd0cXIn9CxOCyQBhm02XF9VVRFU99Dr8cH8Z1eABXrOr8hciptk9
         ooXLxzSWLZ8lzPe7a3QYyvk60thXqV95IuxQGBLTos9d2o+8UIfA8OrlmdP1f87Vy5Ya
         AAxw==
X-Forwarded-Encrypted: i=1; AKwUvByde1hznLym8Jn7wM2lAdBKOOFbc8FxGPjv4aTIhSYGGwtBfRr/uXgPNDShhDbv4heWUjSQnlBj/Z7/mFhHuw==@lists.infradead.org
X-Gm-Message-State: AFuF++l3q9m4OLjYnHdNb/67kc3w/gkw9Z1CvMnr823KrG/V3Cb+oSre
	NJ/xzRuyD/320kq8J/aRu9h74WKoV1/xdmM9zxOh1A2xPAO+kf1dXdqkleXTus2mAcjX+s6A3LJ
	pF8XMXEhffiei8olljZT17p2jhc7a+yg=
X-Gm-Gg: AYBFou18BIbdqXWP+jcIoauVBdafnZt+QRAeKYAEGpUHLgpQRCwdXPgTGA3/x+C7rau
	5mz+lt1B5tfiBjMpgMaoa/wRGBo89x397AJOH3KCURK+5n7bEaCiKCDzJ7AWoKmz5i4MBSbrFb9
	w9UxIQ+pCHWPwAyhu+PKEvel7csm6Vesslo96ssVRxIBxce67SVgx5zoRLlRyrZDJxG4sUpCYep
	MXKyGb9WNj9uIUMDNScCnlbhwdZR9D9KPFMwf0iL1/2jX3/AACuHk0j7XVt3DevadDMltDmMeI0
	vtNOW12khc7SCr8HVZz5ZRJfX+6xdRTBjaE4sEH7pmj/j7CpXIIUCY6TCg==
X-Received: by 2002:a17:907:d02:b0:c25:2a78:15ed with SMTP id
 a640c23a62f3a-c296659c61fmr976523566b.6.1789245197295; Sat, 12 Sep 2026
 13:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-2-coiaprant@gmail.com> <20260912131421.2960a12d@kernel.org>
In-Reply-To: <20260912131421.2960a12d@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 13 Sep 2026 04:33:05 +0800
X-Gm-Features: AcwNN1Wp1szdgOCnvhL-ujyIZJIERlGVxaN0L7OfiFu9TcpEfz4jyCgcrEH55iM
Message-ID: <CALj3r0itTv0+8R+mTg3wtMD95=4V3Znwsk48oxaSjrVMLoJfJA@mail.gmail.com>
Subject: Re: [PATCH net-next v4 00/10] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_133319_902904_9F44FCC3 
X-CRM114-Status: GOOD (  11.01  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxNOWGmemBk++8mgo+Cj4gT24gTW9uLCAgNyBTZXAgMjAyNiAyMzozNzowMyArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gU2Vu
ZGluZyB0aGUgQUkgcmV2aWV3IEZZSSwgcGxlYXNlIGxvb2sgdGhydSBpdCBhbmQganVkZ2UgaWYg
YW55IG9mIHRoZQo+IGNvbW1lbnRzIGFyZSB3b3J0aCByZXNwaW5uaW5nIGZvci4gV2UncmUgd2Fp
dGluZyBmb3IgYSByZXZpZXcgb24gdGhlCj4gZGV2aWNlIHRyZWUgYmluZGluZ3MsIGFueXdheS4K
CkkgYXBvbG9naXplOyBJIGhhdmUgYmVlbiBzbyBidXN5IHRoaXMgd2VlayB0aGF0IEnigJl2ZSBy
ZXBlYXRlZGx5Cm92ZXJsb29rZWQgbXkgcGxhbiB0byByZXBseSB0byBzYXNoaWtvLWJvdCdzIGNv
bW1lbnQuIEkgd2lsbCBnZXQgYmFjawp0byB5b3UgYXMgc29vbiBhcyBwb3NzaWJsZS4KCkJlc3Qs
CkNvaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
