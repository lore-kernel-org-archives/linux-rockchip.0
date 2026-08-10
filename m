Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECFECC5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmlqJK3eO7EjaBKEN9HVZ6TEJ7y/0yIQ2aPrjWTboyI=; b=CiQO+/mdmxCadE
	7dA4bkAmBVfglME/aRKB8513JYwBtpSnHE2BJsrRuAufnOlSQoYH8MdSpXcbtZqV+vkXJ7dwiK8fQ
	v3jWmc+NT2P1AXWyZGnphJv0Qqj7OdAa9ynZTH1Ck785bfyEqAx1KL4HRCsehf5nTsIXL3nV+eliD
	UEmnIy62UjZwT7FIcgD/7i7poGRhme08lPx7oVABvT7LMb1rDNWdhBdGhFmAW4xVwD+QnRDLjtXU2
	QyNPFTqNch29cCwGo7HxBbtwQteDzhJ9P/oRbB8lz0uvreSNYn1xN/g9sCdNlvXqlUZDfdnM4MTrv
	hBzg9Nc4Z0k/ZQfyvWNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWHu-0000000CnpH-3hlN;
	Mon, 10 Aug 2026 20:07:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtWHt-0000000Cnoq-2WHC
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 20:07:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B8A18600AD
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:07:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 704521F00A3F
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 20:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786392476;
	bh=bYSs7pwGOcP1HawBNqhdmv009wD4aFz+D/7i7ebIbM0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ofNkM0AhJ0ECf2vZ3YjsXcL6Fm9B/LUx9zOf2sBqypegScFN1+CgLPT7B1bDeqx51
	 64PSAdfaZ1hzB5RB1MefD71UVLE+rsrI7C7ZbugQa6QuVIsqlup3TfRVm3MYkEkwwy
	 A9SeKcscMEkg2HrBmxV4WHgOk9fLvYOARh3TH3ELrwnPIXUjd4DVFm8T8fsJrpBmT0
	 m/mzsIMEkeZAYuOVcn9jjZPhAals1XDOZwp+BibAMzZhsMTjjC4CPdFfL19rCmVmwg
	 YbX8uQhX8QYpT1LFs60IIZ9w1QMfk3Zj3EDVp6skcK8i3xpbxauMyjx3Vkmauqblmj
	 FmdZm5LV/9d7A==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5b159850b16so31720e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 13:07:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpD81V2U354BcdVq+DbXq0gwj1pbLv3mHF9+F3jAp5cBS2HhG1M1fNDh0v59McxnNYTUHpwkInjA4YH05ll9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDgadgEb/0IY+U9eX5GT33sDlFfOGJQISZ/AhrviqDSSPVALo9
	TdB5mGFPB5Gm4XwtBEVrHDjbs40vQIL6IBpOfHARpiL7pK3CQO3DG3MaQppYapFrUExdTlZJACJ
	Wx0pVc+hHUMkfXuq26lynKYEHwnGsypc=
X-Received: by 2002:a05:6512:3e0e:b0:5ae:a995:c16c with SMTP id
 2adb3069b0e04-5b2f4cc0f61mr5811088e87.27.1786392475246; Mon, 10 Aug 2026
 13:07:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260729132736.3807082-1-sjg@chromium.org> <20260729132736.3807082-2-sjg@chromium.org>
In-Reply-To: <20260729132736.3807082-2-sjg@chromium.org>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 10 Aug 2026 22:07:42 +0200
X-Gmail-Original-Message-ID: <CAD++jL=hGH7a-LM+Foy=mVxmVhCdtaxdaF5Mfo+3BCwMLHNVdQ@mail.gmail.com>
X-Gm-Features: AUfX_myfAckQ8mgU7iFbZ97rmWnbGSBawmIas1W-k7uCRWa4QUHeMhWOocB5lDc
Message-ID: <CAD++jL=hGH7a-LM+Foy=mVxmVhCdtaxdaF5Mfo+3BCwMLHNVdQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] pinctrl: rockchip: Decode drive strength in the
 get function
To: Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	Ye Zhang <ye.zhang@rock-chips.com>, huang lin <hl@rock-chips.com>, 
	linux-kernel@vger.kernel.org
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

T24gV2VkLCBKdWwgMjksIDIwMjYgYXQgMzozMOKAr1BNIFNpbW9uIEdsYXNzIDxzamdAY2hyb21p
dW0ub3JnPiB3cm90ZToKCj4gVGhlIGRlY29kaW5nIG9mIHRoZSAyLWJpdCBhbmQgOC1iaXQgbGV2
ZWwgZHJpdmUtc3RyZW5ndGggdmFsdWVzIHNpdHMgaW4KPiByb2NrY2hpcF9zZXRfZHJpdmVfcGVy
cGluKCksIHdoZXJlIGl0IGlzIHVucmVhY2hhYmxlOiB0aGUgU29DcyB3aG9zZQo+IGJhbmtzIGRl
Y2xhcmUgdGhlc2UgZHJpdmUgdHlwZXMgKFJLMzUwNiBhbmQgUlYxMTAzQikgdGFrZSB0aGUgZWFy
bHkKPiBjdHJsLT50eXBlIGJyYW5jaCBpbiB0aGUgc2V0IHBhdGgsIGFuZCB0aGUgcmVhZC1hbmQt
ZGVjb2RlIGxvZ2ljIGluIGEKPiBzZXQgZnVuY3Rpb24gaGFzIG5vIHB1cnBvc2UuIE1lYW53aGls
ZSByb2NrY2hpcF9nZXRfZHJpdmVfcGVycGluKCkKPiBsYWNrcyB0aGUgZGVjb2RpbmcsIHNvIHBp
bl9jb25maWdfZ2V0KCkgYW5kIHRoZSBkZWJ1Z2ZzIG91dHB1dCByZXBvcnQKPiAtRUlOVkFMIGZv
ciB0aGVzZSBTb0NzLgo+Cj4gTW92ZSB0aGUgdHdvIGNhc2VzIHRvIHJvY2tjaGlwX2dldF9kcml2
ZV9wZXJwaW4oKSwgd2hlcmUgdGhleSBiZWxvbmcuCj4KPiBGaXhlczogZGJkMjMxN2Q3YjlmICgi
cGluY3RybDogcm9ja2NoaXA6IEFkZCByazM1MDYgcGluY3RybCBzdXBwb3J0IikKPiBTaWduZWQt
b2ZmLWJ5OiBTaW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4KClBhdGNoIGFwcGxpZWQhCgpZ
b3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
