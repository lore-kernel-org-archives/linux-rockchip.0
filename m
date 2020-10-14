Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38005C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:41:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE6CD22249
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:41:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tAXj06tM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE6CD22249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+k/O8b+LCVSCk7rf/5aIygm001P18LbQrWT7EP+zwUk=; b=tAXj06tMfFh7OHFKrBlH1ydqp
	f0rcfIE67E8U0tjQS1yH/1gLmjVmCn27wy3fRLi12yo2MfhMdwToxPBqfVwSzqHNkvuhbPFMR/X2X
	wSGyPu4MmsKrG/nlUTqyVW6o4xUi/zgFhqCz2rMbcQWFC3HTl8CP5VFztobfPyW5azV5GUWdOrMnD
	4GzkKG1+O6rKH7qTPb+yldCmYuzYyEioq+OC+Kjvq02q8h3hfz/LmP3ain3cYdnQ8fukArztmziYN
	UlMmJDZ78MYE0NT4mV0yPJA6Fa4o4WJn1hZuYwTEDg3gO0rlP9Nv1zbZt49/sQ+HbA36LDdiUykyb
	zf3oFLU/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSnaD-0001MR-V8; Wed, 14 Oct 2020 20:41:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSnaB-0001LN-Fw
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 20:41:12 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B168C1F45611;
 Wed, 14 Oct 2020 21:41:06 +0100 (BST)
Subject: Re: [PATCH] v4l2-compliance: skip dimentions tests for media bus
 format MEDIA_BUS_FMT_METADATA_FIXED
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200922171933.3830-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <ee3c92ea-8f1f-477e-4f16-d8a6b8c5918f@collabora.com>
Date: Wed, 14 Oct 2020 17:41:02 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20200922171933.3830-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_164111_638440_30A2C398 
X-CRM114-Status: GOOD (  18.61  )
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



On 9/22/20 2:19 PM, Dafna Hirschfeld wrote:
> The media bus format code MEDIA_BUS_FMT_METADATA_FIXED
> is used for metadata formats that are not configurable
> from userspace and therefore may have any value for
> width and height. So skip width and height tests for
> this format.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

lgtm

Reviewed-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
> note, this patch should be applied after updating the header
> include/linux/media-bus-format.h to include that new format.
> ---
>  utils/v4l2-compliance/v4l2-test-subdevs.cpp | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/utils/v4l2-compliance/v4l2-test-subdevs.cpp b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> index ec3ef169..f60853e3 100644
> --- a/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> +++ b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> @@ -300,8 +300,10 @@ int testSubDevFrameInterval(struct node *node, unsigned pad)
>  static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt)
>  {
>  	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
> -	fail_on_test(fmt.width == 0 || fmt.width > 65536);
> -	fail_on_test(fmt.height == 0 || fmt.height > 65536);
> +	if (fmt.code != MEDIA_BUS_FMT_METADATA_FIXED) {
> +		fail_on_test(fmt.width == 0 || fmt.width > 65536);
> +		fail_on_test(fmt.height == 0 || fmt.height > 65536);
> +	}
>  	fail_on_test(fmt.code == 0 || fmt.code == ~0U);
>  	fail_on_test(fmt.field == ~0U);
>  	if (!node->is_passthrough_subdev) {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
