Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632D4C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 12:45:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D925C2068D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 12:45:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="LU/x6vQr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q1VROlQW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D925C2068D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mU37uwJg6xm4HHxe8SaHLKXG3/eM8sR9dZqcPkPIN0Y=; b=LU/x6vQrp8sKE0ZoyMjLP7UhU
	Etq3nPdsgFckqLXXmIM7+zA/gON1kUfrnasWmE93hPiyYF2RQ5fNtld7/tngASE54oPnIdiPa9m2b
	Z1yLsgw/EnRkYGPp1acHqHaR9yBgpdbZ9hK0aPh5DAVjKNdDMwgjhJrhRR/SoJ/hxFlESZcDj3yL0
	IdPjx+/P2hrgAHcHOz0M6B0Aln13C+fN0em4KVMe6iIalWlLRTlBnfBfY3vdwUyAwxaFjZ0ABzwLX
	mPviBJbdYEHrbbIonVzm4cZZHEQhLdjyVPz0xJjvC8ppMeexBzwBNlFQ8OJ6C2awVX1wApBi8nlYu
	pTTfKtTFw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIAKn-0002gE-3W; Tue, 15 Sep 2020 12:45:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIAKd-0002c7-BS
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 12:45:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id w5so3148534wrp.8
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2020 05:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=prgbbLEwgblX++DIA6lSNe0xZAiKfHZki6I+StVAnLE=;
 b=Q1VROlQWfmlbZeeOVVji/0iVuQbrzHv3LyXlzJKB/jZyIl7jlwtq83iMQNIuBTtIDU
 mMJrv6XDPjLmOFIIlreqHabqlek6mVxO/yH3LCwl6pXubX3sxPWzQx+BTKkXXjULprxE
 a9hVqPQTocex/KOq6CV5LbnS1W7amLkZEXuFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=prgbbLEwgblX++DIA6lSNe0xZAiKfHZki6I+StVAnLE=;
 b=fnmMvrjofnq80kXMhWJpZdjIAFCe225rGKHknY7AGz/BRoyM8zdM/S4nyJ+EhvwCQ+
 xWvo1ZfFaQZfbJi7XsI3bhGR22M1CsSK2Y/rZSZ8KpkQULG1IPzrlQ/6jBAh2cBrJrNW
 NnNxeeEqxS1vIvAP9XQ9HO/1UaVM8/l8UdmSF3/Xtxwxzv1GlbeGZ99NdsnUaeGT4NBf
 jM5jqsxAmlUnIi5sRyF5DwQcgFshxv+lvt3s+R4t9Gyq8dvHe2OCefeEDQWTGijN8S7T
 sNe42xwSgSa2Y3KfowFtAf+2K6XcWqcvI+JKzE9xhPCbcoeg03F7xzUDmdRzHWjw3E06
 o8Eg==
X-Gm-Message-State: AOAM532sRmRBmdtzJiWxJUbHvl4hD3u8gWBP4ELZ4ZDGPtKhoz1OafpZ
 HgYdNeADkbFSmyGSgUsqSFfoiow6zVqq6hQOCeKyYg==
X-Google-Smtp-Source: ABdhPJywvAYnO/cUJA6n7jjsXdnAk2rhTKdrXd0MShhk2rxfYd1+ycLgavEuhL4DeOkvtc7FxftmCne4Gau4Rvcai7s=
X-Received: by 2002:a5d:510d:: with SMTP id s13mr21605335wrt.177.1600173908051; 
 Tue, 15 Sep 2020 05:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <20200914174812.GA4125843@bogus>
In-Reply-To: <20200914174812.GA4125843@bogus>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 15 Sep 2020 20:44:37 +0800
Message-ID: <CAFv8NwLb4zKqc8BbRq5_B4PnGR+BAMZa2RpB0qjLez921j-diA@mail.gmail.com>
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200915_084511_484174_06CECBFC 
X-CRM114-Status: GOOD (  16.83  )
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
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Patrick Lai <plai@codeaurora.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Dylan Reid <dgreid@chromium.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 15, 2020 at 1:48 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, 14 Sep 2020 16:06:18 +0800, Cheng-Yi Chiang wrote:
> > Add devicetree bindings documentation file for sc7180 sound card.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  .../bindings/sound/qcom,sc7180.yaml           | 130 ++++++++++++++++++
> >  1 file changed, 130 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> >
>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.
>

Hi Rob,
There was a change between v9 and v10 on compatible string so I did
not add your Reviewed-by.
Now it is "qcom,sc7180-sndcard-rt5682-m98357-1mic" following Stephan's
comment in

https://patchwork.kernel.org/comment/23608881/

to make compatible string more specific to board configuration.
I only add the note to the cover letter. Sorry the cover letter became
too long to follow.
I will add the note in patch mail itself for future changes.
Thanks for taking a look again.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
