Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CC6C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 03:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7mXh2KDCl/43CSfSwKx9eD/RQBaS/I4Cra7a1px7Qk=; b=AYk1hBp7zmJQSC
	3xeAKVu3UBL+kvsLCzPPOb6rOkWgdXjpiHHbfssS9k3wjF6DRb1H3gjuA3YqyGrVO6EPBaMZ86ylw
	BYY1qD70MOYoLmA4ycF6A/l81AqNwiGx/I3F2Dp0x23iliIhJ45PuCG4OJQfPmWtxf8QgUlQOuf+a
	y1A0mTJlsBAda5bb/Iab9VAkl6hwQA9pcTMNCXhzQR1zJqSAviG8Gk9z+i7SA88V7vOovDgn1nA/i
	xhZisNxrPx59ljhD+ZKnPLwaIVcIQ0YAEprGzj++eZDhgjH7/BfNNr7GjlyLdopTanisfPRU7rwKH
	bteACEVexNcrFhlRydXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtdI-00AdsE-27;
	Tue, 12 Dec 2023 03:40:32 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtdE-00AdqE-1f
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Dec 2023 03:40:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54cc60f3613so6707114a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Dec 2023 19:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702352424; x=1702957224; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1QeTvXs/spJN+MKNWgyjyZ+WcgnVS3XBxnAHa/Q8K5Q=;
        b=pcVOUZW31Po1O3+r+2glayjXbg+WsZEh0AiFxI0ToPfknrSePmT4d1dFAwc9myATMp
         gKulf1YPCEsl0ct4eCG8740foHHSgQClBgnVusrIMu+a6MzKChjt6Th/1CDmlrvVbiPm
         MZ298rC80rEm08jwowT+9k7yNkWKS/7f2vxXmlnx5BLuLKDSAo3gLkC051ti78JmMFpx
         GvlgYv5wEZmY6J+Wz6VxyIQwwRCRBSMvFEkdWTs7SSauqqbnpQTlFufNkUwfKFDCNFFT
         WSopz9m6zP6mnD28BaMTZ4QhfpaBhJw0HQgKL0emAu7kTqrQAKwldl4aliKdj7jxchsr
         ttDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702352424; x=1702957224;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1QeTvXs/spJN+MKNWgyjyZ+WcgnVS3XBxnAHa/Q8K5Q=;
        b=EFVZx8We0fsurF02QJw9LziCbQcrwnTO2jv105nkFBS1uPw9Bvq+w1vT9s+E5iU9eC
         8cf7JsMe5YVyzR58RY8+LDSTnHVpKDEdpVSBpjWwBYjMWmGhQ668oMT6g+40+pxatOSo
         Spn1Kn8B3MlLYiIGHtYhHiWR5xQdG5XamUF7fGc6U5O2K+IFQvrP8JvAerRdVYWN11VF
         6K4XM0USWOAhhHFRqSaOdKUHXKlZg7H+iEBfdJaDImrazXtoP2/UnI3ODyePSQBKFFJS
         2p7W725rhX/X3RnlJwQ29lL1jIy++NJ1rodKW/VYRUQEYNYXE27db9ROf8eiHniXlqCN
         JaKg==
X-Gm-Message-State: AOJu0YxD17OrGN7c9960g3qk0YXvfD4j6GhswIRryA5sOvQUeibia1Ny
	S0ZIV9+r0x5gMf7/Ki2xEZV80CgcV7QAH+xaQcg=
X-Google-Smtp-Source: AGHT+IHqC3V6IeSxKMs1C96jTf0qQIRK+0T0n3uSY/6VaxnPBs5Z/6gKg6yhQdvLSvYe0RiH1uva6A==
X-Received: by 2002:a17:907:961f:b0:a1d:530c:af06 with SMTP id gb31-20020a170907961f00b00a1d530caf06mr3440201ejc.65.1702352424071;
        Mon, 11 Dec 2023 19:40:24 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.75])
        by smtp.gmail.com with ESMTPSA id kw20-20020a170907771400b00a1dc4307ed5sm5566217ejc.195.2023.12.11.19.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 19:40:23 -0800 (PST)
Message-ID: <611d17e0-c965-4218-9152-5bd93f92ed45@linaro.org>
Date: Tue, 12 Dec 2023 03:40:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] mtd: rawnand: rockchip: Rename a structure
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <michael@walle.cc>,
 linux-mtd@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel test robot <lkp@intel.com>
References: <20231211150704.109138-1-miquel.raynal@bootlin.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20231211150704.109138-1-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_194028_610705_E7CFE76A 
X-CRM114-Status: GOOD (  16.66  )
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



On 12/11/23 15:07, Miquel Raynal wrote:
> Robots are unhappy with the ecc_cnt_status structure because the kernel
> doc says it should be called rk_ecc_cnt_status. In general, it is
> considered a better practice to prefix all symbols in a file with the
> same prexif, and thus it seems more relevant to rename the structure
> rather than changing the kernel doc header.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202312102130.geZ4dqyN-lkp@intel.com/
> Fixes: 058e0e847d54 ("mtd: rawnand: rockchip: NFC driver for RK3308, RK2928 and others")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  drivers/mtd/nand/raw/rockchip-nand-controller.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
> index 596cf9a78274..ab1a9e8687e0 100644
> --- a/drivers/mtd/nand/raw/rockchip-nand-controller.c
> +++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
> @@ -98,7 +98,7 @@ enum nfc_type {
>   * @high: ECC count high bit index at register.
>   * @high_mask: mask bit
>   */
> -struct ecc_cnt_status {
> +struct rk_ecc_cnt_status {
>  	u8 err_flag_bit;
>  	u8 low;
>  	u8 low_mask;
> @@ -144,8 +144,8 @@ struct nfc_cfg {
>  	u32 int_st_off;
>  	u32 oob0_off;
>  	u32 oob1_off;
> -	struct ecc_cnt_status ecc0;
> -	struct ecc_cnt_status ecc1;
> +	struct rk_ecc_cnt_status ecc0;
> +	struct rk_ecc_cnt_status ecc1;
>  };
>  
>  struct rk_nfc_nand_chip {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
