Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7B2EB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 17:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxhBpV/I5g2rYr6A/5Kj44/6GnPlDNqWMnf2SXE/y0Q=; b=mupam3c/BJlJqX
	twGCir9nC7iDEKUgzlO/TaiL08KAp19qPIXODEDFnY3kmcUqifEPQd/Xiwz1BZs9YDLWwy/WLNGjE
	77GTqx3UVxRIxRi+p9VbKhMJT4uQQ9XWe5fKxFCexKoNqKXEzvNqGMT1JrvF114oxyKcj1K0KGGyl
	HQh0HNmGMpO0u/+LbwB1J328nAFY5CnCGpUg7AFsDYCPgtmy/ar8q9f/huOLbAM6THk/05gnpofu+
	Eh2YW2zQzdB1u8S6HP4AnKGobChvMoM9JKMynW5wuQ5tXBN6ie7uYgJziAu2m0OupQ7WEh3JknyCF
	XzMtb5B5ygAF/VSGVsOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qECfA-00DkKJ-1g;
	Tue, 27 Jun 2023 17:39:36 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qECf7-00DkJy-2V
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 17:39:35 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5704fce0f23so50849737b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jun 2023 10:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687887572; x=1690479572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UddukGzDr9cqXnJjft2zN096RunUMBPk1ZP9zcIRksY=;
        b=NgRmv9FKdh5Q+LNSTdST/2o2OBuExWiOV8h02pIHQ/TrBIRto31DTPVqzaHbOuAsj0
         SigrQYjoDDwOLdfvubbp4rFjQsAmm0oZeWk4tdBYYNHR01RLWC+zEPnroDaKA97lkCFC
         292d9HSAO79xpLaCBIEWs+1lfQquYvrBBBPsGXgI0JwwQrBOqceB5V2gsrzW39HeuYHY
         VleOiow6bINTkSCr5qbRxnx+2dEQniSPs5MPSOZjGv7E/DRO3zyFJl9BXZCCyWrQTLFP
         7J2U4G0YPfTMyPc0lxmRf3MsbyF0Kh7MpyCzOKp+tCcsjmGl7ZZu+fSzZFK/nL/i+6Es
         +Fgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687887572; x=1690479572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UddukGzDr9cqXnJjft2zN096RunUMBPk1ZP9zcIRksY=;
        b=HDCc/VUF7467sF05LjavEu0ZaKCCXoEU+g/si3rFzmaEXqNBHYNbUSECo+sWVhrKIV
         SvdhFEPbgETv2lSr1F9qz0sa/0uYv8T78kMezKdriKPoZWycDIhG/U/RClisiqDXhF2U
         BhUjhkfCXRRyo1RrfHCIwlcxIk7sURp40pkjcPcqxtJg89nGwUhCHwmP4ofdPajWffwV
         2UH84cppPK1mfJh1XJAcTHlE/AYqVfxfh+oIJtNgcZZH9EFs8jpJMHlERpnmAN/K2gTx
         0bI9u2hpgUQxEKvkHcPDtgB8MG05+xfwFiYCRvnsarIqW9Y1T/zKnVtjBr+jFzo3JM85
         vd0w==
X-Gm-Message-State: AC+VfDx9Jh8LDVAKzYabd2TArp3X8Vtl/x5aMA9IlNuZ2ylPBVTQ05eT
	v2VpnSQkF2D1Phznc8BdvkU=
X-Google-Smtp-Source: ACHHUZ7RqicAy+xU4YzAKnqkrLd8/3esr8uvdkSWjgbxlKpZtkxz1LLt+F7Lrrle6B/c/WGm4426CA==
X-Received: by 2002:a0d:c081:0:b0:565:cef7:92d2 with SMTP id b123-20020a0dc081000000b00565cef792d2mr33492414ywd.21.1687887572372;
        Tue, 27 Jun 2023 10:39:32 -0700 (PDT)
Received: from wintermute.localhost.fail ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d13-20020a81ab4d000000b0056cff012ee3sm1898763ywk.121.2023.06.27.10.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 10:39:31 -0700 (PDT)
Date: Tue, 27 Jun 2023 12:39:29 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Sebastian Reichel <sre@kernel.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Lee Jones <lee@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] power: supply: rk817: Add missing module alias
Message-ID: <ZJse0Z7OMeh+tuur@wintermute.localhost.fail>
References: <20230612143651.959646-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230612143651.959646-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_103933_830306_C35B2C94 
X-CRM114-Status: GOOD (  17.18  )
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

On Mon, Jun 12, 2023 at 04:36:52PM +0200, Nicolas Frattaroli wrote:
> Similar to the rk817 codec alias that was missing, the rk817 charger
> driver is missing a module alias as well. This absence prevents the
> driver from autoprobing on OF systems when it is built as a module.
> 
> Add the right MODULE_ALIAS to fix this.
> 

Good catch, thank you.

Reviewed-by: Chris Morgan <macromorgan@hotmail.com>

> Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
> Cc: stable@vger.kernel.org
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  drivers/power/supply/rk817_charger.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
> index 1a2143641e66..76b991e112da 100644
> --- a/drivers/power/supply/rk817_charger.c
> +++ b/drivers/power/supply/rk817_charger.c
> @@ -1211,3 +1211,4 @@ MODULE_DESCRIPTION("Battery power supply driver for RK817 PMIC");
>  MODULE_AUTHOR("Maya Matuszczyk <maccraft123mc@gmail.com>");
>  MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
>  MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:rk817-charger");
> -- 
> 2.41.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
