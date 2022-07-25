Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F32D5C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSmNCFLN0U8b5+0s2QlRejZnYBRkbJe3I9BXHTOfEII=; b=T6deZtfzNwcsPx
	JWMQjmQNebZq6tnwNaZ42QrEGF7EPA6sArKHyc1xwmghGORbvT3VI46Eda+32UxVbZPB1H4xDmrjz
	EH9lSDAadkscL5a70YI1uea+3Xh45cnOZuCVq+WBiakwiYNStKJv6shTcPTDgrWXd7adYwiPVPxVM
	Ok3/RSaVa1GnPYPAupxhvKyc8TdpPIGHDJ+W0Jw7PTiBUEWnHmiUADVHMJFxwo+rh/uJx1YdU5OYN
	OqqzwFZgML4v++0/GYdV6l46WJwcI/Y7/rMWmyMUh94HYjtC8INUPNKpWdYsUJFnRVAiVlOCy5fcl
	omNVjMMPlyW4sAZ31Qsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7Ud-004GYb-2P; Mon, 25 Jul 2022 23:28:07 +0000
Received: from mail-oa1-f41.google.com ([209.85.160.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7Tz-004Fkh-Aa; Mon, 25 Jul 2022 23:27:28 +0000
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-10d6ddda695so16826619fac.0;
        Mon, 25 Jul 2022 16:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6c482wUHG0+BswLvQPyJOx86Nn42yE6Ct0i20LUXo8g=;
        b=yEBXKh818h65t7tRvKo38jwsVWzTy2GqB55MNjyCER+50XylqyDYTz4sNPe04ds3eq
         Wltx/k93ATYYzZLF5asqlBel1cklB93DX4bsW90lR9lb+fn7SEWs7747RdnYmqi8HEHT
         8loExLbBhNwVoyBqjgM/RmQETVP6CBGYFLKYQiGFim7/5GjgfbyYS5DJMob4QrVcLGqG
         Umo6vqRk/WOoTZdXBX6wazz79Y4OT06JT225KGCiSeavMEM7IYITktYMcGO5FSEg2rr7
         aG666XZpPNde+2xUm4cgaKYa7+P5cwTVOYHT+TlV1UKlfEppFoJZwnM3JecXHgqltkqs
         45vw==
X-Gm-Message-State: AJIora9L6859Ql1o70kcKm9WTj0FkjAv8rBnNJ46XjFB/SvxBdj3xZ4R
	7IE6oF52xPJUw3WuczF2xQ==
X-Google-Smtp-Source: AGRyM1sY2VakZcPds7b7R5w9Ntzb3+qiiLoaNiQI0DMCChT8JprhnRcKK6/s1pxWE/DY3PZ33nJ8xQ==
X-Received: by 2002:a05:6870:51cf:b0:fb:79c:a42a with SMTP id b15-20020a05687051cf00b000fb079ca42amr15965803oaj.159.1658791645307;
        Mon, 25 Jul 2022 16:27:25 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t21-20020a056870f21500b0010dc461410bsm4873170oao.38.2022.07.25.16.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:27:24 -0700 (PDT)
Received: (nullmailer pid 2954833 invoked by uid 1000);
	Mon, 25 Jul 2022 23:27:23 -0000
Date: Mon, 25 Jul 2022 17:27:23 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 18/22] dt-bindings: vendor-prefixes: Add Edgeble AI
 Technologies Pvt. Ltd.
Message-ID: <20220725232723.GA2954779-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-19-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-19-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162727_414197_69EB1DA8 
X-CRM114-Status: GOOD (  11.92  )
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

On Sun, 24 Jul 2022 02:13:31 +0530, Jagan Teki wrote:
> Edgeble AI is an Artificial Intelligence company with a focus
> on deploying Neural Acceleration principles at the Edge.
> 
> Add vendor prefix for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
