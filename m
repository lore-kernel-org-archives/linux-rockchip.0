Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3A03C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 18:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipWMZaQVAvnVF2ZbaIVnNWCrWjO60bLN4tkJa/MZ5QQ=; b=Zg7XF4ycGR3rx9
	JwZo2ENcm0FICU5zJCkd5XiHG4LR/XYmugbYKdj/iQj1STJs3q6Moir2/uFlI9SMiC7zn0zMFlSQ4
	wGmq3guQxEfaFevtg2BMyhobRT32weJErWDS85I4ZggnVpUSNHd//a36z/9lkyVj4os6DqRm9/kO4
	3XZzVpGAvouhgxGUkWwEitj65xwE3KVNBOKawZoA+804zsc9vdXyNo5MWwX+ZYUiE3Lag9MZo+Gwo
	ltX7GiKTnRTQy9li3ITTNoUFZvj47/MNalc8XibmS2AIkvo/c9pS1QTaEdTjwI/1SRoD1qTTIsBR5
	hmp4zS6Jc6KpJN/kg/ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCR0O-009HIY-S2; Tue, 25 Jan 2022 18:57:24 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCR0L-009HGt-QA
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 18:57:23 +0000
Received: by mail-oi1-x22a.google.com with SMTP id bb37so32899319oib.1
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Jan 2022 10:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WE5pCl9Bv6lvJdU3hooef5OUywFPsVbb8vY6CeFQjqo=;
 b=aeJ/mJezruy5niqH4LF0n+pGQOn0aSqHfzXMUBYRD3tkmg9UgyMG3Rf1GrvHir/SNe
 ucx4qMUL7/HyX2o2d4OSs494rzODZt+HtW5a1fJbFEHDUgkWOKd/TZ1lLkHecdNT9ySa
 geCzMMFoM3kbHgsuszNNaULnhB4B3xo0cSW/IvoaMCR7VsuBnW844X4HxipBBgQD2RM9
 lldLE3Vdb/xqrmqqnj+xwVcbTo5LwQCzxKOjFQYbVWurxdK9qBVN7l3Vnvc+ZHszfBk8
 GPf70fVUJsBVMEEa4U1n3XK3QAJ4uw+HC49hAaXpUuSwYsXUVupCN9KC2WB74OZzPxgD
 afyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WE5pCl9Bv6lvJdU3hooef5OUywFPsVbb8vY6CeFQjqo=;
 b=AsJ42PyY8BpCOyArcO7u6irPjvqCeFH41h3kttFqhyyfXky1gPn9DYlX3ZuehhIpqo
 OK2dEoqJNghzy/1kx7yNY5r1iQ0F0H8+KbmXWmAG2+KM0JghXhFMcbW0nAX20a1IwnOG
 aW2lupofG9f8ojUf/Rp3zjHUs4zpruUu86ZcgdfyYGEj0Hcq35XsSulJOTV6NQZethdb
 jkklBOg9G1DAqYgHmkgwZryAqlLrWN+nZD2cD1VuDCJ5yBY5m68b5e+yqWvKo+ECluWL
 yEG3RgmTA2ZRe4/b7kFlTRc4nt72w00T8MvdlRT97AVdyUm+8PcewcuFENB+V/Y+VSEw
 Z5sg==
X-Gm-Message-State: AOAM533wADK9hl4UlQsLduuP2Lp9KNcMxvL0+d4HdBonG2m1dsdXY10X
 QHKp34d+XnGMZWC7eBOfu+6zrw==
X-Google-Smtp-Source: ABdhPJyMsHLmdvHCbt7oGLxKO6/gQpQvEppY7vrVNoj5xgPVyZ+CJV5ILNr38BnKSnrPytywMOOXqQ==
X-Received: by 2002:a05:6808:159b:: with SMTP id
 t27mr1504381oiw.233.1643137038250; 
 Tue, 25 Jan 2022 10:57:18 -0800 (PST)
Received: from eze-laptop ([186.122.18.78])
 by smtp.gmail.com with ESMTPSA id q11sm7202385otl.8.2022.01.25.10.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 10:57:17 -0800 (PST)
Date: Tue, 25 Jan 2022 15:57:10 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 01/11] arm64: dts: imx8mq-tqma8mq: Remove redundant
 vpu reference
Message-ID: <YfBIBlK2LAvjftUE@eze-laptop>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-2-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_105722_060182_E5909C9E 
X-CRM114-Status: GOOD (  14.70  )
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

On Tue, Jan 25, 2022 at 11:11:18AM -0600, Adam Ford wrote:
> The vpu is enabled by default, so there is no need to manually
> enable it.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> index 8aedcddfeab8..38ffcd145b33 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> @@ -272,10 +272,6 @@ &usdhc1 {
>  	status = "okay";
>  };
>  
> -&vpu {
> -	status = "okay";
> -};
> -
>  /* Attention: wdog reset forcing POR needs baseboard support */
>  &wdog1 {
>  	status = "okay";
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
