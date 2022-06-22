Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DF7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 09:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rq8QsX6irZ16r8hVZZrLtlp1htupK2mpZYKvVnCDzfM=; b=rhhZceSxZUKq/Y
	SIdV4HP6XTVkWuYuR5V1EWZ4gzI0G/2BkeY1BWA+2/iZrIr3hNw9rr4tY8H4MlyXSmZ1xM6AMLn3P
	S79wVc3/rII6O+kGPqhBhP/kuviGLkURqVkUgvCZ86OgmgORPZx0ledSasbPFvYimnvGmVOTP7X0C
	/DwXMyQP1/EOcMjOhSMdbJFuJgttX6dScT51bTZp30SJZmkVNOv3Ezb9Q4nx77UZ2ydd7/fIbI6Gi
	S2jla3jUBTKrb1NR1hWDeUpGvgCYCCKKOxAabHZQAUv6v0KudJOGp2mWOGTpOmdT4su12Fmyqayfm
	7b6RGOZ6oEVCU3Iorduw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3wDx-009Pq3-R4; Wed, 22 Jun 2022 09:00:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3wDi-009PiZ-4t; Wed, 22 Jun 2022 09:00:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D0DDFB81CBF;
	Wed, 22 Jun 2022 09:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2CB0C34114;
	Wed, 22 Jun 2022 09:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655888415;
	bh=xXD+fcf0G7W/M6s0Dx6PR+PbKve+KAtrMjjS5n3xU9U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pW/mZMTwLqPUQrXoAGc4p4NddsInPyIghUxx3v4CuNTOwc9t2hxziu/XDMCVzSBs+
	 DkzwdGSlL+/gdrXS5R2LzZ4/yBfCEvaBzlxh9O6dsW5wGSvQAOt+S1BqDH2vIfkBa3
	 SldtRLuV8Qwmh5GJq+na01kQHh/5BRbfjf4jR/PBja1Qnb/FscOPUV6HOjeC5QEiHi
	 a1lfSHK5YGm09ZWSV6bn7skNm4vCsnKqdSyydH5rmJ3Fdacy7ri3ns8cFwPEHtE7Cx
	 vzTtpdKfWxBIINDKPVoq5+I0mYR7sd6yAhn4kDERd+AAibNlzdFBbVYUmxBXfCzEM7
	 zUHBb3TfeWIjg==
Message-ID: <1a450b67-1e37-1eac-5906-910cb4deefdf@kernel.org>
Date: Wed, 22 Jun 2022 11:00:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2] arm: mach-rockchip: (pm) Add missing of_node_put()
Content-Language: en-US
To: Liang He <windhl@126.com>, linux@armlinux.org.uk, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220616021713.3973472-1-windhl@126.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220616021713.3973472-1-windhl@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_020018_383796_EEC70774 
X-CRM114-Status: GOOD (  12.13  )
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

On 16/06/2022 04:17, Liang He wrote:
> In rockchip_suspend_init(), of_find_matching_node_and_match() will
> return a node pointer with refcount incremented. We should use
> of_node_put() in fail path or when it is not used anymore.
> 
> Signed-off-by: Liang He <windhl@126.com>
> ---
>  changelog:
> 
>  v2: (1) use real name for Sob (2) use goto-label patch style
>  v1: add of_node_put() for each return
> 

Before applying the patch please check it carefully. Previous evidence
[1][2] suggests that not it was not even compiled.



[1] https://lore.kernel.org/all/202206221602.odN70SHs-lkp@intel.com/

[2]
https://lore.kernel.org/all/16f9a971.44e5.1817068ee3c.Coremail.windhl@126.com/


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
