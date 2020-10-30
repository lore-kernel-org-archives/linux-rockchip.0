Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FBEEC00A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 04:51:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76F93221E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 04:51:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3OqaaG5f"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76F93221E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXjsYFZAG7tObiSU9n0MHh7ojeE8ZqaICFCq6cWgwmU=; b=3OqaaG5frr2VoKwJCOC0O5dkY4
	cXlgHRM5LOENRhDIeEfwYqmFWfWLu19VugxFLNxfQmRZANXoF0YL7eTpRQQXLPzV3J7LIKhmh1pJK
	lXW9nQ8Ii3L4FA3o/Z7ZXzUoFW2XCyHmh89PtOjULnoBYuZnOsJRAm/Z0pdQSnD1SzvsK3Pj/TDAQ
	hOyEhI2l7xogJY0Fw2xFWN4SvdDqfb10RPNuej0lbqJhWSMlbUOt4ep2Y1LhRWSovozUSEiB5xdTo
	UtPbWnyjYb6hjthYQwdY7/0zujhiW7hTLWSsWFVerqhVfJDRZ+8aSTUVdi55LHj/Ytx2AY2bZSCQH
	Bx1QhNgQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYMNn-0002WI-Kf; Fri, 30 Oct 2020 04:51:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYMNk-0002Vr-NN
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 04:51:21 +0000
Received: from [IPv6:2804:14c:483:7e3e::1005] (unknown
 [IPv6:2804:14c:483:7e3e::1005])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 46FCC1F4590E;
 Fri, 30 Oct 2020 04:51:16 +0000 (GMT)
Subject: Re: [PATCH v4l-utils] v4l2-compliance: don't test pad's dimensions if
 it's MEDIA_PAD_FL_METADATA
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200325214357.30722-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <f59a3e2b-ec48-01c2-2bdf-52526ffa2662@collabora.com>
Date: Fri, 30 Oct 2020 01:51:11 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20200325214357.30722-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_005120_873266_31344C5F 
X-CRM114-Status: GOOD (  20.57  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On 3/25/20 6:43 PM, Dafna Hirschfeld wrote:
> Pads with the flag MEDIA_PAD_FL_METADATA transmit metadata
> which has no dimension, so don't test the width and hight
> returned by S/G_FMT for that pads.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> This patch completes the patchset sent to linux-media:
> "media: staging: rkisp1: Fix formats for metadata pads"
> https://patchwork.kernel.org/project/linux-media/list/?series=261673
> It compiles only when the media.h file is synced with
> this patchset so that the flag MEDIA_PAD_FL_METADATA
> is added.
> 
>  utils/v4l2-compliance/v4l2-test-subdevs.cpp | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/utils/v4l2-compliance/v4l2-test-subdevs.cpp b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> index 489639fb..ca527529 100644
> --- a/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> +++ b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
> @@ -305,11 +305,13 @@ int testSubDevFrameInterval(struct node *node, unsigned pad)
>  	return 0;
>  }
>  
> -static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt)
> +static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt, unsigned pad)
>  {
>  	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
> -	fail_on_test(fmt.width == 0 || fmt.width > 65536);
> -	fail_on_test(fmt.height == 0 || fmt.height > 65536);
> +	if (!(node->pads[pad].flags & MEDIA_PAD_FL_METADATA)) {

I was wondering if instead of checking the flag type, we shouldn't be checking the
code for MEDIA_BUS_FMT_METADATA_FIXED.


Regards,
Helen

> +		fail_on_test(fmt.width == 0 || fmt.width > 65536);
> +		fail_on_test(fmt.height == 0 || fmt.height > 65536);
> +	}
>  	fail_on_test(fmt.code == 0 || fmt.code == ~0U);
>  	fail_on_test(fmt.field == ~0U);
>  	if (!node->is_passthrough_subdev) {
> @@ -353,7 +355,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
>  	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
>  	fail_on_test(fmt.which != which);
>  	fail_on_test(fmt.pad != pad);
> -	fail_on_test(checkMBusFrameFmt(node, fmt.format));
> +	fail_on_test(checkMBusFrameFmt(node, fmt.format, pad));
>  	s_fmt = fmt;
>  	memset(s_fmt.reserved, 0xff, sizeof(s_fmt.reserved));
>  	memset(s_fmt.format.reserved, 0xff, sizeof(s_fmt.format.reserved));
> @@ -366,7 +368,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
>  		return 0;
>  	}
>  	fail_on_test(check_0(s_fmt.reserved, sizeof(s_fmt.reserved)));
> -	fail_on_test(checkMBusFrameFmt(node, s_fmt.format));
> +	fail_on_test(checkMBusFrameFmt(node, s_fmt.format, pad));
>  	fail_on_test(s_fmt.format.width != fmt.format.width);
>  	fail_on_test(s_fmt.format.height != fmt.format.height);
>  	fail_on_test(s_fmt.format.code != fmt.format.code);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
