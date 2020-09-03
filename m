Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E431C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 16:26:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D5C820829
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 16:26:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UkTHoks+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D5C820829
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xw7BkDW527hV1haaHv+MJ6zlAem1k5tTvwbVHcKN7Hc=; b=UkTHoks+T3+H/ebXKHbnY+A0t
	PUN8jC/9IfXgcC+u6NBC4IPK2tVbK9MRXVew4zPMbga8EQXwcXPOYEURFsjiPuYovbbS5av7eeEKA
	6/movRb/YCHOvbPf778cRB0nNlAei70urusZ4lRjZSEz4MyCpfI4Mr1/bpTWfe7jVKXIZZ+35cCFh
	UAcfmjYGz+2HAZquxgqYB2gtuM/Ca0DlIMorIZw4ciQsuxZwMwgGMzJYguU1q8wz77JYTXhIGUi1j
	K9znukxU1z7LdKart9Nqxfs1WSq6PjxGzjKrZob07Efz2Dz1XgLVgbRLrA8xrVTIF7hwfEOYwz0bn
	1gw4y2CtA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDs3g-0007gA-FH; Thu, 03 Sep 2020 16:25:56 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDs3d-0007fM-Qz; Thu, 03 Sep 2020 16:25:54 +0000
Received: by mail-io1-f65.google.com with SMTP id g14so3566115iom.0;
 Thu, 03 Sep 2020 09:25:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8jt+cUDaZci8tpRGrJa6zJYHwfmbG1TGKRsV7gB184I=;
 b=uASGH15/tVUsILruunWNIYe10juSZucyzpFxKSt2JJasXY+7NfEdEIKgMgAK/AzmFl
 9HVIdDU0YuXEnkkpuPpjoYIpxBpmY44UFSxMP+rENdP1O5umjB94v+M+5znIFfXUk/IT
 WFFF8Pkin2hlz+OLUiXMQo3NGy8ezDvjkH7DbVLKS/i5nwdI/5RsjSHRlbG9tx78MRG2
 aVJZunXFEZk+SGGzRquxaWeZtkkF/lWqAlDBCSTCOfvSoJI360FJXu80+yyvlS0qoklD
 kzJEcc2Ege2bk2yOiURBJUVf5iVwLgRQa4A0A46JAfgY0DAfwy077LxpRdiWIJZZk89x
 J7sQ==
X-Gm-Message-State: AOAM5309DPQkZhWJDOctO9veglrKQHLvBXQHs1BwEGMuJguPGzjADfwG
 7b7f/Tx7v3WfP8aDN88vBJCUBYQtVmO5
X-Google-Smtp-Source: ABdhPJx2GD67DiFTiJR2VCPdhrfyE0nzINKBHCeWwYhpSGJBofkBOU8blidOuSPf6Wo3XJBSEbwcLw==
X-Received: by 2002:a05:6602:3cb:: with SMTP id
 g11mr3815840iov.70.1599150352443; 
 Thu, 03 Sep 2020 09:25:52 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id o1sm1733260ils.1.2020.09.03.09.25.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 09:25:51 -0700 (PDT)
Received: (nullmailer pid 2896293 invoked by uid 1000);
 Thu, 03 Sep 2020 16:25:50 -0000
Date: Thu, 3 Sep 2020 10:25:50 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
Message-ID: <20200903162550.GA2896127@bogus>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-6-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831082917.17117-6-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_122553_877229_2E1D1911 
X-CRM114-Status: GOOD (  15.61  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 31 Aug 2020 13:59:15 +0530, Jagan Teki wrote:
> PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> 
> C.TOUCH 2.0 is a general purpose carrier board with capacitive
> touch interface support.
> 
> PX30.Core needs to mount on top of this Carrier board for creating
> complete PX30.Core C.TOUCH 2.0 board.
> 
> Add bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - none
> Changes for v2:
> - new patch
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
