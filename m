Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19E35C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 16:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AavisMLD33JUawj6Ou+HGurSKXrE4NJ2HwBgkKDLA9U=; b=osyG5CWuUnKczC
	75HkIE2ylg+Y5fw2BXE91D9GOZp4yfIy3qkGYVGVXrMMnabyLA437J/FOL21qJWRcDP+Qw3lWiDDi
	LLrDHmqQrDafYqMM+snimtgsrO18PNMvD0PJ3zdIsyPOgwCp00rDPIRmarUC26eodRHYDLMkMlXcY
	m+wMx3VOe0zZzb0xw18RXKvjuIOdyShQxvEERtCZy6Tlj4NwDI7v4xGAOOCiy2M87wSl7MDQkStlI
	w7xggk1ZRV5tPsOLMbddaWAnJiI0hRvyv5aLft/NOASe2y7EVaSBKur9mKPj/y/Pd2d62XZ7hDL9/
	mAlGrHwfWqGdKrXlR+Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxXWl-001sBf-Du; Wed, 15 Dec 2021 16:53:15 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxX7c-001htN-Tf; Wed, 15 Dec 2021 16:27:18 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso25591260otj.1; 
 Wed, 15 Dec 2021 08:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mRjfzGCFsyEy9liNkofQ4/Kvoz3LJlq+jyN1RL2p0+w=;
 b=6Tah4dLAZptAtbLvrgjvP4yez45XbS5zVrE9dQ+9qrfYpWZS1zsBtXddcrfpEd+Jl6
 b8fzrWUPkSriq468yVoDBRQmI1mGhUKC0j0VEgaCiZXhPyFr6JvArM+SUmjSdXygq62f
 sCoRqet0f8ZxxltAcIIWjJ5HBTxbvKdP//FTdOpfhf7USIFIigkEhvYbqLrC24vTUxl9
 BxwNIFKDXV8iKGr6pgA5WetnObkEGLRAPo60va66hyQ5JQXWTPmnMQqr6AEFeOpltHFP
 7G3ZMb25AE+uo9ecpbKV42UmxXUQGWO/fkJni8+x+Xb6+9JyWgru+TW/7lLhH3N+Q78z
 urhA==
X-Gm-Message-State: AOAM532g9q8CVD6XUjRplw9r+DEgkUN/EndVGwO08GPFxgr/xOzTOBYF
 Pxvu3MByO2d7Xpws1HYVcg==
X-Google-Smtp-Source: ABdhPJz7cwNq1L5+PZs4RmdzDlYifLHy9xBrYU9l4KrMX1zbl4Y1pZvmi0gCVQcogvUT6QO5WJ9pwg==
X-Received: by 2002:a9d:4e89:: with SMTP id v9mr9559811otk.352.1639585634572; 
 Wed, 15 Dec 2021 08:27:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v20sm515081otj.27.2021.12.15.08.27.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 08:27:13 -0800 (PST)
Received: (nullmailer pid 1427316 invoked by uid 1000);
 Wed, 15 Dec 2021 16:27:12 -0000
Date: Wed, 15 Dec 2021 10:27:12 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Andy Yan <andy.yan@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 06/18] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Message-ID: <YboXYKbjRmbUO1Wt@robh.at.kernel.org>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-7-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-7-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_082717_004244_FDCAF70A 
X-CRM114-Status: GOOD (  10.37  )
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

On Wed, 08 Dec 2021 16:12:18 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
