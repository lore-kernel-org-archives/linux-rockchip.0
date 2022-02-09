Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0841C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWAX9YOJph/DC6fR1xXQsUW69M/M0i6NQhhM9RXWfq8=; b=jE4zto54aYbQzC
	BT/pDJNGLEe1+I1W9wWSNlLekzTnPIR+/kQ7W90v4GUjF0OSiKciVP371jCG3TCO2gJLHbaDbZZad
	QQMwzvmlZoNiTsotygRnDcZIYpMJ4lXWLejaz+EttNmd2GahteHpKl6pPehs8PbrMsdZ2Rkq/lGSb
	8Wzx1AINhZNjtMiaZ6mFVEQbzj++A8yXo2V9+/D7ZN9HazfYaFfEpO9mCpb1m1oGyet8cgKuBjRcf
	Ia9c5dCUeCNOym85291HIygYLogdgo8lUXHMm9156D8YV75IA2TF4I0PdPRZM/QkHLhNasDZhyIpe
	RR4kWJggIjwde647zndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtaQ-001Yvf-65; Wed, 09 Feb 2022 20:29:10 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtaO-001YvE-8E; Wed, 09 Feb 2022 20:29:09 +0000
Received: by mail-oi1-f176.google.com with SMTP id i5so3777500oih.1;
 Wed, 09 Feb 2022 12:29:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qX/iv0/I3lulBzogE/XezC3rR6c9uyWKFDg4KqlAzQ4=;
 b=Vp6Fd+ynYFszjaJrr+T1SfSe6rAcUJqxAAOONvrhahbOGwDBvtmLmm86ENvVOrhWDt
 VeBdNXXGTmhJQMhclEgHTGihnzBCHZ5X0IN624ham2gPyDsnf3HcURlMlKeElhsS0kux
 5GRpeBjlZ5lB9KPkZOahmJh3R+f6dmR/zMltRUn2/j7Lu1OvCdgzvaKcsNyHBtBWy2ge
 4Iq0AewfXoypwTVJYIdk5tVhC+z74rnUW+doc3fEFEzSNmBG4mfV+eR/BKLK8otEuc6f
 EjQSefZuGR1LJYN2NKMzsfLApGVtYgXzQ98AzzIaPCuGhFp1+6lFZsC5yIMl+NIcPdzd
 iDRQ==
X-Gm-Message-State: AOAM531/o/GCPs2ZPqJz72V4Knvx0tvviOxM8RhCN6rqr0+u3vaZBQJy
 yUqrWQHr0QZsjaYu7AVGmQ==
X-Google-Smtp-Source: ABdhPJyeIlxx9yA912gKiYSVOckzCyB2ECcB5acxCzx2wrIfJzWy1fsVNYEgra580uClr8vGIPLCsQ==
X-Received: by 2002:aca:a891:: with SMTP id r139mr2194753oie.337.1644438546936; 
 Wed, 09 Feb 2022 12:29:06 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bl6sm7216978oib.38.2022.02.09.12.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 12:29:05 -0800 (PST)
Received: (nullmailer pid 849316 invoked by uid 1000);
 Wed, 09 Feb 2022 20:29:04 -0000
Date: Wed, 9 Feb 2022 14:29:04 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Lin Huang <hl@rock-chips.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-arm-kernel@lists.infradead.org, Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v2 05/15] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Message-ID: <YgQkEKKTy5hAMfpS@robh.at.kernel.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127150615.v2.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_122908_312364_3A81A04A 
X-CRM114-Status: GOOD (  13.12  )
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

On Thu, 27 Jan 2022 15:07:16 -0800, Brian Norris wrote:
> DDR DVFS tuning has found that several power-saving features don't have
> good tradeoffs at higher frequencies -- at higher frequencies, we'll see
> glitches or other errors. Provide tuning controls so these can be
> disabled at higher OPPs, and left active only at the lower ones.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v2:
>  - hyphens, not underscores
>  - *-hz units, and drop the types definition
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
