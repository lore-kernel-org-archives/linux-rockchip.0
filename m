Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCCDDC352A1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 13:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPZfds2srjlRCncHs8HqMw9V+o6C1027cf96F+L/ox0=; b=ePrbrbvQT5Wya5
	0hXeAqr6Bl3riPAKn34t5DNbiPYmdtShIn9zNMt0t8ePyalkdSrA0sxbVUFjQ8MzNW8RVmrdCjel1
	NI055BXhSxaM86EK7EyzeBSdhLeXXvqnMSrBJgCQbzuNXmfuwpvzRLBRVAgXYqn7WqSWFzNw/0Ug0
	EljsDjFWQy0GjdyIonnrKBQNczQodlj/sLJ3thI/Gqj7EIK2kE5FOQvIGaOQKZvNCTmCHtVwjO8x4
	GO0j02UXeV1MGBiwrAZdlwRXXhbuTf2hcIU0F6os2SFywcqflZNg0ETQ6R6VaHtlcOM67v9ej6IqP
	piBLoaLvBdiqoBJFa0vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2YTZ-00A8Sx-W4; Tue, 06 Dec 2022 13:59:14 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2YTW-00A89P-LB
	for linux-rockchip@lists.infradead.org; Tue, 06 Dec 2022 13:59:12 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-3e45d25de97so96274307b3.6
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Dec 2022 05:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kk7KJe+l4C4JmAt+wWsokFYlio8NUCGKV94MLBWYbDA=;
        b=BHgXv+BEt7kIAmkQh1TjjerUmDy2oEHCy0dumNs2RidUeA+YNC+vzLM/pxDKRnBxaO
         TPvRG8q20sNeo2XDfhuDUzbKTbXBTo7kER1LZXXtEL6ZK/4p2OGRH8herAgEgZetzi7z
         XZiypgzdegBGx4F3NTQmBEkJtzwv8OTluzZzVrhJQUQJc77V0t2jwBmyvaPrRmi+u749
         W260RaolAzGjs+F/5agcLPSDtSAP0wq+kO650SiGVfjtxIvubOQZqPWAfnSqFf2MfC/0
         upCUsxHh3eQ+EnSJFD/FdIXu7Nl96z9SmILaUDb5S4+CRxG93l7YQyGYoNt/T2Vm1nme
         RNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kk7KJe+l4C4JmAt+wWsokFYlio8NUCGKV94MLBWYbDA=;
        b=BeYYUwgHRoFlnAHJRPV0PV5F19e5f7BjLyBkAxqs5W5Nxr9vG83gHsxate6jaLf3Dz
         jl8RW5dNohUjuhcF18EXrD/nMd9xD3b3o5WuftDfXb3+5P6vHBOJ+tQhplNPIIxwJsO0
         9rhFux7Az5wiAf0Fg7Z7T3sbXbAALfAaFCrUX8sru7EFqSByYGLznR7roiDLCcOxA13R
         13L1tRRlkq6+FKnK6kuVNZVGowXtqyuxMLCF1VhQ84gnR4gjsnoZMTYtH6vpqagFgziN
         04CUy09ARRBXhDzekQcXqrCGrRo5snMROECeq8ndJN3dy/b0azFF7EO7n42q90chR9Us
         6A/w==
X-Gm-Message-State: ANoB5plLYM8+2whxfDW7OyB5gUoaN6YrNOL/a/AJH1AQfJx8yeiXwgpH
	3qXxtAj6326UZ//fs1vuPV7XhbVe7jUaOh73CavX9w==
X-Google-Smtp-Source: AA0mqf7O/Bc2E8iMh0Jxk7krElAwDPuh3wCtAqmS2Th8NLmQlok4cFXrsdTrgPCeLONDwHr9Q6d5fwz9rwnpoVdCpYY=
X-Received: by 2002:a81:b8b:0:b0:3d4:532a:753d with SMTP id
 133-20020a810b8b000000b003d4532a753dmr27136303ywl.343.1670335134121; Tue, 06
 Dec 2022 05:58:54 -0800 (PST)
MIME-Version: 1.0
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-3-macroalpha82@gmail.com>
 <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com> <7746700.MhkbZ0Pkbq@diego>
In-Reply-To: <7746700.MhkbZ0Pkbq@diego>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 Dec 2022 14:58:41 +0100
Message-ID: <CACRpkdZ1XX9Od4eUnQRYwcfLjs8Ct-reXNQvv1zaxmj85-4jdg@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	maccraft123mc@gmail.com, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
	thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_055910_701542_D00D7C71 
X-CRM114-Status: GOOD (  11.26  )
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

T24gU2F0LCBEZWMgMywgMjAyMiBhdCAxMToxOCBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKCj4gVGhvdWdoIGluIHBhc3QgcHJvamVjdHMgSSd2ZSBzZWVuIHRoZSBz
YW1lIGRpc3BsYXktY29udHJvbGxlciB1c2VkIHdpdGgKPiBkaWZmZXJlbnQgcGFuZWxzIChhbmQg
ZGlmZmVyZW50IGRzaS1pbml0LXNlcXVlbmNlcykuIEluIG9uZSBwcm9qZWN0IHRoZQo+IGRpc3Bs
YXkgbWFudWZhY3R1cmVyIGV2ZW4gRU9MJ2VkIHRoZSBmaXJzdCBwYW5lbCBhbmQgcHJvdmlkZWQg
YSByZXBsYWNlbWVudAo+IHdpdGggc2FpZCBzYW1lIGRpc3BsYXkgY29udHJvbGxlciAoYW5kIGEg
ZGlmZmVyZW50IGluaXQpIC0gYnV0IHRoZQo+IGRhdGFzaGVldHMgZm9yIHRoZSBkaXNwbGF5LWNv
bnRyb2xsZXIgd2VyZSBmb3IgdGhlIHNhbWUgY2hpcCBzdGlsbC4KPgo+IFNvIHdoaWxlIGluIG15
IGV4cGVyaWVuY2UgdGhlIGFjdHVhbCBkaXNwbGF5IG5hbWUgZnJvbSB0aGUgbWFudWZhY3R1cmVy
Cj4gaWRlbnRpZmllcyB0aGUgZGlzcGxheSArIGNvbnRyb2xsZXIgY29tYm8sIEkgZG9uJ3QgcmVh
bGx5IHRoaW5rIHlvdSBjYW4KPiBnbyB0aGUgb3RoZXIgd2F5IHdpdGggdGhlIGNvbnRyb2xsZXIg
bmFtZSBpZGVudGlmeWluZyB0aGUgZGlzcGxheStjb250cm9sbGVyCj4gY29tYmluYXRpb24uCgpJ
IGRvbid0IG1lYW4gd2Ugc2hvdWxkIGRvIHRoYXQuCgpXaGF0IEkgbWVhbiBpczoKCi0gTmFtZSB0
aGUgZHJpdmVyIGFmdGVyIHRoZSBjb250cm9sbGVyLCBpZiB3ZSBrbm93IHdoaWNoIG9uZSBpdCBp
cywKICBzdWNoIGFzIHBhbmVsLW5vdmF0ZWstbnQzNTUxMC5jCgotIFByb3ZpZGUgaWRlbnRpZmlj
YXRpb25zIG9mIHRoZSBjb250cm9sbGVyK3BhbmVsIGNvbWJvIGluIGUuZy4KICBEVCBjb21wYXRp
YmxlIHN0cmluZ3MsIHByb3ZpZGUgaW5pdCBkYXRhIGFzIGFycmF5cyBpbiB0aGUgcGVyLXZhcmlh
bnQKICBtYXRjaCBkYXRhIChvciBzaW1pbGFyIGZvciBBQ1BJKS4KCllvdXJzLApMaW51cyBXYWxs
ZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
