Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F1F2C07E9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 07:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVy7TC0dOEOcxc8fdvoMoNKjIOySzrST+6DkprcmF+E=; b=uOGjgPerPZa6Sm
	CA+72V7JXvwezltRsw8e2jKwoGmpqNS+Ufx4M/hwCFE8AikAafRAjrv0Z1bDgBvsJSjTURGI71nKU
	IP/hxpmNJJal3brkpTmUvjl+ZpOjUbJuFRtNX4WxnwSWjtJT5v+D+2P3M3NfGXsunFr8YIWujURBk
	RkQ5MCzFdYOFRCq8N2JfTpVC5jCFFfsSA7vuIUjizSIBFkPvHECTLUd/DBkbNZSHzb+wZY76wR1kh
	wdO6FIbIm5AoER2Qx9v4Lkc6xPUJ6pLQcUwrA4OeHype5WDScKkgGQcSgvt0gCFmegG59rkXDiVi7
	uMY87XT1xvRVgnY41WjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo3A-001aPe-Gx; Thu, 29 Sep 2022 07:33:40 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo36-001aO1-Dh
	for linux-rockchip@lists.infradead.org; Thu, 29 Sep 2022 07:33:39 +0000
Received: by mail-wr1-x431.google.com with SMTP id c11so742635wrp.11
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Sep 2022 00:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date;
        bh=atACqxLtygvoatmuSiOUnja6i+2u6x+rxoy2apBcCBk=;
        b=hsOEJmFhBKFbH0GhXrJKHUxne+LtxAIa76tyBJcZVLXdKpf4nNr26PhlcBT0DRGqsm
         u4nuyhxyohof8xdQKBda/RvQmhKqfjCx8qM5PEasl4ZvbvmxGbni5+mHouFrF/43VcRM
         pSBwbvxUWK4SSh9wc+kYLKRJUXOx4r1Nb3x51OvHtGu+/6qrLq3Ug5Vebf5RDlo+FDcU
         LHybNFRvEDSCPfiDF0nKF+DPjqPto6PRCqG7jkfKwHgg3dgAISMTNaYA+qTCvDg9zqQG
         CF0s8xmsf/Tbm4azqMxygMUlqueRh71Bd8kORz1GFVoFS69QrqS4/VZdBmHwIj0bEbLq
         ClDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=atACqxLtygvoatmuSiOUnja6i+2u6x+rxoy2apBcCBk=;
        b=AoyzcRkoQ/3gOVbTwjmRrENhj2W1phkUbgoD7Oo9+nhNAZJJND3xLh6HaghuzCSB9G
         KXR0oWBRiT1o5Yv9Ok5EbWDQoNceNS9qOmbBNovTysfPt7G9Haows4OpkKHU6wBBKr2S
         01K3xAle8+aMv9oUt04qP9yJ4CjwNvr/CdteurnraygULBzaxhndKyDfNdMmujn339uo
         re5OltlxNUky78iAEluEpqZOm2D747vz2TgI/BxIosXXXr5xuo11UqCDrUCARa9Su5z6
         hDbCBVFotNdTUOK7ztP6ppWaJlA8SSSMusW9mBaRrXH3sX2uOMS/inpXhfADhilm5jf/
         Q3Iw==
X-Gm-Message-State: ACrzQf0sP+5gF2Pvkv1dViKgszddi66gVx8I6Nemkx2LTrAN8rU5yyUn
	mFV3MFreWZ7GEXwRxjNdJYLFtA==
X-Google-Smtp-Source: AMsMyM6sIk+geTplcvfjy0CSHqROztZRtQXufyAJK/PvCo/0f+wQZHMLaRAfjTq5ogK56olIr125cA==
X-Received: by 2002:a5d:4c4c:0:b0:22c:cb1f:f7dc with SMTP id n12-20020a5d4c4c000000b0022ccb1ff7dcmr1077874wrt.504.1664436811363;
        Thu, 29 Sep 2022 00:33:31 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id u4-20020adff884000000b0022a2dbc80fdsm5950328wrp.10.2022.09.29.00.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 00:33:30 -0700 (PDT)
Date: Thu, 29 Sep 2022 09:33:27 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFT 0/5] crypto: rockchip: add crypto offloader V2
Message-ID: <YzVKR0DjpXT/bB8J@Red>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
 <YzNsgjPFwVEDo4E4@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzNsgjPFwVEDo4E4@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_003336_696656_D49F962B 
X-CRM114-Status: GOOD (  17.39  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Sep 27, 2022 at 11:34:58PM +0200, Aurelien Jarno a =E9crit :
> On 2022-09-27 08:00, Corentin Labbe wrote:
> > Hello
> > =

> > Rockchip rk3568 and rk3588 have a common crypto offloader IP different
> > than rk3228 one.
> > I started to work the driver for this IP on a rk3588 based board, but t=
his SoC
> > is still not upstream.
> > So it is why I send this serie asking for test since I own no rk3568 and
> > I need to be sure datasheet is right.
> =

> I did a quick test, and it doesn't seem to work. I get:
> =

> rk3588-crypto fe380000.crypto: DMA timeout
> rk3588-crypto fe380000.crypto: DMA timeout
> =

> That's on an ODROID-M1 board, so with the set of patches I sent
> yesterday to support it.

Thanks for testing it, probably I did something wrong because I got a succe=
ssfull test by someone on #linux-rockchip.
But I dont know on which board it is, and it was on my debug tree, so proba=
bly cleaned something wrong before sending the patchs.

If I sent you a link to my tree, could you retry ?

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
