Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B31B7CA0EF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 22:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6THLfCl0CMcJnsZg2xAU0EOcR0hkQMNwLyg2h6oR2pc=; b=Bx8dO10rExtoIG
	gtCusJPrTSOhiQbeRrZ3zml9YDJPkl4sVczGKPZExvCR8tyYmtlAy6SB4wI1eU88y59lLiTZaEoyb
	Cp2lU4hyKCwJ0K0ahLTlTqjBypaxZMwrh+TiXXzJE8Z2wZXnU7pFV+jYJN9ey2S8PuWJC7Inx3Gtg
	pUob5N+XclSOxkcMqZLsPHPs9H2QTrSZwDclLjXesq8eTKohxE+pCTvVjWRA4I8mPQO88Qd7njIYb
	87cCIFKVA1+O2U6cZQD5r3jWT47AYeg2qFCEJcdOv8KNonZnxbUJbbHEROmPNZyKCFAlFVmoWuySn
	b2xHmAQsa9MA9mR1UOBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoqs7-0000000F34C-3esd;
	Wed, 20 Aug 2025 22:01:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uombD-0000000EXp9-2Kn9
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 17:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755710865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y70NAvFqmHqQ/QHVWzEdqMxMN+9/pnnsuJyiP3UY3H8=;
	b=NnnIpB5MmTS3tqpycWSJCuGseWo3+Gcub3FH2jnfa1QNHKOCurrk1RXuazAXV6Z2pZUqsl
	9Ner46RDyckJA5MWLoRbuF3OQlApzEZZIjc31Jy//c0NFQaK2HlVs8A+xhc96q5bGCe1wP
	SBwJ4Oyjea9lxu7x03MzpfJwUgRf+gg=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-687-M1fE5jLRN5y8Rv5t2cNMbw-1; Wed, 20 Aug 2025 13:27:44 -0400
X-MC-Unique: M1fE5jLRN5y8Rv5t2cNMbw-1
X-Mimecast-MFC-AGG-ID: M1fE5jLRN5y8Rv5t2cNMbw_1755710863
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109c7e901so2999101cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 10:27:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755710863; x=1756315663;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y70NAvFqmHqQ/QHVWzEdqMxMN+9/pnnsuJyiP3UY3H8=;
        b=gRlsaQCByF82X+XwJxvCBw7b3FHau7RXoRESvbmD530jQlCKDsxnWceSCGyQGqbmlK
         aBSgsyFM02U4QhImuXnNw/oKFSYO8/wPv7odC4bv03mN5zlxAPHQHbT4V3eZQFGLgurd
         ujgzkHbidYx6i/42y/pENDgyvoBAPzym5tl5SFOfaMsQVT89vW8G3jHH/c17vep6ueTQ
         0WWS9FBNxoyuU1Eyy2Pz9K1NjzzdAvX9NeiQXBQKUobJgIExqSkbvu128ADHnCvfljjO
         dBb2rbl8gsDPsJuB27BUDINoWJr+DorANGpGSDPrSyv0BXkrIIboyd7qAGOBOMnZE2Uu
         TIKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ55ayFc7FI4jGIPWT96SQ970i0OiaApk6rorxCU/+7AJU/IDzszgy8dRLBEkohAfLuixM3dJDa+jwGjNqAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjyz4++ES31X8L1YYzNVh8E7FlA4c49wlTbZqpeeh5je/1YAnE
	PHPNbGZx6UwY6Po84pWqg4SuPVEFOYy9GPObcttobZpktK3rvfof6wMV7PqMbjGGwy1/SoiyxlG
	EKzJS+aB3zIBwVZqcCRgCQ4Hk4OfNB8e5Dg+Mt5/E2jswe0VyBrz6g/k8o8Xvh+1Ft5xzBtR/UA
	==
X-Gm-Gg: ASbGncvGVGCNfjhRXHeNV7/39J8fArnTFv7xGyW1trbLvGFnw1khSrjUqJHTH1Yff+m
	QJep1reM8s+2Brk54J7PM85bqs9Oxqg3M4V7z3dup1T14YgrpLHoMuxcLDsCaCsPLg9JGDJ+Sbg
	L9fn/EEIdeWmLE/n9OXd6rpSZ7Dzk4X/MQaZjYV4voPCKgwtka69GSr9Se+Pu48D35kccGmObDm
	BFi9erqQQ7Vn/kkL1xx1KOmBRHG4DPKtlMTpCK2acFy9uQ7dPxCpsIOCRGqKWEjRaAGGVm/Kx7Q
	R/liKdRckVNSuhX7M4yLXaWYDoL1mKvbFOeX3CMqJ/1Oar6rDS8fFc10rkX0kOM=
X-Received: by 2002:ac8:5dc6:0:b0:4b2:9ac2:6857 with SMTP id d75a77b69052e-4b29ac27162mr22632791cf.78.1755710863384;
        Wed, 20 Aug 2025 10:27:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBHjmp0EQimLUiSVjKdx79ljrj20Q8jlRYnemWAhO0v2X5MfDUxphjoE81Tq8MZ5J1pPp2Eg==
X-Received: by 2002:ac8:5dc6:0:b0:4b2:9ac2:6857 with SMTP id d75a77b69052e-4b29ac27162mr22632391cf.78.1755710862940;
        Wed, 20 Aug 2025 10:27:42 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b11dc5aeaasm87927511cf.19.2025.08.20.10.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 10:27:41 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:27:35 -0400
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
Message-ID: <aKYFh5YI9j-MHKH4@x1>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-2-9162470bb9f2@redhat.com>
 <aKX35U4jX55W3W61@vaman>
MIME-Version: 1.0
In-Reply-To: <aKX35U4jX55W3W61@vaman>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: l4YZfpgI5LcSMaBPcMw8e_02de4t8gJXZXI_kSA2FP4_1755710863
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_102747_673784_024010FA 
X-CRM114-Status: GOOD (  24.34  )
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

Hi Vinod,

On Wed, Aug 20, 2025 at 09:59:25PM +0530, Vinod Koul wrote:
> On 10-08-25, 18:45, Brian Masney wrote:
> > The round_rate() clk ops is deprecated, so migrate this driver from
> > round_rate() to determine_rate() using the Coccinelle semantic patch
> > on the cover letter of this series.
> > 
> > Signed-off-by: Brian Masney <bmasney@redhat.com>
> > ---
> >  drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
> > --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > @@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
> >  	usleep_range(80, 100);
> >  }
> >  
> > -static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> > -				    unsigned long *parent_rate)
> > +static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
> > +				       struct clk_rate_request *req)
> >  {
> > -	return rate;
> > +	return 0;
> 
> This does not sound correct to me? should this not check the requested
> rate?

I can't speak as to whether or not this specific driver should have a
rate check here. I've seen in some other drivers where the specific
frequencies are managed in firmware, and Linux just passes on the rate
request as is.

Some other phy drivers (most notably drivers/gpu/drm/msm/dsi/phy/) only
makes sure that the requested rate is within a min/max range. Assuming
I read this driver's set_rate() correctly, it looks like the min/max
range may be 64-192 MHz. I'm not sure to be honest.

This change keeps the existing behavior of the driver as it is today,
and just migrates off an old API.

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
