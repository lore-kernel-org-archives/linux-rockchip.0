Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B2FFCA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 21:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2WJkjkyW3wWJTrugzEeMoERP5Anr4hXu0HHii7zG3A=; b=OHD2yCGoW4tGhe
	DJLteT4VDOhu+Qr2j+Lt7gSLgXAwHmqaAm6SWM4w3IewVFpFLaBGZFV3zzP2aAE2Cc3C7ztK8tsys
	ftqFgAyMNhYQyVxFnBRznlMDrgOvM6cdeMttGKeYI+2ASDb+db2FrU7Jq1gtVAuPC36hDe7iDCLyw
	eQG6UmPsz/hpFEFgT1Vr4X7zn213Q4c/OQJdWAv0JdaT3Q7NBptZjPbtTCV4XTw9PGQld92PF/qNu
	5L9biKzEYENm/WecovSDnIcF7VURyDywccf6764J9owxMbxvp1VcSGi/IqHrkJIYMjlr2TR4Kq1iN
	qwYYrfahG78/RRS8Ip4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq0b-0000000HBGv-3t1K;
	Mon, 05 Oct 2026 21:14:05 +0000
Received: from mail-ej2-x08.google.com ([2a00:1450:4864:34::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq0Z-0000000HBFj-3YGI
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 21:14:04 +0000
Received: by mail-ej2-x08.google.com with SMTP id a640c23a62f3a-c2e2e238134so151271366b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 14:14:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791234840; cv=none;
        d=google.com; s=arc-20260327;
        b=iH0PlWQtysaciTMA9q7lAnDMANYnTOw6Bos99d2S5kimb8bYtKU5jHV8cQrgSsBnT1
         Ede44ddX0EH+T35S9XnTiIX2xMxxpAmvKGzss4VyNIxFBm9AUV9PZF4zDtXq6XvfauXp
         CvzvKJjiD0GJaIgCEg5EgcgCfZ1ba/+1oeKIWv8E7To/u7VUyPCuwxoOA8jUr2rNTI+2
         cppfjO1ZZaEqAOu5GOkf2F1h6tjL86cBv2nNxbHYCraFue/QGJuKkWBeHKyzzW57Tmlv
         BP9ASt/x1owAJzioI2AzpLn/gxWARAWMM/H6WnkyV1GmiDMLI1YMovVpddtvngffivS4
         R+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        fh=uip01VmXY4/xom+IC8V9yfvYIAfMCO50XryYZ3lqrwk=;
        b=AzD2hbIKpOgsY8I9GIYkvF1lbOeyv0Pie9WOQ/OjhBYLZWjPypYWIMPPLDKXdlbCYb
         ChDpvds/7SEXoY7YiKJht+Fl4U5VzHb8nj9tfApq/emtraB0VRhFc9MnXFamqF2WF1fN
         n3FMfdbfv1IaO0KQEfV5RI/n/SAY+s73RMVQa76CiuoIj9ak8tUN2lNIS3zuZs2ti4IC
         uHnb5JXRxYdRunighEDAAc5t1IqpqBpLXcJHy353Po7wrR7Fg0d/kzXknWEIqRgUx9BD
         G3zOXMhLhzMOGSmaDj90g9w3bhpIaJ3hw1Qrn+YTWJWsx89bkh2Qkal4kspIe2B/8yyr
         0N0w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791234840; x=1791839640; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        b=VNE2HbwRFa7XmXYFCM4W7tQiz8w+wvhB0UyLbgVLvgM97qPYAu+jEDwWCjxWQsty+M
         7fe16B0iYotz+HMQx0unZ3OO5yibfnx6aPSF+RhQDo1zTl6kcquyOvX/Gop50riDq52S
         heGQpqumLQ0/ticjejHchgboXY6/12Wjl9VM0TVoLWsITVKjYZjHc+VuILr5hcnq/Tja
         HpbEVdKV5TmAKw2t1noGPKdnI2vRXdYe64DNcwXl9cPnBDCod4Wj6sT31h2DCmJ5ikKy
         vFsxGLLVvttV5WwFtJAaOwIYhT46Y6AkMSDZ7Zpi7k3au0aIEKhhyRHxcyN2Aa9e+tOs
         d+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791234840; x=1791839640;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        b=H724kLFPnk6GxfnB84Ysr/umRA8VHTqRoMb+REgebswQ/HHvQgqs6zuhowgFYzMwW9
         Vr985t4GhS7UnHlVFfRTqfh8DJ16zSiNjC3FcWUD/uyj0lXqLWlSbBn1NbEh/gpzp6Az
         O+t3ricFHUkd/m2YF3n9ZkvO9gEoD1U7sLCru0opHjJJW7iNarPu2h6QVnPjDUSDtEmN
         kKeJ7go+7eIOmlCJN2OOXK7Kkrmug6hzF+wLVkTf26wrLemtarFV8qbPV7Lo4QeMKPxj
         JjymfeuYAIarIJWWDdAsilqkrfKtajLGGASWObdUZFsPxXTQo4NjJr/0/RtydLK32rKW
         MhHg==
X-Forwarded-Encrypted: i=1; AKwUvBweHH87FtpAe3dhxxZ64KlFGwFLnCvgbrX2zcahVLzprV0JS3KXCfdcZWz/ntSJMkg8a4vebENIvwV1GLxoaA==@lists.infradead.org
X-Gm-Message-State: AFuF++nCW0zdsnrkJjdBHO7uh5DkOTwQzSnqRMJK07aGZe2VuLTUBRBc
	qvxaYHMjUkbwjgiNO7P+RcHOaCBBldnJ2tiuS8eHWMAA8yHSwJD0yDvVI29wzys9nYDl4ItWYDc
	PwpULGibkrJJzSNsCb8CAyzYBjnCwXfo=
X-Gm-Gg: AYBFou1ogH5LxzJloDTvbgKoK330p2UwdSPvXOdhRb7HK7czGsXpOcPtBQl9QrzuNfU
	NvErKHBerN7RcAP0o9OqCnSkOBXPJMbQNsLew9Ccuc5hz4PPbUFpTrEOPSJyB6E6ReZQh82wa97
	07BbL2l4sDk35Nut1H+WQzC7a8KZmhP3kPblWYyPDRxTaR4FN8EEvT2Gupbc7FRuxXnGH/fTGjN
	2beTg+Dps6Fizn9p2q3zCx4AKHKhmvoOCqFgPh1Mxv8nqE1UNTZSqHEC5hVWT8dePWlUkaoNc9J
	+Yww7qQSCc/eyWtXc+BOq65tnrPUdpz/UjKb1FrAHt9H+0gDCnt7fEOYyA==
X-Received: by 2002:a17:907:940e:b0:c29:62d8:68af with SMTP id
 a640c23a62f3a-c2e4b2bc542mr1047723566b.47.1791234840255; Mon, 05 Oct 2026
 14:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20261005135833.37376f20@kernel.org>
In-Reply-To: <20261005135833.37376f20@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 05:13:49 +0800
X-Gm-Features: AclHuK96Q0r6tDkOyMFxRRlJTRgYT5CZFZq3doTRuVETMpVpnBIKbah20Qfa8QQ
Message-ID: <CALj3r0jgyhtmwSR03nZm4UJZ7dw6Y16X9N6-ASq9puY40zeBfA@mail.gmail.com>
Subject: Re: [PATCH net-next v10 00/11] net: pcs: add basic support for RK3568 XPCS
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
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_141403_884236_CC4B392B 
X-CRM114-Status: GOOD (  12.95  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNDo1OOWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNCArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gU29t
ZW9uZSBtYXJrZWQgdGhpcyBhcyBjaGFuZ2VzIHJlcXVlc3RlZC4gTm90IHN1cmUgd2hvIGFuZCB3
aHkuCj4gSSB3YXMgd2FpdGluZyBmb3IgYW4gYWNrIGZyb20gRFQgbWFpbnRhaW5lcnMuCj4gSWYg
aXQgd2Fzbid0IHlvdSwgZWl0aGVyLCBtYXliZSByZXBvc3QgdG8gcmUtcXVldWUgdGhpcyBmb3Ig
cmV2aWV3PwoKSGkgSmFrdWIsCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpSZWdhcmRpbmcgdGhl
ICJjaGFuZ2VzIHJlcXVlc3RlZCIgc3RhdGU6IEknbSBub3Qgc3VyZSB3aG8gc2V0IGl0LCBhbmQg
SQpjb3VsZG4ndCBmaW5kIGFueSBzcGVjaWZpYyByZXZpZXcgY29tbWVudCBleHBsYWluaW5nIGl0
LiBJZiBpdCB3YXMKYWNjaWRlbnRhbCwgSSdtIGhhcHB5IHRvIHJlcG9zdCB0aGUgc2VyaWVzIHRv
IHJlLXF1ZXVlIGl0IGZvciByZXZpZXcuClBsZWFzZSBsZXQgbWUga25vdyBpZiBhIHJlcG9zdCBp
cyB3aGF0IHlvdSdkIHByZWZlci4KCi0gQ29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
