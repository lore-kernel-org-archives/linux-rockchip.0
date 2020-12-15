Return-Path: <SRS0=dXo0=FT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D9C4361B
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Dec 2020 18:18:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 693BE22515
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Dec 2020 18:18:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 693BE22515
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kq6s0o/EtO3rIaahyStrW1LxELWQ4gWoWmJNFFkuKGA=; b=LfJJ2azmmol4gu+x+cfSqnpJ6
	r/FyRhS/gzdqNbRUNnKbpjT6N2fkVjp7UeyRS55HA+De80L7+V2fpxQWx7lT1VJ/i5Ld7SN5lR+Dt
	ayRKIwv/JDJaAZxiC5Os/+XGuI3DLibrgPqTEzJSadtzFFPLjnMztNUeYVql0M47BtsfC7swnADiQ
	+qhcVuGGRwlXbdTRHXAAlml6OrgDf13Uxd14t4yGTe1sT6UP3LJeNzOEYKfmqgbr3jXs8Gsp/hUtC
	s/FEYeE8nJvmm5QB4ujNJhntSayi4Gbuow0auR93Yejt7amTrbItCEET20OWFkHiqK81cjIygZJ0f
	3igd0/+3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kpEto-0003zB-PK; Tue, 15 Dec 2020 18:18:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpEtk-0003wu-4Q; Tue, 15 Dec 2020 18:18:08 +0000
Received: by mail-ot1-f67.google.com with SMTP id d8so20322045otq.6;
 Tue, 15 Dec 2020 10:18:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P/jLsGp20WgJwDEhTmMuRmqydR5T/IJ51ILOe2UCGr8=;
 b=BB6zbu+70Asxd9G/ByxPAH6a3uBt25hxstCQd0vup2gfcF4n0Msk20sleZDwq0FmOy
 jhhE/LYlNGxYx15dM4uL3jE/ySUU6o+wUGpoSLJaUjStLZsSpE6Fypoxt9kUKDVd9bDL
 mtAqR2TQQboVYgCEHy7O9Ie1XngYkFaSDh8SnGTH36bec1Ml54ap1zOUfzFW8A7MEB6J
 UpgSOts6MU+SxOQsZyimOYUiCiSLxV33v8+9DX3g1ILwJC+qjcXBd7h13xAkUYOQKNLn
 qoYlXmfcTigrN18KdfA7CN3NYgFxuIz6q7UqagUkbySRc4K3aVKIY41T/VOudwZBdp3h
 DJfA==
X-Gm-Message-State: AOAM531ycDBhCN1+fHFbZMD/78MGA9nzickLOZ/f44KS8RfnqosapiIz
 BiMocHt+5hvGOi3GlqE3ls9Pk4qqFA==
X-Google-Smtp-Source: ABdhPJw5u7KWSVyM8A8MHLioXhU8/SevPeNGrm3xUT9JurqqAhjH4LaA75m9/X5WWOTjdIe9a3jVbg==
X-Received: by 2002:a9d:7ac1:: with SMTP id m1mr1666058otn.186.1608056287634; 
 Tue, 15 Dec 2020 10:18:07 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d20sm593325ote.48.2020.12.15.10.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Dec 2020 10:18:06 -0800 (PST)
Received: (nullmailer pid 4146529 invoked by uid 1000);
 Tue, 15 Dec 2020 18:18:05 -0000
Date: Tue, 15 Dec 2020 12:18:05 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH v2 1/2] devicetree: phy: rockchip-emmc optional add
 vendor prefix
Message-ID: <20201215181805.GA4145251@robh.at.kernel.org>
References: <20201215014409.905-1-chris.ruehl@gtsys.com.hk>
 <20201215014409.905-2-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201215014409.905-2-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201215_131808_205679_22233012 
X-CRM114-Status: GOOD (  13.68  )
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
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 15 Dec 2020 09:44:07 +0800, Chris Ruehl wrote:
> Update the documentation and add the vendor prefix to the optional
> properties referred in vendor-prefixes.yaml.
> Follow up with
> commit 8b5c2b45b8f0a ("phy: rockchip: set pulldown for strobe line in dts")
> commit a8cef928276bb ("phy: rockchip-emmc: output tap delay dt property")

These could be Fixes tags.

> 
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  .../devicetree/bindings/phy/rockchip-emmc-phy.txt      | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

TBC, this needs to be applied for v5.11.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
