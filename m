Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046AFC001CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb9s7vh+VPYHq0tReq2A3V68rMYRFQS+DcEzvVR1Vgc=; b=s89S2ydUVijyj3
	1vtqLP+IJ1cVvOSjh+t+a2YWNbGvdsNvvNy/OcWpjLBeKUUl8mOX4FepPqzU/lUiKuDBfDfkgKWhM
	nAZemHgevc3juPk/Tlz4Usk/1w6yOR8xU02k3/jsyvoT6TD7Xyx9S2P+4hsn9atK4mx888+jq7vrg
	SkYqhUGjYnpqmwPZ3Ygq/M37wym9awOIM37nrET/OZUsYtC6LAiY/UfaOcqcm85y1UAyBdMfHMN3z
	BmnhNWKNHY8K99pLjTo2I9nmyFZFnnzBLna8te/i3osS2aaE66fXr7+5HsIeIKr9zvWkVioMoDTGy
	mfYmJ4eAkiQIOx39NKcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx174-0000000FJ4k-2Qvy;
	Wed, 17 Apr 2024 08:57:54 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx170-0000000FJ1x-1Z7p
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Apr 2024 08:57:53 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-618874234c9so52463907b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Apr 2024 01:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713344268; x=1713949068; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8BVxDLtdMwR2IpXfpKosLBAdBPE7RA9iz1sCdxzb6s=;
        b=p1p2ybe+DKiSpe5KLZsuy2s7YkPBnCpREh18nRbfd6jCcNdg96MQLFClFwGYFe6N9L
         dR/YO5kWbVuIDTLb9XcLFsdHoa02/oo1je5+AkigGk1W9kXh3uTiXCcofxc4p+NiXb9+
         yP1cxFxMEBVRJcxRDU0DvnPw7gsLpwPhbmByP5+vVArKxPN3HDdUKDKe62vYPTgeIk8Y
         hNOQzh2BEGPSeiU3ndZtW8J12D0t+H11y3CXaZVDXGTU9DY5u3Gpm4tb+11STdl6/fiU
         9APaC/tqNgC4/ROoudjZqi9OZM6jnJ5pywZUOdXjGvSY1qerdqBzfixXAFK6XKJiubCs
         gkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713344268; x=1713949068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8BVxDLtdMwR2IpXfpKosLBAdBPE7RA9iz1sCdxzb6s=;
        b=Zlus6sSFHXYfqRF0ve98qsFZxxrlBTh0Xu+q4m3BUGhIxaPhH1tGs9wKMoYwjS+GDB
         S+2vVdwuHjSVlqGWlOtmljxPPfoi1lGmsRGKOcP2mebd/be24iWbVaxj8KWBqJQ4I/Mf
         YZcVkuR+8zclpj/vm7t11CdredrQxkR9rmci51XTtrCeC6rIaDjczg3TvC8+Zf6RzTH4
         Pl/F/9bEQkBG+tu2za9d/a2tM+Wm+UVwpH1iedujqBC1co55wH6weiZiYubvJ6hTwjp0
         Fke5JafhhwlLvyGvmCr9xUlUmgfrbG8XkxCrRawN1J559kFDLfPSxRI6+OzV/ohAXOnh
         esAw==
X-Forwarded-Encrypted: i=1; AJvYcCUw0F2eISnDM/kw8aZbdXg7B5uP8avzbGKSTl1ZiSdh/am4NUqyt54T49Xmc2Uakh41KCoG4BdcNqCD29ihlQc1BJRfkZilJWwuDy1Tews4Qweh
X-Gm-Message-State: AOJu0YyIazajsMN3fPZOwbrWtrM5epeAjmai6HMPQZOQ8oMZzWA/VHQ4
	wJJlFLF+n0iecT5LUn++dtMFGTssuzaJqbxxPEcjFDCxEX+2r+h7smEfos9N8EojIFb0BLExyFi
	CUvQv58B5Ujoc6HFjGKShwUq+COVZl+rHnbvhNw==
X-Google-Smtp-Source: AGHT+IGjTlCzXLkgG1NfRsCozVnMoY5qNCo+yZDqI6j3kAC13Ftit11Ni9rVZhCX6UF06i6VaxBJ0wB7PajrNqO6yvk=
X-Received: by 2002:a81:ab4e:0:b0:61b:472:fa92 with SMTP id
 d14-20020a81ab4e000000b0061b0472fa92mr1815808ywk.32.1713344268328; Wed, 17
 Apr 2024 01:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240416161237.2500037-1-knaerzche@gmail.com> <20240416161237.2500037-4-knaerzche@gmail.com>
In-Reply-To: <20240416161237.2500037-4-knaerzche@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Apr 2024 10:57:37 +0200
Message-ID: <CACRpkdYMZ7bBxKCSPJ74QYhtEPHV8cPARioGrg5ySj9j7nPE1g@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] pinctrl: rk805: Add rk816 pinctrl support
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Chris Zhong <zyw@rock-chips.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_015750_497844_ADFACFC4 
X-CRM114-Status: GOOD (  10.52  )
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

T24gVHVlLCBBcHIgMTYsIDIwMjQgYXQgNjoxMuKAr1BNIEFsZXggQmVlIDxrbmFlcnpjaGVAZ21h
aWwuY29tPiB3cm90ZToKCj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIFJLODE2IHRvIHRoZSBleGlz
aW5nIHJrODA1IHBpbmN0cmwgZHJpdmVyCj4KPiBJdCBoYXMgYSBzaW5nbGUgcGluIHdoaWNoIGNh
biBiZSBjb25maWd1cmVkIGFzIGlucHV0IGZyb20gYSB0aGVybWlzdG9yIChmb3IKPiBpbnN0YW5j
ZSBpbiBhbiBhdHRhY2hlZCBiYXR0ZXJ5KSBvciBhcyBhIGdwaW8uCj4KPiBTaWduZWQtb2ZmLWJ5
OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KCkxvb2tzIGdvb2QgdG8gbWUsIGlzIHRo
aXMgcGF0Y2ggc29tZXRoaW5nIEkgY2FuIGp1c3QgbWVyZ2UKb25jZSB0aGUgbWFpbnRhaW5lcnMg
aGF2ZSByZXZpZXdlZCBpdD8KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
