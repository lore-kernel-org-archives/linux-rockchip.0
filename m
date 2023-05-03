Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A967CC77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qq4QUJmIf23KYYrcvP7AEBVdL9HVb943Cc4hlCuP5Mk=; b=UouWJLdM8xjcTx
	i1YhdP0uHXXHFpGofcGPVyDrmOUTa0Mttk62s7vdHLMkBBOpaeibp8o1G0nvj9moFqdrCBK5o7eca
	hssnjynIRmp+KYX3vJgLYylo1QI/sx+rDCXfXSnG/izjpfV/dPCeLlRDaXgO5J2Xdg9/FW+G7Jk8l
	//2JESpIblbO2LaFywmTE56M5wQX6zfXGybsLetbDzy/YKp5eWoWhnk4Wr9WJApJXpF17/ZDannss
	KHykDlsSNjCad36nlYeXU98u3M5wuYZdS001DAELvKdA71a5wJ4Vk/741hyKEXvcnnO+9pn7IuIsq
	xTNtWCT/GeBS9ZDHtf3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puJGr-005lQT-1C;
	Wed, 03 May 2023 20:40:17 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puJGl-005lK5-2T
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 20:40:13 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-b9a6f17f2b6so5536387276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 May 2023 13:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683146408; x=1685738408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hgRsKnqFosP21nRhvJTwDb+9jWUZ4oTCBD+B9SUv1+c=;
        b=PpH7MTH5m9dkyEXVIA4ICZkEIVn6fbuhrX3P1BdP3if0uOROgJ2F72A2yUx7yz3sXS
         HWtVkM2kQYKv0Z/8qhzueuBS50AQOyk7K3BJwxgGieroePKE8eXjAn/Rs2ABvHBf1Ijz
         U1P79PfFgwkyyx9FoqJJyXG0FJZj0hjbpTgXC89JzuVKxRrHt/Ymllp9Jk2sJJ4tWbfw
         y4m4tu9rb4QhSiyNaqi6I7vrNrgcUZvWsj2crRyd3wJnXlNcu8YGFm5WF58h1WRW0V1s
         LqLygvOy2n4JrcJ0Gc4Jwlxu7AuH88CzuoSB7p+d0z+N11Z8y9Tc5gacDsefTGoZl+E/
         SfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683146408; x=1685738408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hgRsKnqFosP21nRhvJTwDb+9jWUZ4oTCBD+B9SUv1+c=;
        b=AZr390QXnKtkWQE6mTIBIthxxBbWFkQ445mbOO8G6HwxTyaKyyiuBjBCCdtWzTZiK4
         PGhD4cMFMSA7YkNDATKEfXJW0IdjsnvvvtKzo5sYtcMGzqhhQPB7StkJMWYVXIcZzUGb
         RxlakLiDntxWX2/S5KWo5JeBHbgSUpNPcR7e/UjR1IZDIWyyexzyZghQbg2QGdw21gDQ
         VCdVtiAWWFVQ6fgwynUG6fBA6CpJLUIoTjzSuz8BdiIBswIL20/aTMCfmPl/cGNP3ZiK
         ih12ObjMgXyeG3aexcCMVKns+xFInu+/jX4XS0nyjAPI5vhYnGl4QOObQq3ORxmjddXd
         Vdsg==
X-Gm-Message-State: AC+VfDwhRHfLrIaLeuGl5/P2Y5/jvi0N8jD0j4hb8xzhL/J4ZRf5n6qZ
	s15GQHifFtcVtpL/rvU9CBGBoO7hzQOIEadxVD0bFQ==
X-Google-Smtp-Source: ACHHUZ504wPVYlURitbUXR0w6GF5Hd5chFJsuF27bLfRTjvW8/vWf4wN9zc7VHWrnnoXqNvPfLtTOnqfU50Ll8hIGF4=
X-Received: by 2002:a25:656:0:b0:b25:a1e1:5b65 with SMTP id
 83-20020a250656000000b00b25a1e15b65mr3778724ybg.5.1683146407758; Wed, 03 May
 2023 13:40:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org> <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
 <5e318b02-8f33-4e2d-a956-5660e1c60619@app.fastmail.com> <CAA8EJpq8x5wQa3fMebaSP3hCdMiCsZRaF+B4Y3N3royW_CeXCA@mail.gmail.com>
 <4e1e70a9-9b28-410b-bd29-fb5f5805798f@app.fastmail.com> <CAL_JsqJEdZBS231TvkmmipaXEqzvDjz+A32V6uJ4zfSMAJHn2w@mail.gmail.com>
 <4d9b4159-88b2-48cf-84d9-34169928c8e4@app.fastmail.com>
In-Reply-To: <4d9b4159-88b2-48cf-84d9-34169928c8e4@app.fastmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 May 2023 22:39:55 +0200
Message-ID: <CACRpkdZBFqhoK7WhERX8yfBHL8kxYqnOZGgBCcWaHpT8qB2S4Q@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
	Christian Marangi <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_134011_886676_8BCC1E3D 
X-CRM114-Status: GOOD (  11.14  )
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

T24gV2VkLCBNYXkgMywgMjAyMyBhdCAxMDozN+KAr1BNIEFybmQgQmVyZ21hbm4gPGFybmRAYXJu
ZGIuZGU+IHdyb3RlOgo+IE9uIFdlZCwgTWF5IDMsIDIwMjMsIGF0IDE1OjE2LCBSb2IgSGVycmlu
ZyB3cm90ZToKPgo+ID4gV2UgY291bGQgZG8gYSBzZWNvbmQgbGV2ZWwgb2YgZGlyZWN0b3JpZXMg
aGVyZToKPgo+IFdvcmtzIGZvciBtZSwgYnV0IGF0IHRoYXQgcG9pbnQsIEknZCByZWFsbHkgYWxz
byB3YW50IHRvIGRvIGl0Cj4gZm9yIG54cCB3aXRoIGl0cyBmaXZlIG9yIG1vcmUgcHJvZHVjdCBs
aW5lcyAobXhzLCBpbXgsIGxwYywKPiBzMzIsIGxheWVyc2NhcGUsIHZ5YnJpZCkKPgo+ID4gaW50
ZWwvcHhhLwo+ID4gaW50ZWwvaXhwLwo+ID4gaW50ZWwvc29jZnBnYS8KPgo+IGFuZCBpbnRlbC9h
eHhpYSBJIGd1ZXNzLgoKVGhpcyBsb29rcyBuZWF0LiBJIGxpa2UgaXQuCgpZb3VycywKTGludXMg
V2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
