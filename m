Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15547C388F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 03:29:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 696F721534
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 03:29:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VCHbf+e7";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.b="QmKzFiaH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 696F721534
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FvkFEOO/CwMXGw8XYifeNMfbH98rOuJji1MLX+0KdEg=; b=VCHbf+e7Vat7/ckrRhryLy9sZ
	Bga25JMDRjKCCSbth/1uAjCFhe6Wmi45tSvZCq4UHi2oonOQdjK/2c4JxF5NQaLYy1WQPnHeEIoRz
	ivSPs9DMESgNfoSpZX2NY6FMf/Qr159uDJ1XOc5TZczdnbYfOaG6XldTlUuG26681p8ArO2vVlyw4
	OQyFlsct6F9GV9u7FW/8jhNbcGWm0NuMpOyCu65wbxYmq64Wo7MNQy7cZuC39QzR1En4PENgQBQb3
	qTVYCQr6Qp4IWsj9UlCFIH/aUbF/wMkNp/UtyfzYy0xMQwN08Wf+JSF7h5Ix/YpdipUGYYngmA2hQ
	Lw2koszTA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVRIK-0005jr-VB; Thu, 22 Oct 2020 03:29:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVRII-0005iW-FW
 for linux-rockchip@lists.infradead.org; Thu, 22 Oct 2020 03:29:39 +0000
Received: by mail-io1-xd43.google.com with SMTP id q25so77227ioh.4
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2020 20:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IMFKi57vTn4WORdntFjLONbVhz/S8EeuoMU/ru37Fjk=;
 b=QmKzFiaHxS37kWhYqOevmJSha395OemOg2KLsjigL/6YgPyC0cWSkaDr+ffKa61vPU
 GXX3dfuhinc3Qluqg/LcYmWn/uxtlNOgkwHIV8z5wVdWNaIK/qBYmvkfpKFr6uIPXDuS
 AfhJpRPcSFHBisu+853OTgVeFr30qYIhwo146On5XcIrt6UvkDzAOUc8b9oPP4LHY+aP
 mcF96p2cmiAaoW59NhLHswwH2t/U88kQXPZ09XztB41AQUXax5V0J3N4+8uTmW9J5nLp
 gvtykGqSZeSnzrM85+VdZrTtv1zRS7Q7rVERJrrNJBtv0PRbYLmliKduECch9kebV8vo
 8yGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IMFKi57vTn4WORdntFjLONbVhz/S8EeuoMU/ru37Fjk=;
 b=ThkA3vA4o/x8J7/e8yJ5oNWy2MKjV1x4y6VfeyH+nclM+Z7UDJAde75eIhPN+iEcoa
 o8IbskcHxeCZs66Vb3UI15UvkuangBxHj0lFf5fGHASfiaFozWJz9Aftw46bbnixRytA
 +Gj4er7ighcnNJmYiYgGkSDg+zfg79QLMn9Z9lyiQu729I0XAHd0i2Z03ealfuR0aErH
 s72ZLzQA+Dx2355VJvBa/nnc8/1s/Xnsz8Mp1usd/HvqaPkZ+Z8BlL99Nv0y9AFSd6gi
 BUPmX5WTYvzwtPLHa8fiA0c+vxXkfhE0f90cZkBbV9GQWdxR6hYRoscPBuQlV0lSngbB
 luew==
X-Gm-Message-State: AOAM5321LfOuvYFRZ9hzooxsFX/ScfdwQmRGc5hvhsjS6UaMCtLaWiVG
 6Bp2z09DISIL6dqUp1k0exx3SxLHBtvtlisrbvESjQ==
X-Google-Smtp-Source: ABdhPJxMauPqYM6FB9F47HpfghenbvywgGSYzCRS3yrWm7U0RrqNphhFJ8ty4CuavT4aU+0YJFuGRFcGD/Y9+5aVe7A=
X-Received: by 2002:a5d:9f0e:: with SMTP id q14mr438269iot.185.1603337374464; 
 Wed, 21 Oct 2020 20:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
 <CAFv8NwLkvxX2avoLY+4NY5gBv0dQ863hFFiqy7iQOJxH4WenmQ@mail.gmail.com>
 <20201015161251.GF4390@sirena.org.uk>
 <CAFv8NwL1xX=yPGFqQL_mOzAnPTfH0Z0J6ibG1+D32W46Nx0KYQ@mail.gmail.com>
 <20201020143711.GC9448@sirena.org.uk>
 <63f1a29c-0758-97b8-ce80-fe43d91630fa@linaro.org>
 <CAFv8NwJ-+f146Ss9Mk=nEXjm1B--ZwhAgnfx-cTi7DGEKqC1-Q@mail.gmail.com>
 <e876421c-dfeb-e853-1b65-53a786e9bcf9@linaro.org>
 <20201021123913.GD4497@sirena.org.uk>
In-Reply-To: <20201021123913.GD4497@sirena.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Thu, 22 Oct 2020 11:29:23 +0800
Message-ID: <CA+Px+wV-uoODRQTZqv7RuyOUoGBoh5GnT2h4iW9mJGRL=UFfgQ@mail.gmail.com>
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201021_232938_564196_46047820 
X-CRM114-Status: GOOD (  12.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Taniya Das <tdas@codeaurora.org>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Takashi Iwai <tiwai@suse.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
 Cheng-yi Chiang <cychiang@chromium.org>, Patrick Lai <plai@codeaurora.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, sorry for jumping into your discussion but I am trying to
summarize them to make sure we are on the same page.  Pardon me to
manually copy-and-paste partial sentences to quote.

ACK:
- Don't expose DAI connections in compatible strings.
- Use "model" DT property to make the card more UCM2-friendly.
- Expose new DT properties to distinguish different DMIC models.

NACK:
- All the board variations using exactly the same compatible string.
=> This is less realistic.  Although the CODECS information can be
retrieved from DT, it is inevitable to have some custom code for each
CODEC.

Per Mark's words:
> a different CODEC is something that often justifies a separate compatible
I think we should use different compatible strings for new CODECS
combinations.  And we should try to reuse the machine driver if they
share the most code.  In the worst case, introduce a new machine
driver for the new CODECS combinations.

- Srinivas's suggestion to set driver_name.
e.g. card->driver_name = "SM8250";
=> This sounds like a new DT property should be parsed in
sound/soc/qcom/common.c.  For example: "qcom,family"?  But as we do
less care about UCM2 for now, I would prefer to just leave it as is.


I would expect the following variants in DTS (just for example):

sound {
  compatible = "qcom,sc7180-trogdor";
  model = "sc7180-rt5682-max98357a-1mic";
}

sound {
  compatible = "qcom,sc7180-trogdor";
  model = "sc7180-rt5682-max98357a-2mic";
  dmic-gpio = ...
}

sound {
  compatible = "qcom,sc7180-pompom";
  model = "sc7180-adau7002-max98357a";
}


Please correct me if there is any misunderstanding.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
