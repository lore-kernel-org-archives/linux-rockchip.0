Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B115EE499D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 12:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hO4Zgt7iyqvXTGYf08Cb2410MmP6RvkItXiTdPVkbvY=; b=Pv6OwNFyjgqVFx
	deEH3GdELKjSL2rgwbFkyPyM+nw6YqgHQC+mkN2hV6+H3PGAxVvCRboNC1pWRNefAYOCCIrZHmcN1
	Tc/h67iH4neayndTRI1+fcwoYcR6xFh2tGa5H2C6MxAruFlXOfypack2fwB5/kDou7qnvucUO8irO
	Z6xc9KzZREfS0QqV2zn5IMIIwqO7jNmKbByTdCTmW+zQ0MrrSd0iOyLu4/fBbBleG1pISsOPliWz2
	lVfxFIaZzQtRT3okl8rMLYP8bbNSI6JWv2WCCUJG00CL32KVFCrb3humQi6rpTFDXmTBw5XamqALZ
	Yk7iIXr9/3RNFPqGOceg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soMRg-00000009T86-1iIr;
	Wed, 11 Sep 2024 12:27:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soMLA-00000009S1u-229Q
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 12:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726057253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n3lZx7MOn0cvUlutwjGz/taR5dti/49PxN0KWJf8nvQ=;
	b=htt+uc7FawBknmj+/gAVNMAaOSOMhA65rcwT+vA1p+iYQx+z+Gch/R1+20hzjPkrTyo2mL
	cESKq6w3H9WafGaFuOYfGdagRI1rIt7ZQVBDP4ATsLGpwhILR9TE6hScqaC4e1wQB3TAEf
	HcwNwNoh4rPLM+wEfJPaiN/R3sNTshI=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-83M-Uzf1NUOTdu9Tv2W2gA-1; Wed, 11 Sep 2024 08:20:52 -0400
X-MC-Unique: 83M-Uzf1NUOTdu9Tv2W2gA-1
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a870f3a65a0so484399966b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 05:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726057251; x=1726662051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n3lZx7MOn0cvUlutwjGz/taR5dti/49PxN0KWJf8nvQ=;
        b=fbPzy1r1uRUSUAeg95MxMeZKf+Q1ZQF+CJ5i+YdESTT/hmueYbx9Kh0dYu422F73wh
         cBCguBM68x8ak4jXYdKnP4I11XpLbsHDNK5Uh//6YctpoOZqy7UVl8ivsA7mU8SE8U78
         WCwHnwy6wradsEg2zeq92VG/HN7qAlCTY2U+W1i9TVuYBi8ajthWReu1/pSteTghQ4qw
         gA/u8KL78eH+BOLWWXErNE8AhMOBxbTEOtnXVAcuXXzSfNXiB20iD18ddq/YYdPAJxux
         Xy6HZMko+ugeBK5g8cR6NSauchPnASs1/9mpeb81hdwO74tlVpo9RHKllARhff7SuKGQ
         T1+A==
X-Forwarded-Encrypted: i=1; AJvYcCVMg+5wzTpVyVQGjv+d4IakR9Wz4VT6RVBx1CjvsEx/ES+/mjoLYlcPV/XnFihTLN+uBCsaTjXjp6kHwwJuMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymyDikKHVSlWGze51LwX/YIpvS3dB43iLowwC29NxTzBOWUn7j
	D1tHEaSwaORoTjTqgS28tZUV8N0YyPl1fcRNtQ3TX0izs+DWMTGzYkyl+ndtN5AhmjDzGnIP2nA
	XHEV+qiHwGHLcjdZr7UTtTnaH5wzKEEAwQCIUPm9IF2QYtPd1JkVSIi7+9xh6zCzUiOWLPw==
X-Received: by 2002:a17:907:c27:b0:a7a:9a78:4b5a with SMTP id a640c23a62f3a-a8ffad9da29mr446885466b.52.1726057250865;
        Wed, 11 Sep 2024 05:20:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEse7/q3fks/g38TDGilxuqdMvvKGvYQPRWSe7VE2frNIQ+csBboiwxRmv/9sL6IOGSSY5V2w==
X-Received: by 2002:a17:907:c27:b0:a7a:9a78:4b5a with SMTP id a640c23a62f3a-a8ffad9da29mr446880566b.52.1726057250314;
        Wed, 11 Sep 2024 05:20:50 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d259c76e2sm605309766b.79.2024.09.11.05.20.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 05:20:49 -0700 (PDT)
Message-ID: <1d0478b2-efdf-4c1f-bf2c-a5cb2214168c@redhat.com>
Date: Wed, 11 Sep 2024 14:20:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH -next v2] platform/olpc: Remove redundant null pointer
 checks in olpc_ec_setup_debugfs()
To: Li Zetao <lizetao1@huawei.com>, mchehab@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, wens@csie.org,
 jernej.skrabec@gmail.com, samuel@sholland.org, heiko@sntech.de,
 yisen.zhuang@huawei.com, salil.mehta@huawei.com, hauke@hauke-m.de,
 alexandre.torgue@foss.st.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, wellslutw@gmail.com, radhey.shyam.pandey@amd.com,
 michal.simek@amd.com, ilpo.jarvinen@linux.intel.com, ruanjinjie@huawei.com,
 hverkuil-cisco@xs4all.nl, u.kleine-koenig@pengutronix.de,
 jacky_chou@aspeedtech.com, jacob.e.keller@intel.com
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, platform-driver-x86@vger.kernel.org
References: <20240907031009.3591057-1-lizetao1@huawei.com>
 <20240907031009.3591057-2-lizetao1@huawei.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240907031009.3591057-2-lizetao1@huawei.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_052056_641630_878CCF1A 
X-CRM114-Status: GOOD (  15.96  )
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

Hi,

On 9/7/24 5:09 AM, Li Zetao wrote:
> Since the debugfs_create_dir() never returns a null pointer, checking
> the return value for a null pointer is redundant. Since
> debugfs_create_file() can deal with a ERR_PTR() style pointer, drop
> the check.
> 
> Signed-off-by: Li Zetao <lizetao1@huawei.com>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans




> ---
> v1 -> v2:
> v1:
> https://lore.kernel.org/all/20240903143714.2004947-1-lizetao1@huawei.com/
> 
>  drivers/platform/olpc/olpc-ec.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/platform/olpc/olpc-ec.c b/drivers/platform/olpc/olpc-ec.c
> index 921520475ff6..48e9861bb571 100644
> --- a/drivers/platform/olpc/olpc-ec.c
> +++ b/drivers/platform/olpc/olpc-ec.c
> @@ -332,9 +332,6 @@ static struct dentry *olpc_ec_setup_debugfs(void)
>  	struct dentry *dbgfs_dir;
>  
>  	dbgfs_dir = debugfs_create_dir("olpc-ec", NULL);
> -	if (IS_ERR_OR_NULL(dbgfs_dir))
> -		return NULL;
> -
>  	debugfs_create_file("cmd", 0600, dbgfs_dir, NULL, &ec_dbgfs_ops);
>  
>  	return dbgfs_dir;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
