Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7160E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 12:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQTdADYDdo3LzpKRDB5vFLXzqEbXmXNpF4OhTVnKwR4=; b=gsAe2r4/5xquAp
	AyAhzJ+w4uviH9QoZIbX5Y+K9YhLbhK0VECfU/L9o/05Ih9sGqa4AOX7fsAhOAJvNvlGdQSdPmFAc
	TkAZOLfy0joUoqSv8fvAloAZnchN8PPvES99UulXl6fSMbHrRz1y+Fj1FMI1golg4cj4eQK05v+OU
	4zcSbCFegdFzMwJlx1afGLzRpyQzgEESfmj/N2x3g5qxx6dpFVuv90klHoMxpalQFWdCNdtRKavwm
	4zAUEOy6Fvmd/ZBpCzjO001BqnJO2NfWWJJHMWvA1/AEJ7c9Df2dcp+zFqj7djTbCqyM+Ui+whuXd
	29eU51MZBCnegE4JNF5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEzl-00000005Blp-1XoQ;
	Mon, 30 Dec 2024 12:35:41 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExg-00000005BQn-317K
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Dec 2024 12:33:33 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so14137665e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 04:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562011; x=1736166811; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=rtj6QRcEJJ+7Bl+rqMazt7qlm8G3Fw5Kio+xajrFouuz+e+pmomTBBMjUKK5lWaRsu
         Yh4qVC8o8ox5p+qwj/EB38NguKO02CMo4jArDfbYeVx8AKza3LNlU+yJ/x6uA28aj46r
         l3gCMiDH2E6YNJw//yE4D7RpIr96WuR1ta2xbsmUdB6ZQnOXT6FXfTjYFDY2vGlaVMev
         r+67jCNLvB9RNtqSgmDKp8GsPRrI5sYUh/q893Jx4KbWYTwVeXEUZZXxVUlQ2O+qrTqX
         6jY01KQyLHjg4agJ2/w7q+PJHbD85sHRJLgzagXxUJAHy2+R9mqB/Nvp2PF1cmZEKo49
         vvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562011; x=1736166811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=V9KtPOuMFjpXEJlYb+5v3BWbkO45DLB9MF//H2KkVrVG752RqA7ik3DG/ztB60UHE2
         9YquOLOaoARjsVicn09hwy6t24TNmEHDm75EJTm5N+i2vHYMo+J2Wa4OeQLLLtbYZzI4
         rFp1gLJBEEI3c+pCHw7Cd2PZHiP16rRiURVZjHyebzmyCgIvK9uQJRSdD0l6/EMe2Bw0
         rEDKtA5MpBy+azRsDV1yX4TuoIEHcu/qinbYvyh/hhIikIC2CxwZWIQrd/uTZnZX3SeH
         afDRyUaNG06Kkk8i+Ipz21OOQXAPAPMVnJkrqdMFSt4W3GhugwkpInMh8ElPRPAr+jSF
         0lWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyBQXPDSaTWaf3V4FNFx/LOySeFFT7SD+zNYMTb26NOnCo40dQvDVHTMr0LY+hwim01QcQeMHRONjzULDAiA==@lists.infradead.org
X-Gm-Message-State: AOJu0YznzDlUTlrOSIlbJ4C/JwSwuxFx8vkokDHQMCdrPRy/J6wr8fbN
	c6O5WBOEcNOogstpyvE+uwmuXwBH4lJq2bxZtiYRYEqVnhi9hAUb9h5NS7OcStQ=
X-Gm-Gg: ASbGncsrjcglW8ZM28PxMlcRQ94U3tJh6cvqWRj+IL9B6e9EtgdqqfyYquCnh+Hew6a
	ge8ayrC5GLOJwmS039ygA7FdA2fgsZYhmAsZV/QBYUhXgT3FxqYJi876wtGZZ0sKtcbU2i+Cv/d
	5qPtPE+T+mXFmaYu2z7t5yqz426+yRO10z3eZpa2O8Rus1IdYPBpQUMfaSVaH1Bk9XVsIUIyx7C
	OeSszJRFoT3czhBqltTrexAP3tATlzfDYJFWVo5g+u2Qq/BKuJCfteT4k6ZxsIkaZngrIhLyW+Y
	GWXVp5HFti7/Vzgw9f2Q6LFISt5j0QGO+wrI
X-Google-Smtp-Source: AGHT+IFuphrsUAmtBsapn4MuuZ4zkhPDCYfwZQ1OQx+nK20jXRfJS5fbhwKtwh7lTAQAKIeTPggikA==
X-Received: by 2002:a05:6512:334f:b0:542:2990:722e with SMTP id 2adb3069b0e04-54229907232mr9337220e87.15.1735562010862;
        Mon, 30 Dec 2024 04:33:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423d3b5697sm1688236e87.133.2024.12.30.04.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:29 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 05/17] phy: phy-rockchip-samsung-hdptx: Supplement
 some register names with their full version
Message-ID: <nr7ilsmyu5kubahmq5pjscgpf5wrnzn456zoohatpftr2zjpfv@fl2mx4y3cel5>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-6-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-6-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043332_762923_D5E3A620 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 26, 2024 at 02:33:01PM +0800, Damon Ding wrote:
> Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
> full version, and it can help to better match the datasheet.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
