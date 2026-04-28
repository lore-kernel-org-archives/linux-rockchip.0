Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88EC6FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 21:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kP6evA+wlljOqxjt7WBA3foYmu2gIM7u/YeEy54McPk=; b=jeNtSn/5nh/RE/
	sefCHeXdMQskDv/11F1vISjbp7AYrxPLqsuOfGY75Hqt6qXzGLQssp/RG4ThdiJ9/U5h1cunkcuBP
	fEh1IEmT27YwCgjj/NIuXyTtmVUsUcc8uhVp0HTFbmez4J8KxdR1rNgAsjh/41lafogkttaLQRThr
	0X/bPybx9bPS7/djSSIpNq6cvPRmS2x5GnVpSaHdSEO8/sAO6/nOg8GracG68ftKdmolLZCX+FB4D
	qy1V4GQ53YBjxB96mX/ecTs23b/HfQE5dOpgSRzsPthmhU9QbDV15WhVKgamCLYFi1NkpbB20tKph
	yr/dHjo0e13gW1g/lubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqDT-00000002XDK-2zW0;
	Tue, 28 Apr 2026 21:43:39 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqDR-00000002XCd-1WEH
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 21:43:38 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4891ad5c074so27045e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 14:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777412614; cv=none;
        d=google.com; s=arc-20240605;
        b=abBxPoUH8KyNyKPQUmSZ6iU4YxcbuV93fu8xcOez+dkWzpKzfz8fU2Fh4cp6Nhr9qY
         BH7Z5+waUYDMSXVFzB6YNis2pNtnydwghZQl7ql6ZyT5IQwWjW9rpplfkiFvj/hhEljY
         SYXqAlrVbcO9MrWZr7qowfttPYQxGRO12GEhFgrbGv1WP5di1+oBaLOJMoGULZhXh3cc
         2VjDONm9H1qDyBI9AMbBcq9eNe9JzFZjAbyoRt2y6Nb2Ktb0nRkbshgP3qB1HihNrnyi
         VaAGUFc8YjyvVweLwxnhmKqGRLj0CEFm7dEghXBP27TyX4/MJaD0EOQvADoVtqPWbn7L
         rk+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cUgK2Kfj5omPDpTxVPnIw7yYPrhwYT39UaRAh23oDLI=;
        fh=hqQtrcpDr/825cT3TlwJayNoB4ofSpxHG5K7oJx03dw=;
        b=HfpJ9of3Cn6PVB42I3qFwygY91cyhdrwV91mRLMK4GAu2PZSKefHONdPnT5q2302ji
         Uf4musLQc09srBvI80G2QIiLcIyy05V+AzCZEPoFsWaKt20U/091ONhKjQkthMoSeUbt
         a1xa1XLkN60b6G7sOUoDYrPchAiBEjULYYfKJGk2lSJHhdgvQ7nPqdcxrd4tbhBkMTFh
         HC+uEYd8Fh01OZ46h9LU/u/nX8q7JEMqgxxFKQI8tTcA2b+v1eivm0wk7xLDIQ74B942
         yIWS1rnObqlXYeEN2/oYTAZje/Kp4Xixu/luPCDheaOaa5mek7CdBTliMbGCXqRUv+G+
         FP5Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777412614; x=1778017414; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cUgK2Kfj5omPDpTxVPnIw7yYPrhwYT39UaRAh23oDLI=;
        b=QlVbooQQTLH55GabQiB/fdMbA0/7qoeIxFB+aw1ONV+Ol73yQWNK3+yQ+0tEvcLtvc
         zMgLAyIDOuGWOk7A9Tj1fe1Vuf7+gizgt1xBPjpo8SZ7j2CG/MG7At0wFPjra5q4BuLb
         R7OO4wjVwCeG2lA+oHPAwcn+UAgPXvmqSvTG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777412614; x=1778017414;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUgK2Kfj5omPDpTxVPnIw7yYPrhwYT39UaRAh23oDLI=;
        b=LyYFBrbfcxLvLn2fDGbLMoTgDN2cPzoihEzFXjnIeLx+oIyaSfax5IZztkSodIKW0+
         5FqXQtkUdYqtRA5ZqbGrz5Sb0KfuFmdg2U3BW5E95xcFRmoJA09BWUT6HlxAqsUcLiR3
         1wXd8iinw9Vff4rTgLoWuYZt3QjWY3sygCZYCznrcpaeKPH4i3gt+waoSWTrLGe/t65B
         RJExtAqTAAQo6uh5VvZY+yQY6nCd6Tmi55eKctufwpdNNj2/C/5mYvH7rCbBgjOxuQFG
         QMVOOIhtSfEgOYDuCsiJV6ZnbNQi9mkNYAeNmEF/sEwZVHcMelUoDBERpgd586QTuVEu
         elCQ==
X-Forwarded-Encrypted: i=1; AFNElJ8bpnV8+/j4PoiunzGIdngOltbAivxh4T5Otnh+MbqJRKg6wN5LefdXKMkffeRuYS2vs1ahXWKN3mdW33k7Rw==@lists.infradead.org
X-Gm-Message-State: AOJu0YytmYG6PuswYY6pBVyoJgFFUP+d2hwILY6hZYfBxFxqkVKViZ3v
	aDhipmhRrb5nYajhkUNFeeUGqKTBN2KUuYQ/QuLPnVcDdZoHslhpJIudJVUF6rV00RH+mSnzV0C
	WEQB/p6yR4fM78Y5eEjCOMahSis/8wV5q+lCOmx+9
X-Gm-Gg: AeBDiet0qn7kUK3M81wCIIonkecxUmAtaiLLbfFQzsRH+1Hwys277vPz6sr7B6FL9kq
	LGhZVW3HqvM3Rz1DPIslXRGI2EIVb8+qukegeNRwayrfqX1NNrUijvEyDcMFYwpH/V4ABWzg7vf
	tBnpQkJNIaJpg9qHevYuI8VkWD+JRJN7aCnWGNXrdGRRsiJAE2OhuIjkrtelXEUaPKsC8zq2iGm
	Aw6zFiXtVjGwIf8Hji/nRLNtXSQtIR9NZvqM5YMxhmQ3wKqPkawTuUlG/QP2OV6bL2KravkrVwN
	8wGs0HtKkRRGsPdSLRbIWc3Vox/Ke6M93R2e2sCnhk+hZyoDzURnLdxVXg==
X-Received: by 2002:a05:600c:530c:b0:48a:5f32:62d0 with SMTP id
 5b1f17b1804b1-48a7ba07d5dmr322355e9.12.1777412613805; Tue, 28 Apr 2026
 14:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 28 Apr 2026 14:43:21 -0700
X-Gm-Features: AVHnY4LgrR9BMoyPVl-dbhODH2S76f3l5WcQRNgpXekO-MzmQp39W8EwHdrUnso
Message-ID: <CAODwPW-YuhQxyGSeahp8+i-bz_hAvPQQCNWxaZCjrbvkHOQa7A@mail.gmail.com>
Subject: Re: [PATCH 0/7] dts: Add /firmware/#{address,size}-cells to
 Chromium-based DTs
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, Doug Anderson <dianders@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	Julius Werner <jwerner@chromium.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_144337_482986_DC5E5C81 
X-CRM114-Status: GOOD (  11.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> I reviewed Depthcharge code history and found that this problematic
> bootloader behavior dates back to at least 2014, with the Tegra/Nyan
> device. Older devices may have similar DTB structures, but I'm not sure
> if they have the same address-cells problems. In any case, these changes
> shouldn't hurt even if a device was not affected.

I can confirm that Nyan was the first Arm device shipping with
depthcharge. Note that the Exynos devices are all older and shipped
with an old fork of U-Boot that probably handled this very differently
(I believe they had `/firmware/chromeos` but not `/firmware/coreboot`,
so they wouldn't have had a `reg` node and should need no `ranges`).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
