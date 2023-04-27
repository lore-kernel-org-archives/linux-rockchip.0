Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E906CC77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 07:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2Yucq7IcxrrsiDIc0i2k1Vgdu13P8TM1qM6JoiAWaM=; b=QLpN/a0+wj3saj
	DkKDxlB88Dl1lvIMLH1u/KiL7KVtMtnMB3WV2kGRb9kMqaLmkRW8TwBen8jGJCNGNbSHvMQImjVGA
	kzFM+sG+4zYoTYZ875TFfmulWP+yR44JU3/6OVdnYAi61LqibcGPxVqaLwJ089SXHMlIOYFs3Tj1p
	hjaFhgerpC6vF1TNjvv29dmit5D/YpApjMJRtYSHEAiztE0qtPPCKWiXLds5eS4gaPjqLm8tDpbC+
	pgg41LAy2mK5WbvOpYT7Cq8iApxY8gh3ctuoluHJmGPolowmpbiCZpNmpubI8wWLdoxQMAotbonQ9
	ZYdj8fX8s3UGAppiJJMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prwLQ-005iVD-2N;
	Thu, 27 Apr 2023 07:47:12 +0000
Received: from mail-yw1-f176.google.com ([209.85.128.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prwLE-005iPR-33;
	Thu, 27 Apr 2023 07:47:02 +0000
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-54fb89e1666so63621177b3.3;
        Thu, 27 Apr 2023 00:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682581618; x=1685173618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EEqTvNM+jsZjZI+7JGQt1mFWY94TcOH6GPmA2DQxr8s=;
        b=IiumWP0e9gZnZsaXALjuaxM2Xs+oiS+qdFLBSI4e/ilIW8tlhSNlmETYMwIgtrqQ/b
         4mYsLuV8JOa6F2xYx/qQBk/hPq/4h7HgGRLHJMNKoP/R8qXlcU/1XF7ZIZw+kxjlW4Tr
         L8aqncInpg457yKgu9q3CHlAlDnKuBHIz4Or0vjpaX3byET9GTEJ5tmWC6dgaMNBMoDt
         XWo4ZPVno7p7voVhPYMN2kjgCmzShuIHDAeQfL+tR1WVR431OxtQ4zkMleTrV0X8q9kZ
         BQHJSdu9h8w0j75Cv705YFyFPUxgGJlfS2JDR7rHtoh6vaqMwcljRtwMAlcEtTMLfQoA
         vHVg==
X-Gm-Message-State: AC+VfDwuymkcpEqdPAyM3kuC+ZJGfHaH/tOtXfQC5wQ5rCuGOjqg++C9
	Grw2wbYl0kc48LPC5/JkpmwQJ7TwbeM21w==
X-Google-Smtp-Source: ACHHUZ6F5KAsp/g5rnkVccRSZ8t06ir3Lk6ES+kOo3utTAcqLuluiFvN7F/MYHx8MAfC8RUDbl9vbg==
X-Received: by 2002:a0d:d6c3:0:b0:54e:ddbb:64df with SMTP id y186-20020a0dd6c3000000b0054eddbb64dfmr544680ywd.30.1682581618030;
        Thu, 27 Apr 2023 00:46:58 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id y73-20020a81a14c000000b0054f52b73ea8sm4631403ywg.26.2023.04.27.00.46.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 00:46:56 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5529f3b8623so63581017b3.2;
        Thu, 27 Apr 2023 00:46:56 -0700 (PDT)
X-Received: by 2002:a0d:d712:0:b0:54e:ed46:6b39 with SMTP id
 z18-20020a0dd712000000b0054eed466b39mr582224ywd.31.1682581616022; Thu, 27 Apr
 2023 00:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com> <1cfc224b-f8b0-3143-42d2-188b56368c61@gmail.com>
In-Reply-To: <1cfc224b-f8b0-3143-42d2-188b56368c61@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Apr 2023 09:46:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU91NtZeFKe6mB3B48TNb64wfPu77xRbOEVX4tV65e38w@mail.gmail.com>
Message-ID: <CAMuHMdU91NtZeFKe6mB3B48TNb64wfPu77xRbOEVX4tV65e38w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, 
	Ansuel Smith <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-omap@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, linux-oxnas@groups.io, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_004700_984800_DAA4E7F3 
X-CRM114-Status: GOOD (  25.81  )
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

T24gVGh1LCBBcHIgMjcsIDIwMjMgYXQgOTozN+KAr0FNIE1hdHRoaWFzIEJydWdnZXIgPG1hdHRo
aWFzLmJnZ0BnbWFpbC5jb20+IHdyb3RlOgo+IE9uIDI1LzA0LzIwMjMgMTc6NTcsIFJvYiBIZXJy
aW5nIHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMjoyOOKAr0FNIEdlZXJ0IFV5
dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4+IE9uIFR1ZSwgQXBy
IDI1LCAyMDIzIGF0IDEyOjE24oCvQU0gUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4g
d3JvdGU6Cj4gPj4+IEkgaGF2ZSBhIHNjcmlwdFsxXSB0aGF0IGRvZXMgdGhlIGNvbnZlcnNpb24g
d3JpdHRlbiB0aGUgbGFzdCB0aW1lIHRoaXMKPiA+Pj4gY2FtZSB1cC4gSnVzdCBoYXZlIHRvIGFn
cmVlIG9uIGRpcmVjdG9yeSBuYW1lcy4gSSB0aGluayB0aGUgZWFzaWVzdAo+ID4+PiB3b3VsZCBi
ZSBmb3IgQXJuZC9PbG9mIHRvIHJ1biBpdCBhdCB0aGUgZW5kIG9mIGEgbWVyZ2Ugd2luZG93IGJl
Zm9yZQo+ID4+PiByYzEuCj4gPj4KPiA+PiAiZW1ldjIiIGFuZCAic2g3IiBhcmUgbWlzc2luZyBm
b3IgcmVuZXNhcy4KPiA+Cj4gPiBObyBkb3VidCBpdCdzIGJlZW4gYml0cm90dGluZyAob3IgSSBt
YXkgaGF2ZSBtaXNzZWQgc29tZSkuCj4gPgo+ID4+IERvZXMgeW91ciBzY3JpcHQgYWxzbyBjYXRl
ciBmb3IgLmR0cyBmaWxlcyBub3QgbWF0Y2hpbmcgYW55IHBhdHRlcm4sCj4gPj4gYnV0IGluY2x1
ZGluZyBhIC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNoIGEgcGF0dGVybj8KPiA+Cj4gPiBJIGFz
c3VtZSBJIGJ1aWx0IGV2ZXJ5dGhpbmcgYWZ0ZXIgbW92aW5nLCBidXQgbWF5YmUgbm90Li4uCj4g
Pgo+ID4gVGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3QsIHdlIG5lZWQgYWdyZWVtZW50
IG9uIGEpIG1vdmluZwo+ID4gdGhpbmdzIHRvIHN1YmRpcnMgYW5kIGIpIGRvaW5nIGl0IDEtYnkt
MSBvciBhbGwgYXQgb25jZS4gU28gZmFyIHdlJ3ZlCj4gPiBiZWVuIHN0dWNrIG9uIGEpIGZvciBi
ZWluZyAndG9vIG11Y2ggY2h1cm4nLgo+ID4KPgo+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8g
bW92ZSB0aGVtIGFuZCBwcm9iYWJseSB0aGUgYmVzdCB3YXkgdG8gZG8gc28gaXMsIGFzCj4geW91
IHByb3Bvc2VkOiB0aGF0IEFybmQgb3IgT2xvZiBydW4gdGhlIHNjcmlwdCB0byBtb3ZlIHRoZW0g
anVzdCBiZWZvcmUgLXJjMQoKRlRSLCBubyBvYmplY3Rpb25zIGZyb20gbXkgc2lkZS4KCkdye29l
dGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBV
eXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0
QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2Fs
IHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8g
am91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhh
dC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
