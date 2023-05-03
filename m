Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C51FC77B75
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vk3In3dfg6/4D9Xwpj7ccYLmFOBKRox2wXqqpKdnZeQ=; b=Cy5QkjEywubOee
	7Kg/o3nmdoaV0SfMy1Wjq7kdo2213W7oyIWWj2dzSLIFGmvH0ryOwKkakxWRHKznajpHFukWN+ic6
	DEHTktQA9rhSrEpYrwQb/LsetN0apeWtZrAFF7e6G/Zsuu3LFBSHADuxODxgzHfL+MX77aLbl6Z/Z
	9Hd6XNSU5fS7nIgD9e2X4A2PJTyBvTSPcfqtMpga1ty0p8xGPuLNDq7YGaTTPUZ6E2YyviI9IC58/
	fEd0OtkpT6LBT8JBm9tXVdLnnlKyueYv0FWFo2oBXjfv2iJTaoGW8qvPTkxxRAjT2+FNBmnO86Bxt
	9g3qQQ/26oSy1acXp7Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puBMs-004WJa-1B;
	Wed, 03 May 2023 12:13:58 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puBMm-004WFY-34
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 12:13:56 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-55a010774a5so59675997b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 03 May 2023 05:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683116031; x=1685708031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLFpTw4Opsx0SIhXDBcwLEPI4lObbahA52WBgGIUVsM=;
        b=w24SJl1jEsx1dsysGc/JqXn8TRE0UMobpr8S9T3y+gEnR/nI+CHCSx5trFpTNAVCVG
         8XS7YABKoVXwdqhydgmtWe9LQJJ7LBPnr1fCtb0rshbAxTDbaTU+5U0WNdSypx0SKblE
         0CP6meVuOVDCtCX96ONGJ58N4h4LCh6KY7HQXwOPLcftT7CWUqTxxZHaVMF/ygVuJ3xU
         KtX9ixUBAF79tkLLjx9Hg+1rarQ5Su54dehEmdGZNBkbkoufEbwweYd9rnB2Q94mEjKe
         bYeSIwtnrv7tEjxTeB2h1XUenyGb9cWojKfDEo4AC69c880iPhtph2axVQ7WlTkbXxO7
         +S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683116031; x=1685708031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HLFpTw4Opsx0SIhXDBcwLEPI4lObbahA52WBgGIUVsM=;
        b=ek4paGepg9XSe9TZe/FZF4kSi6aNxoYcNCW4wNV+/k1gmLHuwKy+Xja9ye5MonDYfM
         1NXvEKocBx41sDjJUYjNye81p8vOoGM+1x2/+VzBbCKJ8FgJ2c4OZM7SP1EnTjaKfjKZ
         ngW6FjxPb+eLTnxNTCF+1a89QxGP6yrBwmiBv6fgTTnu7xRJFBoystmcOr0C2GjQrDKn
         r5/Iym30tf1oiNxRS7d08nlad5CLEZ11TRuTWhHETaOICjmThcHWQtpET/7vvE96eWT/
         3XdIK2MvBO3kWCoe4vhg9VIebGH/VCM0xhhcQlSSOdUrME5ofXrSKHn+y0OZq4I1NgD6
         fLeQ==
X-Gm-Message-State: AC+VfDwqTOkOpRHAEBdJPwsorXlouO3voRDgRwA8W8A/Zix+SYArjbdJ
	o9fRyT1qiTXqh09G4Htw6CPUTbltrx08BEM5swa4wQ==
X-Google-Smtp-Source: ACHHUZ66hRgZLiqP0HgNywmuyEJNjQjxpzuYU/Ewr0nLiWAs/k7+ydf4eMIyKQKo0mpz4nSzQd/diYDGzmnUCVXeNlI=
X-Received: by 2002:a81:4f04:0:b0:54f:ddb9:95e7 with SMTP id
 d4-20020a814f04000000b0054fddb995e7mr20136923ywb.34.1683116031053; Wed, 03
 May 2023 05:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org> <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
 <5e318b02-8f33-4e2d-a956-5660e1c60619@app.fastmail.com>
In-Reply-To: <5e318b02-8f33-4e2d-a956-5660e1c60619@app.fastmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 May 2023 15:13:39 +0300
Message-ID: <CAA8EJpq8x5wQa3fMebaSP3hCdMiCsZRaF+B4Y3N3royW_CeXCA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Olof Johansson <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_051353_025019_A8434DF2 
X-CRM114-Status: GOOD (  20.82  )
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

T24gV2VkLCAzIE1heSAyMDIzIGF0IDEzOjM5LCBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
PiB3cm90ZToKPgo+IE9uIFdlZCwgTWF5IDMsIDIwMjMsIGF0IDAzOjE3LCBSb2IgSGVycmluZyB3
cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDIsIDIwMjMgYXQgNTo1MuKAr1BNIERtaXRyeSBCYXJ5c2hr
b3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4gT24gMDIvMDUvMjAy
MyAyMjo0MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4gPiAgICAgICdiZXJsaW4nIDogJ2Jlcmxp
bicsCj4gPj4gPiAgICAgICdweGEyJyA6ICdweGEnLAo+ID4+ID4gICAgICAncHhhMycgOiAncHhh
JywKPiA+PiA+ICAgICAgJ3B4YScgOiAnbWFydmVsbCcsCj4gPj4KPiA+PiBJJ2QgcXVlc3Rpb24g
aWYgaXQgbWFrZXMgc2Vuc2UgdG8gc3BsaXQgdGhlIHB4YSBsaW5lLiBZZXMsIGl0IHdhcyBzb2xk
Cj4gPj4gYnkgSW50ZWwgdG8gTWFydmVsbCwgYnV0IElJUkMgdGhlIGRldmljZXMgc3RpbGwgaGFk
IHNvbWUgaW5oZXJpdGFuY2UuCj4gPj4gU28sIGlmIHdlIGhhdmUgdGhlICdweGEnIHN1YmRpciwg
SSdkIG1vdmUgTWFydmVsbCBQWEFzIHRvIHRoYXQgZGlyIHRvby4KPiA+Cj4gPiBJIHRoaW5rIEkg
cHJvYmFibHkgc3BsaXQgaXQgYmVjYXVzZSBpdCB3YXMgZGlmZmVyZW50IG1haW50YWluZXJzLgo+
ID4gVGhvdWdoIGl0IGRvZXNuJ3QgbG9vayBsaWtlIHB4YTE2OCBvciBweGE5MTAgaGF2ZSBhbnkg
bWFpbnRhaW5lci4gVGhleQo+ID4gYXJlIGEgbWl4dHVyZSBvZiBweGEgYW5kIG1tcCBJIHRoaW5r
Lgo+Cj4gSSB0aGluayB0aGUgb3JpZ2luYWwgc3BsaXQgaGVyZSBpcyBwcm9iYWJseSB0aGUgYmVz
dCB3ZSBjYW4gZG8sCj4gYnV0IHRoZXJlIGlzIG5vIGdvb2Qgd2F5IHRvIGRvIGl0IGJlY2F1c2Ug
b2YgdGhlIGNvbmZ1c2luZyBuYW1pbmcKPiBhbmQgdGhlIHByb2JsZW0gdGhhdCB0aGVyZSBpcyBu
byBjbGVhciBsaW5lIGJldHdlZW4gcHhhIGFuZCBtbXAuCj4gQXMgZmFyIGFzIEkgY2FuIHRlbGws
IHRoZSByZWxlYXNlIHRpbWVsaW5lIHdhczoKPgo+IEludGVsIHB4YTJ4eCAobWFjaC1weGEsIHhz
Y2FsZSwgc3RpbGwgZXhpc3RzKQo+IEludGVsIHB4YTN4eCAobWFjaC1weGEsIHhzY2FsZSwgc3Rp
bGwgZXhpc3RzKQo+IEludGVsIHB4YTkweCAobmV2ZXIgbWVyZ2VkKQo+IE1hcnZlbGwgcHhhOTN4
IChtYWNoLXB4YSwgeHNjYWxlLCByZW1vdmVkIGluIExpbnV4LTYuMywgbm8gRFQpCj4gTWFydmVs
bCBweGE5MnggKG5ldmVyIG1lcmdlZCkKPiBNYXJ2ZWxsIHB4YTkxeCAobWFjaC1tbXAsIHBqMSwg
c3RpbGwgZXhpc3RzKQo+IE1hcnZlbGwgcHhhMTY4IChtYWNoLW1tcCwgcGoxLCBzdGlsbCBleGlz
dHMpCj4gTWFydmVsbCBweGE5NXggKG1hY2gtcHhhLCBwajQsIGxvbmcgZ29uZSkKPiBNYXJ2ZWxs
IHB4YTY4OCAobWFjaC1tbXAsIHBqNCwga25vd24gYXMgbW1wMikKPgo+IFNvIHdpdGggcHhhOTN4
IG91dCBvZiB0aGUgcGljdHVyZSwgd2UgY2FuIHNpbXBsaWZ5IGl0IGFzIHVzaW5nCj4gJ3B4YScg
YXMgdGhlIG5hbWUgZm9yIGFsbCB0aGUgYWJvdmUgY2hpcHMgd2l0aCBhbiBJbnRlbCBYU2NhbGUK
PiBjb3JlLCBhbmQgJ21hcnZlbGwnIGZvciBhbGwgdGhlIG90aGVyIG9uZXMgdGhhdCBoYXZlIGEg
TWFydmVsbAo+IGNvcmUgYW5kIGV4aXN0IGluIG1hY2gtbW1wLgoKU2hvdWxkIGl0IGJlICdpbnRl
bCcgZm9yIHB4YVsyM114eCB0aGVuPwoKPgo+ICAgICAgQXJuZAoKCgotLSAKV2l0aCBiZXN0IHdp
c2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
