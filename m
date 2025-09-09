Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A23ACA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXVY19k5q+VmxLrs4U/RxiVu8OuYb2yhY0GN4/Bc0B4=; b=ERnTeggd+zSEpK
	hGdk9E6MUMRbnWA5Hdsf9dSyDHCTh/ZyB5qASsflJGM45XJ5ua5GWtEF3npl7zblK658IfR/QIVZv
	9naHnMuBEa+b685qGsQzUwqGroHwmzMC7fwZzTOnUVpPt5qrqujXIE4XCIBDVUhVSPiCGg22eP0IW
	FfPsWeSL6g1+KVUgzG4KiVADMhcOTKpw7xNnxlEBoQwvBPppDxNGh/Z8dv2HWHBl+GFLsG7XlPgiq
	C192XsFY3O/jBlfCj3x06CCcQMSvrILG3Bk0DKNufxBg8XznCY2ibeOqyLQxkqsW4TfXKxpY7IPaF
	wAhBu5EoUn10Xhx06u2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw20h-00000008vQs-2yQY;
	Tue, 09 Sep 2025 17:20:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyfZ-00000007UrE-1PVy
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 13:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757425560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KuUSi/wMj/deuFTckhCe0po1wpou4UMuleZXZpAya2o=;
	b=B28hV/HsoLgvAThXwZog9TPvt6TxRq6LxTwyQ8IgjqOFe3WXPpa95OKHZwBFkM1Nrc5iOM
	/PtJb5IVetVwIXSH4EyjHSdbFyo0V8ifxNlMh+vWIgfSWwmn+kWeGlto7Q+WsvXjmw1zzx
	K4rQXxDG8jbyoTB8+zfOyysgCRk1WKc=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-576-TBx08YP3MxaneWI_Oksa6A-1; Tue, 09 Sep 2025 09:45:59 -0400
X-MC-Unique: TBx08YP3MxaneWI_Oksa6A-1
X-Mimecast-MFC-AGG-ID: TBx08YP3MxaneWI_Oksa6A_1757425559
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb7b2c05so122862611cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 06:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757425559; x=1758030359;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuUSi/wMj/deuFTckhCe0po1wpou4UMuleZXZpAya2o=;
        b=VoWzcu2JrvjXXwokZB1Sfkr/VrEfPn2smgWBVl6vwnNYLoEkp65uZ2AxRwVEuf+3Rp
         WO7iFYZTodjzFqkz9MrcNLslNkQw9cTwqeP0iTECK1POvnIb4nH5AA5iKxv9gu9+HYZ7
         tISMGV4hRriyugbYej7aGX+yCpc2wszydwsoUSdWwWQ3g/rt8rydKRbENqg6B2Ey/XbS
         zPzqs3lXKNpf2n5jS9Oxlza28Q98U//bn1xdBii6hiYuI+2Vwlh/oyTmjl9le/A+pkvI
         kxg9GH6rDKmGSU5vD/qoQPhLe34OBIF0MrBZ7U2D+SpKDO1MD55UUnjYDKTIlYl9u5wj
         uSIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU6D15Z7gVIQq0Kygt1Xed9VUuWK8ak+cg+lHrbVgR7k1U3L+LGsddzNR34YoIYnYku4qXsU5cI63oJnaLoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzM5asf6msNlc7ZJ039vSJK97GacY9fjslkI+GcyGOZGOeMkXAN
	uEK9gtQ+hqH30zCFN8RaLsPFAuYicoUi7BrVWIY/PiiUi/y7vi6Mpn11BiaTs4T44dYzSLP91or
	OsPHSvpUd7VDuNEng2wt8TI9pKHfMB4Hc9h30m1U8AGTi1x29qZYyPxywPCCprAcIeTN+BDNZlA
	==
X-Gm-Gg: ASbGncuYshrJt+lx5KhBIzpSycyG702aRaN48qc61b816pVDDuYUvzsOAKEqxdPIWmZ
	ArQr5iPB+LH7rDSghS8EWx6qpcmOUAhOaahqFc+Pj/bZAyO+Ctywr5Bhf4H5pBlzEfe0rqhzfmS
	hlrRW8UfZE+JUXpCIDg7Axe9j9WeFp8qPDcRd3l/siKMz1bgyhKy4Qr+Bdgk59+mVNdMzG+8+RU
	dukvMMnNWWzw+iWJniEdF+YQu/yGi68zqtur2QcM/OpX+DN2Wbe8dEniHkKm5KQm/RI0MUAg7pR
	GFrpQeZIK/gD4D7BZxxl08mM7wnjWc1s4Ft5domzOpijuIZsxmI4jKpO/0tgtALKCae2njeRIcv
	ggvlRyZFKxFs8PNJz3Z0=
X-Received: by 2002:a05:6214:624:b0:70e:3e:6304 with SMTP id 6a1803df08f44-739435cc42bmr94859716d6.65.1757425558716;
        Tue, 09 Sep 2025 06:45:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmp4FTmcXOP7+RMzS1+U7HWsbh9sfiIsI3KOLWl/uwcWgSrIp6/82zb9nfnJx9VJ/Da/CuPA==
X-Received: by 2002:a05:6214:624:b0:70e:3e:6304 with SMTP id 6a1803df08f44-739435cc42bmr94853596d6.65.1757425548985;
        Tue, 09 Sep 2025 06:45:48 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720b4665fcbsm138866926d6.37.2025.09.09.06.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:45:48 -0700 (PDT)
Date: Tue, 9 Sep 2025 09:45:46 -0400
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
Message-ID: <aMAvinQ4nn38E7tx@x1>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-2-9162470bb9f2@redhat.com>
 <aKX35U4jX55W3W61@vaman>
 <aKYFh5YI9j-MHKH4@x1>
MIME-Version: 1.0
In-Reply-To: <aKYFh5YI9j-MHKH4@x1>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5n51gQKg001F51Okeh3Dohg4Y5LPQcAaYIcjTMTeZ8E_1757425559
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_064601_443552_2F0ECCCE 
X-CRM114-Status: GOOD (  32.87  )
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

On Wed, Aug 20, 2025 at 01:27:35PM -0400, Brian Masney wrote:
> On Wed, Aug 20, 2025 at 09:59:25PM +0530, Vinod Koul wrote:
> > On 10-08-25, 18:45, Brian Masney wrote:
> > > The round_rate() clk ops is deprecated, so migrate this driver from
> > > round_rate() to determine_rate() using the Coccinelle semantic patch
> > > on the cover letter of this series.
> > > 
> > > Signed-off-by: Brian Masney <bmasney@redhat.com>
> > > ---
> > >  drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
> > > --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > @@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
> > >  	usleep_range(80, 100);
> > >  }
> > >  
> > > -static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> > > -				    unsigned long *parent_rate)
> > > +static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
> > > +				       struct clk_rate_request *req)
> > >  {
> > > -	return rate;
> > > +	return 0;
> > 
> > This does not sound correct to me? should this not check the requested
> > rate?
> 
> I can't speak as to whether or not this specific driver should have a
> rate check here. I've seen in some other drivers where the specific
> frequencies are managed in firmware, and Linux just passes on the rate
> request as is.
> 
> Some other phy drivers (most notably drivers/gpu/drm/msm/dsi/phy/) only
> makes sure that the requested rate is within a min/max range. Assuming
> I read this driver's set_rate() correctly, it looks like the min/max
> range may be 64-192 MHz. I'm not sure to be honest.
> 
> This change keeps the existing behavior of the driver as it is today,
> and just migrates off an old API.

I'm just checking to see if you have any questions about this series,
and plan to merge it for v6.18. I'm hoping that in v6.19 to remove this
old API from the clk core once all of the other subsystems outside of
drivers/clk/ have been updated.

As I mentioned previously: This change keeps the existing behavior of
the driver as it is today, and just migrates off an old API. I don't
have access to this hardware, or technical details about what should
be here.

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
