Return-Path: <SRS0=KmeF=QA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34C56C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 23:38:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C003A61074
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Nov 2021 23:38:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C003A61074
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a99uKaouyNvyd1mRaoNJmV5zuXhoXDfxi9+4CRXkpBw=; b=kyw4nbNQTwbTMh
	fe5y9SSN26vstzNI9coLPDpsLnnKZi+QuhRuwpLzvM2hHpX5/4NfGASINr8Efc/uQRdHXJphDftUM
	G3k2slZtiu/udiZV+WqliHnByhy6+12LQDSGf7mFCi7yuTOXw/Uxd53HsKeggcd5RbtINFa0genv0
	aHopI/ikqqGrTPeQfwAeM58SD2+qEvefwzkIMiHzjWmC9Z2l1Q059hwlt4a7osGm7zH66wSOrkFg0
	F6HHQRqT+uU7ShhtpZk4vKM5CVhLEZdYcZwYydwk1+rvwTrDMCwmiNzXYmY2Tski2D/KTgbMGMTJ/
	qQvXPgVXDENLDdM6KKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mm2bc-00DBTt-QA; Sat, 13 Nov 2021 23:38:44 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mm2bQ-00DBT3-Bu; Sat, 13 Nov 2021 23:38:33 +0000
Received: by mail-lj1-x22d.google.com with SMTP id d11so26455617ljg.8;
 Sat, 13 Nov 2021 15:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=references:user-agent:from:to:cc:subject:date:in-reply-to
 :message-id:mime-version;
 bh=v+/iTcFZe4U1/1rjP7zbNwYdPxzRegfOtpPoaAUoroU=;
 b=dWQ6ENVyq8MhX/gwVro2dCleMvO+eT8gEr3JRDDf3a8cJtNJafq3yk9v+CKR/aSS76
 cgopNddvyHz+xo7S4YPibPcmVsAWsrKr0ymtL7L+01LS82KIbe8STA1W5lNg8rqdwctZ
 wPPbT0RcbDIBSXSnWlC4ZaJhx4hdTRRPE1C35SbIlF1PZNOSKM5E9/zwYcxxfKcy3XSZ
 O0VHpcBX0+iAyFTFWtDzUUzJDWRachIuEzOuhQORGaA/cRuzOAKGn9ufMkRj/GOQ3rtJ
 KKWnvxytRWnXMG8xzhiRa7yjICc+0yjWWierMqBs7fO/EyKAb/+pDVVNymYO7xFn9Y+S
 t9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
 :in-reply-to:message-id:mime-version;
 bh=v+/iTcFZe4U1/1rjP7zbNwYdPxzRegfOtpPoaAUoroU=;
 b=rf1JbMnXgCTqluV45GyIP3MztDX3rFyx7fccb4cBMHCqQIuevm53eHaU6PxhwOi3Qc
 xNEWVvvp4apg52wz+H3v56T2CfMwIdOJ/0+AtRu8kzhZfksYm3KHOUO8JdbewJwKFGSF
 zvndet8knA4KOqiW016ZDH/xmdfIgdVWoM/pnLWTKmzHZF/hNmMIE2iwXEI6S7lm9O0L
 Yu/LKm4cdEXYgseO8SoWgzyaoz1ChYkf9pVU0AHA1n7HTJzqghCEMP0zCUVbQkbQkP5x
 THywqUwAqEBHj9M6QdBWQoIxsFebL8G6UETp0yK5mWGchGToE2jWsDhF6uY6ivolr8Wr
 RZIg==
X-Gm-Message-State: AOAM531+FvpDQQiUPc3OcqthEsUFSBHHJ2QXKtm8W28es/ntDDTUMVE4
 9fpDY77AzTm6I+B2DqwapyM=
X-Google-Smtp-Source: ABdhPJzoprwLOZP8/l2BcdaiMQNeRcLJjyeYGYBZPprUHT+0JvRJpzVDZM1DnWhRXeUj3equYltDNQ==
X-Received: by 2002:a05:651c:1503:: with SMTP id
 e3mr26692272ljf.182.1636846709651; 
 Sat, 13 Nov 2021 15:38:29 -0800 (PST)
Received: from razdolb ([185.7.153.254])
 by smtp.gmail.com with ESMTPSA id q10sm978049ljh.94.2021.11.13.15.38.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Nov 2021 15:38:29 -0800 (PST)
References: <20211010175457.438627-1-mike.rudenko@gmail.com>
User-agent: mu4e 1.6.9; emacs 27.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-media@vger.kernel.org
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>, Helen Koike
 <helen.koike@collabora.com>, Dafna Hirschfeld
 <dafna.hirschfeld@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rockchip: rkisp1: use device name for debugfs
 subdir name
Date: Sun, 14 Nov 2021 02:33:55 +0300
In-reply-to: <20211010175457.438627-1-mike.rudenko@gmail.com>
Message-ID: <877ddbpqx7.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211113_153832_453964_7DC80119 
X-CRM114-Status: GOOD (  13.38  )
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

On 2021-10-10 at 20:54 +03, Mikhail Rudenko <mike.rudenko@gmail.com> wrote:
> While testing Rockchip RK3399 with both ISPs enabled, a dmesg error
> was observed:
> ```
> [   15.559141] debugfs: Directory 'rkisp1' with parent '/' already present!
> ```
>
> Fix it by using the device name for the debugfs subdirectory name
> instead of the driver name, thus preventing name collision.
>
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 7474150b94ed..560f928c3752 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -426,7 +426,7 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>  	struct rkisp1_debug *debug = &rkisp1->debug;
>
> -	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
> +	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
>  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
>  			     &debug->data_loss);
>  	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,

Gentle ping. Could this be merged please?

--
Best regards,
Mikhail Rudenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
