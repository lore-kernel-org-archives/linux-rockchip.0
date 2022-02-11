Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B52C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rzQPclVTZ+8/rcLvT5kZ29r/Qwx3U2Z+w99ASZCktI=; b=F9UoW/ATT9G1Cz
	Xs2oteUqyOQY2Oiq6571uIPwsVZiONxx1aSsGJ6obuzAOMBe91XHHyTAdC3ciFvBgNgg6mKrqEmdD
	s1A0MrME5K0iCmSE5YcCTYdSow9AWxCAout+R32ALzUlmMCvg3CLYIBudrdAxMJUvbasueYL122OR
	S6Te2kZ4eYvRd/tqwXUHHFHXcfdLULqbDtdpFKmE9VXYqzHzT/N6Dg0PQ77ayAKWzhsAkHDjuNwdT
	GKxWjmIg1n795ctuNKD4DSbjUbMjKYkB8QAJq/QgPQiPZQtKHmt3E8lpGEC/m8b5J2nMve2zBsIQw
	t26FDHAD73t3kbGOH6VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIbuA-008bfV-3C; Fri, 11 Feb 2022 19:48:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIbtx-008bdK-P8
 for linux-rockchip@lists.infradead.org; Fri, 11 Feb 2022 19:48:19 +0000
Received: by mail-wm1-x333.google.com with SMTP id c192so6089540wma.4
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Feb 2022 11:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=juTeh7Pj90KLSN4yGW9MUvSWd5K4ZGezg8meChmllJM=;
 b=p2lbra2wVZWj/aHaZPHIqpQTjCq8ADCTKLacm7/mJcjw0XVpPj1tfMaXyKZq0OKBF9
 G2+oiZlPgwYGQ7qDX37e2rY+Hx+zmVLE5yjEULvC3SRlO2gWL3a9Q/cVTW/BAintjBvr
 xfpZOJ0KIRKc0l3Z/wqqpycd9cefOtaoM9nPvC3sLeZyABvxTo00k1ZVaS/65pgLX+ux
 7gV7Zo/84KYowLY6RpwlduRc2VKPdU5T/OpsabIv2mHSID67mFJJJkfyf2DsudwQMtA1
 QdbivyByiKN4KwBsg/IAYGEcn6MPBoQ5JbmXsVo1gR0i9kEMuE6cP+8nJ8TmZWvczbob
 XqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=juTeh7Pj90KLSN4yGW9MUvSWd5K4ZGezg8meChmllJM=;
 b=79WWhl3TnVfdAazSj26kPW2Qeh5hiWvO7qoJmTSWjv8LzrVxX0J2cceVRAxr4gb30T
 apu9l/CQr+ezzBFVewRCeJhWyd1XEHooaDCsPhqW+IMMQO44gJBOy0OaeDQ7WabLtzrd
 wKd/I9AwDquNZkarv8tJ16EhYqyUl4LVdlDvvNjf8aqmum+coa5hEnaHd//cCUo09p7W
 sDVkBduj0bU3hHYndDRy7WTueyS0SXrCojG6e1oE8RwWENTZLXh6LOiK4mQdwOvAfnwe
 V97cqmwvo7BLAIDY7oe5/H5yT69WtF3tDNLi8BjAW2jAMLxnZ+Q5ABQN6vc6wLstMR8y
 noAA==
X-Gm-Message-State: AOAM532XuOXSprlbds6nDNyHBOlxQxpZ//flbwgQUymQCdQASHHVjj3T
 jZUStkqVCHWobCu0X0lsTkn16g==
X-Google-Smtp-Source: ABdhPJwm4fSf5P60cAv4b4rom2weLwFPNsnAL5uORWpD8q0HuZ07dx4i7uD5lDxTuzkeJC2w/piyVQ==
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr1552313wmj.109.1644608895139; 
 Fri, 11 Feb 2022 11:48:15 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id j15sm104487wmq.6.2022.02.11.11.48.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 11:48:14 -0800 (PST)
Date: Fri, 11 Feb 2022 20:48:07 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Message-ID: <Yga9d5C2f1ubOok8@Red>
References: <20220211115925.3382735-1-clabbe@baylibre.com>
 <dba5684a-1e5f-a4d4-604b-651751636cf3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dba5684a-1e5f-a4d4-604b-651751636cf3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_114817_862207_3B0F44FA 
X-CRM114-Status: GOOD (  15.62  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Fri, Feb 11, 2022 at 02:13:00PM +0100, Johan Jonker a =E9crit :
> =

> =

> On 2/11/22 12:59, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > Changes since v1:
> > - fixed example
> > - renamed to a new name
> > - fixed some maxItems
> > =

> > Change since v2:
> > - Fixed maintainers section
> > =

> >  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  2 files changed, 66 insertions(+), 28 deletions(-)
> =

> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> =

> There's more possible to this document:
> =

> dt-bindings: crypto: rockchip: add support for px30
> https://github.com/rockchip-linux/kernel/commit/3655df1bc6114bda2a6417f39=
772a3cb008084ea
> =

> crypto: rockchip - add px30 crypto aes/des support
> https://github.com/rockchip-linux/kernel/commit/ee082ae4f609f3b48f768420b=
31d8600448bd35a
> =


Hello

The great advantage of out of tree code is that we can ignore it.
Anyway, if one day this code goes upstream, I think the new compatible shou=
ld be in a new driver/module, both v1 and v2 are too different for me to be=
 shared in the same driver.

But before upstreaming this code, the one in mainline should be fixed first=
, it fail self tests. (I have some patch partialy fixing it in progress)

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
