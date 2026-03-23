Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8960CF483DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 17:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AL7QxkVHFp0oZkl2WVpQpEfq1gdhAJCW3XHnA7hJKu4=; b=t9QsT4IMA2eoL4
	V83RK5R0XVRgQoqxT+c20a7MMA/VNTT6anPeFp4P4UDj3lK1Bd9RXaclviIyOGQljD6fttYZV4b98
	MROi3KDVskOKuUU9AAUetLGQ/y9JA/Z6KSktNVEj2nYydtJxL9D891+wDiGAOr+/GYHn7e+PXCA1w
	CdHCZOxvJUENbK+voaXWIGstwMKUTseGVnJzr2lZVPMC1c8T2FzA0LfjAGg3JJUxHu+dmsdUPh1mg
	oiYEoaTM97nvWePzmkypKKv5C/7aGQhX9wYVkU8c6azmzMiCcqcoGv8Fg8QcSNpKf7vYwooO/SzGp
	A/8660iwhAbL7TCjrPCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4j8K-0000000HEVt-0RkR;
	Mon, 23 Mar 2026 17:32:08 +0000
Received: from 013.lax.mailroute.net ([199.89.1.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4j8H-0000000HEUw-0PSx;
	Mon, 23 Mar 2026 17:32:06 +0000
Received: from localhost (localhost [127.0.0.1])
	by 013.lax.mailroute.net (Postfix) with ESMTP id 4ffgGD3x7bzlgy1w;
	Mon, 23 Mar 2026 17:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=acm.org; h=
	content-transfer-encoding:content-type:content-type:in-reply-to
	:from:from:content-language:references:subject:subject
	:user-agent:mime-version:date:date:message-id:received:received;
	 s=mr01; t=1774287120; x=1776879121; bh=Uk5p4ExM8iYYus7d0CUZh2oM
	oDNmYurKBW2CMQ0z5H0=; b=yxOLgmLJBa174S3ejjz6leArmiE5FwlEfWAku8Vy
	8pQP87Jrx2yU/o/2S/YM5k+g5KMJ5jnbNiKNwl3sPTm0uIBKRZYd/yizbaC96aLv
	B8rNHDNW4iNjoxSlxQngCDKzWLuYOrb+sTARbOJjpGIZ3HBTMUentUZGGONIR9Za
	6H+sdB6RmZxxvdBvH0FHN9JHYf4EaVENpq1YT9fRuXFtGXortd75W81IOKiJzS2p
	BjoWbH/Mg+miQLgXahfs6k36xm29osPZ5ZYMSX1a6+8IW4nAZZ8cUvCzYNzbuqGC
	8xbsTc1FAxTLgNxkBy/ehE78yDx/UXqnnXc9aZY3stiD+g==
X-Virus-Scanned: by MailRoute
Received: from 013.lax.mailroute.net ([127.0.0.1])
 by localhost (013.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id uDeRpX8s45bB; Mon, 23 Mar 2026 17:32:00 +0000 (UTC)
Received: from [100.119.48.131] (unknown [104.135.180.219])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 013.lax.mailroute.net (Postfix) with ESMTPSA id 4ffgG507SNzlgwN1;
	Mon, 23 Mar 2026 17:31:56 +0000 (UTC)
Message-ID: <bdafac6b-3255-477c-a7ce-0ed72983c9be@acm.org>
Date: Mon, 23 Mar 2026 10:31:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] scsi: ufs: rockchip: Drop unused include
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20260320215606.3236516-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20260320215606.3236516-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_103205_213734_1AE6B9D2 
X-CRM114-Status: UNSURE (   7.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 3/20/26 2:56 PM, Andy Shevchenko wrote:
> This driver includes the legacy header <linux/gpio.h> but does
> not use any symbols from it. Drop the inclusion.
Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
