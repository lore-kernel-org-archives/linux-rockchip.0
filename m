Return-Path: <SRS0=OGSP=C3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6691C43463
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:04:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BECB21D42
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:04:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="COM2aFjx";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVt4tQGL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BECB21D42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+l7fjx22DQRE0eXWQ/Rlgja3lirAWYu0PXvv9/MnmKk=; b=COM2aFjxynCFr4UF/Umk0EAQJ
	1ls7l0YT2VvkxC1ILZkwikbZy0A0p/OoNAWBNaNhve3stgaql02fpQ6EW5LymiJ7FrvN4vsLkV4H6
	c8w2gCdpIjFQmNq8roEnzSGozt8+i+AqHkkSSuaR6LeWyf5ESHJPqyuYpaPJiTdFTvLPiP3pOPYIX
	qhlwcCZPhohrNOFBSJiGWEYBWg1kd8eq7q3sJGr6g5hCM7ujsGUy/YIN4imkBknVkyCl3Yrbvsp9X
	0Edc/odsvjpX58FVoy6roOLYRXEYsh/WOnLKVn189zCXeYXFajimjqyK/JV8XXjfSb68k7jbEK35+
	OP37o5p0Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJH0H-0008Mg-GW; Fri, 18 Sep 2020 14:04:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJH0E-0008Ls-Vu
 for linux-rockchip@lists.infradead.org; Fri, 18 Sep 2020 14:04:43 +0000
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D47823119
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 14:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437882;
 bh=+AUjt8uHrU807ERl3qIjVJflDoMSNyT4i7yBC6dijrI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RVt4tQGL4NGqcuth0LV1JnlCXBW8SO30dOK+Lg8IIRjV0yOF0wWgsEgCOkBjFzk9s
 0Rn62vEFabnBsQPloLvnLHln9lSqPd+bL09xYBIprQJYenk2AZwnYvfpwWNJSXEtpi
 Ma7cMkDdiC5idrlwehKbmi2TBawmYb3NOOEdOvqA=
Received: by mail-ot1-f54.google.com with SMTP id 60so5485281otw.3
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 07:04:42 -0700 (PDT)
X-Gm-Message-State: AOAM530lcRI78GccCMCcNSNwculKg9ZXsc+zsB/sx2sIoANcZFxNNk+9
 DMoINKqJboIllnJJdRUyPcSatP54v+WZ/4AjCQ==
X-Google-Smtp-Source: ABdhPJxRV95Yj/Uh3LvsS3bkFNGt2GCjGRYFMGcZ1fb2PKBNRXUO/m0gTSbm+YgzBtSAdBkO/WVadlDzl7cQpcm0zfE=
X-Received: by 2002:a9d:6ada:: with SMTP id m26mr9294255otq.192.1600437881398; 
 Fri, 18 Sep 2020 07:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-5-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-5-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:04:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJYTNBZQ08ORB01z+=We6tuvqK3MKgGNm-Yj7q2KAMcAQ@mail.gmail.com>
Message-ID: <CAL_JsqJYTNBZQ08ORB01z+=We6tuvqK3MKgGNm-Yj7q2KAMcAQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/9] media: staging: dt-bindings: rkisp1: drop parent
 unit address
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200918_100443_083898_2D62705D 
X-CRM114-Status: GOOD (  16.53  )
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Fix the following error found with make ARCH=arm64 dt_binding_check:
>
> Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:24.27-101.11:
> Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit name, but no reg or ranges property
>
> Reported-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> V5:
> - Patch re-written to drop the unit address instead of adding reg
>
> V3:
> - this is a new patch in the series
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
