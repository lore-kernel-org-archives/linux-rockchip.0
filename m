Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F07AECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84nut6pI7DP6gRfG2v2WB9hSn+mqdKn69Zq7r4EBswI=; b=3rYqmxFMfPrrZ5
	WgOxHecRXPrYRCzaYMK2CWQdfYXIUJtm7bh0/N5ejSsdKKKsK5ceW93ZrHVOXBkSjRcY2+G2QCELy
	Zc0qYukVKFwvum5pwRPmVyBg3bkH6aLyZR6hM4w/zsJAECUC3quD5h2fgOdiTIB907a8dK5A24XYF
	XVn2Gk8ZCv2sNSeWJOuUPViJ/VEqeuxYYlR/pgENz7jHfud5xarzpnJTKidUD4r50MNZYDThVrDMu
	9f5llpiro1mrHu7PX2dTYsooYBzsEYcGGZiOwLhI+fXLEccXUx5YqA5p01mQbzxW1c2SmXrsmUwCj
	EeDwk75J0ThGG4wUvpRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVjg-008OUq-Io; Wed, 31 Aug 2022 21:59:00 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVjd-008OI1-VE
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 21:58:59 +0000
Received: by mail-ed1-x532.google.com with SMTP id s11so20116827edd.13
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Aug 2022 14:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=gt4YLZqDImPxxMXWbC5jit4261EPZ27x3xf0AXbqt14=;
        b=XH3ZwkOcZ0vE44eEM5xnUXdLisXlo21o34Z/QjmEN399Vo4mHGwxT2i5Mz8ubuYmuf
         +8MYS74y47BT4LyIPM+s0MzhIgVZOCxqbA/qvKJ83N3YjAmQi9UnqtfzmFHTX8MhDrkN
         hxvidxffzRhnm/7vSPTWJWldNvy3IDfCYbrcq9g5r0PRehYLCVTkQP/dehHTmNODMhoQ
         2ZsK0aw1nrqlrFFkiyQV6mHuG8vBt8cU+dhw3nRwXnb3Sp/d6GN1gOSpBZ9KbTixBl1i
         IFD2RmugDwq9j9EpfiLaGRsMiFBA2XZXLIi09L9h+vc0qTQakCP3v7SajavO73Ep47p8
         W+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=gt4YLZqDImPxxMXWbC5jit4261EPZ27x3xf0AXbqt14=;
        b=2pvsI3TKBNrrjIm/804rIS/uCkMOSCrjMyUBZL4k52TGfrxhOv+KVE1olnwE8re5Ut
         NwDgjWE263yqlFQknYc/m3gImIyXvWnRNzqWT2fLV3hdmwIZEBoAl89i0h9dHu7c7VrC
         qTQucfHMnCo5TBzGkzwIMw1dwC5jhVGBy6mXEqyXDhuzbXRH/guh0D9XhDJGvSeRzNfT
         sdSKG0VHPSWau2i073gANxN+4l0xuVegzK0YY+A5ZaageqAy8dKJBdDw/UsDA2anGt3u
         1up6rdzLvq+dlToIk5H9ss+vTJSHghqU/3TGQcVPgrLX+nt1Y/NneaoquQ2/sF0r1KGM
         4q9w==
X-Gm-Message-State: ACgBeo0aD0DJNyvjocAfLRYnRCb6BF8lISVYmAOaTkE1geV2HKyJEEkI
	toLiuWEKPE3T7JNDYYtEATzbSeGUowt6aM9uWhRbrg==
X-Google-Smtp-Source: AA6agR4Ft4e2XKd4kgl1Jq3fM+RmTX3/w8LWY8e3RE3C6RHdAcTZAXd5FaWfhkmQUunK9122fbiWS4iLweLX9azJwEw=
X-Received: by 2002:aa7:c84f:0:b0:446:2bfb:5a63 with SMTP id
 g15-20020aa7c84f000000b004462bfb5a63mr26448276edt.172.1661983133579; Wed, 31
 Aug 2022 14:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220831215437.117880-1-sebastian.reichel@collabora.com> <20220831215437.117880-11-sebastian.reichel@collabora.com>
In-Reply-To: <20220831215437.117880-11-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 31 Aug 2022 23:58:42 +0200
Message-ID: <CACRpkdbpD77JO8H6XnnUCfE3PO-oELpSg=ZLeuhJyDWHs6Nn7g@mail.gmail.com>
Subject: Re: [PATCH 10/13] pinctrl: rk805: add rk806 pinctrl support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	shengfei Xu <xsf@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_145858_033751_F4F21CE8 
X-CRM114-Status: GOOD (  12.36  )
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

On Wed, Aug 31, 2022 at 11:54 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Add support for rk806 dvs pinctrl to the existing rk805
> driver.
>
> This has been implemented using shengfei Xu's rk806
> specific driver from the vendor tree as reference.
>
> Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose there are build dependencies so this needs to be
merged into the MFD tree?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
