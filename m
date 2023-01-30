Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B326CC54EED
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 03:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uZtpK+h6WNPdvyLIYJ59WrBTmAk6ilrw9Jgby8RXXY0=; b=rW92gxQhWWc//S2Tm2e5zGaCQn
	7yIrfrocEjIXOm7FnZkXXxTcbzIEltaOP8gMjTUVU9o+UoC2EVfTId/89y6yRRfh+dYt3bCo9v1fC
	Kr2JnOFurLfHn1u/R8gx1kvN2F/ZrZbMyRfYSO1JRVBN1iMUGwpTaf5ANMwjVVCh7cElXfXFUJXWu
	WPNGZMB62OOsy3Wg3LZ8/Oci3ntEe7PANewBCFeqZxVqoPx++LrkSgnQnxK3EuiXpPrZKMrMNLgHP
	ycEHnbtkuV5Uolg+wq57QNueJPCUMARReZ2H3UpPqOjZGfioroeHMuNbgMK/udpEOdDb2KGm5NsIB
	ZyuQfb+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMKWb-002Fj5-En; Mon, 30 Jan 2023 03:08:05 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMKWZ-002Fgq-Mm
	for linux-rockchip@lists.infradead.org; Mon, 30 Jan 2023 03:08:04 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-163adf0cfc4so2249719fac.7
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 19:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=CDdsLGnbwjXMf6AAv2TZ1fTBXdcA4ZARN+cATS/kf4A=;
        b=vY7vTFz9x2gbNxpfwfYkDN6V/AbZkZhiG1QbWcJLgx+PvzL5st+K7Hjd8J6jJMM00I
         4wWONZJw8kHIKaApTfB5RrvSq9Y5B6iFsvAWJ/m5dkopLFQybmXZMJQVq4Ah4SVBKzX8
         gHwwvf/i/NOy4adxSK3HX3Qhk0KElfHKKylxaf7lAgz2w3w9HTVrMPMV0n0n/umwVlmM
         Tv0DLXTiOUpddCYbUPERocb4DX/XumjBNiNU28qyACTCirOvVkjHxnFvl3vC00UPHHO5
         OPiw4mco6+/d834icvuvx5lQWFMaZBTNmkcIzvlobE6nopwZjPnV0Zna91Wwgw79TS7K
         oBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDdsLGnbwjXMf6AAv2TZ1fTBXdcA4ZARN+cATS/kf4A=;
        b=x1BhsF69Y8eim7MddePRTibsLIG48xCPo9FrodovxkYFIhGwrHqRSbT+IbuCyRBUWz
         ICJ9dteSw7hw62twvV3wq9WPwWR8T6JJiTtoFoPMj1B04BMK5JJC4vGdNKvTRN8GbAtq
         +bObaMbB1mJjRrqczUl+ssnDC+dYp4PpohgzPaPy+L7AXDOkxNPT6FCpUP/J2rO0HDpK
         kiqaX3Rxt/syZIsCkhdDmmFX8o73NtjF8hcov6lb6/Y8Baf/CTBiK9CPremg+TQWVo7y
         BjgoFPDHbtM7AXKElk4qHPtvz80FjJLWKI3C2fKZ7D/xKW/Ao8fs4bekaCEG3tg8jlS3
         sM2A==
X-Gm-Message-State: AO0yUKWNYXjkbVV9fHdpKmNIi4mqmhvubJUpM3k3O48FpjxPRQLJVFsN
	+QrgD60ktFqk/CpMaqk9wQAtZw==
X-Google-Smtp-Source: AK7set+Hkm+FishLKI9RCflN+QwH3Spm8xjGJPBUNA9GCvyx2OXOZGFjWMzERaYlYsBo9wDtqhP1iA==
X-Received: by 2002:a05:6871:b11:b0:163:a45a:9fe1 with SMTP id fq17-20020a0568710b1100b00163a45a9fe1mr2226437oab.2.1675048073779;
        Sun, 29 Jan 2023 19:07:53 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.239])
        by smtp.gmail.com with ESMTPSA id ld24-20020a0568702b1800b00163b3472300sm837588oab.2.2023.01.29.19.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 19:07:52 -0800 (PST)
Date: Mon, 30 Jan 2023 00:07:41 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v5 1/2] media: verisilicon: Do not change context bit
 depth before validating the format
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-Id: <TC3APR.E9HSCZZ5SCPF@vanguardiasur.com.ar>
In-Reply-To: <20230127092126.318268-2-benjamin.gaignard@collabora.com>
References: <20230127092126.318268-1-benjamin.gaignard@collabora.com>
	<20230127092126.318268-2-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_190803_772055_67599857 
X-CRM114-Status: UNSURE (   9.02  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Fri, Jan 27 2023 at 10:21:25 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> It is needed to check if the proposed pixels format is valid before
> updating context bit depth and other internal states.
> Stop using ctx->bit_depth to check format depth match and return
> result to the caller.
> 
> Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---

..

>  	 */
>  	if (ctx->is_encoder)
> -		hantro_reset_raw_fmt(ctx);
> +		hantro_reset_raw_fmt(ctx, 0);


Explicit is better than implicit.

Please replace the "0" to imply default, and instead
pass HANTRO_DEFAULT_BIT_DEPTH explicitly.

Thanks!
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
