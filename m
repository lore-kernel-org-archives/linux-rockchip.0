Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53C4AC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VsUZUdfnSk2N0m2DLXIdrdQ545Mdj9aVLUEGfrzOK0=; b=2PSWdyN+nNiTAj
	D+jPb/D/hB3uf+8N2gWldDvh/b0jX33dlRS+h7bc8kEzepNVkpSQ98tB+VLKc2y9RrjQEHFfR8TOe
	0i0LTEYzJF45APo0gVXSPRoOmoA3VqMbHumh6j8QifwCWZZ5TtZaRttWPz3kv72IML9llRYSabM84
	Wc1rZF5uiZXjUkM+1Y5yT+IjeYNG0W00/0Fq2RLCKJDdXbAx4E1bAoPuCzAtsssksaW4kvhtFY4Yv
	kpZLUP7xIl3oVufkdN9rTUwUxRupoNArjCfQCOZ+yGxA3WtjGhQ3pP4SNV85JC8IeQQ8OYdHTU2c9
	el9hKQYwYFk6+uqxUQhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxoLZ-00000005lgz-1KJV;
	Fri, 19 Apr 2024 13:32:09 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxoLU-00000005lfI-3zXc
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Apr 2024 13:32:07 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-de45385a1b4so2152421276.3
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Apr 2024 06:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713533523; x=1714138323; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhRZLpFsQ7ybY9l+xJ4w5t3vGVBb7qMjYrDhTzkEaLs=;
        b=ECVXmyRE/GQFsMeTrnFvzKJ/vBuc1sPZUuRwv9N2NrBCT+w4UNx21Q5ZAROa5U4Lv1
         yNAes4r3ejiCSK0qEfoWP6N/QKfDXixSNOPws1CiirZ+pKpiql2+lbg0dZwkqTdKlLJW
         Ws7ZSDuoWEpi0D/UnEHXqxyOmPuPQJOR7KMdHLMZQmgqXFeM7a/jZmXfz/ZUXC4zOywr
         hQdxWn/zJ120WAx6UEsNhdhbX9KJA3i0EvDtLg94y3dZMOavUEVFceqqJUgVDXMkBcUs
         IcfweDg22HMNmq4VJjaKiYBqlLe4ynonHfEjUwPq0SOpxWqAILsE/tqZVttftIZ+C4tt
         j3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713533523; x=1714138323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhRZLpFsQ7ybY9l+xJ4w5t3vGVBb7qMjYrDhTzkEaLs=;
        b=nnIAPwzTkKTt1zLQRrut0MNyEX8zptBt1vktkUxeIufPXZ9K6IrOuuoQhfghMcI2P/
         DNQT8hQDBdcWSooiCb0dOB1f3ui0UPsn9ZMun4iYvNM9LfvrEMeKrGmplT5IKtW7zR/a
         CdDt4BS0QqObbCys0AH70hDSO72ZOs91whqi50yNWYBJVPH/2Ma4+ZeuXtTFSihA+oYW
         q6ZmDFNftM8Kc0VWCkp8qxHLvWq2aT5aKn+r7Wt9OpJV1cNd+0uqUuK2xZXtiz9C29W6
         kk6YoenNj3TK48xjf/NknMt6nQKfeKaRiZXecQPHdB0GMRL1Xyri2fE0cHzKOihnfCKV
         pUEw==
X-Forwarded-Encrypted: i=1; AJvYcCUZP6ixUXcn1wVnVN7dvwY54RdcHd+lyqtCzi6aVjIjEOCtrO7U3D2buFEaOioBJ1pTlaGvdnbWj15f7ragION2XkoQSSAXMmj6ae4JgVOORwX5
X-Gm-Message-State: AOJu0YxBiZgFqilNglbkZjpNdgxQoOQfPqGJRXuHiqbu6XCJux5WhzCO
	UTpPDZD5TAS1J1NwB4cMmbteyJ8GKrW++WA0LlAMKW5cvApVKKofiQAtl1l7qu6Pxxj+qb66U4c
	jmIicX+So0N1AiI8CiuUgwcHyte6xYypAYQ3CRw==
X-Google-Smtp-Source: AGHT+IEou1g+hlEnF+UZTysGeCw64FZcHI0UHv68Ib6xcR70RGN0JzF6vOEoAr0MN7ZeCOnx92d1upOtm7sToLZnVFo=
X-Received: by 2002:a25:dc53:0:b0:dcf:f78f:a570 with SMTP id
 y80-20020a25dc53000000b00dcff78fa570mr2107378ybe.7.1713533522845; Fri, 19 Apr
 2024 06:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240416161237.2500037-1-knaerzche@gmail.com> <20240416161237.2500037-4-knaerzche@gmail.com>
In-Reply-To: <20240416161237.2500037-4-knaerzche@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Apr 2024 15:31:52 +0200
Message-ID: <CACRpkdbRTOV=t4Y+xKR0P+q=N9XmTWkAWHWptF=-uSrA-9Cq_A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240419_063205_058309_9C5AE951 
X-CRM114-Status: GOOD (  10.39  )
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
OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxs
ZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpMZWU6IHBscyBhcHBseSB3aXRoIHRoZSBy
ZXN0IHRvIHRoZSBNRkQgc3Vic3lzdGVtIHdoZW4geW91CmFyZSBoYXBweSB3aXRoIHRoZSBwYXRj
aGVzLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
