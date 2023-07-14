Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE8A1EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 14:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/hEXlmIrxh8Mz1ZwUZy4N5/gazr/RulnikFo4OKyZU=; b=q27kttlzFmUucn
	BByTsrb18M7FL0hh6pj++/5ow2CIuhH6CXo2Vv31Pni0rim7eooqZwplXt63Xrb3oWYSMshzllyu4
	ZvwARq+IKAXt0FvZpChX7++EWSqxeH++CBp2or3t2tNi0hLmW7GDolQsUcTkSwGiBTyot9Mjhl+Ov
	YZV6ZvbEAaGRg93MclzA0FbDpqnr65t033EbryVhKpWDFgoVShWDlgNXzoFnfXPO6+b8/xagqz6MR
	W2CkJoE3EbJQF+vUK54IAGq1fvDQjGaWSoJ86wJSwroHahsCJwg0LbS+vG/EYl23bFa5vP/8pGN9A
	PfQWknfxfmSOQZS4ATcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJcx-006NE9-1S;
	Fri, 14 Jul 2023 14:18:35 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJcu-006NCg-0j;
	Fri, 14 Jul 2023 14:18:33 +0000
Received: from 8bytes.org (p200300f6af03f600fd690381fa83412b.dip0.t-ipconnect.de [IPv6:2003:f6:af03:f600:fd69:381:fa83:412b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 047AA28012B;
	Fri, 14 Jul 2023 16:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1689344310;
	bh=x48tQJuhRIcBK8H22bowqvguJJwO4RiPk3c8qAoIwxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dp0bpR/TN6JUtC2kVopJCIWL6JgKs6ep/uDNil4nOncAjdx8i5643rC7XpfbQz/oJ
	 wgX9d0iHrf47FXFmQrKlkn0a5k+oRW/Rjt5TwtyqQEDOR7pfTD8WHZw/UCRS/LIveP
	 OSmROeqVdXZUilMAGUgu/5sGLXgLm49sLKwT7kn9SDvlImkJH9oNxb703qm7xKePAX
	 PBM6w4VEduBYW2BkfgUdSLjpn1OFW1KX9lVucEWP0DXrMJnJfvV91CTMOIl4+y9qIW
	 h9QFUSCMuH/lBX/VDf+rJh4J74YqmNnc7QumgOwcWATRgJkKv5DQt1+D14HLkRoQNi
	 /TGV0Evt5GVKg==
Date: Fri, 14 Jul 2023 16:18:28 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] iommu: rockchip: Fix directory table address
 encoding
Message-ID: <ZLFZNH_6HIxkYS4n@8bytes.org>
References: <20230617182540.3091374-1-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230617182540.3091374-1-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_071832_507635_F5C33157 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
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

On Sat, Jun 17, 2023 at 06:25:43PM +0000, Jonas Karlman wrote:
> Jonas Karlman (2):
>   iommu: rockchip: Fix directory table address encoding
>   iommu: rockchip: Allocate tables from all available memory for IOMMU
>     v2
> 
>  drivers/iommu/rockchip-iommu.c | 50 +++++++---------------------------
>  1 file changed, 10 insertions(+), 40 deletions(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
