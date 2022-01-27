Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE39C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM8phITWJFLXgpm4HTt1DeaiQIFv2tVgPPHPzpgO92A=; b=A71oLSgKSmzMwf
	OqzHygGceizrpDKGhodoINlAQfjGC0S9r2SdTxVxm1sQICncLzfNuiPLoR74ol2ltDWhr9U+p3Uln
	yhiRIr+7jFIwiCNlCROX+iVU6XPbJg/vMnk1wHYaHzlAAV3ntyQ57vXJCIZPzVZwShNLXb8iFkSVt
	w66ObZP5B6R6i5+xI39tPDRf+78nZ261R0BlNktu+aIzesdy1OZ3qP+tKg24m0oPUVjC0D0/2jBnc
	P5euAYolgMZ1IPQTMwPryW6zi+bnDQEEupmkNqkqBmjMqImQO1rL/OMLusiuzAhd0FCFUDZ5Uus94
	J4PqvF1AQb5RJInOQ76g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDE4g-00HM0B-9Y; Thu, 27 Jan 2022 23:21:06 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDE1L-00HKae-Qf
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:17:41 +0000
Received: by mail-oi1-x229.google.com with SMTP id b186so2793752oif.1
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZHgjzy8t853W7I+7RWJNG2X4/bJj/NvMkuBTg7rJMyI=;
 b=lXfZj48otSZXbvvLK2IFxj2PbX/9TUU3oXrlHfV5EOgB8ydujVyzfPi/Y4WKkJVmvb
 3kCp+UaQ3QggL6uu4AMh5+RMEtNSAL4FZeHRAjpF08d+Q6o69AGfKYdsWVx51Pr0bfMZ
 CRK8rLd1m3YZC0XS7gMZnsZJbFLKG0EeL6vjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZHgjzy8t853W7I+7RWJNG2X4/bJj/NvMkuBTg7rJMyI=;
 b=qrX7D0HZQHCsjvkO1zCOFPvkgbOSKOqoxsYof9NBUhVrO1fqpGITx8gB64l6VRQsD6
 GYz5hZJGXPr1NI63Geucf7NfLsyqlqQDYjmxzwiuzpauWXmeX2dAlJDT9DWwxNKkzXsm
 mKaoSoXIhnMpCwpvmYOf1pkJrzHvQbahup5f7kvltckO4WofAXkKDpLfMmpLamKBAfc1
 ajoWaX45mZ9wbuAg3uQX/bSbnzhyme85Nr+NO6POixpsZrxrd1I/EELgQkM5ZCq9Wz1r
 hl9qYrrlHG244ESgUA6Qo/QcbWRG4kacc1e3VJnR6m3jTryGb/wW0IdijfGcLNSRbrd3
 nkYQ==
X-Gm-Message-State: AOAM533mRaB3W+6WMliJoWNBWflWsQrWsBY9fyv2EglAZvf8/u9DP4Ym
 C2RzKkfC/SXwj8gqUrS7QjHlCb5bKBX6+Q==
X-Google-Smtp-Source: ABdhPJxI/STM/RwagdKheWkosQBMeSwJGKwJVIV5/SziDIxnSXyRGxtdSRDbRFUS0fJDG/yEP0y2lA==
X-Received: by 2002:a05:6808:1897:: with SMTP id
 bi23mr8454166oib.66.1643325458297; 
 Thu, 27 Jan 2022 15:17:38 -0800 (PST)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com.
 [209.85.161.54])
 by smtp.gmail.com with ESMTPSA id l19sm3475543ooa.7.2022.01.27.15.17.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:17:37 -0800 (PST)
Received: by mail-oo1-f54.google.com with SMTP id
 r15-20020a4ae5cf000000b002edba1d3349so1007290oov.3
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:17:36 -0800 (PST)
X-Received: by 2002:a4a:dd86:: with SMTP id h6mr3051054oov.87.1643325456364;
 Thu, 27 Jan 2022 15:17:36 -0800 (PST)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
In-Reply-To: <20220127150615.v2.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 27 Jan 2022 15:17:25 -0800
X-Gmail-Original-Message-ID: <CA+ASDXOnO1EgStrynPe1uSB4T8=qNUPj+wY2y3vGs0fnEHdE0Q@mail.gmail.com>
Message-ID: <CA+ASDXOnO1EgStrynPe1uSB4T8=qNUPj+wY2y3vGs0fnEHdE0Q@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Linux Kernel <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lin Huang <hl@rock-chips.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Derek Basehore <dbasehore@chromium.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-pm <linux-pm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_151739_898374_D9B9406F 
X-CRM114-Status: GOOD (  11.96  )
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

On Thu, Jan 27, 2022 at 3:08 PM Brian Norris <briannorris@chromium.org> wrote:
>
> These DRAM configuration properties are all handled in ARM Trusted
> Firmware (and have been since the early days of this SoC), and there are
> no in-tree users of the DMC binding yet. It's better to just defer to
> firmware instead of maintaining this large list of properties.
>
> There's also some confusion about units: many of these are specified in
> MHz, but the downstream users and driver code are treating them as Hz, I
> believe. Rather than straighten all that out, I just drop them.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> (no changes since v1)

Apologies, I didn't include Rob's Reviewed-by tag on patch 2 and 3. If
this goes for version 3, I'll include them.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
