Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4340FC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:58:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF8F16121F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:58:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF8F16121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NfRBNDmRUbwwrs7dtvRficfzzBjYUHXunTgv8L74ccY=; b=reMp1klldEfvNNbIKx7/yvI3l
	XSfK1vwpiFXBnK+Q5EwBP2m1sxR1Os1tTMqOIuFLvrtIoRcsgejq0fyq0G9QwBs/sXyH0BjBhuvQf
	Hiqd+gYdIB7d2AX8KF9ANxgpOLmIAIcRYOxZjLffCTh0xL1Mb21KfgaS9wcTNOUlcSlVrBt5tSCPp
	eI+j7YjbcSxhLfyfWifVPL0LkVOZ0pwOAA1SZy251J60Cpd9z4uCIrH/gSj3p3YQid0GutmknwHCg
	KolqAnW3vsNex7utCuospOgwomv37Ij6uGA6ic6uIU5G63lz6FZXQ/j0Ef6LpfnliwBqr8zc/8gYd
	jXfmBCiWg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW3dO-007fV9-8W; Mon, 12 Apr 2021 20:58:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3dC-007fTs-NK; Mon, 12 Apr 2021 20:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2sVPmXqqYHpMPr6v1hWYxCdWgD57bKqmVBWwEqZ02Hw=; b=IHrEbHhvlH/qxKJd3mkqcsZsKu
 ZqR4Tsb9dPJTtV372eNBc/q/WTCZfJkfc57yDoCm0iyMdds4jTVmk+5J3oIZv0z4TLY6RHyTFlLUs
 lkUIMXreSFOJtvKGSnrOi6CfbRbIKm+c3wLzZLe48KUEkwQlo3mFl6l7i08MO9DqE31+2kxn+uhX2
 dJgYqjqRwLAwtoxUngwfpPJwlTZG+BcvYDcDOLUqq6eh7IQjxjWXAoxakGiXvV5MpDKjAbDqU7Unj
 6UbsnpQFPRgxgNprNzDKiQ3lHaloxSq+EwZg9sEV/AxVwbAAR6OsyyxT+alRYp8o1kLAgbcbcncAw
 KVhF9Mpw==;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3dA-006YCW-4W; Mon, 12 Apr 2021 20:58:01 +0000
Received: by mail-oi1-f175.google.com with SMTP id l131so9781239oih.0;
 Mon, 12 Apr 2021 13:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2sVPmXqqYHpMPr6v1hWYxCdWgD57bKqmVBWwEqZ02Hw=;
 b=Di1C5fNNKLVxsDZjAz8xQVrB6SWUMLdzCDq0iUFm9d9wtam8/wMeQZCUkH7DTmjpzL
 nFqOEGI2Q/Bei8dFzZtZQkPka3gCaOVlOfJcLS1uQNfYHXXVaMakFYZrlNqxsUhKXrTi
 9KdQXJSWGGSsrAgVqlrIY1wnFVr0ClqmUDWe1QGMjeFIIA1Np02oYe01uGMMXPymAZ1z
 YL9QUEApbm2HiEjh8ruP8QHOIRLHL34xlPv5PfpYm+ibv6Jm75SXv0WEzCegdPLjepPw
 DvhZYtsSG7FH8Gw7wbVM38WsY86TBUjtGcAYLjwVeccfUxPEad8utaoP8wtAjmnMa/v2
 byhA==
X-Gm-Message-State: AOAM531y/OR0q6vD/KkMfAHwal4tuRXUN/d6b+hICdpuoFKhU0YxoVox
 U9zrLMiHvx2TvqfHxLeTRQ==
X-Google-Smtp-Source: ABdhPJz9YxXzZV7HBQ97lVOF27AThJosqKvHcLSt7zlTOgwB7qi4nL7B6fFkh+3veL3dckMnu0CrxQ==
X-Received: by 2002:aca:5945:: with SMTP id n66mr783932oib.11.1618261075427;
 Mon, 12 Apr 2021 13:57:55 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j142sm2059215oih.33.2021.04.12.13.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 13:57:54 -0700 (PDT)
Received: (nullmailer pid 158351 invoked by uid 1000);
 Mon, 12 Apr 2021 20:57:53 -0000
Date: Mon, 12 Apr 2021 15:57:53 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, heiko@sntech.de
Subject: Re: [PATCH v2 1/6] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <20210412205753.GA158321@robh.at.kernel.org>
References: <20210411131007.21757-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_135800_198479_CA60349C 
X-CRM114-Status: GOOD (  11.67  )
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

On Sun, 11 Apr 2021 15:10:02 +0200, Johan Jonker wrote:
> Current dts files with 'pwm' nodes are manually verified.
> In order to automate this process pwm-rockchip.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 91 ++++++++++++++++++++++
>  2 files changed, 91 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
