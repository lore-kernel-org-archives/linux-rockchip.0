Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7D1C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 13:38:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F757613AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 13:38:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F757613AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dr6mb/s37MOwrnJAEcAy3B8YWkEAB1/jrzjNC/220I8=; b=expMnGNLfJdiIpQD2HGr02t30
	IRajMFdepW+dJI7WImeCG3nMZ6zo25cPVM6Q+fHjt4l/LngWk+lkeE7clYVSD7ZUaQWYeAwBG867a
	UMmnVbH4DaEAKQXMav+j8HhaYSFgtdPWn7bm6q3KDpJYdRKUkPyT7Xr2tkJAv6mu50MNg7E8GsElx
	aRL3D6ofl7FyzXzEUkon233c9XdflxAvGGq+wYRFVAHSXBMeEBPVfckWmC6rfSUAw4mNxeuV2fGfv
	+Yg8NY9d7IZ1qQUqi70+LbYmL2pxwQEJyAFMxDd3icwO17bcM6UkZNd7O61oOieyN1mUUBji+pK1z
	dVK0kQOcQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJFX-009PAp-88; Tue, 13 Apr 2021 13:38:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJEu-009Oxr-Bf; Tue, 13 Apr 2021 13:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NCfulLhASkF88YSVbFbXw+77PePkNkMy3z6Ere15nDg=; b=VLOWzeNbi5AJ7ZvVpNxKzDjOiA
 Su3fHveAJR9+KITI5hOtE97F7icC40oM3AZTnWNARlAhmG2IzaPfIyBsCjLy1WWJsSgZjIDqcFWCn
 Z8UaSP8mpBzg0OUhFWkPKMlcUJWFV+QhFgr1Vh2J8NQuJ9qiv41w75C3T1bovRRmhSNSX0HrGImwk
 s1gypXykMpH9Fvd9FE7AYhIOfV5wHKVyfoNDBX0uiH2ZYBuOk3BBNFN2eqtX7SYOFhiiCDTWRJTwG
 I/Zt/Ed9+mBeo6+4BcfWYnTv755XW2ieXxw+2Hclh2c4rhT646Fsu48VzlfUP9Qw87wVkVF6DpMDO
 mr6R1dbw==;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJEr-00743L-Tv; Tue, 13 Apr 2021 13:37:59 +0000
Received: by mail-oi1-f175.google.com with SMTP id d12so16973055oiw.12;
 Tue, 13 Apr 2021 06:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NCfulLhASkF88YSVbFbXw+77PePkNkMy3z6Ere15nDg=;
 b=AKIMRwC/9M3wAtmLi0SbWieMyb5M+Ug0YJFc13+SIQ49M2zK3722OWwvl0hn9/0a+n
 P7MoUVmt1MdsOaR0/ofurpaxhKMx/2JAy+ikponEr/mhkD1bsLO4jSyxNrlbTqn8UpCV
 62m7iPn3woC0iecXw/fd6GBFgqUICTq+eeczmJB+N02soaNsDdeeSQ93fXx/nBDLL8W4
 FPlQcgt97md3+zr3q+1gL4QzjgtHEMAmxLlFRT0f4Cy2DtMCDNbwzu1usm/+gS8lCDFz
 txEQc/Cv4v8B5lCtnfOjlhpzag5kUXQ3sdMnSDQzU+CW7gRlLop9bDaJIWclB7jARWlO
 It0w==
X-Gm-Message-State: AOAM5313CJDo3AwrwgRssscm5k4zUl0VGuCSAlDPtXSc494P3DwVD7Xj
 eUK8dn84MLsCHGwF8dsDcw==
X-Google-Smtp-Source: ABdhPJwoB6nerGCsqk2RnCpz9BLfhmFDaJqLZVqu6kmHEQeNF7ERD7F6xRZMQgH/qyHta5MM8irjlg==
X-Received: by 2002:a05:6808:98b:: with SMTP id a11mr68964oic.14.1618321076612; 
 Tue, 13 Apr 2021 06:37:56 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g11sm3412058ots.34.2021.04.13.06.37.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 06:37:55 -0700 (PDT)
Received: (nullmailer pid 1535864 invoked by uid 1000);
 Tue, 13 Apr 2021 13:37:53 -0000
Date: Tue, 13 Apr 2021 08:37:53 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, heiko@sntech.de, lee.jones@linaro.org
Subject: Re: [PATCH v3 2/4] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Message-ID: <20210413133753.GA1535744@robh.at.kernel.org>
References: <20210412200155.5316-1-jbx6244@gmail.com>
 <20210412200155.5316-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412200155.5316-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_063757_983945_9D9854F9 
X-CRM114-Status: GOOD (  17.99  )
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

On Mon, 12 Apr 2021 22:01:53 +0200, Johan Jonker wrote:
> The compatible strings below are already in use in the Rockchip
> dtsi files, but were somehow never added to a document, so add
> 
> "rockchip,rk3328-pwm"
> 
> "rockchip,rk3036-pwm", "rockchip,rk2928-pwm"
> 
> "rockchip,rk3368-pwm", "rockchip,rk3288-pwm"
> "rockchip,rk3399-pwm", "rockchip,rk3288-pwm"
> 
> "rockchip,px30-pwm", "rockchip,rk3328-pwm"
> "rockchip,rk3308-pwm", "rockchip,rk3328-pwm"
> 
> for pwm nodes to pwm-rockchip.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Note for rob+dt:
> A tag was not added on purpose, because by the change of schema
> for clocks and clock-names I add "rockchip,rk3328-pwm" to
> the "if:", so strictly speaking V1 and (V2) V3 will not be the same.
> Please have a look at it again.
> 
> For some SoC nodes this patch serie generates notifications
> for undocumented "interrupts" properties shared between
> PWM channels till there is consensus of what to do with it or
> someone makes a solution for the whole PWM block.
> 
> Changed V3:
>   fix mistake with compatibles introduced in V2
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
