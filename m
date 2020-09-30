Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C623C4727C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 00:07:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D861206CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 00:07:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HxHlW6Ej";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XTtAuqDg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D861206CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X2E1NQJsZMZAzXR9PV4kFYAzieuENir1p1Uw80FbX5w=; b=HxHlW6Ejh6Fn/P7qfPzzYUA56
	jI+9EdRkHV6yLntyjyYFFdW7kF00RwEgHwAc63TEgt2L5DSsTVWV/Ddks+A9VF8L4iVVnnavH/xYr
	mWvTP+JD32T2OFbB2YNkli/0cwA7y3BF47pXjOsiUmP+9mtwO2g6+pAhlwoTdq1hhcWgRgPHUnJSx
	pZ0A0bBAQHHfcNydfP+5wSwlYY9t7rpzwbdvGZJSTPa+8FkY01I64nm61ZRJzyKGQfCyBdNOlweLJ
	md/GPd9B16y4OEf6tiIrKZz+uuWWN4EAbDOU+OObn59q7abHDz+DatAFHc7ez5QFDSHKpcglNV6X/
	SOUkZuQkg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNPeI-0001zB-Lx; Wed, 30 Sep 2020 00:07:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNPeF-0001yl-I7
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 00:07:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so7357495wrt.3
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 17:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=ZwPwQM4NSxM/TuLBw+jC6r1tTzxoLRnyinYg/w7w9/o=;
 b=XTtAuqDgDrcrfhSnwj1k69u7Y4U5Cp7n2o1Q77Z9b5OxCvLN+Q/zpn+HXrSH4C5b+W
 xSnBft9ggPGFRlC3eVPg/Rgq5vIXOTh+0LiAfYmy/ovu5dHPb1cFxm1BhoJv0ApmvJK8
 eCqpbtRCz/Z/0Co74oBD4jQB5XoWCH0NkVhGBibbVa25Vx+JAKNKIzHPw53NMb8Ht8h6
 qtCuX768oI/EzpOBDeI2Korz1qO0exHvNVHjndmYbq7F4XHqVhG8jQ2T0kaPixiL5/RO
 bQhJJYfyUIvPhPqz8RDk4e8mSAHNr/LemNSjJgbS/S0XhDb7b/Aj1ph0SVwiN5TXR9sP
 K3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=ZwPwQM4NSxM/TuLBw+jC6r1tTzxoLRnyinYg/w7w9/o=;
 b=cdNbvITYHbZqyKinMWut4MKptIV/rE/AR+GUdBab5CJ5FNRBvzp9XPIvYRG/woWrne
 EBCoQ41R0uys+v/B0vNs434oHigdIbcD8fKDBqvYuoMl/6hFuOIfmb2lAsnAzp0EEsfa
 LRbVbs8PHZGDzwnqcFLAsHRMsrh8SXK3VwaWUhQfWGQUEgNbAd9HCqF4dlEpPXc2TkGz
 GbGVESmaYC7tv7l3wYNhcCZTkiNi/eP3P28T2rQBltsOkhCRu5JRbv7EoEe0GBLyKxq8
 nuWTilvCxA1l2pJFOWN+e4D+yX2wKMvP1H7PDft0Leup2P9atmKk61CkQDuuUnPUpOxY
 HjcA==
X-Gm-Message-State: AOAM530GjCqiWkKNEadJNMr4siNmgv5fnQkoK+4NlZQeULI7W8+L2S1t
 o6n7suU6nRTh8wl+YD8Dcx4=
X-Google-Smtp-Source: ABdhPJw+6tL6aGUe8+7MB2vdliIkJca//daGL17+K0qEsUupW/kQlhyhuFzP5/TB3TIAKC7TSF2szA==
X-Received: by 2002:a5d:4645:: with SMTP id j5mr6321202wrs.388.1601424424909; 
 Tue, 29 Sep 2020 17:07:04 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id e1sm63171wrp.49.2020.09.29.17.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 17:07:04 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Coly Li <colyli@suse.de>
Subject: Re: [BUG]
 =?iso-8859-1?Q?discard=5Fgranularity_is_0_on_rk3399-gru-kevin?=
Date: Wed, 30 Sep 2020 02:07:02 +0200
MIME-Version: 1.0
Message-ID: <8f461da7-1a49-4288-8b06-020ddaa3dcc6@gmail.com>
In-Reply-To: <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
References: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
 <32986577-b2c2-98ac-1a30-28790414b25d@suse.de>
 <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_200707_642000_55BFA256 
X-CRM114-Status: GOOD (  24.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, adrian.hunter@intel.com,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 cjb@laptop.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Monday, September 28, 2020 7:02:00 AM CEST, Coly Li wrote:
> On 2020/9/28 11:15, Coly Li wrote:
>> On 2020/9/28 04:29, Vicente Bergas wrote:
>>> Hi,
>>> since recently the rk3399-gru-kevin is reporting the trace below.
>>> The issue has been uncovered by
>>>  b35fd7422c2f8e04496f5a770bd4e1a205414b3f
>>>  block: check queue's limits.discard_granularity in ...
>> 
>> Hi Vicente,
>> 
>> Thanks for the information. It seems the device with f2fs declares to
>> support DISCARD but don't initialize discard_granularity for its queue.
>> 
>> Can I know which block driver is under f2fs ?

Hi Coly, yes, i confirm it is the mmc driver.
Regards,
  Vicente.

> Maybe it is the mmc driver. A zero value discard_granularity is from the
> following commit:
>
> commit e056a1b5b67b4e4bfad00bf143ab14f634777705
> Author: Adrian Hunter <adrian.hunter@intel.com>
> Date:   Tue Jun 28 17:16:02 2011 +0300
>
>     mmc: queue: let host controllers specify maximum discard timeout
>
>     Some host controllers will not operate without a hardware
>     timeout that is limited in value.  However large discards
>     require large timeouts, so there needs to be a way to
>     specify the maximum discard size.
>
>     A host controller driver may now specify the maximum discard
>     timeout possible so that max_discard_sectors can be calculated.
>
>     However, for eMMC when the High Capacity Erase Group Size
>     is not in use, the timeout calculation depends on clock
>     rate which may change.  For that case Preferred Erase Size
>     is used instead.
>
>     Signed-off-by: Adrian Hunter <adrian.hunter@intel.com>
>     Signed-off-by: Chris Ball <cjb@laptop.org>
>
>
> Hi Adrian and Chris,
>
> I am not familiar with mmc driver, therefore I won't provide a quick fix
> like this (which might probably wrong),
> --- a/drivers/mmc/core/queue.c
> +++ b/drivers/mmc/core/queue.c
> @@ -190,7 +190,7 @@ static void mmc_queue_setup_discard(struct
> request_queue *q,
>         q->limits.discard_granularity = card->pref_erase << 9;
>         /* granularity must not be greater than max. discard */
>         if (card->pref_erase > max_discard)
> -               q->limits.discard_granularity = 0;
> +               q->limits.discard_granularity = SECTOR_SIZE;
>         if (mmc_can_secure_erase_trim(card))
>                 blk_queue_flag_set(QUEUE_FLAG_SECERASE, q);
>  }
>
>
> It is improper for a device driver to declare to support DISCARD but set
> queue's discard_granularity as 0.
>
> Could you please to take a look for mmc_queue_setup_discard() ?
>
> Thanks in advance.
>
> Coly Li
>
>
>>  ...
>
>
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
