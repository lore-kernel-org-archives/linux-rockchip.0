Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D381C5DF9C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 15:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IknD2G6QYrXMp4YMbXSe158Iq6gUTuIszR1H0ajWCc4=; b=d2T/+Gbh3949Xu
	GZmCEg0LG0634AK0cbEKOLxNcr0E/LNx2MIA4Al186Q1vfa2toPkaXLQQ3VjYo3rwUo7G0oiUcNEe
	0H2u6A1MIGkaItFiIxD2r1sOR34vEpJMTvH0rjeGfFS9I1rZ+ZSgWAiG82hvYM8vK0psogqyaekNU
	4JPzjrSNFWVMZ3d+Uzo/bztZDJ3pEuJ5/4+A5TUCOfpy9dvgZTrrVbIxckt6GPpbkaJxUn66MQTMk
	CE/oxMGBMef1ABVjyykpA+rQ6PyQOFydD+bNvT1+yul1B1msmFywKf3plD91UPg4IiHuagzh3+3et
	1cCq3CF6WiIvplKZIURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWWk-0000000Guw5-1iam;
	Mon, 24 Aug 2026 15:23:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWWf-0000000Gutn-04Lt
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Aug 2026 15:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1787585032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=t3RhcvzE2LDgfcbnY3j5KII1AB4sSFJ69Dx82UdW9TY=;
	b=iy+z0aozX5vWBjlAoHAHrmeDI4AofDhMbBhAIyGvnKKZPkwQvd88WGj3xbghEGNd8Lhn03
	fEXNYfhAZgVWvETlXfs+6XxtX1m/0LT5otvbjsT7NayCnmFmJWbq1NJuDvINVH1I7sweAs
	Nk+BL60oxCjkRMULgRV6O1GEcaRDNCE=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-oNBTLa6-OXiPpNaBezrAjg-1; Mon, 24 Aug 2026 11:23:50 -0400
X-MC-Unique: oNBTLa6-OXiPpNaBezrAjg-1
X-Mimecast-MFC-AGG-ID: oNBTLa6-OXiPpNaBezrAjg_1787585029
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e63df032bso701485a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 08:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787585029; x=1788189829;
        h=user-agent:in-reply-to:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t3RhcvzE2LDgfcbnY3j5KII1AB4sSFJ69Dx82UdW9TY=;
        b=CemuxPh69rrsDwwls71HGu8uA+rSfqPVJsN+RKqxxuF8BzEmYo1Rtqlr1lTutkynAL
         8+hcy9mvlY8BYuMSuzmSdBUImq57oqWvrHviTMk5aVJxofcWAsZOOeKJpbT1TXDT95zl
         bl26YEZ/4aHqmKJHV1EHjWdw+oHp/oFZS82rnY5VBKkuU1XFMwoBglAnolahivv/V/es
         1hbIph0galpRbn4l/27FMdcxbvpa5drOd4d0REi93tjPewjUfTPv/y/n7iRk3/GkPwOs
         QT6c9cyliaJ0RlmZ0G+10qon/bqp9ux+3RjQ4+pWqswBVtKSbPG4FEGfTSYLNl231TkD
         7SlQ==
X-Forwarded-Encrypted: i=1; AHgh+RphAaqLEmZ6L7TUP5BDgrK6qrvTqfd0asnlB9r3Kyz1PgNRwCTohHAHsddJCrfkkmcGqhF9ebRSym0EHlij1w==@lists.infradead.org
X-Gm-Message-State: AFuF++l3AVLNNh1xKZkEbx0nZYLiLORASveq97Z8QBfpIU8Fw0YbTAiV
	BOh42qmlbX3n1JZxqPn2qxhzIC7Z1GMYB89bgn3OYj/k7amuhpSrgomJhmY3nEMa5zNTZgtrL5W
	MVyjpfvtuFgtSVgRAvQOJ5HxFGnXE0qtWMZPcad2812ymb2kP9uoOh/p5R3z37d61OduKbixYUw
	==
X-Gm-Gg: AR+sD11f8kXwTsm9ieqHKaVCx/AxnhL3oVBJwbziLB2q1xJcvyRcJluMazVNVZfKMUR
	Joz1h/2B7+/RfmXTn1mgj2ulpsuv/0UTa6AJYeeDFU7hsrFXolo+DVXTUMJJJzRp72nYxb003C0
	MuFEmKYcXup7bl3LrFPfLJaKBfDJcR/eTm0Tipir8DhN0xpL5OQt9UVC3ZmmO93AoGVWSNOPeaj
	9Bd/8MQE+elrX8lJxe7VvxPqoH4gtzNlejvPr6V6LTdBvO6Z9KJ2QFEWQbrakyCCGuhcUxbYZyf
	00YfflFO+OslOez15NleSqwn7an1NKqVY/j1dCqsaHvlX00vYGVf1UhICDnChwIaeV9XE6O5pez
	zIlAqZsoNdTlw6kVS+GIVaz33fJ6jIS34S5Y=
X-Received: by 2002:a05:620a:410b:b0:918:7e9e:de74 with SMTP id af79cd13be357-93728511a13mr3206789085a.17.1787585029399;
        Mon, 24 Aug 2026 08:23:49 -0700 (PDT)
X-Received: by 2002:a05:620a:410b:b0:918:7e9e:de74 with SMTP id af79cd13be357-93728511a13mr3206778885a.17.1787585028700;
        Mon, 24 Aug 2026 08:23:48 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93749ae390esm523684385a.16.2026.08.24.08.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 08:23:48 -0700 (PDT)
Date: Mon, 24 Aug 2026 11:23:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: Make sure clk_init_data is fully initialized
Message-ID: <aoxiAyoETWEZ1bue@redhat.com>
References: <cover.1787240165.git.geert+renesas@glider.be>
MIME-Version: 1.0
In-Reply-To: <cover.1787240165.git.geert+renesas@glider.be>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hd0QSwoQ_Q0i-HALEX5IkHVZ7TG8nyt-QfS7PHbef3I_1787585029
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_082353_124196_01F9350F 
X-CRM114-Status: GOOD (  16.33  )
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

On Fri, Aug 21, 2026 at 12:08:38PM +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The clk_init_data structure contains several mutually-exclusive members
> for different methods to specify the possible parents of a clock,
> prompting drivers to initialize only the members they need.  However,
> not initializing all members may cause subtle issues, which are only
> exposed when CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_NONE is
> enabled.
> 
> Hence this series aims to make sure all members are fully initialized,
> to avoid such bugs, and to prevent future breakage when converting
> drivers to a different method for specifying the parents.
> 
> Part One[1] fixed all cases that I identified to be real bugs, in
> response to a crash I saw on BeagleBone Black.
> 
> This series is the PHY subpart of Part Two, which fixes remaining cases
> that are currently harmless.  These are still fragile, and may cause
> future breakage when converting drivers to a different method for
> specifying the parents.
> 
> Thanks for your comments!
> 
> [1] "[PATCH treewide 0/5] clk: Make sure clk_init_data is fully
>      initialized (part 1)"
>     https://lore.kernel.org/cover.1787165329.git.geert+renesas@glider.be

For the series:

Reviewed-by: Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
