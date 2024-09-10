Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A787CECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 09:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qH2on4E/ebiUO6p+dxr7qmcO8a8clSP8SVOhka6IEV4=; b=cNZ3qtutSirgQv
	pWOQ/FVyYiuGW79rKbLOzkZF+PofG5eYhCIpPfku4DbnR4G9Z5nvlp51pW4XUCAxq3ll7cFDTDhnZ
	XULeOhTuDAY73CadwJcfMHZNHFt//YFIJN8N5I83uUhNBKyM9aq1+XEBo7U9X+SOulJtsoBWKFnKO
	dqBdZd8ASR+3I15EWerSZFNzZCeSpdZBbJcl/iXVbnzjm1CgqrhUNi3Eaubcc/R35pL7jp1t57Krz
	VNHUXukAGpla0D+q5Sgj815ATyOfeVGI+YDN57iH4B/v42uyRLWlRPuUk1mWvUP2fyOjVNFpexeZ+
	Rsf10i7ygQfbF56P52Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snxNs-000000053yb-0P4G;
	Tue, 10 Sep 2024 09:42:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snxNp-000000053ts-0rLD
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 09:42:02 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-374c1e5fe79so3481829f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Sep 2024 02:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725961319; x=1726566119; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y/oY6ev45wkHlPwZhqCuB2CkZ0X5S0m6QlbT3d2XbjQ=;
        b=hXC0aLMpqWeL1H5VxP4AM8q4m6RE7WRf4m+Ur1SvIt34PakebPagv926LCA7pcBiov
         +ZchZ6x7fu5DjNkUsKSpVYO49KYqCPPvoNvl/XElFkBbSAlP3pL/aQgb9QrwxlrFB+2k
         2z84qdAkqtwfUpvQXKal+uepnO89Bw6BSpo8GvORHMJl6qPuo82KvmFXzMjo8zOgPKSq
         99jwrd8TyjlFhTINrjmHXy4EEgjXxT1x9MQc+EzNDUu4EyOalqDA5cWbyPt/2qITnqiB
         cOh4/brW0AGvx3LAK772Vv36r0U1lHWR/OkC99nrupnfZcMaf5Akf4JvOPlR3SyoSYQv
         wz9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725961319; x=1726566119;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y/oY6ev45wkHlPwZhqCuB2CkZ0X5S0m6QlbT3d2XbjQ=;
        b=OhoxZ550WD6FOA25IR4tYzMNoeAe0hN/ZEkbAFAHTOicR+G86q/mgjK+O/Uuxzo19J
         AfYLyEcnUOE86rWRRuLtjp7EWa+2BZdAhPzlrX/lyhWA7iLYDwHM4Kw7XS9dWZ+RfJN7
         ZS9qWMi0UbawDyetjFcOeg6OBN8HlWFiTkATvFWt30QKptOoSV2mNj1XlJt2gXIeYvvT
         c79D8BEbMu9ApnS8iP1wIzLQKJB4zf0OMlMo8QDdp5YzNtIRQmNMfipvayUTMqtNMm7O
         rbolfgdLBRzdf/OvWOg9MoPteP/EJSTfxh5cnBRMbF6nn181u7lkf8ilCNahA4Kz9pov
         Hz5A==
X-Forwarded-Encrypted: i=1; AJvYcCXPF27SmAfrmj9ViVhoZVjeUwu/Pg+Xv7GsFC6iqTrLP1Qg0xtU3w7342JR5baMASvbVAcH0JQR680gNQ/KRg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdlIWzPLd3lT/556UjzN19SCN3GasRfwRi6QSmyo04TZFmBMNO
	Sosa96FEf1YVWm/xXQ6TDVqbAmatHoKhitCak3QLv85f3cEPv+ahinwGKPloIKk=
X-Google-Smtp-Source: AGHT+IGkWtwB/f9V5AkytZZrRUhRw8yTBucrHpQCVigseOJkrWFmkVG2BpPk6J6yzN3QltddzmfKXg==
X-Received: by 2002:adf:eb92:0:b0:374:c42f:bac1 with SMTP id ffacd0b85a97d-378895c28camr7531799f8f.8.1725961318785;
        Tue, 10 Sep 2024 02:41:58 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb449a1sm104805385e9.27.2024.09.10.02.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 02:41:57 -0700 (PDT)
Date: Tue, 10 Sep 2024 12:41:54 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: Re: [PATCH v6 08/11] media: rkvdec: Add image format concept
Message-ID: <8d8fe408-ad2c-4198-89e2-46ce973caa6c@stanley.mountain>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
 <20240909192522.1076704-9-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909192522.1076704-9-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_024201_278711_DB434C72 
X-CRM114-Status: UNSURE (   9.53  )
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

On Mon, Sep 09, 2024 at 07:25:06PM +0000, Jonas Karlman wrote:
> Add an enum rkvdec_image_fmt used to signal an image format, e.g.
> 4:2:0 8-bit, 4:2:0 10-bit or any.
> 
> Tag each supported CAPUTRE format with an image format and use this tag
> to filter out unsupported CAPTURE formats.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
> v6:
> - Change to use fmt_idx instead of j++ tucked inside a condition (Dan)

Thanks!

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
