Return-Path: <SRS0=OTpZ=CS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2CF3C43461
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 10:19:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97C7B21D7A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 10:19:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="E/JRE1Sy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nvSB7U1Y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97C7B21D7A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nH+TYLraM1QmAxrQuu4/N6+IdKPQgEZEq92k1gl0uxE=; b=E/JRE1SyGvA8waV8+0ZAkfeXt
	xf1X9f3KWQ48Eg1O50r6x190qOazUm50x9MpU1roXktrqGN2RQEoQ4dw6yhN9KB+eFqz1EfPNePKq
	1nGXHh520WpgU+dWU44KjWPGULoBMf6ia069R0nlFRaXnoJzNTqvcqlJlLevkkRS+4/bMAFxIbs/9
	dLCIuGrab3PlA+goDv9v6uswxS0c9mIINY/mQ14SVKBFUUXm89kX2K6cUMHz2zzEzVrJSQz8vEALt
	Jpde0++1kehoV6dFx+svcOGWb0sqeWL8vHunLutNeJBGOrBUiSmIJr4XpnxvFlmMa+S9gzbZ+Bcoj
	hUfxnaXTQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFxCd-0006oZ-95; Wed, 09 Sep 2020 10:19:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxCa-0006nZ-Eg
 for linux-rockchip@lists.infradead.org; Wed, 09 Sep 2020 10:19:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id c19so1499528wmd.1
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2020 03:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MYtyV9sjpexCNQizdjqRW/SdiWDHf0KUeZqsLzbBBXw=;
 b=nvSB7U1YSQLRXpNDcMP9RUL4PGdEF8Pp4cI2ebpoYmMzEcjiDJLpG6b3HJObeEVAxL
 cijYVLuZEmfuyeKiiZN8Q6lt2h87SXNCljv8Xm5odSlNFG3IzsWZMaKBsHIF8GcmTvzX
 tAKWudAP91pOakcxDjcrP8IsABvDDWwVina9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MYtyV9sjpexCNQizdjqRW/SdiWDHf0KUeZqsLzbBBXw=;
 b=THysFmVo6Pb/Jw7fJZ7KrLeIz3XW4nA3ZKUiuM6IOQI+5pE0ktBUOapWXYgMBL45P8
 UmB5GLKsLeyFygEk3NYykL0YbHfFdNMbkPNVqctl4zcizkUeNq7z/Qf1FxD2k3W//Icp
 rBWkp25JcLc1MqtQbyjqQRLQG/Nqjvmg+MRlszKtEfAOCClztbnVurlxw6TyCiQW1S+H
 Ue0/0/psc6gGAKVIDfQkYiT9smI8dKjuEdRrDdo8snaAZWYTGQV4znnEB3Xlqw01XMmI
 LAFBq4ZnUfyw6Su0+UCMm2jjzKgG6XAhy9Sd1X36ZAkhiC/thxY6abNnVLi8fijkc5UL
 w2Ew==
X-Gm-Message-State: AOAM531F4CTPd9Shgd1wJhNBiwlmiGsqMtcJA2Rj2o8Nxim3qHj1GDXD
 vhabskY+maug/VcERK9wfFumM5xQI/jL73flurVyhw==
X-Google-Smtp-Source: ABdhPJyiGLD2o5Mp0hKfuqc3sTpSUwV4QU2ftFwRMsUfKEu8ElxuFddp9M1CKV0LCUYsOZUPyqBuF/zKTLMFrnRTRBU=
X-Received: by 2002:a7b:c3c8:: with SMTP id t8mr2821349wmj.101.1599646782754; 
 Wed, 09 Sep 2020 03:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200907100039.1731457-1-cychiang@chromium.org>
 <20200907100039.1731457-3-cychiang@chromium.org>
 <20200908203357.GA861143@bogus>
 <CAFv8NwLMAkFhVT-ML7QHbnSkqmgh=5SrNSik5eSCTHB1=DGQ0A@mail.gmail.com>
In-Reply-To: <CAFv8NwLMAkFhVT-ML7QHbnSkqmgh=5SrNSik5eSCTHB1=DGQ0A@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 9 Sep 2020 18:19:16 +0800
Message-ID: <CAFv8NwJXyzUsCQZu1cU0t7NUJDpS_DyxZM=ZhU+jGoQj97i3Jw@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200909_061944_590225_75ECA289 
X-CRM114-Status: GOOD (  33.97  )
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
 Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 Rohit kumar <rohitkr@codeaurora.org>, Patrick Lai <plai@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 9, 2020 at 5:23 PM Cheng-yi Chiang <cychiang@chromium.org> wrote:
>
> On Wed, Sep 9, 2020 at 4:34 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Sep 07, 2020 at 06:00:38PM +0800, Cheng-Yi Chiang wrote:
> > > Add devicetree bindings documentation file for sc7180 sound card.
> > >
> > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > ---
> > >  .../bindings/sound/qcom,sc7180.yaml           | 143 ++++++++++++++++++
> > >  1 file changed, 143 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > new file mode 100644
> > > index 000000000000..ae809346ca80
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > @@ -0,0 +1,143 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> > > +
> > > +maintainers:
> > > +  - Rohit kumar <rohitkr@codeaurora.org>
> > > +  - Cheng-Yi Chiang <cychiang@chromium.org>
> > > +
> > > +description:
> > > +  This binding describes the SC7180 sound card which uses LPASS for audio.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: qcom,sc7180-sndcard
> > > +
> > > +  audio-routing:
> > > +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> > > +    description:
> > > +      A list of the connections between audio components. Each entry is a
> > > +      pair of strings, the first being the connection's sink, the second
> > > +      being the connection's source.
> > > +
> > > +  model:
> > > +    $ref: /schemas/types.yaml#/definitions/string
> > > +    description: User specified audio sound card name
> > > +
> > > +  headset-jack:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description: phandle of the codec for headset detection
> > > +
> > > +  hdmi-jack:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description: phandle of the codec for hdmi jack detection
> >
> > You already have links to these devices. Why duplicate it here?
> >
> > What if you had 2 headsets? This doesn't scale.
> >
> Hi Rob, thanks for reviewing.
> There was some discussion in
> https://patchwork.kernel.org/patch/11737905/#23571643 about how to
> specify the dailink that has a headset jack.
> I would like to pass the information of headset jack and hdmi jack to
> the machine driver so the machine driver can call
> snd_soc_component_set_jack to set jack when init the corresponding link.
> Headset jack and hdmi jack will be treated differently for button and
> event type.
> Because of this, we can not just set a property "jack" in the link.
>
> As for the 2 headsets case (I guess you mean hp jack and mic jack), on
> this board we will not have this use case.
> If someone really wants to build hp jack and mic jack on the board
> based on this machine driver, we can add two more property hp-jack and
> mic-jack to specify that,
> as the machine driver will need to know the different jack types
> anyway. What do you think ?
>
> Or could you please suggest a proper way to pass such information ?
>
> Thanks!
> >
Alternatively we can probably do

                dai-link@0 {
                        link-name = "MultiMedia0";
                        reg = <0>;
                        cpu {
                                sound-dai = <&lpass_cpu 0>;
                        };
                        headset_jack;
                        codec {
                                sound-dai = <&alc5682 0>;
                        };
                };
                dai-link@2 {
                        link-name = "MultiMedia2";
                        reg = <2>;
                        cpu {
                                sound-dai = <&lpass_hdmi 0>;
                        };
                        hdmi_jack;
                        codec {
                                sound-dai = <&msm_dp>;
                        };
                };

Or even put the flag into codec {}.
Please let me know if you feel this is a better way.
I think it will make the driver code a little more complicated, but
the interface on dts might looks cleaner.
Thanks!

> > Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
