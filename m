Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D17606A331
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 19:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qpVQAeMX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=wbqJePTV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z6T1rpStyanIodVbqFfW7CbPmCwnjSs+sLi/V5HlRF0=; b=qpVQAeMXoii2SiEo6YF+bafeYv
	SdD87pc6gt+uTXm9UojEmxVt35GRUp7eDDeHxAt0DviHUnt3y4n4H78pR2JpuEMBzaTD+EwiQPXIo
	lYecUIs/e7N4gi0kDMsOvbaNHFapQrCihTvgII8oTJpy1gclBq5CgKFGH+kLrdK91bc5s9dLIvi8v
	Lk0D8nnrk49H8f5L/ZaX54RrwDQ88hmu/WsBj/+cn96CF83ZOzf5Amya1RrmSFL8SbucuF8wvzwJO
	o34P5YeaHP0pkLV9oN2nYdS0ZWxdEPezbRq3meEdzSTDWZ27D98pVB35hJLrhP7H2vDfJoyoq4fYp
	EmLHeTog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQVRQ-00000001aZB-0CvA;
	Mon, 09 Nov 2026 19:54:08 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQVRN-00000001aYF-0op3
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 19:54:06 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3b094fb376cso96944a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 11:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794254044; x=1794858844; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LvIr1VbcR88AmSo6q8l/U1RONWTkl4N/HGRhgSELxqo=;
        b=wbqJePTV96bxrZnnkS7kPNgD81BwQj9lVa+sdjtbbrbrYoKjzhox8Q6kFmhyP/drwj
         Ni2mtD/pBiE5O4bO08P6Xp3DDJXN7EziSvxY7uoC1zq2VcU2JH5K6ZXWIvDqx38bNYMq
         muE7GIdVtVaUMtIKlP0udIC1zKEv8PBM/7D4RsOgDzAXdmwJFGymBxslxdVzSD3yfbX+
         D4+C0wFjgGvXZrHDccfs9/i1dgGbFbsW9KeXB7YdRS0p3LzYFyRuTwsn/oZmjDsoxIwB
         LXa0fM148GBN/h3+jCR45lWW33aO8CsGYLmOHG97gqFjvcr+kYkofjh7YvRGD0RLngPl
         eoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794254044; x=1794858844;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LvIr1VbcR88AmSo6q8l/U1RONWTkl4N/HGRhgSELxqo=;
        b=nkzeiT1XogGqUSNIDZ8pXvmLS0lLOrYFCH4G/LDob2IaiyUB26jeMp/3tsKClKxniM
         CgrE+snp0R1Ye+QQ1l8gjELvU8503AVQ3oU67P0JDYFEzMnAZO6T/9HldXzehUGSAQj9
         Lfa26/eitZlMnOCXslgtjBQ/Bjsr/QP9AKw75wkpaH4ybZJ4mif0p18bAsqldjb0wEjj
         UKtaYDCbP2lco2PooLBVTHEiupbp7Ii5Tec2QrSXUur0jLSjfRgDCFV7uJG8agUhPqrq
         B2IZMbQcgmqMiA15CTeX83iHv4ef8325S/jnXxjuWVy0kErGoFQRKfUoQ0NWwQTdHyzS
         Tpzw==
X-Forwarded-Encrypted: i=1; AL+hErHKYHISdnbYqeXthliwyud5f7akiLgXiqVz1O+2M117IuyjYflIJV8Pvpg7G5pVXG7YbdRTxlbtQQZRwAZMNg==@lists.infradead.org
X-Gm-Message-State: APuU4Z82VMK9Ctgs35YcCbWrU/mOts6TGuTUPTc7gYd1FJo2b6XMHkSB
	wFiTqzrsvRHhoI1lZ3+PF2kVoJ9D+7jOrVu4gq3CqjS6+US/RF7LJMGf
X-Gm-Gg: AYBFou0orLbg/HwDFkjAlfM6vQIC5DqganUOUsOBf4zJt7QdoQxKpioWgO3Tn2laE2t
	2Curanwub6d3zvhIpumi4AJclbAizbnVWjMdtUY/fTxPBySCm05f86JASvtqhaJnl0Tm8222iDW
	B2IVAFe/7byzLMk878u5I1xvm7LRegustBVG8vlOnrKDnBaqylvaaE0Khbcq/63yQtInfM67TR7
	fLebMvgGGry8/VqrtIVsSxdEAi9k4HnySPbpAAiQD4PPRfaMPg+CqOskOw8ISnck8ncez2zgrOC
	pkskeauh8RPvJxxnlWpcDbvb/6FPj2SiEBHnszEhhznWEYhex9/SwxeNZsYaxL9pzXaB3qIQS02
	cWia1j6y75DMg6A6xqhRdKz25t2KEMXtDlWaEQ91Hx+Z2MjMf9WvbQdxcbq/yjkrbrCOiLbIiQi
	WT7CqNMYjXeFgoPEpSOHa0pIC5Md4PYJpdJr0KpVdldziYpcRJT+EXYUPH/GqlJcIhZ9skof7E9
	WECWKhggN1ofwLYh0FN8cqr+ZvA8scUljhonNtf+uukvOHoeVqrrxIvcgX9iWHA8RKrFrVvVHVM
	FilLgMJX3NGLPSHM5wGGS49PRKqzB2RuWEYxNMD/HMyxpAOdwHXq0AU0pQ==
X-Received: by 2002:a17:90b:3c09:b0:3ac:73c7:9c07 with SMTP id 98e67ed59e1d1-3b166add45fmr1297126a91.0.1794254043528;
        Mon, 09 Nov 2026 11:54:03 -0800 (PST)
Received: from FAIZEL-KB ([2001:569:52f5:4b00:4b92:5a54:3d6f:1e5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1690f4733sm134974a91.3.2026.11.09.11.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 11:54:02 -0800 (PST)
Date: Mon, 9 Nov 2026 12:54:00 -0700
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, libcamera-devel@lists.libcamera.org, 
	Robert Mader <robert.mader@collabora.com>
Subject: Re: [PATCH 1/2] media: rockchip: rkcif: Filter enumerated formats by
 media bus code
Message-ID: <7lkixkkeumy7l32usxweltclro5tqhgiio6xjyiyx45jnsq3lz@dx43ee4u6ffq>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
 <20261105232310.385463-2-faizel.kb@gmail.com>
 <avG782VCMTWTNax0@mdjait-mobl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <avG782VCMTWTNax0@mdjait-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_115405_233351_EEA3A49C 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Mehdi,

On Mon, Nov 09, 2026 at 01:27:34PM +0100, Mehdi Djait wrote:

>> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
>> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
>> @@ -395,13 +395,20 @@ static int rkcif_stream_enum_formats(struct file *file, void *priv,
>>  				     struct v4l2_fmtdesc *f)
>>  {
>>  	struct rkcif_stream *stream = video_drvdata(file);
>> +	unsigned int i, n = 0;
>>
>> -	if (f->index >= stream->out_fmts_num)
>> -		return -EINVAL;
>> +	for (i = 0; i < stream->out_fmts_num; i++) {
>> +		if (f->mbus_code &&
>> +		    stream->out_fmts[i].mbus_code != f->mbus_code)
>
>what about dvp capture. The dvp_out_fmts[] does not have the mbus_code
>set.
>

Thanks for the review. Yes, the DVP case is missing. How about only   
filtering the formats that have a media bus code, so DVP behaves as
before (see the change).

        const struct rkcif_output_fmt *fmt = &stream->out_fmts[i];

        if (f->mbus_code && fmt->mbus_code &&
            fmt->mbus_code != f->mbus_code)
                continue;

I don't have DVP hardware to test with. I can submit a v2 if that's ok.

Regards,
Faizel



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
