Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 076A8ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 21:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/VUf2y0L3KQcEi1HoSxLRhJo19ucL7VuTKMRww+gWw=; b=Ed5LxYI1Jeog7l
	RY0dcNczZvYBuIKWjn8N5GmRrAzvYuWxyCh5OOa7Or0uUPcK6hC53529yvnrOmvxnbDUNDu6Mrq1B
	Zi3uUBS7KYCn6Mvl48EV9xt/xkczO4nXv93qdAsP6bxawhJGi6BW1XsB6hSTNebzabq1NZeDQkW44
	2BX3x07LMqAj0kJFQd/0pP8MT04fn0WM8LCC2Q3cAJdH0TXJX/ucbqXf166US2TPP468SvGbilPOb
	E1ZSL2aD/ltmJVtO9IgN7XTjxHlA1EYfeu49Br2AQEJiMgjVFvtSqMX44HlvHXQ+MTeUrRg2JmP0Z
	H5JRYBNi/5oVcf7rYrVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDnV-00Ax2K-HB; Fri, 02 Sep 2022 21:01:53 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDnT-00AwvH-2c; Fri, 02 Sep 2022 21:01:52 +0000
Received: by mail-ot1-f49.google.com with SMTP id t11-20020a05683014cb00b0063734a2a786so2244490otq.11;
        Fri, 02 Sep 2022 14:01:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=OGkDg/VjR48tAk5om9uQJ7Lgtui5uVMNRlDGhMzoVmI=;
        b=wyhjeQKu5Eleec+MttatCjhww/X8mtjuWD9s60TVNXddMYgTy4XdMYT7TAR8c6C3fi
         XRkVocfqURU+jwTuPjvmfc2MIIJ3KmSwlOHtaHd95M74bkiCiGy7Kgwpc5epPfAyDpRq
         Dx9JyhtwgWNS6fzHz72rgCHHNQjMQv29oOAIwOqJfCZoMC5qW+R5qUOu4Mad4VH9UKYb
         s1icmbqhT+cf/MIGt30BmnGNzvwnIO6pYhNj16DHtWQnGSC2fc4QtLG90kPcur+GzMMj
         xSIT5OJQsTSKFARsZQ59w8tRLeCzbZR8JyvFzU24w725n78PmnXL2GGNEaiYgjUDksxz
         c1+Q==
X-Gm-Message-State: ACgBeo08MKmYhfQBzc5PQ9y5wyTR3wuKdvn/0G8TU2Kcqtxqet/yRCFV
	hoBWSo3kQ16jXFTVIVscPmyFEFbbrw==
X-Google-Smtp-Source: AA6agR634/jEbKvGPpREUDmA3WX8iiT37ciemM1uKtlSVKrbmJDtW46cb9LnSa4GEuA48ZT9DFTCyw==
X-Received: by 2002:a05:6830:6081:b0:61d:13e9:fabd with SMTP id by1-20020a056830608100b0061d13e9fabdmr14858133otb.286.1662152502228;
        Fri, 02 Sep 2022 14:01:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m16-20020a056808025000b00344851ea0ddsm1351337oie.56.2022.09.02.14.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 14:01:41 -0700 (PDT)
Received: (nullmailer pid 408215 invoked by uid 1000);
	Fri, 02 Sep 2022 21:01:41 -0000
Date: Fri, 2 Sep 2022 16:01:41 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Message-ID: <20220902210141.GA403234-robh@kernel.org>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220831182629.79255-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_140151_138937_C0F0BF6A 
X-CRM114-Status: GOOD (  11.11  )
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

On Wed, Aug 31, 2022 at 08:26:25PM +0200, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add all the power domains listed in the RK3588 TRM.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> As mentioned in the cover letter I did not update this into dual
> license, since there was no feedback from Rockchip :(

Well then, I guess we'll stop taking Rockchip patches. Sorry, but what 
other leverage do I have?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
