Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5711C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 22:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQnC1RG/Z0+7IWzVsBvukgh95R46lxxYLkkq0W5jEuE=; b=zNIwna1W/xl3yx
	5jMbTdOF3+lBYx54ktqYCOu1K7ERlWCfmAGFtwAoInrDQbg58MjID4ltWLSv/RlESFt3vC9JesBYR
	XSS9SJO12r2zIIcebwuHQGcdsv4WXwh7NluOyFDmxO+lheRmVAHagyqQdB+t9Yxh/99EUc+KHhCCE
	z6rZB0Q1RaBiPHgGc92Lre8Le4rqgtAJKHlxWgSZCKfyymDPV2JxfdnLqdIzU9u3AOXJQRJTn9Ao6
	JgynmpVf26dbz6NJdFEqgyaWwqxRuufAH9vBsh9n2sg6ACPl2LobJiUSZ+04VIus1ahMEn1kJd6O1
	cgHGsa2Zas2ZwNeSn/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72HZ-001jik-8F; Thu, 30 Jun 2022 22:05:05 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o72HN-001jcE-FK; Thu, 30 Jun 2022 22:04:54 +0000
Received: by mail-il1-f173.google.com with SMTP id k7so272717ils.8;
        Thu, 30 Jun 2022 15:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=g/aXAomXuNpsWAEsulspUaIhuU7tIZVVPwox3ZokL7Y=;
        b=UDmpwioUSdUeLcCxoj+ORPdDQa78o4U46HkgogBLygAkpF1sCxHrYVMNxo1591L9p5
         Y/+pjx2lvwlpcwdA6ZBF/OQjp/j3K2Fn8iUf9P0fIUwogldVul5i2b5Rd4cNYIrvMZqr
         paetjvOCTK4kjgXlyEdVnPLBvRK2Ygggqm4jlFZzrCs3CntDi8+Esi6EDya5XFxLH4XL
         e13McBoRbnpLcPh0pXm1jVFr+CZo5PlftMhyf6XpwFb2gZN49wz27h4yuhOU3uZ2Vl0i
         30NDx6vDxU1Lq6JkKfC9PSJz0/FlITx8ZjRlP6EyU8nPcTARCER6OfLZa8oyg2BxYZdk
         zb5Q==
X-Gm-Message-State: AJIora8170rTJvK8OJh3DrL4W8mg+xlYvGUuV8ySv/fn+il0qIr+CDG+
	LAVje5d7QNMkdr3XiAiC2msKN4xI8Q==
X-Google-Smtp-Source: AGRyM1tLrGOw2gEy6Em72iuYVvoQZF4R6ngPGiWPXVdM2zQLMrrkfHiEj66cnU9r5jaTk8EY3wFa9Q==
X-Received: by 2002:a92:c901:0:b0:2da:8497:501f with SMTP id t1-20020a92c901000000b002da8497501fmr6066244ilp.182.1656626692534;
        Thu, 30 Jun 2022 15:04:52 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u9-20020a056e021a4900b002d946b38ce2sm8392225ilv.46.2022.06.30.15.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 15:04:52 -0700 (PDT)
Received: (nullmailer pid 3400426 invoked by uid 1000);
	Thu, 30 Jun 2022 22:04:50 -0000
Date: Thu, 30 Jun 2022 16:04:50 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Message-ID: <20220630220450.GA3400376-robh@kernel.org>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
 <20220623162309.243766-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623162309.243766-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_150453_543375_05472329 
X-CRM114-Status: UNSURE (   9.97  )
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

On Thu, 23 Jun 2022 18:23:06 +0200, Sebastian Reichel wrote:
> Add the compatible string for RK3588 SoC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
