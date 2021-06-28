Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C389C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 05:47:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3C01613EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 05:47:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3C01613EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtAPvtaAtrantRTzhGbA63AJ+1AhPlETrhfKFUx5zh0=; b=X8npwML/rARLkp
	BaEftGS80SWFNyF1CacUV3A5/+OWN/Lp1axHpiDjI16DomvkO/Y8vNPGZqGIsOh9ElA8xVB3NSDz7
	X/l+mIRvUxDwQzc8Wxh9gvE+E3/OxoupjqK2DVFMBwREy5r/1pBDNPpxI3LUNDnG94sN9XNdYaARO
	CtoVtd1RZ/CBkRq3hG4QYUiDoISWp08v4ao2DlE8WdUcymB1WkhOpLmA5MJKs+9dryzkRjTx7pHM2
	oKe1R3hMv9Jz3cicjhjhkj43zpkL32/GB8UNwbuoWwKddMWyaKYYPULqOpgfl4oz/BCTlS8hjRPpk
	qHnVM4fW0r+wk+CG7w5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxk6s-006tWU-09; Mon, 28 Jun 2021 05:47:06 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxk6p-006tVa-5w
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 05:47:04 +0000
Received: by mail-pf1-x42c.google.com with SMTP id s137so5573547pfc.4
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Jun 2021 22:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RMUZO1MZSVkGJAqSa1s4TnlYCqt3/jZnu3nahYWbu3g=;
 b=k2CIjsvyYN5k9pNsMxEGqliv8058WhO0Knhi508nW+KT12KiU5Npmu8s2abqNlifaJ
 aYX4PC3Em2m1Xme0o8nXVw1WrV++pYbEyLaHc0dnN8/o3c1ItOuo9ksyu6+kBbQcTBgG
 94XiuCgobv8u+6gAB37fvpz5H9Uaz3ttJUcDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RMUZO1MZSVkGJAqSa1s4TnlYCqt3/jZnu3nahYWbu3g=;
 b=pby3Aic4BQ6w4TtgAs7zBZseJYO8Lm4ZYyIplIk6lwMzSO7E4MVU8OjId9PGPEjiux
 3KfMy+3yLCdeEfa+RgnHfE0A0pNUCPE4aLRpv0njfIEt8Xc4vVxvDzXFgxXRPg8DXuF8
 gd8cYAKDYM4TXHOwZM7mLplFKgUBxnTD6NYl7laxZ53L+6iZ3T0jOjMn/VWzXjgfScfZ
 CZuCypmt7X+bShxj1c0ogu+NaIQ1IvwfId4cegVD1kjzAG+2Gj3vbIXc66/2jEpczSwy
 EVFkyOfCAmpiCKOX43kH5iuPW36tctOACJBMtDZ6B7oh+aV/+Bg+c1TlVFuGdvBF/i9v
 K1Vg==
X-Gm-Message-State: AOAM532lssA6m9nP31oxtRoFBWnzVVp7g3RbdttGAal2VexBZHZy7hFO
 IkAmy8orRgKHQOjpayJeuPH5vg==
X-Google-Smtp-Source: ABdhPJxNUJHxrcKn/WvX+q9OYjEK9tEppfzIrdIPVjkPLN6N75/xZ33e8l6lHWPULQKbAS7w0ATsLA==
X-Received: by 2002:a63:903:: with SMTP id 3mr21641501pgj.147.1624859221605;
 Sun, 27 Jun 2021 22:47:01 -0700 (PDT)
Received: from chromium.org ([2401:fa00:8f:203:35c6:3ef6:5ed6:fee])
 by smtp.gmail.com with ESMTPSA id p24sm13405793pfh.17.2021.06.27.22.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Jun 2021 22:47:01 -0700 (PDT)
Date: Mon, 28 Jun 2021 14:46:57 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 helen.koike@collabora.com, ezequiel@collabora.com,
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com,
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org
Subject: Re: [PATCH 0/2] rkisp1: Two small fixes
Message-ID: <YNliUasfxV3XpTKb@chromium.org>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_224703_266510_A3D77FCC 
X-CRM114-Status: GOOD (  11.67  )
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

On Fri, Jun 25, 2021 at 11:23:07AM +0300, Dafna Hirschfeld wrote:
> Two small fixes to rkisp1
> 1. remove useless vaddr field
> 2. set the dma address of the capture buffers only once in 'buf_init' callabck
> instead of each time the buffer is queued
> 
> Dafna Hirschfeld (2):
>   media: rkisp1: remove field 'vaddr' from 'rkisp1_buffer'
>   media: rkisp1: cap: initialize dma buf address in 'buf_init' cb
> 
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 +++++++++++-
>  .../media/platform/rockchip/rkisp1/rkisp1-common.h   |  6 +-----
>  .../media/platform/rockchip/rkisp1/rkisp1-params.c   |  3 +--
>  .../media/platform/rockchip/rkisp1/rkisp1-stats.c    |  6 ++----
>  4 files changed, 15 insertions(+), 12 deletions(-)

For both patches:

Reviewed-by; Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
