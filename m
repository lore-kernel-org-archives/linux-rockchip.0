Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFFBC4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 14:56:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEF2321741
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 14:55:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Sxjgy7ZI";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cK9G7+OH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEF2321741
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d7WmqZob0V/PtcMFsrXP3QoFuqmaCtLKjyzeIuzzAIM=; b=Sxjgy7ZIWFfAVz/N4d5Q+u98B
	6KK3m/dcxwf1pV7ceecINWf6yDP+poIyyDrYsmjroxcXNy/tpW+0lhzQlkUDcEuyoDIn2LRmd8Ngx
	3mz5D3EIxVzfO+KznxzVH8tWqle3EWdmaPXVzut/4M+wPOWwS9AK6im1pr30/vUCB9gObtj6JeAtQ
	+wbOyzLh52Vf0hIL4iHV8mD31rDcUBpl9LGkwTj5CtGy1iAutuCgvRHCeQL4q1CPtPQ1PpMAe1MGK
	Qd5vFOcJ0BPljiBJhZpasMCFxtco26NRwYH3b8O5M2keCVUVTI28jsV4v95jg6DRO3L+2f9Uboj//
	lQhgaTiSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUt3K-0001mM-31; Tue, 20 Oct 2020 14:55:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUt3G-0001kW-92
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 14:55:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id a72so2106596wme.5
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2020 07:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uf/L+N0SXiT5GxWzSMpW76s8MjBMaRe3gnVIlCSIR5M=;
 b=cK9G7+OH/TUQCyR8rfJv0QoQ3SjEQsnF9XCjVN6xqr/O8yU3IlDfbvmsbTfkhxQ06f
 q4IpVZ8VlQ3fVXlWWHGSfLpylD2IH5P4NE25315km3BTplz4wROeM/cLeRnrZhnHb/v5
 PyAaPitLsRWmdVTipbLqX4Out+F21VmQJ/X09y763klLznhk8Wjph5Dm6ltToTwu1GKi
 6cF9SRXzSOe+CnDRgo2LkN4n5tkvfZ7EpQsA7EkHbGt3NkoE1mD/PmAfdxkXt8UbFE9X
 RN1mqjge119zJMoJpTqXMa+rN2apg4iQxVK+dpL4RLHKRIlCnNkTt3EAvl5wmXLl4Uz1
 eT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uf/L+N0SXiT5GxWzSMpW76s8MjBMaRe3gnVIlCSIR5M=;
 b=iE3YSM5mafvJ3Kq4GZfQe5PBVGKGKFtlm1gTDWSPxg1Cgh5L8ZSLZJXE8wCGXi6D2T
 ucqlpGpOjOtJkBvGGFdMsI754mnhERZH/7gF7Z9HSRDf2Ma0iBCwZYCwgEVsOFaGW8yu
 stLPT8Lsc7pUdA2u4aSOy4aw29+OaT1LWRjrB+FQGgZTQ7GVMoY2lGICt3CLM1roey9D
 Z+cTauFy8ptAOvNbsr7zq3+PcThGuXwttU8cCRg9oZ5SKF5hIYYCpw5zzpF+GNndIzKB
 pA2EQCugBsakusb+NdxMR76xbAdtJOF0i40VBoX4oi60UNOWIh3XeVjPLucbvcRRx/MI
 MoLQ==
X-Gm-Message-State: AOAM53393ivg2H8qzLTXBbimohPwr0VZrxG2xg7uwVGKUy9BYPSGz/Tf
 a7XHgon82ohGkVdeyYWpki2UUw==
X-Google-Smtp-Source: ABdhPJwZTIfXIjPLWWjL97y1NfJTXN0Y2s/to/X10G0kOS41vqvGeaVeSXPhf5OZA0t9DHJLkiPgNg==
X-Received: by 2002:a7b:ce8f:: with SMTP id q15mr3351776wmj.88.1603205747699; 
 Tue, 20 Oct 2020 07:55:47 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id 1sm3868599wre.61.2020.10.20.07.55.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Oct 2020 07:55:46 -0700 (PDT)
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Mark Brown <broonie@kernel.org>, Cheng-yi Chiang <cychiang@chromium.org>
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
 <CAFv8NwLkvxX2avoLY+4NY5gBv0dQ863hFFiqy7iQOJxH4WenmQ@mail.gmail.com>
 <20201015161251.GF4390@sirena.org.uk>
 <CAFv8NwL1xX=yPGFqQL_mOzAnPTfH0Z0J6ibG1+D32W46Nx0KYQ@mail.gmail.com>
 <20201020143711.GC9448@sirena.org.uk>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <63f1a29c-0758-97b8-ce80-fe43d91630fa@linaro.org>
Date: Tue, 20 Oct 2020 15:55:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20201020143711.GC9448@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_105550_345816_9AA864A5 
X-CRM114-Status: GOOD (  22.39  )
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
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 20/10/2020 15:37, Mark Brown wrote:
> I don't understand what "logic scattered in various dtsi files" means,
> sorry.
> 
>> Yes, that should work to describe the dailink we are using.
>> But a more tricky issue is how to do calls like setting PLL in dai startup ops.
> ...
> 
>> I think that asking a generic machine driver to do configuration like
>> this with only a limited interface of device property
>> might be too much of an ask for the machine driver.
> Richard was looking at some basic configuration for PLLs.
> 
>> Would you mind if I simplify the compatible string like Srinivas
>> suggested, and send a v12?
>> As for other two kinds of variations that I am aware of:
>> 1. front mic / rear mic
>> 2. replace alc5682 with adau7002
> The CODEC change is going to be described in the DT no matter what -
> you'll have a reference to the CODEC node but it may make sense if
> there's enough custom code around it.  For front vs rear mic the
> simplest thing would just be to not mention which if this is a hardware
> fixed thing, otherwise a control.
> 
>> We can set different board names and different compatible strings to
>> achieve such variation.
>> So that it would make sense to describe configuration in compatible
>> strings like you suggested, and also provides UCM a way to distinguish
>> different boards.
> I don't recall having suggested distinguishing these things with a
> compatible string, especially not the microphones.  UCM can already use
> the display names for the boards to distinguish things.


Not with the compatible string!

Currently card name, and long name are exactly same in all Qualcomm 
soundcards, which makes it very difficult to identify how those boards 
re wired up at UCM2 level. So the plan is to properly populate card long 
name with "model" property which can include details on how things are 
wiredup on that board.

--srini

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
