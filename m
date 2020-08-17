Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C4FC433E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 22:12:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2D8E2063A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 22:12:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hKA4J1X5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2D8E2063A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w3rQ94I46lPueI9g6C0O/JFqxUojCBxZA9snMog0IHE=; b=hKA4J1X59ie0fkxmNb7HbtjQ4
	CdAHuFrSOam3lKcqPWNq7tkErlSV8cAoBBV1ZCqYbYkhnh8n24r918BAJUbl9fAYnhbBz4jWth8QS
	INKD7uGd/F9ILZvVntHpBYORSvLvJCoJA1RzV4kXFBAlbLnIlK14AcxkMhtmHsIVQJpoFE1R8lIMx
	Lmj0bc+FMRt9gYdwYo/FQKpw2k+svHlX+ZTcu7rKcCGs2pCd9UVeoLf5gmOcm0k+e8an7ogOwuIfp
	0q34HKWVaTUbjrWdN0BmuNJQqd9jqyctByrfHaCpXOVW6dnqI2mrBboeo3hcs2N0aoy/WfzpZoq4f
	nTnlYFeKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7nMX-00009S-GD; Mon, 17 Aug 2020 22:12:17 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7nMT-00008D-9y; Mon, 17 Aug 2020 22:12:14 +0000
Received: by mail-il1-f196.google.com with SMTP id r13so11485402iln.0;
 Mon, 17 Aug 2020 15:12:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eqARiGNwhWeaZVOhEsppjcqmVGZGsngOhSrvXhX8++U=;
 b=QR00diBffyA7Ai4ZnIL/L2QsjlLbFxaXfp0ehL9LqVYhlvThZisRL54Ny9QmEUEb0L
 Q9AD9Jl3rJZnoGVZmUjiv9X21iuULIDNtjiXMzUDlG0p7GIFU8vc6vFoaE59/LO5Z++v
 7ILTsAHh9NS9+2NJuw8oE4BKnmrMvRMV780Vssa+1RDm25wPxkVe8tzna3XpS+pxLt7k
 anWR9C5yGSL6s9MuK1/TGVwMTaG0TLeWhD5Mwibguic0fa4+JF4O4lv5prKHHE3OR1zs
 QXxlZZndQCj+Ih0woY23IAJQ4+3Tt960P7SLYb70EfNLzUv8NaS+uVq6dXAjV+E5Ne7M
 WXdw==
X-Gm-Message-State: AOAM533A0AwS0b3s/btcHtWP3B+i72B0sVbX0ZRyI+ENa2VVFGxD3H0F
 VGLN+ws5+DzvIU8FxyBvbw==
X-Google-Smtp-Source: ABdhPJxaHQDdK5l+Zbg9OPKnsIxZnS0CqZGdDbP8dVEYrKCCDob0+3+2jw+s/ERzC5b99XKCqt4QQw==
X-Received: by 2002:a92:c008:: with SMTP id q8mr10609818ild.106.1597702332693; 
 Mon, 17 Aug 2020 15:12:12 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id d125sm9693070iof.32.2020.08.17.15.12.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 15:12:12 -0700 (PDT)
Received: (nullmailer pid 1667141 invoked by uid 1000);
 Mon, 17 Aug 2020 22:12:09 -0000
Date: Mon, 17 Aug 2020 16:12:09 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: rockchip: Update ROCKPi 4 binding
Message-ID: <20200817221209.GA1667089@bogus>
References: <20200807094826.12019-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200807094826.12019-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_181213_498076_9970E528 
X-CRM114-Status: GOOD (  14.54  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 07 Aug 2020 15:18:23 +0530, Jagan Teki wrote:
> ROCKPi 4 has 3 variants of hardware platforms called
> ROCKPi 4A, 4B, and 4C.
> 
> - ROCKPi 4A has no Wif/BT.
> - ROCKPi 4B has AP6256 Wifi/BT, PoE.
> - ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
>   GPIO pin change compared to 4B, 4C
> 
> So, update the existing ROCKPi 4 binding to support
> ROCKPi 4A/B/C hardware platforms.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v4:
> - update binding to satisfy dt_binding_check.
> Changes for v3:
> - new patch
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
