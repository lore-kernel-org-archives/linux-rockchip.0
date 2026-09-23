Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84733C98304
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 14:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUP2akiN+clxbw5tf7UoJO18p4ESlvNcLRIJQ+mo8Zo=; b=Xhu/wdzPfdCrcA
	ijqP8aa3q7M8XPfOqD3wyRZYehHM2HnIYlGd6tbpFScbAUaUuD8WNz/vu606OM5PsglGnhRDOVyjM
	U5mpu5v8idSvWAd2KHSpvaIPPg+m8dzWRVZTBPQUy9Gqv7Wta5ICY0ws2wrTOiYGkyXQpKRe5gZP1
	y+9X3v9gX6BKuUVTJtR4wooBQOdN7G6iEWtppjDz4ryybFxdv4neTvmqbQRAW9IVQ8cTc2drIg7tv
	SO5Wbml3dwjAgoMnt8+58DVpfvAE3+cuP3u2osNDYwgCDDlM5iZaqCfv+RnmseuMqQWBw+v3W0633
	c5g2tc8oj9talQzJyc3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9NwC-00000008WPY-0R0k;
	Wed, 23 Sep 2026 14:27:08 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Nw9-00000008WOT-40OH
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 14:27:07 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48435ae9ca4so109984f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 07:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790173624; x=1790778424; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qUZaB+3UwVox3QuJ6fhpHcHgvKk5qs3qiEgpgLo0ESw=;
        b=opH6ZD7Rg2txCkI9ciBY8xVizi17uMIH5YsZ5Ne6QYaisxB7Lf6Vy/2WkIpgJkokvz
         WZJKyvzQKWHnPqimit5/KV8ms/2jdsHP6OjFds/kuHCPyGuJEQGgXLlWQbMDJaFcjZRc
         4L7PxC4YjNPQkYUARbhzDTaljmFhvl5sWxsR9BBmULR5k/fgvMIwnI6DDQMKqiirXcma
         YdVlzWuml2NEXE3a72xjRuK4svuSj+pcmsaIOKwGR2SjpGKQrrVpnhyTPJVbPz4DNOyY
         9eyosNIrj6fUgYS6OyC8OZnHBA2A/VlUvUcFFsGCszBoVlmj38ZC2CcHpg9RSMEccH4r
         Or1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790173624; x=1790778424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qUZaB+3UwVox3QuJ6fhpHcHgvKk5qs3qiEgpgLo0ESw=;
        b=Shg3nDZHA0NyBVehRTULV2fasawIVbiV2K6c1Hh8cp1axkolB4HDU2ZGjqgD3m6x0d
         PfNacZo2eLZFxWR1+ApjhBG9oBxlZCsY3wgu4aGLLif7F7w2D5Krir0UQzLKFEjxx4Wp
         kwNkcTTWqg0AQVtLLrwCJHcz/fs6g2LXp8+NtAdcWHxaDi5GzH7N2R+iBKbmEBgTJfuA
         nLzajcGza02j4SInZsXPI5sxqRJL3Vm6GyMUgeeSdy3P+Li5KJ8cSNjujbbeJ7njufdf
         nwcn2MI3vJcGSmMdCHZnJRejyH0Uv70ofzNpggNGRy3+LU2trNckJY9ajJ4Qk4YXIt2U
         EQvQ==
X-Forwarded-Encrypted: i=1; AKwUvBwbSKcwBXE89PGflzdSBxktwhzS73Gh9cTaH0l1qHodHMAsyBJuns4uiwNJvlkZGqUoa17hufcxBGdt/uiDnA==@lists.infradead.org
X-Gm-Message-State: AFuF++mNyrDAbxkmo0Dw+WmcyRqI16vS796dAEUjWN2fyl3hxxQGFBiV
	yOmTi5nLTh384xEkQWL/VvOOG3vQ/AP3K8oE08dGQP6LCZ5yMAH3iJqh
X-Gm-Gg: AYBFou3mO2p4wX0754af/pmsDvh8JhgmCAnu+DM7aPO6thOvLhhoY3y95c38XnWsRER
	rfx4KweI2n03tvwLN6B0Co4+zKV+6rOqHw6hLKWH1kSbOdw3onBP7ZD4PCRwlD/uSoackxlvPjc
	Lwp4IEYhc34A0KcM9E8kslmT3OTppTPRNHGkyME45kPMk00cic9iJxHqHgbOb9hIyEoQHVD6fXU
	1Scx4bEzI4ZwVmDFr2i1HEavwCnLPD68UaGtmhJR1QOww4mbeHzwfRGr5P1K3IHoJtS2fNB15VM
	p96IY2Mrp/zZv7up1n3NiImd4tDpBXJNkRtHfuIG4qDwHaUV3CmRKuDhp2Pj/uVsTiAv1PtZ4XX
	up6C9igbtm1PtUDF6nCsGt42CbpAuUjsQ1wBRFzeJS6h5Cisc5nwUk/o4X851uesMZea+BA1RHq
	DToyiTJ6jhn/C/fDjX6b9Y9v/++l58h6MR/pQXyNEP2T4dUe3vIh8DLnDvNGwqCH0wvAKp99Y2i
	gm6y3qbdeyeMfmMMx+wJVVNJD0dDrZ/5qJ9jgQR5VIzyi1YVMuLkebKFcE9Xm1I6LCtgehoQpy8
	H/k8/e+++ZbubA==
X-Received: by 2002:a05:6000:481b:b0:487:1251:20fb with SMTP id ffacd0b85a97d-48867049f60mr4545566f8f.2.1790173623692;
        Wed, 23 Sep 2026 07:27:03 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F45001B67602CEDBE732F.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:1b67:602c:edbe:732f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4886876c64dsm7388874f8f.21.2026.09.23.07.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 07:27:03 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sidong Yang <sidong.yang@furiosa.ai>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 09/11] accel/rocket: add devfreq support
Date: Wed, 23 Sep 2026 16:26:24 +0200
Message-ID: <20260923142624.15791-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <arPLjz0fP_b5dseJ@rock-5b-plus>
References: <20260922080114.44662-1-royalnet026@gmail.com> <20260922080114.44662-10-royalnet026@gmail.com> <arPLjz0fP_b5dseJ@rock-5b-plus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_072706_011346_A15874DA 
X-CRM114-Status: GOOD (  10.61  )
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

Hi Sidong,

On Wed, Sep 23, 2026 at 10:14:51PM +0900, Sidong Yang wrote:
> IMHO, handling rocket_devfreq_init() error as critical error to disable core is
> too much. How about just printing error for user?

Thanks for reading this far into it. Agreed: rocket_devfreq_init() runs
from the probe of the core that binds last, which need not be the core
the devfreq device hangs off, so a failure there takes down one NPU core
while the remaining cores keep running without devfreq anyway. panfrost,
lima and panthor do fail their probe at this point, but there it is the
whole device; msm_devfreq_init() only logs, as you suggest.

v3 will warn and carry on without devfreq. On that path the driver will
hold no OPP table, no OPP configuration and no runtime PM references,
the same as a board that describes no OPP table.

-EPROBE_DEFER stays fatal: npu-supply is first requested there, through
dev_pm_opp_set_config(), and swallowing a deferral would leave the board
without frequency scaling for good.

All of this is from reading the code; nothing was run for this mail.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
