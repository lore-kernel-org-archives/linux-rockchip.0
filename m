Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF543C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:15:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C6AD611BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:15:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C6AD611BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wGgZRtx0LF73JifqrYhAKsy4wVumayPSElh1vqMIJTA=; b=QUHVT0lKGa+M2CZQBqfGK37Xr
	m9rSq9SmiOmn1KTSRZCDTTq0B5utWYuHHWOVpb3LbuTDMy5qsRSTD0JzZJXLv8yBdb/MYEVAzdJp0
	S/IJX7A9c4JNZowxB70TfJxunJzxWf1mGjhrZFvcRftLlwpmhe78H2JLd8KQ7WMXKx5YjxLdlvhzm
	pbTwO9mEltW5+qRSplBOOFcF11hOhd7LdZIzj/7phug22s0kV3xXaAteIFke7S0Xj9diJhACMWfG2
	seCpz0QPnFSzo45k6LXL3Ee4QYWC3VFpqa9KfKUSNX5nykgNADRUU5Mq9kK7VIYdkadn2HiLauq9W
	s4qVYgYHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj0Vh-000ytR-2r; Tue, 18 May 2021 14:15:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0Vg-000ysz-3N; Tue, 18 May 2021 14:15:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=mJbr7ww1QgtzBYT1L28PEZqlHG53KqvcMRL581kxa8I=; b=ump/aKUy8Va7UifLwnSEqm3sKy
 aUMENYya6VvXue55BTEkumODZ7vrtv7yAh9DRNF8oQ9Dv0I9JX5RuWM8xWdYpud62hE27e13PdBBO
 WbLxvInCnPP0Ma4cAwEX8nFsGMgk6f/FlcUXZAj/n8Rd9Rm/nOb2FIIsDc+tlY3B7b9aUofW8YCgo
 JL3MhzlOMO3Hmy6JhGG7qBrr5wlWDzvVimFK7B+Z8QAW1Vg0pAD41H0AwOyiqPH2eElhJ1szE0onG
 7fcf2Sw/r7owGHFKgoN6iQ9CgheVkdzMJZQSQEsdSIA2Bsl0toLaFfn4kxQeEgR4mx0HzoXOfXcdC
 SH6L7R5w==;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0Vd-00EiYR-Ma; Tue, 18 May 2021 14:15:46 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 u25-20020a0568302319b02902ac3d54c25eso8778410ote.1; 
 Tue, 18 May 2021 07:15:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=mJbr7ww1QgtzBYT1L28PEZqlHG53KqvcMRL581kxa8I=;
 b=PqFaoJVRW0BkEzD/Yv3s11u+r5Gub37Qir+on7ZIlE4Jg6pHD64VmS+TEugVtxICNP
 i3Be06Ctbq0IEK4H6/BcnZDsBXyjx456swyxudCyirpkfczc2qnK1r02hiCx+QjVusjw
 doBa0qUl5s9yE359i+sIJXX3IUVX6Lcgz3xghiDCExqAqHaK6ivIbB5tRF4ziCDj+5c3
 bSPQ7tCO4aFwSJR55WbhfSO642g7cokDkzE2ZDunAi/EISnYDCSmQlIBCsQJMiwo9Nj2
 6ZUUQpHISOwuBRu6k87nNU3v5PRdcUH/PsqzF8593f/L3FLuSqcaVp8swQo9or/BOTAU
 RusQ==
X-Gm-Message-State: AOAM533nHTXabdPZkLmjAbpMrhsTsIzDs2UC8YPy3MhYMxTLpqD1ksgy
 Os5tbb5rKthGDLWJXpCzhQ==
X-Google-Smtp-Source: ABdhPJw7OjmnhmzqDYUciqYWlxNM88KRZcsAl2yFnabZhsV4PRb8bs8Ra4HthCKHfyUgBvMbY5TiUg==
X-Received: by 2002:a05:6830:1bd3:: with SMTP id
 v19mr4525568ota.276.1621347344362; 
 Tue, 18 May 2021 07:15:44 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w10sm3720387oou.35.2021.05.18.07.15.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 07:15:43 -0700 (PDT)
Received: (nullmailer pid 610764 invoked by uid 1000);
 Tue, 18 May 2021 14:15:42 -0000
Date: Tue, 18 May 2021 09:15:42 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: arm: rockchip: Add Rockchip RK1808 and
 TB-RK1808M0
Message-ID: <20210518141542.GA610723@robh.at.kernel.org>
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210516230551.12469-2-afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_071545_755248_53D1A28F 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 17 May 2021 01:05:43 +0200, Andreas F=E4rber wrote:
> Define SoC and board compatibles for RK1808 SoC and Toybrick mPCIe card.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
