Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78CB6C4743C
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:35:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 42C6961245
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 16:35:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 42C6961245
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTlvU8vP6pN6/FdyAmRzVNUE1C7114mqCGsvEOiulUU=; b=Dlg9vBrmJ4cbHx
	a5ahHpPBsOEn2lMH+n5loL1/zcFZj3YpNzWhg8BGAokmr+vXUmGDgfbxHoiA7ac3dFjsvmytnFRXX
	caRnB1rW1SJDP/oVj1/5wnNgIOROp00/M9AyQoqXKsYRyQZq4IxDv7tUdpe3f4dFe6p3qUIE4AEG8
	MTldmyXOGZdoPmdwiv7m+TXh10P5Fy6NKp9DPNkcjkpBmkYAo9z5iWtm4s6sgwjNlYjy0etNh5Cfn
	bj2JOg/mCOJt8zZ+CRwp6Bhec91Aop6dUpbdTJmzC8hkAlOfdSdLMhl7+KPKDe+oXKZptmxnatbip
	gkGigJS7FJgFU+FqbFhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lspYC-00F9nU-QT; Mon, 14 Jun 2021 16:35:00 +0000
Received: from mail-yb1-f182.google.com ([209.85.219.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lspXz-00F9l3-Lk; Mon, 14 Jun 2021 16:34:49 +0000
Received: by mail-yb1-f182.google.com with SMTP id i4so16345180ybe.2;
 Mon, 14 Jun 2021 09:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zHVS3WQaKuRcUSo80HfryOgVHqso0RV0aNtGn7MfbhE=;
 b=rDVduRpXgoSSl3osXLP/sZ3zt0F4WWMSDICVgNB4Yz7xzPcwGufou7Ylpl7580K08F
 75oGhdoX+V5fjSPNCQTmFj/vv0k46JByxPpgBoyZGy7Fzx9Qi6Z6cGXAMibgACtxPHKQ
 XX2maEf5yhqYS+TUuHNfOp44G1SZqtdUWQDXydZeSQnRsc9EFEW5boZ8uqBpSlGycAvm
 3lZ24J4z+tHhsLc/qyBL79yZYURZNGfqMq88EwY43c++2ka1DHrZ1VB2Imd4D+7O2Igu
 TbLkHMCZu+0MA2mCm35sB+sBOvuAFKiNxsjN1VtKHE0ZNDEEGApd9N4CmcPig2frm6AX
 59aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zHVS3WQaKuRcUSo80HfryOgVHqso0RV0aNtGn7MfbhE=;
 b=pCug7IiPryYxxwztEVFQACE1Fm6qnK0s40G04ZkPO1EfzeZpWdVAbbgHkPekRhdUv5
 WtqMjKQEK72AQGEUUSH3I11pkBD7JtTckxn2WYWC+cJZ6WIX0iNPNaoZZa0LCsFdYom7
 wZBjOvuL5YjkceWdJlj25aqmNVzMg+TS3ZnhydRH+/svZ0yqbUYtFupauTi0WHKboZAc
 j/C78BrD7066nFIGISrHFoPWK/Y6xS4QXxm8aL//WEfXhtQ8K1av+Gof9fXx6GF2+1IF
 LAoVKg8bK96rs3SzkautgIkaTuIl+BeS5DLWmK/hRFj0vm051ah5UEWd5F4L71kdrgYA
 5fNA==
X-Gm-Message-State: AOAM530mnxjQLCxM14IY032ZIX81ZYAJdvHUN8/SyNb5LU13DHpiujgM
 dhOcd6ktxysMcU5rXZxNdDQhMWr1btKRSTF3fmA92BiWkwmS8Q==
X-Google-Smtp-Source: ABdhPJzA67sc555Y0IeG6J9Praw2nvtaHL9QvVpvvkuC9U1BVja5RKTrDUy3oepwkIKt/Dh7z1aR3p6V9pb3FvTgfiM=
X-Received: by 2002:a5b:303:: with SMTP id j3mr23934839ybp.433.1623688424841; 
 Mon, 14 Jun 2021 09:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 14 Jun 2021 12:33:33 -0400
Message-ID: <CAMdYzYq3ZYb-FA-SWmbgeUKk3gikNjz7Efc3rbLBxS9Erhb1yg@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add USB2 support for rk3568
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: kishon@ti.com, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_093447_741459_AD7010FB 
X-CRM114-Status: GOOD (  15.96  )
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

Good Afternoon,

This was a hack just to get it to bind.
If you'll notice I've posted a second revision that works better, but
still is untested against anything other than the rk356x.
https://gitlab.com/pine64-org/quartz-bsp/linux-next/-/commit/51612157d7ae3f3c4267ed56676f5d1a952d698f

Very Respectfully,
Peter Geis

On Mon, Jun 14, 2021 at 11:44 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> The original pacth from Peter Geis is here:
> https://gitlab.com/pine64-org/quartz-bsp/linux-next/-/commit/cda136f853628259198d6f70c3e14c9e5c8e097f
>
> I have split the driver part of this patch in two:
>  - one to update reg usage
>  - one to add USB2 support for rk3568
> I have added patches for the bindings:
>  - some clean up
>  - add compatible for rk3568
>
> Benjamin
>
> Benjamin Gaignard (4):
>   dt-bindings: phy: rockchip: USB2: remove useless #phy-cells property
>   dt-bindings: phy: rockchip: USB2: Add compatible for rk3568
>   PHY: rockchip: USB2: Allow 64 bits reg property
>   phy: rockchip: USB2: Add support for rk3568
>
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  3 +-
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 85 +++++++++++++++++--
>  2 files changed, 78 insertions(+), 10 deletions(-)
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
