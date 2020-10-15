Return-Path: <SRS0=vwyG=DW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D12BC43457
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 08:00:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8964F2224A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 08:00:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LTrCBX2c";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fZ9DK/wR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8964F2224A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sEa6IhzsZKnPTT/o69s3VqLwaLdac4MFP1ijjNu+VZo=; b=LTrCBX2cxsYQ9CPnU9x8/Hy2i
	sAanSpSMd9SDcNuCK9FEystAWWmOA1bZffE46BS5tGqPO/x6r9wUGCP65oStE3vm92UyE3eq7NzRF
	ptMXHPB5PUS05bPZ2bgxBYUl31OpndE2VOeSGE93Z1YKVRiQqmb4dttAI4kDziCObazozBfxLFlnv
	pQK3vMPzTs5ERyPVURgEwKRbZg38oUDgDqKzxftj27I8oqAnxjTbuVnYgEZIzcMkZbXk58CvuBryQ
	4UTIvi2BL7oFivQWNptkRWxutk8u4SfNu1TEBZLyDm5JgiKDo+i39Ofei52mvySxr/VMB5TEUQeUb
	WddLLs3DA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSyB7-00033y-5K; Thu, 15 Oct 2020 08:00:01 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSyB2-000314-JO
 for linux-rockchip@lists.infradead.org; Thu, 15 Oct 2020 07:59:58 +0000
Received: by mail-io1-xd44.google.com with SMTP id 67so3161966iob.8
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2020 00:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3iwCAX5npGCg/zxSeU8NRUPXRIk3oCwTQT9lW7fSAek=;
 b=fZ9DK/wR5Q8YUrG20w9OUQzsdTlEfyeuToJdEqyFacXEV+lBftlXXjjyjCS6wZQwgc
 /01SjIDNc3HRCZR4tg5qJk4JRwXrj1G9lNss5cENSApQhRF3wC4xi0uYfZf1fudpG1AO
 oPJ1f/J6kf3roUEQk65x9Y1TpOfzGc5A1/1OY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3iwCAX5npGCg/zxSeU8NRUPXRIk3oCwTQT9lW7fSAek=;
 b=kohT3J1E/KZZ11ZzGWTk8N14Li/1UxwXhR/iORFt/itmp0eJSn0RnsVOo5KgWbS61o
 j1dH0ipo21jWbbNgziqx02B30skwPc1DcDGfPA0I6YV0DcNZ7kdewSVNxuFsXQdL/YPq
 ZQIibI+9QVFePjdu5fVa+6Ge9ztyWDwLwF4rt/UMTpEjbcMp9or3TGUw3K+G9dWH533b
 z6wAulItofwGgKv06RT0RMUE7+dVHAKGMDCM76R9TIQeuoll/efeQmTnEPkZiEUHVZlT
 GvtEWmJr8yCKvH07xaDrOj/OYglyA//REFFMFwjGG2kjJVsMjJpGWQzoWhcLwbZsyUyI
 9weA==
X-Gm-Message-State: AOAM533CHD322kx0c3dJ0R+c63zEz0zUHghBSsA8yzCgQdmruLUTTv2u
 ocszwcnvn9hc8IPLxWQ9FGSOJWRJHjGcF8cVM180hQ==
X-Google-Smtp-Source: ABdhPJxlbvqYnJWRiXtnH0q6kkDHMhsE5tUaF2RfBz9uwNRW1GQ7jLgiIgRHtQF+Fj5YaIUFSB0mJZezBcOKtKdorcI=
X-Received: by 2002:a02:b617:: with SMTP id h23mr2508854jam.71.1602748792641; 
 Thu, 15 Oct 2020 00:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
In-Reply-To: <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Thu, 15 Oct 2020 15:59:26 +0800
Message-ID: <CAFv8NwLkvxX2avoLY+4NY5gBv0dQ863hFFiqy7iQOJxH4WenmQ@mail.gmail.com>
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201015_035956_743783_8E1803C1 
X-CRM114-Status: GOOD (  23.93  )
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
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Oct 13, 2020 at 6:36 PM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:
>
> Hi Cheng,
>
> Sorry for such late review w.r.t compatibles,
>
Hi Srini,
Thank you for taking another look!

> On 14/09/2020 09:06, Cheng-Yi Chiang wrote:
> > +---
> > +$id:http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> > +$schema:http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> > +
> > +maintainers:
> > +  - Rohit kumar<rohitkr@codeaurora.org>
> > +  - Cheng-Yi Chiang<cychiang@chromium.org>
> > +
> > +description:
> > +  This binding describes the SC7180 sound card which uses LPASS for audio.
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,sc7180-sndcard-rt5682-m98357-1mic
>
> This information can come from the dai link description itself, why
> should compatible string have this information?


I think dailink description is not enough to specify everything
machine driver needs to know.
E.g. there is a variation where there are front mic and rear mic. We
need to tell the machine driver about it so
it can create proper widget, route, and controls.
The codec combination also matters. There will be a variation where
rt5682 is replaced with adau7002 for dmic.
Although machine driver can derive some information by looking at dailink,
I think specifying it explicitly in the compatible string is easier to
tell what machine driver should do, e.g.
setting PLL related to rt5682 or not.

>
> Can't we have better compatible string with actual board name or use the
> same compatible name as used by other boards?
>
>
> Can you give us some details on the advantages of doing this way?


Machine driver can easily tell what is expected when it sees the
compatible string (or model property, as you suggested below).
E.g. in 1-mic v.s. 2-mic case, the patch by Ajye Huang:

"[v1,2/2] ASoC: qcom: sc7180: Modify machine driver for 2mic"

You can see widget, route, controls are used according to the configuration.
The alternative approach is to check whether "dmic-gpio" property
exists to decide adding these stuff or not.
But it makes the intent less easier to understand.


>
> Or am I missing something?
>
> AFAIU, you should add proper board name / model name to the compatible
> string rather than describe how its connected. Connection is already
> part of dai link definition.
>
> On the other hand model property can include variant information.
> This can also be used to set card long name which will help in UCM2.
>
>
> The reason I had to bring this up is because the use-space (ucm in this
> case) will not be in a position to differentiate between different board
> variants to select correct mixer controls, so its going to be a pain!


I think your suggestions makes sense since we need to consider UCM.
Having the card with the same name doing different things will be
confusing to user (and to UCM).
I'll follow your suggestion to use the same compatible string, and put
the board variation information in card name using model property.
Thanks a lot for the great help!


>
>
>
> Thanks,
> srini

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
