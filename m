Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE13EE82CC9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 19:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giSheVUTeNSvL+sk//zuzz28YksjBmnWtTH6OaRhPlw=; b=FiLCgtTvL9wHuw
	AapQ/GMwe2WHH8FpbchvlEq9YDntg0OAJ9NIwpvygwh0CYBces3gv4r/8Y/oC6XH5nkVDRvpr+1cz
	ivOsJRywMPOXPDQJrWjMg5FQXxv3Xu+EB9la4UnbI7T28LwlQLQoHpZpu7U/cByV/HCJyEDQuiIls
	WPQpv1vLo4BCgaRVidfqdYdiy/BXOPgxv44dUFcEE88nStXnFoh6z6l6e2V39hKsYCgulpn/dPsC+
	om97gAEqH3cjtCLnxyAZuevUrrSI1ED6aQZOqPuApszyryVRWXqKiEhmC8MPuvxRNjcGhNFUc4juu
	29PxBoaY5BJtGwfccGyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaTU-001gNr-2Z;
	Wed, 27 Sep 2023 19:45:32 +0000
Received: from mail-oo1-f48.google.com ([209.85.161.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaTP-001gMp-1K;
	Wed, 27 Sep 2023 19:45:28 +0000
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-57de3096e25so343576eaf.1;
        Wed, 27 Sep 2023 12:45:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695843925; x=1696448725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZdrldCq/11jLKtSHJnC0CV3/MzVWic6Gg0opWfLdlIY=;
        b=TyA2XO5YaFakuEiTQBfbrEBkR4GpZGM04jZND80l1TRCHD/Lq8sKzofsPY4GIwK21h
         zpu+joNzJ8BLvzBi6si6embldNTSz8KlQIK9PJ5LsbDkosneQ0u9UIipyLSbqisZeW91
         OqG+nS7y+cYxHJJkAC1mWOh4HI/ynWD51mgoJgHvo2ZnPdBSQBmlz1BuBJn6IOTOrbLh
         Hy97BKeIBuXsflDOztfDJ56iL0V4Xea0giKJrA5uHinhUJLyZfF4CqboN0vLevdNTdAs
         mFIYqSNKRc7vZXXxqtqhzSLeKa6WYAK1/r/rN7rdEPbgh0oC2JBKQJbe5DxIGay8ovqQ
         Vz9w==
X-Gm-Message-State: AOJu0Yy48HAc+glx6LrBw8Zh3uTReLm9KwBRET7kzHCYiORrwg2FS6HT
	i2IHys1CbkF7GFaGMW6qmdyejilf/W36Z0qtqaQ=
X-Google-Smtp-Source: AGHT+IGMlW6Putl8V3MXq3RkAqHyCPJSNsGyuWiCwQkEk43f5FSeBHFESqXka7uzLRnNc/5oUKZ3iepgewdBHpsbPHk=
X-Received: by 2002:a4a:e704:0:b0:57b:94b7:c6ba with SMTP id
 y4-20020a4ae704000000b0057b94b7c6bamr3501682oou.0.1695843925125; Wed, 27 Sep
 2023 12:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 27 Sep 2023 21:45:14 +0200
Message-ID: <CAJZ5v0guyQ-SpNHXYBG2F_WyCSvgjXocGBy61Ep1Cy5-H-MOsQ@mail.gmail.com>
Subject: Re: [PATCH 00/31] thermal: Convert to platform remove callback
 returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Guillaume La Roque <glaroque@baylibre.com>, 
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, linux-pm@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, kernel@pengutronix.de, 
	Miquel Raynal <miquel.raynal@bootlin.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Heiko Stuebner <heiko@sntech.de>, ye xingchen <ye.xingchen@zte.com.cn>, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Balsam CHIHI <bchihi@baylibre.com>, Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Support Opensource <support.opensource@diasemi.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, 
	Yang Yingliang <yangyingliang@huawei.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Alexandre Mergnat <amergnat@baylibre.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Chen Jiahao <chenjiahao16@huawei.com>, linux-mediatek@lists.infradead.org, 
	Thara Gopinath <thara.gopinath@gmail.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Florian Fainelli <f.fainelli@gmail.com>, 
	Rob Herring <robh@kernel.org>, Minghao Chi <chi.minghao@zte.com.cn>, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Johan Hovold <johan+linaro@kernel.org>, 
	linux-tegra@vger.kernel.org, Mikko Perttunen <mperttunen@nvidia.com>, 
	Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>, linux-omap@vger.kernel.org, 
	Masami Hiramatsu <mhiramat@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_124527_457894_EBCBD585 
X-CRM114-Status: GOOD (  17.54  )
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

SGksCgpPbiBXZWQsIFNlcCAyNywgMjAyMyBhdCA5OjM44oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBIZWxsbywKPgo+IHRo
aXMgc2VyaWVzIGNvbnZlcnRzIGFsbCBwbGF0Zm9ybSBkcml2ZXJzIGJlbG93IGRyaXZlcnMvdGhl
cm1hbCB0byB1c2UKPiAucmVtb3ZlX25ldygpLiBUaGUgbW90aXZhdGlvbiBpcyB0byBnZXQgcmlk
IG9mIGFuIGludGVnZXIgcmV0dXJuIGNvZGUKPiB0aGF0IGlzIChtb3N0bHkpIGlnbm9yZWQgYnkg
dGhlIHBsYXRmb3JtIGRyaXZlciBjb3JlIGFuZCBlcnJvciBwcm9uZSBvbgo+IHRoZSBkcml2ZXIg
c2lkZS4KPgo+IFNlZSBjb21taXQgNWM1YTc2ODBlNjdiICgicGxhdGZvcm06IFByb3ZpZGUgYSBy
ZW1vdmUgY2FsbGJhY2sgdGhhdAo+IHJldHVybnMgbm8gdmFsdWUiKSBmb3IgYW4gZXh0ZW5kZWQg
ZXhwbGFuYXRpb24gYW5kIHRoZSBldmVudHVhbCBnb2FsLgo+Cj4gVGhlcmUgYXJlIG5vIGludGVy
ZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhlIHBhdGNoZXMuIEFzIHRoZXJlIGFyZSBzdGlsbAo+IHF1
aXRlIGEgZmV3IGRyaXZlcnMgdG8gY29udmVydCwgSSdtIGhhcHB5IGFib3V0IGV2ZXJ5IHBhdGNo
IHRoYXQgbWFrZXMKPiBpdCBpbi4gU28gZXZlbiBpZiB0aGVyZSBpcyBhIG1lcmdlIGNvbmZsaWN0
IHdpdGggb25lIHBhdGNoIHVudGlsIHlvdQo+IGFwcGx5IG9yIGEgc3ViamVjdCBwcmVmaXggaXMg
c3Vib3B0aW1hbCwgcGxlYXNlIGFwcGx5IHRoZSByZW1haW5kZXIgb2YKPiB0aGlzIHNlcmllcyBh
bnlob3cuCgpJIHRoaW5rIEknbGwgZ28gYWhlYWQgYW5kIGFwcGx5IGFsbCBvZiB0aGlzIGluIG9u
ZSBnbyAoZm9yIDYuNykuCgpEYW5pZWwsIGFueSBvYmplY3Rpb25zPwoKCj4gVXdlIEtsZWluZS1L
w7ZuaWcgKDMxKToKPiAgIHRoZXJtYWw6IGFtbG9naWM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVt
b3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBhcm1hZGE6IENvbnZlcnQg
dG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBi
Y20yODM1OiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9p
ZAo+ICAgdGhlcm1hbDogbnM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJl
dHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBkYTkwNjI6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVt
b3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBkb3ZlOiBDb252ZXJ0IHRv
IHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgdGhlcm1hbDogaGlz
aTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAg
IHRoZXJtYWw6IGlteDhtbTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0
dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IGlteDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUg
Y2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IGludDM0MDA6IENvbnZlcnQgdG8g
cGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBpbnQz
NDAxOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+
ICAgdGhlcm1hbDogaW50MzQwMjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sg
cmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IGludDM0MDM6IENvbnZlcnQgdG8gcGxhdGZvcm0g
cmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBpbnQzNDA2OiBDb252
ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgdGhlcm1h
bDogazNfYmFuZGdhcDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
aW5nIHZvaWQKPiAgIHRoZXJtYWw6IGszX2o3Mnh4X2JhbmRnYXA6IENvbnZlcnQgdG8gcGxhdGZv
cm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiBraXJrd29vZDog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRo
ZXJtYWw6IGx2dHM6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmlu
ZyB2b2lkCj4gICB0aGVybWFsOiB0c2VuczogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2Fs
bGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IHJjYXJfZ2VuMzogQ29udmVydCB0byBw
bGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IHJjYXI6
IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0
aGVybWFsOiByb2NrY2hpcDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0
dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IHJ6ZzJsOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92
ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgdGhlcm1hbDogZXh5bm9zX3RtdTogQ29udmVy
dCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6
IHNwZWFyOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9p
ZAo+ICAgdGhlcm1hbDogc3ByZDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sg
cmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IHN0bTogQ29udmVydCB0byBwbGF0Zm9ybSByZW1v
dmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPiAgIHRoZXJtYWw6IHNvY3RoZXJtOiBDb252ZXJ0
IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgdGhlcm1hbDog
dGVncmEtYnBtcDogQ29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5n
IHZvaWQKPiAgIHRoZXJtYWw6IHRpLWJhbmRnYXA6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3Zl
IGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gICB0aGVybWFsOiB1bmlwaGllcjogQ29udmVydCB0
byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKPgo+ICBkcml2ZXJzL3Ro
ZXJtYWwvYW1sb2dpY190aGVybWFsLmMgICAgICAgICAgICAgICAgICAgIHwgMTIgKysrKystLS0t
LS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9hcm1hZGFfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAg
ICAgfCAgNiArKy0tLS0KPiAgZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1h
bC5jICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20vbnMt
dGhlcm1hbC5jICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9k
YTkwNjItdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0tLQo+ICBkcml2ZXJz
L3RoZXJtYWwvZG92ZV90aGVybWFsLmMgICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0t
Cj4gIGRyaXZlcnMvdGhlcm1hbC9oaXNpX3RoZXJtYWwuYyAgICAgICAgICAgICAgICAgICAgICAg
fCAgNiArKy0tLS0KPiAgZHJpdmVycy90aGVybWFsL2lteDhtbV90aGVybWFsLmMgICAgICAgICAg
ICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYyAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCj4gIC4uLi90aGVybWFsL2ludGVsL2lu
dDM0MHhfdGhlcm1hbC9pbnQzNDAwX3RoZXJtYWwuYyAgfCAgNSArKy0tLQo+ICAuLi4vdGhlcm1h
bC9pbnRlbC9pbnQzNDB4X3RoZXJtYWwvaW50MzQwMV90aGVybWFsLmMgIHwgIDYgKystLS0tCj4g
IC4uLi90aGVybWFsL2ludGVsL2ludDM0MHhfdGhlcm1hbC9pbnQzNDAyX3RoZXJtYWwuYyAgfCAg
NiArKy0tLS0KPiAgLi4uL3RoZXJtYWwvaW50ZWwvaW50MzQweF90aGVybWFsL2ludDM0MDNfdGhl
cm1hbC5jICB8ICA2ICsrLS0tLQo+ICAuLi4vdGhlcm1hbC9pbnRlbC9pbnQzNDB4X3RoZXJtYWwv
aW50MzQwNl90aGVybWFsLmMgIHwgIDUgKystLS0KPiAgZHJpdmVycy90aGVybWFsL2szX2JhbmRn
YXAuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJt
YWwvazNfajcyeHhfYmFuZGdhcC5jICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCj4gIGRy
aXZlcnMvdGhlcm1hbC9raXJrd29vZF90aGVybWFsLmMgICAgICAgICAgICAgICAgICAgfCAgNiAr
Ky0tLS0KPiAgZHJpdmVycy90aGVybWFsL21lZGlhdGVrL2x2dHNfdGhlcm1hbC5jICAgICAgICAg
ICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvcWNvbS90c2Vucy5jICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9yY2FyX2dlbjNf
dGhlcm1hbC5jICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KPiAgZHJpdmVycy90aGVybWFs
L3JjYXJfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgIHwgIDYgKyst
LS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9yemcybF90aGVybWFsLmMgICAgICAgICAgICAgICAgICAg
ICAgfCAgNiArKy0tLS0KPiAgZHJpdmVycy90aGVybWFsL3NhbXN1bmcvZXh5bm9zX3RtdS5jICAg
ICAgICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvc3BlYXJfdGhlcm1h
bC5jICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9z
cHJkX3RoZXJtYWwuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArKy0tLQo+ICBkcml2ZXJz
L3RoZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYyAgICAgICAgICAgICAgICAgICAgIHwgIDYgKystLS0t
Cj4gIGRyaXZlcnMvdGhlcm1hbC90ZWdyYS9zb2N0aGVybS5jICAgICAgICAgICAgICAgICAgICAg
fCAgNiArKy0tLS0KPiAgZHJpdmVycy90aGVybWFsL3RlZ3JhL3RlZ3JhLWJwbXAtdGhlcm1hbC5j
ICAgICAgICAgICB8ICA2ICsrLS0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvdGktc29jLXRoZXJtYWwv
dGktYmFuZGdhcC5jICAgICAgICAgIHwgIDYgKystLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC91bmlw
aGllcl90aGVybWFsLmMgICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KPiAgMzEgZmlsZXMg
Y2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKSwgMTIzIGRlbGV0aW9ucygtKQo+Cj4gYmFzZS1jb21t
aXQ6IDE4MDMwMjI2YTQ4ZGUxZmJmYWJmNGFlMTZhYWEyNjk1YTQ4NDI1NGYKPiAtLQo+IDIuNDAu
MQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
