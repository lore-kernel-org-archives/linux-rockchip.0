Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDBCC64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 14:39:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 571A120757
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 14:39:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hEaGyffZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 571A120757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NrLPydxZq5gp6ZY/oknTIUCEU02c1e2biuDqROKDbZc=; b=hEaGyffZ7Wagi5Ns4GHQg//vq
	JuW4v3AyykfRcHEhqZ0dzeHsoZ9cm9ftpqlgHmqJgKl/d9Od4KVDUqkpVKR/XnL+Gy+NGnPWPfONo
	nEzyLSzm885fMGGxDwwOmiBksvMqJFDAY9sPQagiR3zhYOshkuf8GzvL3gtc8kV83tEGYAefVZ0tr
	/yAjLLAEG4EwMT3e1uJ4aNg+bQoBPN3YAFFHZ1C39Nbpij63I8+uOShlW5AXnw1u2Zo/oc01KU5vm
	IrWVQnLQZnO6mU4EcuFmLZj81RtMz2rN/3qKnUrwXoJrGYS0nxihfxa9D/mCbpoyE99skn43pznXC
	HYf52ueEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk6oq-0003TC-KN; Tue, 01 Dec 2020 14:39:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk6on-0003Rt-9R; Tue, 01 Dec 2020 14:39:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id ADBA41F40F5D
Subject: Re: [PATCH v2] media: rockchip: rkisp1: remove useless debugfs checks
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20201201143058.GJ2767@kadam>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <17d5555c-1f95-159b-f5db-cd3db0704a6c@collabora.com>
Date: Tue, 1 Dec 2020 11:39:41 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201201143058.GJ2767@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_093949_423828_CD36D006 
X-CRM114-Status: GOOD (  17.49  )
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 12/1/20 11:30 AM, Dan Carpenter wrote:
> The debugfs_create_dir() function never returns NULLs so this code will
> never be executed.  It's not intended that callers will check for
> debugfs errors in the normal case and it's not necessary in this driver,
> so we can just delete this code.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Since the debugfs_create_*() functions already check the parent
with IS_ERR(), this looks good to me.

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
> v2: Fix subject
> 
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 9af137e4967f..68da1eed753d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -430,10 +430,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  	struct rkisp1_debug *debug = &rkisp1->debug;
>  
>  	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
> -	if (!debug->debugfs_dir) {
> -		dev_dbg(rkisp1->dev, "failed to create debugfs directory\n");
> -		return;
> -	}
>  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
>  			     &debug->data_loss);
>  	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
