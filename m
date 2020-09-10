Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0C32C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 02:10:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A082206B7
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 02:10:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="GSQE18zd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JkDoPoqK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A082206B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hbBuU9/N3OE3O9b/WTjivj0VVZYM1DsFRQ62AI73NAE=; b=GSQE18zdslYAX9KefQGCRWISD
	RNpNdmX0eVsPSQCuqZ0ghB40HLtgfUwguPeJuPHzz87vPZG6ubIn3wYmV1FZJehBsQ+6EubFnO7pr
	eLQKzt0hGTEsAH8tBqE/T2jOZMXiP5NyI9IDV5+JgSvaF7sa+AQveCEPN4kKY7SDBuqhy6BKAdukU
	GjtIcU0pQlHAXE8FwEEsjKE3I0qw1omCnuHi1uVaEKU1KHk+im89vfkcYZOgqfimCKzm5W99pOLeD
	JsuJJTzQDCJTKrKJnVd9kjNkoB9J5cOfMFZKa7VMMDchqyokHrFBsbUjfgQs81lvZJ62owX8G5oLq
	gKplX6r9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGC2t-0008T6-Ce; Thu, 10 Sep 2020 02:10:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGC2q-0008SJ-Lh
 for linux-rockchip@lists.infradead.org; Thu, 10 Sep 2020 02:10:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id z4so4957226wrr.4
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2020 19:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PlSzeOt9N0W/7KOltCPrNSI8OJ7kFIa46v5Vs5ruAzE=;
 b=JkDoPoqKHm57pQylGVVBMb+2P4mUUyI14KYTHy2HW1JlsrjY4xP6wdtHeD5MFKdcE2
 URp+KWtbpiWbb/kbbYrMULGf9pcBMt1wV3jT5bmtmIq4TCLFYRe2zKmn3uVk+80GLzG6
 UBm7deRjVDb0LhAjTWLBs6RoLDkArABarz6zc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PlSzeOt9N0W/7KOltCPrNSI8OJ7kFIa46v5Vs5ruAzE=;
 b=PeTju3/3E8KWqZv3757nIhEm3oUm+vWRo9wSygPQE4+sgV5AJprxruEXkEP608XE7N
 2oD0BHPLvQJprzzUS8SfYN7hZHiSWL6k+Od+L7lYpVsdQJreBIlZuFnBsCgdMasG+5az
 aQF2B4SrxlfOXj0tNs0jSHP2V0sl5QMwV8R6o/mtmgWtKyRm5VHGq8bddmeus1AOIQE9
 m2D/qqUrY+1tvdW4BElJWxx+BJvIe3B+FLKiSArqg+uQARGS0ERa6fWWyCs2MTod71X/
 SpTjOux5HXPCiNiEvQGopQp9V0iDnpow1rwlkkY6s+PURVvcPBmCuTVzwr1bV9kdO790
 JwUQ==
X-Gm-Message-State: AOAM531nRk12s6sKI4801ezEkzzJVdXrgs8ILb7IHOdfnoM7OSTiy+Fv
 VVNyq2GStIjgBrm+WOK5epBi03m8h4X2uFbIr6IX2g==
X-Google-Smtp-Source: ABdhPJzfvrq3ETFzz+i1NYsPH/dvVMCxkhygsXwY9sjZ5D5c8EGzXWs4p8/HuJYhmQ5eijuyWmC6iuTdYlluAj54gYQ=
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr6416336wrt.159.1599703839398; 
 Wed, 09 Sep 2020 19:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200907100039.1731457-1-cychiang@chromium.org>
 <20200907100039.1731457-3-cychiang@chromium.org>
 <20200908203357.GA861143@bogus>
 <CAFv8NwLMAkFhVT-ML7QHbnSkqmgh=5SrNSik5eSCTHB1=DGQ0A@mail.gmail.com>
 <CAL_JsqKW2bpHP60MX4eFmtfzkvaHJ670m6e8H29=u=mDAYg63w@mail.gmail.com>
In-Reply-To: <CAL_JsqKW2bpHP60MX4eFmtfzkvaHJ670m6e8H29=u=mDAYg63w@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Thu, 10 Sep 2020 10:10:12 +0800
Message-ID: <CAFv8NwJQpfLW9syXyUpPusfwS39DTp2wi+MQ=aMTzPqpO3vPig@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200909_221040_749386_DE4ADE35 
X-CRM114-Status: GOOD (  39.57  )
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
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 10, 2020 at 1:49 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Sep 9, 2020 at 3:24 AM Cheng-yi Chiang <cychiang@chromium.org> wrote:
> >
> > On Wed, Sep 9, 2020 at 4:34 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Mon, Sep 07, 2020 at 06:00:38PM +0800, Cheng-Yi Chiang wrote:
> > > > Add devicetree bindings documentation file for sc7180 sound card.
> > > >
> > > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > > ---
> > > >  .../bindings/sound/qcom,sc7180.yaml           | 143 ++++++++++++++++++
> > > >  1 file changed, 143 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > > new file mode 100644
> > > > index 000000000000..ae809346ca80
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > > @@ -0,0 +1,143 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> > > > +
> > > > +maintainers:
> > > > +  - Rohit kumar <rohitkr@codeaurora.org>
> > > > +  - Cheng-Yi Chiang <cychiang@chromium.org>
> > > > +
> > > > +description:
> > > > +  This binding describes the SC7180 sound card which uses LPASS for audio.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: qcom,sc7180-sndcard
> > > > +
> > > > +  audio-routing:
> > > > +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> > > > +    description:
> > > > +      A list of the connections between audio components. Each entry is a
> > > > +      pair of strings, the first being the connection's sink, the second
> > > > +      being the connection's source.
> > > > +
> > > > +  model:
> > > > +    $ref: /schemas/types.yaml#/definitions/string
> > > > +    description: User specified audio sound card name
> > > > +
> > > > +  headset-jack:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description: phandle of the codec for headset detection
> > > > +
> > > > +  hdmi-jack:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description: phandle of the codec for hdmi jack detection
> > >
> > > You already have links to these devices. Why duplicate it here?
> > >
> > > What if you had 2 headsets? This doesn't scale.
> > >
> > Hi Rob, thanks for reviewing.
> > There was some discussion in
> > https://patchwork.kernel.org/patch/11737905/#23571643 about how to
> > specify the dailink that has a headset jack.
> > I would like to pass the information of headset jack and hdmi jack to
> > the machine driver so the machine driver can call
> > snd_soc_component_set_jack to set jack when init the corresponding link.
> > Headset jack and hdmi jack will be treated differently for button and
> > event type.
> > Because of this, we can not just set a property "jack" in the link.
>
> Don't design your binding around some driver architecture. Limitations
> of ASoC are not reasons for your binding.
>
> For DP and HDMI, we assume HPD is supported generally as that's a
> standard function for HDMI/DP controllers. There's a 'no-hpd' property
> for cases of broken HPD. That hardware description is part of the
> device HPD is connected to which is the HDMI/DP controller/bridge or
> the connector node in the case of a GPIO line. That doesn't belong in
> the virtual sound card.
>
> I would assume a codec to be similar. The codec node (the alc5682
> node) should have any jack related properties (or possibly implicitly
> support it by default).


Thanks for the explanation. Now I can follow your thoughts.
I see that the sound card driver should assume that there is jack/hpd
available on HDMI/codec unless it is specified in HDMI/codec node
(should not specified in sound card).

>
>
> > As for the 2 headsets case (I guess you mean hp jack and mic jack), on
> > this board we will not have this use case.
> > If someone really wants to build hp jack and mic jack on the board
> > based on this machine driver, we can add two more property hp-jack and
> > mic-jack to specify that,
> > as the machine driver will need to know the different jack types
> > anyway. What do you think ?
>
> I was thinking more of a case of having 2 of the same thing. Perhaps 2
> HDMI outputs. Or if you have DP instead of HDMI? Just going to add
> 'dp-jack'?


I agree that this may not scale. It will become an abuse of binding interface.
Sound card drivers should have more knowledge/control on this kind of
configuration.
I think this can be taken care of inside the sound card driver.
If a machine wants a different configuration, we can use compatible
strings to achieve that.
This will be more flexible than the limited binding interface.

Thanks for the discussion, I will remove headset-jack and hdmi-jack in v8.
>
>
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
