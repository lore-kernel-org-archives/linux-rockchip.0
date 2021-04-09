Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B876C43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 18:09:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15EB361007
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 18:09:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15EB361007
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eAB2FCbr2dw4Ve2WxarKUxOxEjG5WtK9R2mY60N2Ia0=; b=k6dT2Uv8PA0KyzAoVx5AAOEEG
	TzZj/pGFvL9G4nVfsqbM0wi+xjr7gCbrgdJ3Wm+Nx1Fl1ivSNIAw6vMmxgywJaT4Ndo1YGeuBtE3x
	wG57BmCAWK5mkje3FzwdL3Q0ZRD+BjxV6fDwO8TTfBiymLsgtsnDOFm6bpbDGbFRNOr4dCkYopF0R
	8qk2G79FE/R3BjTE7xrjE8SJIrACyfhX7CEz0zoZJBgKW1yC1Agu5QFGAp88OG+h1TYEy91c1lRK/
	v69KRBZa4uphgbF866ZGuyanFASBS2h9YnMY7AL4tsjif/5LAVZug2BSS9ebWnmujRj+3CIE3Fzer
	HNmRs3CMA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUvZp-001HKB-CM; Fri, 09 Apr 2021 18:09:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvZd-001HI3-CT; Fri, 09 Apr 2021 18:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LVU+FsLg96bFDUDU6A9aFOp+y4DojD87pf/U1wdf1yQ=; b=fua1RQbqOtyxVFLuFQRercM2pn
 L/bFgMQMbKSxZ6mSfL6EwrYMLnATlBTSr5GinB53cJzQ5HJSrDQrBZKUsDW67sGDKlEW1DP0rieiy
 7VfYqR1JXqziVLNDHeruuyhXm/33tnvwauVBtmpyZz8MuC4c6AM27u1lTQ9tR0zt3+EeZtwGWrwoF
 32NWRWAxiPEM3CHKdPGplW99972B+VXKnvPpfq5wwEob8sdVXaz6UAkyMqydTgDv4gROmp0V/zrCH
 jVZEnCDligcWU2ty7zdBbY5adhoanAnlY52ONStCS2geDbxDMr6ylmRkH34H0FSE//8vHj6Evut2U
 9vA87ouw==;
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUvZa-004iPo-VT; Fri, 09 Apr 2021 18:09:40 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 125-20020a4a1a830000b02901b6a144a417so1522033oof.13; 
 Fri, 09 Apr 2021 11:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LVU+FsLg96bFDUDU6A9aFOp+y4DojD87pf/U1wdf1yQ=;
 b=txncUzlkyfcpBCbsJbgfqephn0inFa2qeP8qAhRQ8mwC/m6+8ZUb7qBAHGsD1RYw0A
 8K/L80sn8s68gm9m5F+Ae31EWdygbmGlrH0lHHC0Mn5+pI26thKRBCyNooAXVpJxkhYU
 yhtNjDZS2T1HmDUJQO2bNCPQb6PR/faWnyQ++0PxHbrt4YHgw64az6V4wUgCRr1cktGE
 rberiqcxR88fMstNpnI2nM9vIsu51sYEK+sq1e7ASfm1YtU+J72tTHaciRHqVKnvsCcZ
 Ytcm/0ZVGHWG10LO3TZyfWHUAfVDkbTVu+wHjNBS9qX+LnUiLJ5C5GeYEleycuC870+F
 3i2Q==
X-Gm-Message-State: AOAM5337OKrGfvU5Bm/LtRx9mxAdk1tVD1ogvMNsnBUfeUUPGXPwjdN8
 DwjbnQQkwQhmqx71dHB6WA==
X-Google-Smtp-Source: ABdhPJyL7uQP3fZ6rTaXBePGYdufLxlMHG1qIzUu+Yb1eFiH7dGCjpSv6zGCyXO+9GlTpBbewdlIbw==
X-Received: by 2002:a4a:4005:: with SMTP id n5mr12920298ooa.61.1617991777612; 
 Fri, 09 Apr 2021 11:09:37 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l15sm290618otp.4.2021.04.09.11.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 11:09:37 -0700 (PDT)
Received: (nullmailer pid 3894955 invoked by uid 1000);
 Fri, 09 Apr 2021 18:09:35 -0000
Date: Fri, 9 Apr 2021 13:09:35 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 lee.jones@linaro.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 thierry.reding@gmail.com, robh+dt@kernel.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/2] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Message-ID: <20210409180935.GA3894908@robh.at.kernel.org>
References: <20210406155053.29101-1-jbx6244@gmail.com>
 <20210406155053.29101-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210406155053.29101-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_110939_036716_36E9C6FE 
X-CRM114-Status: GOOD (  11.65  )
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

On Tue, 06 Apr 2021 17:50:53 +0200, Johan Jonker wrote:
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
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
