Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59882C56201
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 05:29:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AAC822202
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 05:29:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fp+kBXS+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8AAC822202
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uU1FRsAbuhKpN1bY997VASUOx5gCmypQ8pj1WjzGUwg=; b=fp+kBXS+QhgB2Lig0O6FYTXXA
	ykumbLIaRv2TgGmnG+Z/AbRBb1874oCVeAnh5jraaBtCWbhp01arS9puiMa9HiXixRDhFCjx2SP/A
	WCnkHdTzSZuGp8c+01QgF3Jh0jWcHXfW2ctCEFoqZ7X8ghIBzSGPepHdskCCS7cIyEcH4JEVEMMrt
	/24Zm+E/owwgjS4ihI5iSRy+Ul6wyo5egqCoRGAMq/w2eaMBsHpRmeiPufBtr1ZaNXCD0YyasGB11
	QR7zWCQR0CNwzFowgufeCC5KQySmjwShLPYmEKUA8JZXGlE0ALNzS+2chATVPHBvSUHm8LPyk3yVG
	VZ99++Lgw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYMy5-0003dq-8K; Fri, 30 Oct 2020 05:28:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYMy2-0003dI-RH
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 05:28:51 +0000
Received: from [IPv6:2804:14c:483:7e3e::1005] (unknown
 [IPv6:2804:14c:483:7e3e::1005])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8DD421F4501B;
 Fri, 30 Oct 2020 05:28:46 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: uapi: add "WITH
 Linux-syscall-note"
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201020132514.26651-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <2e5116d7-10c1-6eee-9a80-5350515ac314@collabora.com>
Date: Fri, 30 Oct 2020 02:28:41 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201020132514.26651-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_012851_063896_3F6C727F 
X-CRM114-Status: GOOD (  15.84  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On 10/20/20 10:25 AM, Dafna Hirschfeld wrote:
> Add "WITH Linux-syscall-note" to the uapi
> header SPDX comment.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Since Niklas reported[1], it wold be nice to add his Reported-by tag.

[1] https://www.spinics.net/lists/linux-media/msg177793.html

Regards,
Helen

> ---
>  drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index 432cb6be55b4..8d906cc7da8f 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/* SPDX-License-Identifier: ((GPL-2.0+ WITH Linux-syscall-note) OR MIT) */
>  /*
>   * Rockchip ISP1 userspace API
>   * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
