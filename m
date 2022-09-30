Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10AB9C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 19:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vb55Tb5zeK8viWilBDZzTJzeO1d8JDaD6R3GmgDNFjE=; b=egcxYnRoxvsKTN
	Wnf5Fl2I9nf8QKQ0Tfw8ALSTMYSQu2vt9io3f81iEt8Jj8aQphDb6V/SvupY+hEtMjPqnjgdgBDME
	IqPGfG4SY/gN5TjsdL2Kdnm69accmZc9qHv1HK8JuWev2yNP3M244evC3lwzE+ggtfkKWY0GMbJhh
	+Pf7ULrtTmpx1jgUyQGR1PHZlgU44XxsY0Jl0XVJtTdyf8o2jZXBvmgGQpKWoJamffKr4bumRPgtf
	8dfu5IkwFAljzTgOHtRyjBBcilDSVkqn/lo1zT3KGPXq9OHzMlrLJTwKzkfos4wbnQLZRI4NLMvys
	H6MpjCm6i7WWyzJPpFxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeM6U-00BHW9-3G; Fri, 30 Sep 2022 19:55:22 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeM6J-00BHS9-5m; Fri, 30 Sep 2022 19:55:12 +0000
Received: by mail-oi1-f171.google.com with SMTP id w13so5781256oiw.8;
        Fri, 30 Sep 2022 12:55:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=mhBjWFFTxH/l4HE/1rEJYkS22XnxP7DvbO1wKoQGgbc=;
        b=uWvtaGci0sg8WgC4x7yv9aKPFR6nwCMAtFG22iGShHfBBbux11HOGIg4VE3U4DSKwj
         OAgV2g8tOfMANcVndrXDTRlVPaNUcIe1SuNuw8JBzs+EOqXvYkZ3FHuFr+Dzh3prD1/F
         tsMCaxGOVFeDbqR6iXjFcnf7v73ZE+rmepQN8J2w6o9sMowdP0f3ZV201cdsJoxTl6gx
         ZWf3l69CjlbTfO636uI08Oks3XdDNffMJeXGRPvFWj86P0XVhjF4MTE8Maj0s2kqq43w
         GsRP1Mlvh3UB1C+S7w+4CyUwxmN0gqpjNdhMpfRECdzedeC/GjhmDCGn3Lzm1WNkFi/m
         sAaQ==
X-Gm-Message-State: ACrzQf2JNCZfL2B9jQqiKaEC0MW2J1I+dIy2/YYSZrKjQ+bNSWRiJyY5
	7+VxQfcOH8pkVHFaDSinng==
X-Google-Smtp-Source: AMsMyM6D9XCOqU00dMtXL1n1avBsiKPbPiVJemqTZCSbe94plaS9Dy5WCyaBewx19Mmf+1WIPKsCNA==
X-Received: by 2002:a05:6808:1986:b0:350:8c87:c5a2 with SMTP id bj6-20020a056808198600b003508c87c5a2mr4569098oib.57.1664567706612;
        Fri, 30 Sep 2022 12:55:06 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p84-20020acad857000000b00345cce8083dsm716549oig.33.2022.09.30.12.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 12:55:06 -0700 (PDT)
Received: (nullmailer pid 776953 invoked by uid 1000);
	Fri, 30 Sep 2022 19:55:05 -0000
Date: Fri, 30 Sep 2022 14:55:05 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com, wxt@rock-chips.com, kever.yang@rock-chips.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 2/2] ARM: dts: rk3288: add the interrupts property
 for PWM
Message-ID: <20220930195505.GA774897-robh@kernel.org>
References: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6eba6c10-9c96-b40f-937a-e02d43b04cd7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_125511_233328_83A5FFA2 
X-CRM114-Status: GOOD (  13.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Thu, Sep 29, 2022 at 04:04:06PM +0200, Johan Jonker wrote:
> The Rockchip rk3288 SoC has 4-built-in PWM channels.
> 
> Configurable to operate in capture mode.
> Measures the high/low polarity effective cycles of this input waveform
> Generates a single interrupt at the transition of input waveform polarity
> 
> Configurable to operate in continuous mode or one-shot mode.
> One-shot operation will produce N + 1 periods of the waveform,
> where N is the repeat counter value, and generates a single interrupt at
> the end of operation.
> Continuous mode generates the waveform continuously and
> do not generates any interrupts.
> 
> Add interrupts property to rk3288 PWM nodes.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> ---

Please thread your series properly. That's replies to the cover letter 
or patch 1 if there isn't a cover letter. git-send-email does this by 
default.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
