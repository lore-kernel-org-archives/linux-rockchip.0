Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285D5C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 17:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97iTIklR8I5CoNrRwUCothib8zgk8gVGfBCO43BS7cI=; b=v0jspj4FqNd98O
	03WmV/KLx8WLpifKF2K41r9GlvVAoodE+odDaED0x9dKAmloV5kvjJWshHaPjU0d3oat/Le2PHM+U
	/JtpB4ekehdCQwAWfa/5Ya5OjdvLZEs/KFGzlcNWxJsx8++Kk34aax+olg++1nz5bWiSe1j0vyema
	tbsCo8JE0pDzOLum+kVftJzj/x4YaTD0qOBsr1uihSoA2p4bdEPfOXnxT+c0XaXVpXlDP+0jV5Jdj
	WoXQ2m2BvfsgOPdupf+TUQd1K0z+4EybAXj1u91yafGj5VZjw/mn24Afn6h9OFNJwEWC2OC6b8NEG
	pEPXwZazy7osxF/ifunQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX46f-00C1Ni-Kn; Sat, 10 Sep 2022 17:17:25 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX46d-00C1Ik-AE
	for linux-rockchip@lists.infradead.org; Sat, 10 Sep 2022 17:17:24 +0000
Received: by mail-wr1-x429.google.com with SMTP id d2so8375577wrn.1
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Sep 2022 10:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=DA72L+KG252i9kApPGBzXI/xo+bqFuMURZhWoNRsroA=;
        b=JLymezzOYumyEv8r/QBXmcL1h5IjSPtVoJwAul4iBSUf+wL52Gx3Wto17WNCmj1flr
         XV8rdxJqC/isFai9msy52ZIg0dKS/6MFsWSs4dBo3gXHySO7zmZ71aJ89GMj05Vkpl73
         nctHddOU8TZFlfBBTWxkCFlXL3RnBeGRqz5TG3MZ4g5mmdadwSTdsLjsjoDLSX3Kurzx
         S99309l+g6ixooBW/huTKsygdBTQsSwVRy4vi5DiacOyBgVRa9PBXFlMc2Sme0+8S8sf
         EM5GLztxDRU3NhNX1OeG9Qo+bWCN87OdadzTFHI/kw5RKVITTXcHLUunoudpX3Y0gaH9
         G1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=DA72L+KG252i9kApPGBzXI/xo+bqFuMURZhWoNRsroA=;
        b=VLFE/hASiUfJJo1ClalMuo6bVzmAD899h+KqMrDnVd7MfnHXhcqzWlclHGNa0JXdou
         vzaY5mr/uqGfekD7Yf+hDBG6NfBdno5qJOry4iGxCGP91Mk/FgoW4mhwO9ofUouACl6a
         JFg5nIYzPRYAXEeoyU9dd6jyfycLpDttP2garZu1+S4Fs7i/dx0Rz+deZFfO2aI2haSK
         bt8RA0C0nsQfagKkYwpmRijnk7bg9rBPEdkFtpZg43sfipp2g15WPxKuXweHe47PDKsp
         ZSENeZd6PyRn7xnMsmwqTNdUPOCFWl3RsBBW71Q6ULOUlTHQtrVdE14UWNRq2B+wdVu+
         EZlQ==
X-Gm-Message-State: ACgBeo1GxSuBmrYULO7WMbhKB9hkwpzbU0NyZ08TChfskLnRIfFuLNHv
	QOZN3Sd0arVHmLjTTsBcvAwTlMKW7+m0ZMH5dYA=
X-Google-Smtp-Source: AA6agR5lQZ4TiPO6i2gR9pxcRxg3gi1IiN9ge5ynKwSZ6rQfoYbRb3AOY+FFkH7xzGRVadzq7K8VedRzHzbg1mFXOZw=
X-Received: by 2002:adf:f64e:0:b0:228:b49b:20f1 with SMTP id
 x14-20020adff64e000000b00228b49b20f1mr10990941wrp.59.1662830240409; Sat, 10
 Sep 2022 10:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220909175522.179175-1-sebastian.reichel@collabora.com> <20220909175522.179175-13-sebastian.reichel@collabora.com>
In-Reply-To: <20220909175522.179175-13-sebastian.reichel@collabora.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
Date: Sat, 10 Sep 2022 20:17:09 +0300
Message-ID: <CANhJrGMd_4pK0Avbngggs3BJme7WgrkhzvJ+VbL7-JYri37Dow@mail.gmail.com>
Subject: Re: [PATCHv3 12/14] regulator: expose regmap_find_closest_bigger
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_101723_376267_5396506B 
X-CRM114-Status: GOOD (  11.59  )
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

pe 9. syysk. 2022 klo 21.21 Sebastian Reichel
(sebastian.reichel@collabora.com) kirjoitti:
>
> Expose and document the table lookup logic used by
> regulator_set_ramp_delay_regmap, so that it can be
> reused for devices that cannot be configured via
> regulator_set_ramp_delay_regmap.
>

I am always in favor of adding helpers to be used for common tasks. I
am not demanding this (so please ignore my comment if you feel so) but
I guess finding the "closest bigger" from a table is not ramp-delay or
even regulator specific. I believe something like this might live
under lib - if exported.

Anyways, and whatever it is worth:
Acked-by: Matti Vaittinen <matti.vaittinen@mazziesaccount@gmail.com>
for exporting such a helper. (Or please disregard the ack if acks are
reserved only for maintainers - It's just a sign that I think this is
a good idea [even if it could live in lib])

Yours
    -- Matti
-- 

Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
