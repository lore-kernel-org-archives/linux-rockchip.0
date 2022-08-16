Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E202DC25B0E
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Aug 2022 17:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwDaOrZQ9eWYXra4fkixJK4mhsteuPtQ/y81DlrTF/0=; b=JBvX02KdGDUbdZ
	ixzAVCGBzYBvajOF9Sf9rLKwdRYvepUaJ31TA0Sw6MO2l8EC5Bz9BdI/PCFNGW3uqRu5hEO4DPKjA
	IUZjNx0UAszzJZq1/VkWW89gH7mfkbdDZ5rrBt029rExUEzon63IsJya4/inClE8Fq0cgxR6EPs5A
	8WG1XOO64xcxgWOAiUSzpzfZhaODKwWGnv02wBVomcEjOvmN65KqGoB7QSW8Az+6s5cGHjK+nFJgO
	AvAjLwFg7NVdg54cTMTxqUUkQBOgAU3+Qqto6lZ+t+nM8o6CvFfRuACHAQCK7wD5QS7qFZCSS8FsK
	vEhKSNHb3sDNOnnH2r+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO0H1-005Ewn-SN; Tue, 16 Aug 2022 17:22:39 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO0Gz-005EvJ-MV; Tue, 16 Aug 2022 17:22:38 +0000
Received: by mail-io1-f41.google.com with SMTP id y187so4965658iof.0;
        Tue, 16 Aug 2022 10:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=/xhUo44Zl18mAMZXi1Y6It/0tN5VB4Fd1x/4Rex+VMI=;
        b=riMFG/eLAmfquoGuL75mJgVUoSwYHfjW/SIX7YX5OVx+Z5Fsy90BfdpVAVnk+UJNwv
         cJCpXqWcM6DPV2xs4NJfONxofT9tZalgw3U8bQiRck5Ch5v7M1ifIwlUguSWnE2IBe7X
         Cqgu9+rJdYujssJRPKJ/8S+NjnJGIDRo7wlmLa9Ons9CjQJ280KP8EMCqbFH/I8+tH+C
         ofFDO2REFdOR72egaYUGJcRPYbjzrREMs7YGjFwUVT07P9MKz3LkhHqUZ/76M0Pt8AFl
         5CfeREPvxz0AQuvmtgB2PJpYWPVDnJRScXsjYidgxnjk+jTJKmeyKF+WnR5Jtkglfazy
         vJdg==
X-Gm-Message-State: ACgBeo2Amhl3VCJD9N+WwFCbcXbBZiwP0ycXf9q3Gvr16o7XzuldRJQc
	c5LT9etLdq2AiWYmgPvt4A==
X-Google-Smtp-Source: AA6agR6hai1iYY0BGT9NpHe4tBpKi8DBQVs6OJHwV+WiBW3KtHVEUBGb218+cvyq6Xk1Fsgg0ZZCHA==
X-Received: by 2002:a05:6602:2c0c:b0:669:c1a9:245c with SMTP id w12-20020a0566022c0c00b00669c1a9245cmr9354129iov.218.1660670555746;
        Tue, 16 Aug 2022 10:22:35 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p135-20020a02298d000000b00346ab331d24sm929055jap.73.2022.08.16.10.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:22:35 -0700 (PDT)
Received: (nullmailer pid 2407468 invoked by uid 1000);
	Tue, 16 Aug 2022 17:22:33 -0000
Date: Tue, 16 Aug 2022 11:22:33 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, daniel@ffwll.ch, heiko@sntech.de, kishon@ti.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, robh+dt@kernel.org, airlied@linux.ie, Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org
Subject: Re: [RFC 1/4] dt-bindings: display: rockchip-dsi: add rk3568
 compatible
Message-ID: <20220816172233.GA2407435-robh@kernel.org>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
 <20220812143247.25825-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220812143247.25825-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_102237_792879_458A9DEC 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

On Fri, 12 Aug 2022 09:32:44 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
> SOCs, so add a compatible string for it.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
