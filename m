Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD5FC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 19:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FhgGJ0VjjGMqpRoUdfd8OAGG/KrSIEucJ/7MZV6+x4=; b=Jasj+iAAae50g9
	/VfhKk1OzJnXQ0cpIv/b5OuGD1uvSlgND68oR3eQDmhDTUIyJkUqgpLq7HZNjjvpyqaAfxuoKT3yN
	I2zoydWPPxywKZTWllRSFmGA1FrCaa5Qsvw00lyU8/ZhlyaUmIy2db3dpm3BdO0wKu1dwvtfVb+l9
	8InRiNrWSlAEGSlvvFqDSrCvA7kj+TbfHp0TaZ9Tx/rfogwPYEYObmPP/8o6+S9WD6vFcpPdu/WcO
	3MFay5P8VEocECn9QXqJEH3txSo1garcDcm0gXx2pKDPpL0bxdtuiH8zCy8hPv11rrJc6oRgP5Knb
	WWwu+qDOyv7LSagC+Q/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDaN-008zAu-Ga; Thu, 10 Nov 2022 19:51:39 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDaA-008ys9-Fy; Thu, 10 Nov 2022 19:51:27 +0000
Received: by mail-oo1-f47.google.com with SMTP id g15-20020a4a894f000000b0047f8e899623so396367ooi.5;
        Thu, 10 Nov 2022 11:51:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHDl1k+IjjiluFcAgubPN6Bxc9jMrBAyPXl0OSR6rYM=;
        b=3rJF3qCoEy0xkMNZ6hbjQ7TYD5j9ttbaJRmhMDwWnbUCMgEIL6vPW7NZ0VtWaRnPpY
         fJndI42FEcGJcsPCO8R0w7OtjEhUTdK02C45hxLL/75Wk7dS53smlrBlENts5wCfSfbQ
         QEAVklJdNkY0WejUvwpFtEAmtZypCRHmYnBZuwL1pu+Fh9CrbiKoKCFucKKLfLOGJEQB
         EfkOJ7/s4STbuufeHvCQiC+WtLPBp4oQ/a3kd2osf+0ZlqHvzKoB4l/yVNye/PNPvSkF
         A8/+W33vLDJrxetDlIGPhq09Y4w2Fmy9Cm27kJG/JUQyZWIhEpWdVduJ0sFkb7+8TaIH
         QxEA==
X-Gm-Message-State: ACrzQf1/AxJjX0a5JQeALRt9krtyG/WbieW+mJZ8/xBeJ6nzBfVFcaqa
	Njy8p8/vyV99cvdZpy+70g==
X-Google-Smtp-Source: AMsMyM42TMLEWT5X00LepXMJ6bck7ezJKFStYZUnzpZw+gjBVLGQJz6I7y6kxftZhYYaUO3TCmuiiQ==
X-Received: by 2002:a4a:d129:0:b0:49e:1b6a:3c57 with SMTP id n9-20020a4ad129000000b0049e1b6a3c57mr1706373oor.32.1668109884380;
        Thu, 10 Nov 2022 11:51:24 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t25-20020a4adbd9000000b0049427725e62sm132430oou.19.2022.11.10.11.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:51:23 -0800 (PST)
Received: (nullmailer pid 884033 invoked by uid 1000);
	Thu, 10 Nov 2022 19:51:25 -0000
Date: Thu, 10 Nov 2022 13:51:25 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: linux-arm-kernel@lists.infradead.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, pgwipeout@gmail.com, devicetree@vger.kernel.org, robh+dt@kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box
 demo board
Message-ID: <166810988279.883926.4699648145983985104.robh@kernel.org>
References: <20221105095935.958144-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105095935.958144-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_115126_583107_4C7D2077 
X-CRM114-Status: GOOD (  10.88  )
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


On Sat, 05 Nov 2022 17:59:35 +0800, Andy Yan wrote:
> Add device tree binding for Rockchip rk3566 box demo board.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> 
> ---
> 
> Changes in v2:
> - Move it before rk3568 evb
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
