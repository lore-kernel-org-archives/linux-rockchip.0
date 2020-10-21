Return-Path: <SRS0=RUTs=D4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F83C388F9
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 12:01:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6AEF21D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 12:01:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3JpFaVb9";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SenAqoql"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6AEF21D7B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AaWyfI37L9XwoxMNSxnXAj6Fc8ugbVuo0KMjUBRbi6U=; b=3JpFaVb9QJmh2IXn2bEQPlrDv
	n8Z7hpju99fHzy+5zhNerTO24BpN1qV9OKeTK5tb1M0FFY625B3IzC5jF2lJ3z3QmO+Shj2X2z/Fh
	sCdCG6c0Eicc4uCTN94ix/x5/kkRnT47FJFo6Mg8CWWoTz6F95KRaEPUvD0XkHxzOl/0E5joLZ5MV
	ULwACcXHiENuloQMSc+RmfaZr8o6EisOLvvr/Em3CIGsBNWmZNqIB0wEI3ygGP493nJIKqzUb6IQK
	M1zm/yP8dnI2wykMGA2nXJxADt8QBC6nVxjx+WLlY1EuHdn32RdZdqZPyhXlpPjbDlLVZcgqHkN17
	FK1fKWODQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVCnr-0000Rn-R6; Wed, 21 Oct 2020 12:01:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVCna-0000JD-Nk
 for linux-rockchip@lists.infradead.org; Wed, 21 Oct 2020 12:01:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id c194so1808119wme.2
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2020 05:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2fJBIpEa92kQMJ5/9beWt+N555m7+v1D1vPnkJrcT60=;
 b=SenAqoqlLi2aW37fpwhuD9srFzhLzrEbBnol9BebPsYEEI+KDFkpx8T7/egwqBcrXA
 VKXMHj3+b41FIQ4eI7Myj0Na0a6bAyVKcAbDSlj32qMfgAeqpfHG++isqgO4Ii89gzJ4
 JdpTeaZZGUhg4QPD0sGFy9Z/DF5jWisVimMRkRKV/T6oPAt4/20N1owP7yvOCZriHz6X
 MlMQSoxh+Jwwv/iMBlIRdYWmeReU1RJKhiIFKPGCzvTcp2zrd+oHDfQmGvVCJFr7YPR+
 vQuoHN7O+rf4SXzK+HkSZwxDxt11IINm8k11O5XS/rsp4h9RtxIkDu8YGDJoy3daSq3j
 kHew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2fJBIpEa92kQMJ5/9beWt+N555m7+v1D1vPnkJrcT60=;
 b=KGDezYHCnEkEqETEa37O8RRso6DcDbfktQSBrYGhJrQ8c7TgDTq07RsQ3o9+cOfE9Q
 pqGIC6ogvTSC2BuRwAqbibd9dX7x0lmnFt+FVuNbcGmjwakEMzSX2ND1TEL3FYuM9t3X
 UqVC23dEewgnOdyHcB6BxiMtnXxjxWaGM1pQ5IS5hiohLdN8vVVgmRdQyYQuPTjxcQy1
 wQ8F/8AI0bOQAsK3OPGhTD94W5hMFtn2upFKfshzN+TXjo12TeRqeaPCg9bTVi+7OQIy
 eSz6mFHDUgoS3Lwo2TtVxElMA9YpWyEmQ2GJPCNozGaXwUXmT4g8QQIZa+twV8Bf9Xll
 JgOQ==
X-Gm-Message-State: AOAM532nh0i/EuFJyZ9LLpIwPL59yE4O5D+Xf0qSGwpQSbPdYC1WPJdH
 ZX1kfdtTp8diXcUisVRKSfJKXQ==
X-Google-Smtp-Source: ABdhPJyBuNQJw//BB7VhJ/IyfJhB0D0zjEufDlMEYNH8dKwZxjKPNA+bODFYfmYhr9qj+l9595JgRg==
X-Received: by 2002:a05:600c:d3:: with SMTP id
 u19mr3261018wmm.150.1603281657485; 
 Wed, 21 Oct 2020 05:00:57 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id h16sm3896356wre.87.2020.10.21.05.00.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Oct 2020 05:00:56 -0700 (PDT)
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Cheng-yi Chiang <cychiang@chromium.org>
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
 <CAFv8NwLkvxX2avoLY+4NY5gBv0dQ863hFFiqy7iQOJxH4WenmQ@mail.gmail.com>
 <20201015161251.GF4390@sirena.org.uk>
 <CAFv8NwL1xX=yPGFqQL_mOzAnPTfH0Z0J6ibG1+D32W46Nx0KYQ@mail.gmail.com>
 <20201020143711.GC9448@sirena.org.uk>
 <63f1a29c-0758-97b8-ce80-fe43d91630fa@linaro.org>
 <CAFv8NwJ-+f146Ss9Mk=nEXjm1B--ZwhAgnfx-cTi7DGEKqC1-Q@mail.gmail.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e876421c-dfeb-e853-1b65-53a786e9bcf9@linaro.org>
Date: Wed, 21 Oct 2020 13:00:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFv8NwJ-+f146Ss9Mk=nEXjm1B--ZwhAgnfx-cTi7DGEKqC1-Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201021_080059_290096_8E26C09B 
X-CRM114-Status: GOOD (  18.50  )
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
 Patrick Lai <plai@codeaurora.org>,
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
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 20/10/2020 19:54, Cheng-yi Chiang wrote:
>> Not with the compatible string!
>>
>> Currently card name, and long name are exactly same in all Qualcomm
>> soundcards, which makes it very difficult to identify how those boards
>> re wired up at UCM2 level. So the plan is to properly populate card long
>> name with "model" property which can include details on how things are
>> wiredup on that board.
>>
>> --srini
> Hi Srini,
> Thanks for taking a look.
> Let me try to clarify your comments in case there is any misunderstanding.
> 
> I understand your request on having different board variations using
> different sound card names through model property, and I totally agree
> with that.
> As for compatible strings, do you insist on having all the board
> variations using exactly the same compatible string ?


For example if we set below property for sound card in Device tree
model = "RB5";

We will end up with

#   cat /proc/asound/cards
  0 [RB5            ]: RB5 - RB5
                       RB5

This is totally not very useful w.r.t UCM2 and makes it very difficult 
to common up parts of the configs.


My suggestions are.
1. set card->driver_name to something more sensible in your sound card 
driver.

ex:
	card->driver_name = "SM8250";

2. set long name in model DT property and set it as card long name
ex:
in DT:
	model = "Qualcomm-RB5-WSA8815-Speakers-DMIC0";

in sound driver or common.c:

of_property_read_string_index(np, "model", 0, &card->long_name);

With this set:

now
#   cat /proc/asound/cards
  0 [QualcommRB5WSA8]: SM8250 - Qualcomm-RB5-WSA8815-Speakers-D
                       Qualcomm-RB5-WSA8815-Speakers-DMIC0

This also means that in UCM2 we can have a top level SM8250 directory 
which can contain other board variants something like:

ucm2/Qualcomm/sm8250/Qualcomm-RB5-WSA8815-Speakers-DMIC0.conf
ucm2/Qualcomm/sm8250/Qualcomm-RB5-WSA8810-Speakers-DMIC123.conf
and so on!

Finally Only comment I had regarding compatible was not to encapsulate 
the connection details in it!. these can be made more sensible, 
something like
"qcom,sc7180-trogdor-v1", "qcom,sc7180-trogdor-v2".. and so on.

This compatible has nothing to do with driver or card short and long name.

Does that makes sense?


Thanks,
srini


with




Currently if

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
