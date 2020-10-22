Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73108C4363A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 10:13:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E773422248
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 10:13:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jCheqaa4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FHx9aWm9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E773422248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kELsUxMEozu/i+RrAczIWlECD8gx9iw2O5yZQqgrt7g=; b=jCheqaa4+KEk90zCjVzy4nN+y
	UVN1QhXOhg+45hmsI0OISlAA2STxA9q79S/wOV3dWV8C8C/nXLl8tul3Rk6dZYrcK6jXK88dShxZu
	osDtV/o9Y6gWFF/kNOR+JDvfA/JvYTA7NR3b/xrdGfO0Qcttau4tfN5dm1CFiID17BG03QUbir6AG
	RjgyLtPulchUyDx62aRN9F9ra25r00adAybXAiINsmWbEe/kxKh3bv5iqkaphTEUBQd6xpLb1+wMf
	19QJee0NjhS7H3Rf+QS5lHDp/ZhNVVM3oUTZom1TVW5iqo1yDz5dHNi3Es6/PygLAlGnLgADHKE8C
	R007Prm1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVXae-0002D7-0X; Thu, 22 Oct 2020 10:13:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVXaa-0002B9-MF
 for linux-rockchip@lists.infradead.org; Thu, 22 Oct 2020 10:12:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so1507719wrp.10
 for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2020 03:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AVYqBwFNeS8pknHZcG1tJcoDoQAS4sJ1OEwl1v423e8=;
 b=FHx9aWm9FktJEtNY/lWrc3MGLVVQTVRPkaKpE/BrIvI65HE1/l83fZFIYH41tRBW5/
 HKpKCopsEU3q8T3e3RTCblClXa64BkmrSnDKUmEoPNCVOcIgrYGplAj9LWAKZ+88ul3F
 lShjw/BQ54t6I7EfHNGaZ+p78XcoqGFpJD0s1hDHX1X/G8PgJdwsSPIC6OZyB6i5yCqL
 gdjFYC4gh/xNnO8/pYQEZW78XHILWr7IPoR8M97YTNxfst2lz5YZ+orcSJCZTZA7XUgH
 eyA+LqsmkQUZMZWg3e26x9FmT7iYAi3exYSCwVAw2BYim7sgprHx7allxCYqNPMTgCdF
 vp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AVYqBwFNeS8pknHZcG1tJcoDoQAS4sJ1OEwl1v423e8=;
 b=Jt4S6ZlsdHZOFz1yGLW3Cd/nMi2vU4sSZ+e+5oxdmO1JDFQwI5kUKoaqjBMql7pxvD
 dlri4GudpxfSpDO1pGff3A6VzoJeOAKLUtFunoCCWyB9WshgLuBJHWy29Sc7VOkrRxcY
 l5j1MKxzc3JI10MV0mO2r9moFGyfkKQDcKtKMlp0kbzbtnKz3Mz1aYArn3EkKkAlDQio
 TynU07KqvgIo8K/bzV3VIer1ST6BC80AEj+QOzMPq7PjiazOwJq5S3MciAspHIl3hSw8
 9h+lAh0yrW5B+hhW/gtYhNqMHQe4gYvB4P5osAo5/Gk/Bs+EzzM/Hx4rmG3oTtG1OjKC
 6qsw==
X-Gm-Message-State: AOAM531kY+hyGFTcBiedZaxQM8pY2ZdZDaJ59VN/e1ABqbJwQV8Zbw3B
 dQ7n3AR6QAB/KPY9bGdiF1JFpA==
X-Google-Smtp-Source: ABdhPJynoIRUVGmbBNtiBqCFMZFtDduY5X7CJApEBX+q08WHFZubdBFJCCYOFMWx5UVgG0TeQNEdlA==
X-Received: by 2002:adf:ef02:: with SMTP id e2mr1777892wro.381.1603361574107; 
 Thu, 22 Oct 2020 03:12:54 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id j13sm2935385wru.86.2020.10.22.03.12.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Oct 2020 03:12:53 -0700 (PDT)
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Tzung-Bi Shih <tzungbi@google.com>, Mark Brown <broonie@kernel.org>
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
 <CA+Px+wV-uoODRQTZqv7RuyOUoGBoh5GnT2h4iW9mJGRL=UFfgQ@mail.gmail.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <14e7db29-4825-6e9d-22a0-5121bb7006e2@linaro.org>
Date: Thu, 22 Oct 2020 11:12:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+Px+wV-uoODRQTZqv7RuyOUoGBoh5GnT2h4iW9mJGRL=UFfgQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201022_061256_867913_263DEB74 
X-CRM114-Status: GOOD (  24.28  )
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
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 22/10/2020 04:29, Tzung-Bi Shih wrote:
> Hi, sorry for jumping into your discussion but I am trying to
> summarize them to make sure we are on the same page.  Pardon me to
> manually copy-and-paste partial sentences to quote.
> 
> ACK:
> - Don't expose DAI connections in compatible strings.
> - Use "model" DT property to make the card more UCM2-friendly.
> - Expose new DT properties to distinguish different DMIC models.
> 
> NACK:
> - All the board variations using exactly the same compatible string.
> => This is less realistic.  Although the CODECS information can be
> retrieved from DT, it is inevitable to have some custom code for each
> CODEC.
> 
> Per Mark's words:
>> a different CODEC is something that often justifies a separate compatible
> I think we should use different compatible strings for new CODECS
> combinations.  And we should try to reuse the machine driver if they
> share the most code.  In the worst case, introduce a new machine
> driver for the new CODECS combinations.
> 
> - Srinivas's suggestion to set driver_name.
> e.g. card->driver_name = "SM8250";
> => This sounds like a new DT property should be parsed in
> sound/soc/qcom/common.c.  For example: "qcom,family"?  But as we do
> less care about UCM2 for now, I would prefer to just leave it as is.
> 
No, you can just hardcode this driver_name in your machine driver rather 
than getting it from DT, this is how everyone does!.
So need of adding anything to common.c

The thing that I suggested to add to common.c is setting card->long_name 
from "model" property.

> 
> I would expect the following variants in DTS (just for example):
> 
> sound {
>    compatible = "qcom,sc7180-trogdor";
Make sure that vendor name is correct here, am not sure if trogdor is 
qcom board or Google own board!

>    model = "sc7180-rt5682-max98357a-1mic";
> }
> 
> sound {
>    compatible = "qcom,sc7180-trogdor";
>    model = "sc7180-rt5682-max98357a-2mic";
>    dmic-gpio = ...
> }
> 
> sound {
>    compatible = "qcom,sc7180-pompom";
>    model = "sc7180-adau7002-max98357a";
> }
> 
> 
> Please correct me if there is any misunderstanding.

Looks good to me!
thanks for doing this!

--srini
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
