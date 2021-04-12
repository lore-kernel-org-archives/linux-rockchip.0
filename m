Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07F53C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 10:03:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A32946121E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 10:03:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A32946121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dVDTcm7zY/SvHs2n7jIOCr9+ozWkj8RWdCOLsJc7lnY=; b=NL02f4wYS4EoXjo34rzInWUO2
	QwIkoOgatTdX+b6SZauXrzVZlQDhVrVU+LjmJlcwEg65Evtal743mLJ+yRsd35EYiW62i1e8zksJk
	RRsXbs6AIig2PsvANCWTDFKanNEn8BbRLLXBiNBWxUm9fyF4PIEMVSu+1wE2Q5NVAUGxF2Hpf4JCp
	3GtpaY5xbHHE8kEJaxogfLZeM2FF3d3EQx74N2W6SwY0z5pg18H0q4ijfYtOmBQLTT+al1HsV/8iA
	I+80tthspqILE2qAoIqvqxGdE7YnuvK0a1x3H866Ymlui6oXu6m/XI7VSnljq1mirCyIJLHIoURty
	0EMQW1DZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVtPt-006OnD-0N; Mon, 12 Apr 2021 10:03:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtPp-006OmW-Rx; Mon, 12 Apr 2021 10:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=IecIer/Daj67JEJVhH+GPnEHHlaRlGiwgqpp2Q/YAIU=; b=OLfk2wf4ufOiFDEMeN2wh22VZy
 Ldoe1RlYWRVA8Z1lIgS9JTlAPbRfsSvTC/8e+PGMGMUYtzyMDlbrQh8OH3/dw5+3Oxjja20tr/0Lw
 qjJCJn5fuwbKUxs7g1lQUBwiL/+/GNaDvx4QErivwdSmovQQ/0vwRdwYCb3gA10uTAwVe1zw1VX7r
 +wfIexJLgSkx4MBk1GFXVcx0Boor4PmSV/JaqigHtwoMVV4HxQfB5PmtaA8bVfMwQJOIVGuvGHaaD
 2RCHLyb6bfzSUzCHV511Z5JCJFidi//C9+fsLdLI8wEW14VXbQeqdbqc43kx8NJ7USKh+xuaolZFk
 40AgLfXw==;
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtPm-0067AI-Tr; Mon, 12 Apr 2021 10:03:32 +0000
Received: by mail-ed1-x534.google.com with SMTP id z1so14338825edb.8;
 Mon, 12 Apr 2021 03:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IecIer/Daj67JEJVhH+GPnEHHlaRlGiwgqpp2Q/YAIU=;
 b=ln51gpRQqxs+aXEIsek0esHSItFg0Webv0LPtRTD2g0FmtU/iQPUd8sThf8D1iSel4
 zwDkLyxXl4ytJMdasEVWhqEWwXgWLXzop/l06D5GK7a/ylDCpdbEQEgvURJ25qsVQ2Fn
 /poXqgd6Gt0ZQK0VFY0dI3zwm35FeEgziFPsNKjYp9WdANyrO+PsLjAm7bSAA+s0Obsg
 OemRwl/0IkyD8QMUYfUJLaErOm2jBvnEDkcyxGmcWYNjNQqEt4AMOTDQuQSEa5RePELp
 t/iVc+YmVP/esBqgvjg+x8qM/w+81EGkWhvFsXSCmN7uwvJ2OR5WoY8V6wRuCwMjYIpe
 7mwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IecIer/Daj67JEJVhH+GPnEHHlaRlGiwgqpp2Q/YAIU=;
 b=cnURfHdDW2ZPlXrZSatNBnFXRYhHjc2Yi5zYEvqjw3xLurRCwiciAW81wWSNU0+rgH
 9HSzlbKtZddbH+mnCumTnzWShFrOJ4z7p7WS69s2YD4MdwXL9k9UkyV0aTu7RfG3hYga
 gfyiV1KFcgnLJGRjp92rD8MU45jevQ+B1K0f52CHhjrCowUcqUNn0HdfYcgC9GZdugCX
 Z08BjbFPHHbiPdWIgt3In+7dOZAYAuidJ61pGoT/n6NhfKrm/ElsCPiDXGcTXRppowxt
 xW/oqN4emKse942zwwHH1ka+dStG309kyfVubM/IzC7jZU7+1dhR9ZfX7sG01rfk40Qn
 gbZg==
X-Gm-Message-State: AOAM533YO9Kcu/PR+SnTlKnnErtKMka64ZKDGdEVG73XAPrEWmNINNLG
 uLHS+2ZtE8XtzbUStoOZ5oo=
X-Google-Smtp-Source: ABdhPJwsC2fOcR1VpuH/xWkjRQVk4aT58cqY4kGqC/1+OKqjTFeg+noo1vbd2uJIVw1TFGySTfCM+w==
X-Received: by 2002:a05:6402:11c9:: with SMTP id
 j9mr28456381edw.348.1618221809192; 
 Mon, 12 Apr 2021 03:03:29 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 w25sm6172320edq.66.2021.04.12.03.03.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Apr 2021 03:03:28 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties
 from pwm nodes rv1108.dtsi
To: wens@kernel.org
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, linux-pwm@vger.kernel.org,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-3-jbx6244@gmail.com>
 <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <31b5ff50-afe5-b446-7d3c-943d148814d8@gmail.com>
Date: Mon, 12 Apr 2021 12:03:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_030330_994715_0DAF3608 
X-CRM114-Status: GOOD (  20.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/12/21 5:15 AM, Chen-Yu Tsai wrote:
> On Sun, Apr 11, 2021 at 9:11 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> A test with the command below gives this error:
>>
>> /arch/arm/boot/dts/rv1108-evb.dt.yaml:
>> pwm@10280000: 'interrupts' does not match any of the regexes:
>> 'pinctrl-[0-9]+'
>>
>> "interrupts" is an undocumented property, so remove them
>> from pwm nodes in rv1108.dtsi.
>>
>> make ARCH=arm dtbs_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> Given that the interrupts were specified, meaning they are wired up in hardware,
> shouldn't the solution be to add the interrupts property to the binding instead?
> 
> After all, the device tree describes the actual hardware, not just what the
> implementations need.
> 
> ChenYu
> 

Hi,

The question of what to do with it was asked in version 1, but no answer
was given, so I made a proposal.
The device tree description should be complete, but also as lean as
possible. If someone manages to sneak in undocumented properties without
reason then the ultimate consequence should be removal I think.

Not sure about the (missing?) rv1108 TRM, but for rk3328 the interrupt
is used for:

PWM_INTSTS 0x0040 W 0x00000000 Interrupt Status Register
  Channel Interrupt Polarity Flag
    This bit is used in capture mode in order to identify the
    transition of the input waveform when interrupt is generated.
  Channel Interrupt Status
    Interrupt generated

PWM_INT_EN 0x0044 W 0x00000000 Interrupt Enable Register
  Channel Interrupt Enable

Is there any current realistic use/setup for it to convince rob+dt this
should be added to pwm-rockchip.yaml?

The rk3328 interrupt rkpwm_int seems shared between channels, but only
included to pwm3. What is the proper way for that?

Johan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
