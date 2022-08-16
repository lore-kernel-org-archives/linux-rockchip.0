Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 367DBC25B0E
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Aug 2022 17:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHUrprQ8xahe8DJIfOsTy/gd5VBd3twGwq/bXCdVEw0=; b=dPGf5HSgl69tZu
	PSSJKE/+Ji10JqIpSnSUihmicrjwV6TIYO2qq/oy5M+VMKbuoFyarIemQWf/+qIwpoTJETy3U3R8y
	Ur8PEgrG4Lpugw31SvuG5hYfmz4MyYU3E3JjpQHuaz8mO/RhjjezF4FVYuKCsfSAEgvi/EW+QrBHO
	JBezNZ/9Huy7WwjrHwSaa7G1MHY24UKGwRCHQLMcFTWC3i5+Rzzu6bbxkJn4fNfI991LjIZ25q0yj
	iG3TIbd4xrBf+vCkejDRd2NzC17U3WgV6GTYLXp0VdN9JmqioilJrs2NK95V/NnXKiL9KfEtL5hqV
	zRmFBtLP7TGRsPcQU9ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO0HF-005F34-2u; Tue, 16 Aug 2022 17:22:53 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO0HC-005F0t-Do; Tue, 16 Aug 2022 17:22:51 +0000
Received: by mail-il1-f169.google.com with SMTP id f18so3886159ilj.11;
        Tue, 16 Aug 2022 10:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ZHnZl3ym2vIb1DqfF41kB+hOU6xwc5iPv4rLrgAJ00k=;
        b=b1cD57z4gV0hSozJufiYiLeum5fDxMgrJzdH9zPt2CYPEQY1HZ3gs8Ky0Ac0jOtawL
         sFSnz+hv08TTNhZAyy9mVd4ackNTorXdl7nQN/noRyeRBQwKc10BnQCVYWpLiXIBIfWN
         isBgA7M/lN4Rk2U3m0Z94XorqykktDy5/WBDqFsE1Sd6H7DvyQ2wp82xvVVk8kHkSe7Q
         5mtZfFX7EYqYiopglgq31Lx4BykXdTlvWQnNPV4tRmsuttJ/0jzfpGVWYELBxqZ8GrjV
         aWg/HWmJtEFiq6cGnXoc1N/VSWFsZKYklWPFlFJNvq+3cfhKDzWvBLoWTYxIJQukKN6D
         V7hQ==
X-Gm-Message-State: ACgBeo2vPvS5ByIRc+0lMNntUvhoLssQ9wZ6RkzNwXOV3TaF/FRt/tFA
	GG1zJgGE3u+8QdQifFPiBA==
X-Google-Smtp-Source: AA6agR5b2ckymTX+22qn74lBza90/3D4mUGYoitkuvx5tJHjF24DOixmA4nX+DorvbKrPOApYJ0+Lw==
X-Received: by 2002:a92:cbc4:0:b0:2e7:147b:6f7 with SMTP id s4-20020a92cbc4000000b002e7147b06f7mr1157509ilq.174.1660670568228;
        Tue, 16 Aug 2022 10:22:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y9-20020a056638228900b0034343fc4fdbsm4698925jas.44.2022.08.16.10.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:22:47 -0700 (PDT)
Received: (nullmailer pid 2407941 invoked by uid 1000);
	Tue, 16 Aug 2022 17:22:46 -0000
Date: Tue, 16 Aug 2022 11:22:46 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: robh+dt@kernel.org, linux-phy@lists.infradead.org, kishon@ti.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, airlied@linux.ie, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch
Subject: Re: [RFC 2/4] dt-bindings: phy: phy-rockchip-inno-dsidphy: add
 compatible for rk3568
Message-ID: <20220816172246.GA2407886-robh@kernel.org>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
 <20220812143247.25825-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220812143247.25825-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_102250_504655_218A0D2B 
X-CRM114-Status: UNSURE (   9.80  )
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

On Fri, 12 Aug 2022 09:32:45 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
