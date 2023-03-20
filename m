Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CFE5C7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 16:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehFfJ9dVDbKxbVNq5XPhRfxE/Dwo9F0bPrXEYfL5FWI=; b=jg72JNxRkvmeda
	KK5eY2WYmIOc1hUKZJT+bQJER3XnniHEwTI/YrD1aRDM43Czjf3WoGqPncVrvNfYeJgEnwl+ny4Rn
	Jw/WvDP1fCf6i/2eLdxOKe2g8ueA+pj01y/j8LHIVsiWF2wsNsyRfETLfIJYRhYWtfDn2Evv/9yo3
	AfxdEDAFRIHlqsSLPcnlv1lLuz6qKK2ZZaJwhBq4nUzMm91zeM7EIkAjW8IbpFRj0KNXmUq/XcozC
	0u0caoLfTR/9OD07c3JxHNiUWwfgsvST8NYf7PC+8C5sbr/ZfRPO5Z+f40RO9ZCy00q6EKZ5kjO9T
	twHPs8Ayb7pB/xSLUYzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHz4-009h2S-0T;
	Mon, 20 Mar 2023 16:03:42 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHyy-009gxe-0t;
	Mon, 20 Mar 2023 16:03:40 +0000
Received: by mail-oi1-f172.google.com with SMTP id bp22so2251152oib.6;
        Mon, 20 Mar 2023 09:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679328214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aykrVk11PH84fM2GSSqZSCXIg7R/09zXllx+hc7KgiE=;
        b=O7Zu3kKFCCYzWGHeLOIcmiO3mDFfb/Zm8OO24Mag7G0cnqMHd2EzOr0X5vmuVZ0bkP
         +R4YN+RtD/nGD5rbQ8LPRm4iCMgNdj6k2C8enXcE5e07cWU0q78GwpawMM7i28dMbZRo
         LgkC9HCagSWu/ZX/l7e6wcGoaVfe/bc1EnsFgOc0mYqws0nUYz2VGh4WjbPr9g5y2ODA
         uV9yIEs5Nht+1akkVw0bgEhGNUsxfMCl8iimKdRzNsWg3ft8/73UdhjBb0/fBm25hGeE
         4Zqj05tOJgPcYSXCHPJ5FVfgLC69Zc3UDZ2cONF4uFoj9fXCBUrZwO083MI7GUGH5fer
         vjLw==
X-Gm-Message-State: AO0yUKUPfNzpiORYQ7bAe6pb/OjGCcUl7z+ywVCffMnB5SMEbaVXBsAM
	Jgtw/Rl4grdVsi70wlDjug==
X-Google-Smtp-Source: AK7set9ZC/44ndn2AZ6WEHBP02JZbPv8blbEpBCxNo4pJk573f1aK48pBSdsvLxsUX2DiFnh9mSSkw==
X-Received: by 2002:a05:6808:6286:b0:386:c6ca:2b1e with SMTP id du6-20020a056808628600b00386c6ca2b1emr181632oib.7.1679328213843;
        Mon, 20 Mar 2023 09:03:33 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p204-20020acaf1d5000000b003845f4991c7sm3895828oih.11.2023.03.20.09.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 09:03:33 -0700 (PDT)
Received: (nullmailer pid 1771818 invoked by uid 1000);
	Mon, 20 Mar 2023 16:03:32 -0000
Date: Mon, 20 Mar 2023 11:03:32 -0500
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Palmer Dabbelt <palmer@dabbelt.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Albert Ou <aou@eecs.berkeley.edu>, linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, kernel@collabora.com, linux-serial@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Takashi Iwai <tiwai@suse.com>, Daniel Drake <drake@endlessm.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, linux-riscv@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 07/11] ASoC: dt-bindings: rockchip: Add compatible for
 RK3588
Message-ID: <167932821168.1771757.7958131150512632634.robh@kernel.org>
References: <20230315114806.3819515-1-cristian.ciocaltea@collabora.com>
 <20230315114806.3819515-8-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230315114806.3819515-8-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_090336_328768_F8805F7A 
X-CRM114-Status: GOOD (  10.96  )
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


On Wed, 15 Mar 2023 13:48:02 +0200, Cristian Ciocaltea wrote:
> Add new compatible string for the Rockchip I2S/PCM controller found on
> RK3588 and RK3588S SoCs.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
