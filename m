Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB966C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:07:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1D8661248
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:07:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1D8661248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b36+6UK1Bn4v0TRI5HH6JMykmUBvwZcPl9vRF9g/yzE=; b=Y+xbsCurxscCvJ
	l6wmiVTK0y9LuM0LrSasjX1yFwxpFLqryXI6i6dSBsNt/nozpJVv73JU/o5L7BniEciNVhiGH/EdY
	P5LC2pOljwstJ/rpwlEEPxhyfdPcYplBCKzds23xI6uz/zQJfuddT/OSSMjQALdxBw0MUXHebNf00
	tieVuSGwQjI76EVTUYCvo0S4BirnqzrG3dd1W5Vt9jIjzXsxTHCDE9eKOIsRc64cxguSjpXOcI/Cl
	f+AJEbxYOKON8Y58P7x32Tc4wk+DZ8D5sjml09a87HgSeDXQ8yuIcKvkKZGEw2nweMGzCYQ33334Z
	uP0JF+JYdSGPQq1PGi0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32D4-008LGB-V2; Mon, 12 Jul 2021 20:07:22 +0000
Received: from mail-il1-f170.google.com ([209.85.166.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32Cs-008LEe-Ny; Mon, 12 Jul 2021 20:07:11 +0000
Received: by mail-il1-f170.google.com with SMTP id y6so19777565ilj.13;
 Mon, 12 Jul 2021 13:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XaY5P13QTe8euUqHWNilvxRWXAenzeNcAcuUtAh0nfg=;
 b=cnug/liRka+zQx0+q4fDyIoGVniUC4WIYdISimL30bo58ymiM6BSZdiqs6AtxCl/Gd
 kr5YXGHyK+2Xm/2fM2nwj/Y+9KyYTiKp9nT6teEB1rC+CQ/PVnrGxJJCa9So3c/5YpVk
 8rBjMiFtd+73GI4fV1MfzPRJIU/BVnh1vqCGdv7vOiKdq0szFlRspMi1ox0vlEeOuw9K
 Whcje62keNv27ECFAv3xIwnaxCiCnVk1uexFzC3vOvOHfKc0n/58MiJKyqpo712j05Sa
 vOqJeNaXeDTudijeXXw6bjthx9FxjFW5lrUB5bqgjPRlnziB1hA9N90oNNWu7p7wSi7t
 kbPA==
X-Gm-Message-State: AOAM5332mnlLQeweBuZMJOodHSH5cf0SmCj563T+i9rHAzItsh1FG7IE
 ZSzHy2wfDnNKJTn8YvGLLA==
X-Google-Smtp-Source: ABdhPJxtJIaEfT9Jfk2r9Q+q7xvAKbTSyWLDAuftGR8HZNIueK4kNBCA72i9T2wC8qD9sW/Xk3exTw==
X-Received: by 2002:a05:6e02:1c02:: with SMTP id l2mr412433ilh.9.1626120429493; 
 Mon, 12 Jul 2021 13:07:09 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id k19sm7559760ilh.60.2021.07.12.13.07.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:07:08 -0700 (PDT)
Received: (nullmailer pid 2401065 invoked by uid 1000);
 Mon, 12 Jul 2021 20:07:06 -0000
Date: Mon, 12 Jul 2021 14:07:06 -0600
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: Add doc for ROCK Pi 4 A+ and B+
Message-ID: <20210712200706.GA2401021@robh.at.kernel.org>
References: <20210618181256.27992-1-knaerzche@gmail.com>
 <20210618181256.27992-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618181256.27992-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_130710_823775_F69B0D41 
X-CRM114-Status: GOOD (  12.07  )
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

On Fri, 18 Jun 2021 20:12:52 +0200, Alex Bee wrote:
> ROCK Pi 4 got 2 more variants called A+ and B+.
> Add the dt-bindings documentation for it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
