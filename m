Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B64606A329
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 14:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j4KG/k40;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xEKK8D1g
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DQfC+ZjQmAW4UGA6PzCXkEef/mSl3eAoahX/vCjM0Ik=; b=j4KG/k400E4ao2tedeSoCpdd+m
	kTUCHjggxJzDlIuWB64y+mlI9mHu3zRnO+xG4Mt2LOoCbNqM5CYDLNg7GQjLiOx19lOgt9a//XmQW
	hcw2/wiQ4kPXN1ZIGaZVjImyqYcAgh/ohb4YBFwlKficQwfIvLsj2xSiGlfvSEO0eMBaDwPztedCa
	1SpG+WsqtFht0ipu4wh4MJcPWSKZDrlRq+ebd/5obKaEBT1IkQW+6ohUc2fThC63WojMsGXkxH4Tc
	bKJQMPGH4FMo87rXuDryo4KgVTtBSazZ+HBnQewmPzSpIzTHudx7Lrz9PXVK7dfFtcx+xnFLHTtf5
	2UpKctUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSEYk-0000000GFN2-0uCx;
	Sat, 14 Nov 2026 14:16:50 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSEYg-0000000GFMh-3e5g
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 14:16:48 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3b18717a193so1063554a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 06:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794665806; x=1795270606; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Rsh3PSgy5EeLZfkj2Ume/HSuLoP9g7O08oXc9D5ZzEE=;
        b=xEKK8D1gepE+ExulfuH6bAvAKj/cNSMdnNklVtv6bDzUPd3ppiRmOv6FDa/z4dJNRy
         L4CB4mdPDbGgjPzzvNlny7UndxnzeWJqKUjaPf6XbC9q6fd0yQJa5jM3kONOAVFluhVZ
         SpPamPrh8g8lBvgZRFeQB7PRuRxzdlsoRUKkjx+UDtX2Wfhpk4aqJmXzVFfbQrlWSEe3
         +diDyty2xD0F2W4/AFF8hzRXJ9EPowwA/2PwwXXPAqQ/+pBjoRXXNqmktGtHFjgaIbvo
         mgylGq819/djzQqILJugyW59MKpRn3anTOCMm1oenhltLSvhnFIKJXPyW+yebxV1dItw
         besw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794665806; x=1795270606;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Rsh3PSgy5EeLZfkj2Ume/HSuLoP9g7O08oXc9D5ZzEE=;
        b=Muaux6o3qMHyCb85SYjFviYHe2sV0Cco3d+WMTO1qBNzaneNpY09GJixySe0f3Qz6w
         N2Ytc88oYipg3KkJUHw8n5ImdlARCCwsD0QePtA6O1VALoK+y9pntHE7XdOfpuDv2kFu
         dJK2f/ZS276TLiEHKFPFrg+0SQV3qRtqxlvS+DHaiMd7aXcUOx1WzCxjj6e6RR+Kg589
         F798olgsuk2Uc06YXmZQyhixjMptI/8bFlHapX/4bHwQtxx/NoLAuI6E75hrXKCH8Uu+
         le6ac2Ya601dNu62oZ25hZTqL4hpClAw7MqD2CAaemG3h2BcsymyJJemaEbwB4L96Nsb
         S+cQ==
X-Forwarded-Encrypted: i=1; AL+hErF9bCLfSs6ISQIKs25bm5/xE6b0DQDP1DBqbD4/9wsEuR2YAxlBTa5AH0EY33mC3B1Eii2y+0Miw7+zL0zvMQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9vBG2ldcTCO9p3LMb13wUp0jKQfmpGRoLzn/cM/oxlbVGBP5hN
	PqVGHxrTwiMZueRaSP+6yT15Mej7hhbGOBWgbohoCGw2caxP0H2E4qx8
X-Gm-Gg: AYBFou0Qr5imRPwP4mwhF4qQB4MDjTLZgr0uWSoV/ikLEhHedUcHIk19PC1GL4g8mau
	fxlxI2a1rMgjPokLGUSpveI/QGUp5DdMGL87AyeEnqrYNxiMHvPqssbl5SG1JolX+kgKW1NG1jH
	dmVlFAbwepykzZA413IEoEp1TeNgIXzMXW7AR2S7bEqxPwWSpEHMz2SfYt/YKbEGK7m0/95Ru8q
	ff3gyaynOZPgFlKT/aKcKYIRsgQV/inXSBEnl+Dv0eTDdJWZo/6g7Vfm8SOLo0AJ4yCGJn+0bVr
	WHpCF2Tlx5VSZjNnd9oawnp+8gGm/hfQevB2dNaIJmln2DaTG0+kbmaUARnWGDNvFQPXKwO7JvU
	DRwOcGfuaxoUYjuHvJUgPx4ts8oeDwZXHmNmyqsu2OPv6wEhSyaMjLtEp9ZCPxpDYSUKBxL6oi4
	+1j6MwsakK2tLq4OvK7n0Y1unffEGwD41apR7cEVExzsUsOE22VPmtfkR2US1lL+aVi3t4Rp3eu
	Et7Eo76p3PPVpBLb2KhbtY96BzZ9og9EbFyOTZwJyu0V9zByoUekXARjwBo4mF9uA0eMmu7Lhpz
	iLLLSSZ7ZhUW2li59xOYOo1pEYaeSbDRBc4rwfWqfUEM72dvafbKOz5gP4J9/mJOtBo=
X-Received: by 2002:a17:90b:440b:b0:3ac:adce:60a8 with SMTP id 98e67ed59e1d1-3b1b07ef8bbmr5367145a91.5.1794665805884;
        Sat, 14 Nov 2026 06:16:45 -0800 (PST)
Received: from [192.168.35.40] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1b245f0c3sm4377768a91.0.2026.11.14.06.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2026 06:16:45 -0800 (PST)
Message-ID: <94a65d65-e81f-4942-b119-51b71e8eabb4@gmail.com>
Date: Sat, 14 Nov 2026 23:16:41 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] PM / devfreq: governor_userspace: Guard against NULL
 governor_data during switch
Content-Language: ko
To: Finley Xiao <finley.xiao@rock-chips.com>, heiko@sntech.de,
 linux-pm@vger.kernel.org
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kant@allwinnertech.com,
 kyungmin.park@samsung.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, tony.xie@rock-chips.com,
 huangtao@rock-chips.com, stable@vger.kernel.org
References: <20261022022109.642339-1-finley.xiao@rock-chips.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20261022022109.642339-1-finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_061646_968896_39D7E5F4 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 10/22/2026 11:21 AM, Finley Xiao wrote:
> The userspace governor is the only one that uses devfreq->governor_data,
> allocated in its DEVFREQ_GOV_START handler (userspace_init()) and freed
> in its DEVFREQ_GOV_STOP handler (userspace_exit()).
> 
> When switching governors via sysfs (governor_store in devfreq.c), the
> sequence is:
> 
> STOP(old) -> df->governor = userspace -> START(userspace) -> userspace_init
> 
> Between the df->governor assignment and userspace_init() completing,
> governor_data is still NULL (the previous governor never touched it,
> and the core does not clear or pre-allocate it). During that window,
> asynchronous paths that call update_devfreq() outside of the driver's
> control -- the OPP notifier (devfreq.c:686) and the pm_qos notifier
> (devfreq.c:707) -- run devfreq_update_target() under df->lock and reach
> devfreq_userspace_func(), which dereferences governor_data without a
> NULL check, causing:
> 
>   Unable to handle kernel access to user memory outside uaccess routines
>   pc : devfreq_userspace_func+0xc/0x28
>   lr : devfreq_update_target+0x58/0x158
> 
> Add a NULL check in devfreq_userspace_func() and fall back to
> previous_freq, which is the same behaviour as the existing "no user
> frequency specified yet" branch. This closes the race for all callers
> since every path ultimately goes through get_target_freq.
> 
> Additionally, take devfreq->lock around the kfree()/NULL assignment in
> userspace_exit(). Without it, a concurrent OPP/pm_qos notifier running
> under devfreq->lock could read governor_data after it is freed but
> before it is set to NULL, constituting a use-after-free.
> 
> Fixes: 5fdded844892 ("PM/devfreq: governor: Add a private governor_data for governor")
> Cc: stable@vger.kernel.org
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Link: https://lore.kernel.org/linux-pm/20260723080806.1451-1-finley.xiao@rock-chips.com/
> ---
> Changes in v2:
> - Add Fixes: tag and Cc: stable@vger.kernel.org
> 
>  drivers/devfreq/governor_userspace.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/governor_userspace.c b/drivers/devfreq/governor_userspace.c
> index 3906ebedbae8..f7a485c43fd7 100644
> --- a/drivers/devfreq/governor_userspace.c
> +++ b/drivers/devfreq/governor_userspace.c
> @@ -24,7 +24,7 @@ static int devfreq_userspace_func(struct devfreq *df, unsigned long *freq)
>  {
>  	struct userspace_data *data = df->governor_data;
>  
> -	if (data->valid)
> +	if (data && data->valid)
>  		*freq = data->user_frequency;
>  	else
>  		*freq = df->previous_freq; /* No user freq specified yet */
> @@ -110,8 +110,10 @@ static void userspace_exit(struct devfreq *devfreq)
>  	if (devfreq->dev.kobj.sd)
>  		sysfs_remove_group(&devfreq->dev.kobj, &dev_attr_group);
>  
> +	mutex_lock(&devfreq->lock);
>  	kfree(devfreq->governor_data);
>  	devfreq->governor_data = NULL;
> +	mutex_unlock(&devfreq->lock);
>  }
>  
>  static int devfreq_userspace_handler(struct devfreq *devfreq,

Hi,

Looks good to me.

I think that it is needed to lock  on usrespace_init.

diff --git a/drivers/devfreq/governor_userspace.c b/drivers/devfreq/governor_userspace.c
index f7a485c43fd7..cfbd72892598 100644
--- a/drivers/devfreq/governor_userspace.c
+++ b/drivers/devfreq/governor_userspace.c
@@ -94,7 +94,9 @@ static int userspace_init(struct devfreq *devfreq)
 		goto out;
 	}
 	data->valid = false;
+	mutex_lock(&devfreq->lock);
 	devfreq->governor_data = data;
+	mutex_unlock(&devfreq->lock);
 
 	err = sysfs_create_group(&devfreq->dev.kobj, &dev_attr_group);
 out:


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
