Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2EFC77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 16:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+82K0yVYqgpV852m7S6lpE806yr8eP5AejjRJ97rZ48=; b=1ULyv28qLkiFpB
	F4DzM45ts7qYbRdIoSHfrkZKlPnMbowVd87xOkfQEP/Br5ZlYGvcPe7WnqLTVeC+kTYiBRJqAxx4E
	71jsn/h3u/a8MyNXsSc+HjiOjAlqxbjgQo6DoR5f1xA/K6Y+28dcnuM8nTAHil7X2D2r0u9jL9Gk3
	2Z+MefiAjEZONghA/FW5ow4ofgDeowmduWYYHrDpCV1eQsYNH6VGmuHmmCNGuNzSbj4o600cY83OA
	nrD3/M8zDD7J/lX5uwMpjojAwr4cwcEn5v+sLp9BL25bdrAWfAGev0ozhxcgLar/RPb4dSz2mE68J
	KtHez02CpYvqcmtDf+TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVoU-00CVMc-2p;
	Fri, 12 May 2023 16:40:14 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVoS-00CVLb-1H;
	Fri, 12 May 2023 16:40:13 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f4249b7badso63983235e9.3;
        Fri, 12 May 2023 09:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683909606; x=1686501606;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gOPr8RiZNSgqggpmzVuoRlbviV7C/s+3BUUqAAb6inU=;
        b=DOCSZD3R4gA0NV+uJmIYMvCPKGm8d9kpASOgAAz+Pf4S+bC0zfZIpDVA6j4pA5/G9z
         2pv/aZk9u0O0KFrGIRGMFN5sxS4S/44ucOrDp+w9VpWR4uuZvwDTzUhBQBhBZ8S1Tz3B
         A5RVjIX26Ua+r+QGuGgXEYRPOaEK2M0bQL6s3XxHIXuZRKLWM+xfN3SpYRT0P92uopQt
         CkJRyCOBuJ4vl5d6ZVUxN/FPuTayqcbUDbcbnkY8KA6iyaI8vGfTnKQJuxTpkgX780tb
         2n2REXdeuXT4AOACppzPbHWgY1hFyp1P5fqnXt0Bz0wOeGEDCNuAqXOkQ+hG5w5ExObO
         OR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683909606; x=1686501606;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gOPr8RiZNSgqggpmzVuoRlbviV7C/s+3BUUqAAb6inU=;
        b=Nkf6wjsFgHc2HqBKY5lKajane8vSLWdxpuclwD63PfPAD39i8SFQ95Cv5heBg1YGFh
         xw+MuGaQA0CuDqFJKu9XAkWoh6ltDRbMloCliwZQpjnH8L9nTmle1mtHkEPCU/g5Ly51
         4Lu9lQFhVWnTm0qM5SEv9jKABBWd2IHjnmwsKkDE8N4Dx0zYHJRocoZQpeld/68S4FLO
         ytJlKEaxEbiKdlYkTxUmaQA0Rbcsf7SgIAK6ajzoKeKt6BiR6+VMBDsmi/Nw9q+FbKmg
         PVHKlxy1odqCIk46qs3eyHi6c2K1H6/EnM1NK/BmiQQYfaXxrbyc/ljIrrQJUqo/0rKR
         zqbg==
X-Gm-Message-State: AC+VfDwdCpTbQHvHr8MNQz757WT9XLHfd6I7y9rw6a9+BqXU4cPRI1XH
	RNbfQDgDfNozAHKM9uy7rOo=
X-Google-Smtp-Source: ACHHUZ5yxbWW2Bv6DZDq5gkRtNdoEDpV2I3JPwHvYv23gd+IPRTMx71bA/LG2dz5CkgOQTwYpkRxhA==
X-Received: by 2002:a5d:5968:0:b0:2c9:e585:84b0 with SMTP id e40-20020a5d5968000000b002c9e58584b0mr16128939wri.1.1683909605667;
        Fri, 12 May 2023 09:40:05 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c214d00b003f42461ac75sm16140195wml.12.2023.05.12.09.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 09:40:05 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 12 May 2023 18:40:03 +0200
Message-Id: <CSKG4WDA4MVH.1RVYIN4NYH4EA@vincent-arch>
Cc: <linux-pci@vger.kernel.org>, <robh@kernel.org>, <heiko@sntech.de>,
 <kw@linux.com>, <shawn.lin@rock-chips.com>, <linux-kernel@vger.kernel.org>,
 <lgirdwood@gmail.com>, <linux-rockchip@lists.infradead.org>,
 <broonie@kernel.org>, <bhelgaas@google.com>,
 <linux-kernel-mentees@lists.linuxfoundation.org>, <lpieralisi@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Dan Johansen" <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>
X-Mailer: aerc 0.15.1
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
 <20230509211902.GA1270901@bhelgaas>
In-Reply-To: <20230509211902.GA1270901@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_094012_456235_A96959BA 
X-CRM114-Status: GOOD (  25.47  )
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

>
> Thanks for raising this issue.  Let's see what we can do to address
> it.
>
> On Tue, May 09, 2023 at 05:39:12PM +0200, Vincenzo Palazzo wrote:
> > Add a configurable delay to the Rockchip PCIe driver to address
> > crashes that occur on some old devices, such as the Pine64 RockPro64.
> > 
> > This issue is affecting the ARM community, but there is no
> > upstream solution for it yet.
>
> It sounds like this happens with several endpoints, right?  And I
> assume the endpoints work fine in other non-Rockchip systems?  If
> that's the case, my guess is the problem is with the Rockchip host
> controller and how it's initialized, not with the endpoints.
>
> The only delays and timeouts I see in the driver now are in
> rockchip_pcie_host_init_port(), where it waits for link training to
> complete.  I assume the link training did completely successfully
> since you don't mention either a gen1 or gen2 timeout (although the
> gen2 message is a dev_dbg() that normally wouldn't go to the console).
>
> I don't know that the spec contains a retrain timeout value.  Several
> other drivers use 1 second, while rockchip uses 500ms (for example,
> see LINK_RETRAIN_TIMEOUT and LINK_UP_TIMEOUT).
>
> I think we need to understand the issue better before adding a DT
> property and a module parameter.  Those are hard for users to deal
> with.  If we can figure out a value that works for everybody, it would
> be better to just hard-code it in the driver and use that all the
> time.
>
> A few minor style/formatting comments below just for future reference:

Due the recent email I think it is worth make a version 2 of this
patch with your suggestion? and iterate over it another time?

Cheers!

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
