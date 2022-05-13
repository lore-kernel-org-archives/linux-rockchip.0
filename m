Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EB1C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHbIsBZ01v6F+4b6BiFiWYZo5u+6HRG791FzJ6MazgA=; b=w+06jytVg+vvV3
	uHh0qy2gzlO9KBaDsOJ2p6EsmtlFTU518pqkq4p6aOKskRyAOgysaXlYLhZru+nY4A8KiJphRNxxY
	H9EykCXT55CeePO7u7WP7G+5rugGihQzfJOllZY0JRCiYJ1UypkrUJfIJj34CeyJAvxJT2WQZZPyN
	m9ZfuhVoOKKQ0x9PF2ZDXd6lSsHEwV9SjXTZ0xXMD6bsBMOeoENLR1/AonAd/ySjC9SVuJqd3Aint
	RR5502bMvvpn9B3cREgBCjiStwDmGG3IKhrWdctNAmbJiRlk+9/2qm3vtvx/ZY/udFD9vMAVcx4Rs
	NK0MeLja7zG2zgEeFRqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npYHX-00Gs5j-DY; Fri, 13 May 2022 16:36:47 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npYHL-00Gs3v-EQ; Fri, 13 May 2022 16:36:36 +0000
Received: by mail-ed1-x52a.google.com with SMTP id y21so10650271edo.2;
 Fri, 13 May 2022 09:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3cBFD5kdFALSZmKX9KchzCHehvA180EgcT2tz16vaRo=;
 b=GnZYb5Eu1phxRNnKCJsb7GM7lv4wPRJ0aUB2f+TwmxuPplkZiCEm3UQGqjt/C6vrhL
 e/S1e67jLzEhLoqJwPFZ0BJopCDKWFEM1iTYwWw3K5atAgViYkReBt1pl1dZqOI+lCki
 cTk4fvLnVEZ1XhWnvuTp6tU/8SDuGk51E/SYkHBGhTv9CyNekZ/w6Yz2hO821eS0Bx6F
 j07nxeTU5Y7eWH+mU2oSNn6/HBDwF7uK55wPrfHtee+jmMFKyk/A7gfb9hNjqVSi6W80
 SkPqS99URF/5W1BxEqf5kGaHmRLHiAYQ44n8hTyPeaPkpKtRCqO1iK0V9f3TfEo7ku2W
 lWrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3cBFD5kdFALSZmKX9KchzCHehvA180EgcT2tz16vaRo=;
 b=JGiNpoAWIlsULPJcO79jzaW8FXea4UtumiuGOU7VbO0NoVXVBiMYHTATdmi2/svESJ
 gjeZw4gcFBWCsPRxfp5PalAS8wF1ppwpVO+wOTYZeGQSyeA3bhPEkHdUZAkXWhcpFRKL
 DhxIGzFeZLICIF5V8dcvanBiKFjNBi9pUJO0CRcDHJq456SIe9pZkLPj+f8iOSRAaClP
 Dqepfj1/oXScgEh3RHOWhpZKjnOQs0RZpFuxJS+niDqV87YRngLcyBGYZ3AZA596mSXa
 WXc9pQiSQM87a8NZ+qVv07zI5DaRYAX/u6T+CxOuRC1sRDcHEcBf47zF3hG/cVnqYTYh
 tBvA==
X-Gm-Message-State: AOAM530vIXrCGz0XCw7XIoeGUbxk2mEFtoCk+Y85imVl7JALfGbejqql
 rKleQ34L2FRulXJVvJg6xnY=
X-Google-Smtp-Source: ABdhPJzViOpa8TCGaT8IZEo4DTneEvijoN5YV2tng0kmzjGaAg1J/rbzBFhZjbERyS6WEg5GBGkkkA==
X-Received: by 2002:a50:cd08:0:b0:426:1d9b:4b13 with SMTP id
 z8-20020a50cd08000000b004261d9b4b13mr41233120edi.360.1652459792345; 
 Fri, 13 May 2022 09:36:32 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 b21-20020aa7cd15000000b0042a2e5e1a7dsm1136810edw.37.2022.05.13.09.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 May 2022 09:36:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Hantro encoder node to
 rk356x
Date: Fri, 13 May 2022 18:36:30 +0200
Message-ID: <42373378.kc9IRrpb2S@archbook>
In-Reply-To: <20220513152358.GA334264-robh@kernel.org>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <CAAEAJfDMG9ykJQHUf6oB5gjV_J0M+eycCqiUvDv2WjpC3g8dKQ@mail.gmail.com>
 <20220513152358.GA334264-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_093635_533523_351C7959 
X-CRM114-Status: GOOD (  20.93  )
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

Hi Rob,

On Freitag, 13. Mai 2022 17:23:58 CEST Rob Herring wrote:
> On Fri, May 13, 2022 at 10:07:51AM -0300, Ezequiel Garcia wrote:
> > [...]
> > 
> > I didn't ignore it, I just didn't reply to it. You think this is about
> > changing a dt-binding, but you are actually introducing a new dt-binding
> > since you are adding a new compatible string.
> > 
> > You are doing so by extending an existing dt-binding.
> > 
> > I am explaining you the _existing_ dt-binding models the (incorrect) idea
> > of a combined decoder and encoder. Since your device is encoder-only
> > and has a single interrupt line, you should omit the interrupt-names,
> > because it doesn't not add anything.
> 
> While in general I agree on single entries don't need -names, given just 
> 'vdpu' is already allowed I would go with symmetry here and allow it for 
> the encoder.
> 
> If you wanted to mark 'vdpu' alone as deprecated, then that would be 
> fine too. No need for an if/then schema to disallow interrupt-names 
> either. Eventually, I plan to (optionally) remove deprecated schemas 
> from validation and that would have the effect of requiring 
> interrupt-names to have 2 entries here.
> 
> Rob

After some discussion in the #linux-media IRC channel on OFTC, we've
come to the conclusion that moving forward with a separate binding for
encoder-only instances would probably be a wise move, as the VPU binding
assumes we'll always have a decoder, and breaking this assumption will
just make it more complex the longer we go on not separating these.

While I was writing such a separate binding for v4 of my series, I
discovered that this makes things quite a bit simpler. Especially
looking into the near future, there will be between one to two
additional compatibles that will be added to this binding for the
RK3588, as it has no less than 5 instances capable of encoding
JPEG, and I believe at least one of them is capable of other
formats as well.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
