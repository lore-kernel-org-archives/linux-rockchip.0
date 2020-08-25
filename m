Return-Path: <SRS0=C56+=CD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 221DAC433E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:27:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1AD520738
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:27:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qsRrNTMu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1AD520738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rkzkbT8FKZRqDbJwoLkzkwRuZ4AVIAcBsNN9whxiVNA=; b=qsRrNTMuYH/ZsUh8n8liyd5rU
	rYua9pQs2OopVuD2qo8/YfqpI/POycslYe6IWofUo4eiFV75jj7mawprmudeNHcrD2UAOV5kYzxDs
	VdHDpI4X/AN9Whgm/BhDqqrl1R/be0wVUF9WkRtVW5liSGMxl4NYMMLNkJcrVcYUbnWv1T63j3WQe
	2KapADaPX4URgwJN+OQFD+egLea6Wu4GvbDimjJaNwhCcj2Uv/2LDO5oLSIdBpTIzFME+GyjrT2cY
	OPSoGUTqH1KGm5ynXg5PHvxvMPeUhn5A7hBnTvqzHoBSMHiwejbjjNa3didUd4UeBgGS8CdbFTO7z
	HyFbZnojw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAYyn-0000p4-SR; Tue, 25 Aug 2020 13:27:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAYym-0000nt-5L
 for linux-rockchip@lists.infradead.org; Tue, 25 Aug 2020 13:27:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 34C76295FCD
Subject: Re: [PATCH] MAINTAINERS: add Dafna Hirschfeld for rkisp1
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20200825132209.193435-1-helen.koike@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <ca53cdf2-e82b-9370-86d8-9005b104ca04@collabora.com>
Date: Tue, 25 Aug 2020 15:27:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825132209.193435-1-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200825_092712_299583_382ADB2B 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: hverkuil-cisco@xs4all.nl, kernel@collabora.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 25.08.20 um 15:22 schrieb Helen Koike:
> Add Dafna Hirschfeld to rkisp1 maintainers list
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>   MAINTAINERS | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index deaafb617361c..3deb954b2bb5d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14858,6 +14858,7 @@ F:	include/linux/hid-roccat*
>   
>   ROCKCHIP ISP V1 DRIVER
>   M:	Helen Koike <helen.koike@collabora.com>
> +M:	Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>   L:	linux-media@vger.kernel.org
>   S:	Maintained
>   F:	drivers/staging/media/rkisp1/

Acked-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
