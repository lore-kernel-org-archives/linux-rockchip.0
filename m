Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46601C05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Feb 2023 20:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ufm/4Jtqa3OCjQcqxHm2CUAJOZ5yZw5N70IcEct5R4A=; b=g91Bk4BfuX6+E7
	Fo2YxSpqsHj+fXP6Q3UeUBqq3bNOL6t0WUjlqfAIqPRE1P7zxF9iYBArJ+eLf6HpWUBLkDynIY6hc
	Qf/ePZ0oxrzuEKvPigWOwX78nBTsrigP3zgsqiZJQtAWDjle0H3F+EUreFphJmrJwmhWrTHqFqPIN
	wBBcW5rrqBRey8zyObcDCKBTW6BCp6IbVbn8Bwu7cNYiChDIPjr9QDi1TTghHLXh423Z3DN5kNty0
	i32I8UQ3dcCepmVBXrXL6HgBfQEnBX2irQQX1lbwM65Hh3h7XOKC5uaj/DUsD5Y/01ehtc7r+ydcC
	jGmcPvRtDI3B9kI/0vBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQZcf-007Ga6-Dg; Fri, 10 Feb 2023 20:03:53 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQZcU-007GVs-5y
	for linux-rockchip@lists.infradead.org; Fri, 10 Feb 2023 20:03:44 +0000
Received: by mail-vk1-xa30.google.com with SMTP id i38so3239518vkd.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Feb 2023 12:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UE3ll5JZwjVLRnVM34rbSidyuGAYqN9NN6QDtGBKWgM=;
        b=5FE7spKl/uH6LtHUdRAT8qESaaYluENmDQi9fiHlsjuhrz5429ACChfN5SjL24VUH9
         39L5kpNKk/okISA1NBuynohJEOve0Ywk++x8QBAYflc6jYP/9Edv/7px65Gob6EXp/8u
         ftCJqS9t/0QSrHMB2qX7b4tcyod004T9Nr0i+NDjPqgR5m7crttnrBC6UAuss/+7NKIb
         bFXKjU779489tjyAxoYCCgmNhQWLKwmzyBMPUgtHc1JS38RF3VeuOdul0UtX0lVU2zc/
         NaXGB0w9A/79MZcVrGgxcbOUCXZz57gOaqLykzcmp/LvfV2fAte6idPOtpcNJcWz2Hzb
         du2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UE3ll5JZwjVLRnVM34rbSidyuGAYqN9NN6QDtGBKWgM=;
        b=C1ZAgENmSIY22wQ74KALYFOTAdPILD3ZyEZE/Zd+kx5Qr+LbfRXdtLIwT984vVRdxs
         oyg1q2aJZJFD6yZyj0djIGgMG7JpBdHHBiyZkfegv2k2TUdwWNCJGtIJ2pc1oPxdZ4bo
         47MVX48qrsjzrIfNoBPJjd2SKLAylVgkcLmCK51dok+ob1PB76Qm7FZs8T3J6KQStNsy
         Uz9eSVfIjakjm8wMF0mU57Yd8sR81jOEoYIx97sXwug4q8Ct19SgNRmXIWoQbmNKpFot
         ou4x2lfOiBNUb65zWG0ECrUcmG3zuppy8XdgHav3KTIsEJ/WuMujf+LzLdVixgjqJTOZ
         ee1g==
X-Gm-Message-State: AO0yUKVSS61KSM/RD4CvpBrUH66qH4ZsTBFpyXWV/9kRczK4Ghmm+nK4
	MhjXZrTUNfzt5a68kMz325k5vKP2v1nhFVogZ+OB7A==
X-Google-Smtp-Source: AK7set8iKVPpIW80jN5qXfYELUdIvwOQnS83LQN/njN0oFcDPgxfXeBcMbMBVB/yxw9jdkbOuS0Gq8f0uA/FjvEPcm4=
X-Received: by 2002:a1f:9493:0:b0:3ea:7394:e9ef with SMTP id
 w141-20020a1f9493000000b003ea7394e9efmr2973055vkd.11.1676059418517; Fri, 10
 Feb 2023 12:03:38 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com> <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
In-Reply-To: <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 10 Feb 2023 21:03:27 +0100
Message-ID: <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
To: Linus Walleij <linus.walleij@linaro.org>, krzysztof.kozlowski+dt@linaro.org
Cc: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org, heiko@sntech.de, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_120342_232052_2D5A1557 
X-CRM114-Status: GOOD (  11.66  )
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

On Wed, Feb 8, 2023 at 12:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> > Currently all Rockchip gpio nodes have the same compatible.
> > Compatible strings should be SoC related.
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>
> Bartosz can you merge this one patch and keep the rest back
> so we get a more defined DT binding baseline?
>
> Yours,
> Linus Walleij

Krzysztof, you left your ack but seem to also have pointed out an
issue - do you want me to fix it up somehow before applying? Drop the
oneOf and turn it back into an enum?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
