Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A653CA1016
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 20:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=za+wDQ53YW7InEP01XGmKWKCNk0IActd3UOGvE7M5p0=; b=JeRXyNJ5hQWm/U
	CY8doUaZKIvJoxK1tGP1X0ywJcmsSdciXtAQq+joO+0quTUHLJr1xSQfjfAKFUX14Zlx6NyWoQhzo
	a6OrP+pC+1ojYFgJpm+Ikgoa2LPx8inu/zzRFCqwWy8gQ0gB18DI1On4ARVJPwUBQFpnvjtZUBojm
	g1SpLiRAmJfPwpKBqcQlncELVYVwHiKU84mh3BlDx69equi1oK1zwa7zlbZxfe9NYRMOW/C/puWoJ
	kT0qTSWbvJV7Zf/4lq6zTRomRhF/Smf7YWNr2hiuIoATIEj55AGNLCNl8AAkEwnikJGrU5cwGS/0b
	lMWmMu66lKW17OKoFLZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvip8-00000002IWZ-3Mni;
	Mon, 08 Sep 2025 20:50:50 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfQu-000000018DN-0hR5
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 17:13:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757351615;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=f5u862f+33I0ToIg9z8vAxXZhZpYtuEC4meBODLVdsg=;
	b=TfJQxYHB7l7KDDURxBPpIH30XGO4ymo6MB3/92HdIeoAoZEtg4U/I2UWM6lwrP4l2BTnK2
	wcOBRjMSQwp2hKut/wNjnyWUR9dtKzgBF2EwHMouImHATmOHilKmJZkOxo4p5nQr3BcWx0
	YBKoI83gPpamAmV2iwvyI6JspTs1Jew=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208--2bgQGFWPPmAujspvWaoSA-1; Mon, 08 Sep 2025 13:13:33 -0400
X-MC-Unique: -2bgQGFWPPmAujspvWaoSA-1
X-Mimecast-MFC-AGG-ID: -2bgQGFWPPmAujspvWaoSA_1757351613
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e870623cdaso1165943785a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Sep 2025 10:13:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757351613; x=1757956413;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5u862f+33I0ToIg9z8vAxXZhZpYtuEC4meBODLVdsg=;
        b=M64VdPbZv+G0x/opR2NHxyPVrcOga5kGPMLNIrR9kCvy4KLHPRQpBWLikcMWv//E8v
         EkzsLQENWFdwvTwX5eEqO4LmvpxJ6GD3XD+7eS5FUT3YIj+ExeTC+WZMjCaJUqiny2fj
         OE1TSlhSg9aX7xsn/wgOUGeZj0QFAKK6mb7DBhnWgdvv/BOzI4RVx95MB6je1s8u/IO4
         Z7esqjanC+vqw07qRHkxUGo7AhLHxpS2e3fUDpWrVd3lCoqTP+RYM/Ryjsvnd9A7WpWq
         99UtKVXt/YXMxYCTEUVgEWYNfzrWNofiXYm7GftXXJi1W8qSKZkMHPJAIsDmfciyj4T2
         LVLQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/z0WIlaGjEpl3BgF4m/4GQVaw1qhgivFiAn1DgosppllbGOLFzaCSL1ZSmgdwo1e3lByDrSDo8nzHQuou4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwzwYHeZTgJqExziXaVU6csQctR5eBrGCNCGf+dN3c+uUrIIa/o
	PHjs0eD0H6WiUiPAx0s9IwOQP/DZDwU4wwup9jVENpMFkFm+LPaNpjwI6ES8RtDE0zWM1xlPxse
	IEVUODxOSu43yHTCnJWprofdW3f9OhcUhh7VUg+DSLsiXU856xtJ02GvXQoiEdzuiyMaCUcZqNw
	==
X-Gm-Gg: ASbGncu6U8X6qrFo93RUvctgL+rkxIpI3H1ev4ZVmTHYLB0FiH1JJi0sIkUQ8Hl4nMx
	Rgb4Vj7II2rtyChPbwTf7Y6GaPH/+3DhrW/yPAK9rutaAhFWKbiHHeB5LwAeyJdc3KVJ7Ypl3sI
	hmow510TYG7VoNjajCguI9PlDW09H5IpICk56Befb5J8XVCcqQnP6oIIGZC6as39lpKkVxVPalG
	kGq0HKP4wCf1ZzP6YY09wohbHStn6Ac+SA+3QXTOXU5qVVgqFZwh3DpqbKFigStoC1elWo9OBWZ
	wSEciB+wjJTOYo1bW/eisi3BFKpabE6wNKZQSv2KwTGgESPNP6CEKOzyI1k=
X-Received: by 2002:a05:620a:4589:b0:7e8:1d4b:b00e with SMTP id af79cd13be357-813c31ef062mr818166585a.30.1757351613085;
        Mon, 08 Sep 2025 10:13:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjCX6nGjgyfHMIgtZhE/2SgJwH/cNIdfnPyghhVtQtsXFicJtDPEijNhBgIwhV/6KVPSFsmg==
X-Received: by 2002:a05:620a:4589:b0:7e8:1d4b:b00e with SMTP id af79cd13be357-813c31ef062mr818162785a.30.1757351612499;
        Mon, 08 Sep 2025 10:13:32 -0700 (PDT)
Received: from x1 ([2600:382:8507:870e:b6f8:ee72:4f09:a16a])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-80aabf586c5sm1108360485a.60.2025.09.08.10.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 10:13:31 -0700 (PDT)
Date: Mon, 8 Sep 2025 13:13:29 -0400
From: Brian Masney <bmasney@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Michal Simek <michal.simek@amd.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrea della Porta <andrea.porta@suse.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 0/8] clk: convert drivers from deprecated round_rate() to
 determine_rate()
Message-ID: <aL8OuWjlswr95xcB@x1>
References: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XoBkMSStiihynmgkawldvzaVDGgbm054Jw7er64NTZY_1757351613
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_101336_274173_A7161A45 
X-CRM114-Status: GOOD (  14.43  )
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

On Thu, Aug 28, 2025 at 08:38:19PM -0400, Brian Masney wrote:
> Here's a minor v2 to my larger 114 patch series at
> https://lore.kernel.org/linux-clk/20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com/
> that only includes 8 patches where a v2 was needed. To reduce the noise
> in everyone's mailboxes I'm not including the other 106 patches that are
> still valid. I will supply a 'b4 am --cherry-pick xxx' command on the
> other cover letter to exclude the patches in this series.
> 
> This series has no dependencies and can be applied in any order.

I included a subset of these patches in this pull request to Stephen:
https://lore.kernel.org/linux-clk/aL8MXYrR5uoBa4cB@x1/T/#u

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
