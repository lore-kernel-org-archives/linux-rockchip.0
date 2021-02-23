Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A14C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:44:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27FC56148E
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:44:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27FC56148E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IyQU3J5v3vGx6quRt5rdUKdBoBJook8cYoUHIxV9wd4=; b=bQYrd6RtfKrJ3RrZkkL96ziGH
	y5Fwr1wZpwbOHmYhh3YFV8IesePB94DRgfaQGdEkKc6BlFDzpnabCgSWstETNJ50p3ibGsFaJEan3
	zKE51ozzOeW23Wcw91VZxi/m5TTUIsDkRMJdqPmnugaMTqpEaZL4HAfZhA/oLhOPDCeEdcnQCnCx0
	1J3JuoVmcLKe2WSYH1SWdeS1hIq7vVXCpFwKrC99kzxbQHP4AlvehweVGD+5Er9jcB66RJ68m/LBW
	qiljgtHDTuvhI7DDGYoD04XXqPAe+kV87iF9wZdUSvtnxu857tyohAl1lS+sv/PGhdNdun0WLgC9t
	S6578r4KQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEYv6-0005B8-8y; Tue, 23 Feb 2021 14:44:12 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEYv3-0005AQ-KM
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 14:44:10 +0000
Received: by mail-wm1-x32e.google.com with SMTP id k66so305771wmf.1
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Feb 2021 06:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yycLNDM5Jja/WKv5UcYK74fWgM1ylVR065tnmkV9a+U=;
 b=bVfqetSKmH0KFQWh30nnZhRb3FSSqD1lQ8KQm4iK7gAtpjPwf5byyezOaaj2xhjDG8
 yuUdj2Czlx0oFAu4zPIN60VVbZihI+2SdjvyF9gYIknUPE12pyBJ8qGbPon9H/+BitMy
 CVqbiZEYMdDJfP5fkktzi0NWFWcRlaVyO5oFawJK33VzguL3PHQI6MxbvzJ22c+YR03n
 1y3ch094Q4GSA2RYNvljctndjUIEvpbmsGCjIQa+0bNDUwiFBBydxUZMkNpjJrd378eF
 oRT5+WitdxeNA/yUgpUI8HD3ZRC0mTcHWB8rcvXwU7neBIUSWZgNy9inJwUKpFPCKuEi
 aNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yycLNDM5Jja/WKv5UcYK74fWgM1ylVR065tnmkV9a+U=;
 b=BiCxpFBSj6gnGF5+kMRT//xt+mIWsdSBseNvIdPF0sKjKKz6yHuwrbFk1GuCcDN+R/
 vRuAV8zLIrWbMWjPa5ZjMXQt3cctWj340XnR7nU1Mcqvk1MsegN7VeMcSPCccdJVgakH
 BkNgSTbg3oZ2Hp2fWjQtvrydGzzCh5Syu/sc0sV9okRhP7WQenNyRvwxYstaZpp+Sbxe
 O3udTCuQyMKe7wNXG/PNsoFH3lrNzjg9cn8BiuO0/RdBR8YNZtiYa4HY9h7xJdXKTq/D
 bvwTAOsWc/sZWK7X+bJVaw56jqBg9vStl5sed/aDknshePdeqJuUQ227IwbRVCpD5nar
 eraw==
X-Gm-Message-State: AOAM5309gbTPotZkkCWAq8BkXW28+jy8ZAXwW1JIyf1SssIt4+2lUNT3
 x2Q8+PPp0CdEFqgs/rjoR2lQss8p8y1WYtCBZ5Qme+oSiiA=
X-Google-Smtp-Source: ABdhPJwlKOkN+si71DuZZmSLa53NEDdaUB445YKm/6ZiRjVDHaP8g2BSyXzfuTlzdOUL7KKcKrUmiaUzTWSg4j+lBfg=
X-Received: by 2002:a1c:1982:: with SMTP id 124mr25825911wmz.84.1614091448105; 
 Tue, 23 Feb 2021 06:44:08 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
In-Reply-To: <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 23 Feb 2021 14:43:56 +0000
Message-ID: <CAPj87rNy9TWn=GSK=gVzW9Y71anZe2oeq8sUoYwPW+vwoLFxpA@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_094409_716479_246C6558 
X-CRM114-Status: GOOD (  13.21  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, 23 Feb 2021 at 14:27, Daniel Stone <daniel@fooishbar.org> wrote:
> Bumping this one: it seems like the Rockchip VOP either always applies
> the YTR transform, or has a YTR control bit which is not documented in
> the driver's register definitions. This means that it is incorrect to
> advertise the currently-used modifier, which specifies that YTR is
> _not_ used, and doing so breaks Panfrost which correctly uses the
> modifier as documented. Based on our knowledge of Mali, we believe
> that Panfrost is correct, and the error lies with Rockchip erroneously
> using the YTR transform in the VOP's AFBC decoder despite declaring
> through the modifier that YTR is not in use.
>
> Looking at the downstream vendor tree, VOP2 as used in newer SoCs has
> explicit control bits for YTR and other AFBC knobs, but this has been
> substantially reworked from the original VOP and is not applicable to
> this IP block.
>
> Mark, or others from Rockchip, can you please:

Sorry, I meant Sandy rather than Mark! Old habits die hard.

Anyway, this patch itself is:
Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
