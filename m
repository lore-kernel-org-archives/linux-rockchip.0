Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4057AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jan 2022 01:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdyjqmWdenMwSKFKrJLggM9F1K1QXDn4Bvh3qucmHY4=; b=CSSHqbxpOu9CRw
	0mqKLi/QfQ70Ew3G2YygcCTHsFHIE7HIvV1DMFtH9ZDsyxKTrRU1YtXCGcwhEQkJSZoXZxU2Qtgx0
	aLs3IHGbfVeQk22auURh61qd9+p/l0wAOFaBo3oP8o8x3G4AjK3m5k/LVWe2P/tlgtGg8iufYHXyy
	SynwY1arYsPerk9aP3nAfLJWVjzGiFbjM0njoLTZr4fEvpNLJzmRGGmxWNJ1Arfabe3l5yWFDJtNP
	fs0DN178XT/QUCe1Hm7IePYoxugN11548wT++BLk8xO62ltUSsTzScmj1M1nCs4VsX8oD7R8fhrEI
	68vkSBsd6H3WpxKMdPqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7SvS-000kvK-Mp; Wed, 12 Jan 2022 01:59:46 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7SvC-000kp0-Eb; Wed, 12 Jan 2022 01:59:31 +0000
Received: by mail-oi1-f171.google.com with SMTP id i9so1559474oih.4;
 Tue, 11 Jan 2022 17:59:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SY7Nt3LIYS+ee95IOS2lYNehaYFihAIPxIiHoAlBkr0=;
 b=vnqxZijMq3eT9WkbZNyZewlI6b5a9hOr87Kdf4xsCYXB+G0qJuI3Sb/NEiUGnUehQ4
 baZtPF8rRcYvj+rE0IWn1ZE44zI/on+ZFfaca6My25MAavVIJJ0vHxDIK8/6c/L/qc2g
 VC9tb/jYcT+ZFteiWjpm0nCMU08GQ/TmHueiO9Q4fFe/Hq7CbK0dOFYrJBL/TWwewNFp
 K9rJhkvdjy8W6StnjmukM0t+wLrbCkQQ9JfhUjoSvo20y54Bb7sQwgyx54pNh7ycNcOH
 NlFn26fF0wxOLz/BBwcBolHwf+PiNijWBXS8gzmOfD10hiSgMHcS/4s1SLkuDXaZjrr1
 s8Jw==
X-Gm-Message-State: AOAM533VCbtkfLaGqRzoPdO3mYXR9uCpY45uabscqhftOLttucoIgPru
 3jiQW4aBdTWliTX83oEkMw==
X-Google-Smtp-Source: ABdhPJyhji8EPb5FuVMZbGyJHgSzUgoThoUKc/7Ld8ukWHPII1dRpzHjuB3StkNE/TYAj81PwYIOnQ==
X-Received: by 2002:aca:3014:: with SMTP id w20mr2685105oiw.69.1641952768993; 
 Tue, 11 Jan 2022 17:59:28 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w19sm406835oiw.29.2022.01.11.17.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 17:59:28 -0800 (PST)
Received: (nullmailer pid 3912227 invoked by uid 1000);
 Wed, 12 Jan 2022 01:59:27 -0000
Date: Tue, 11 Jan 2022 19:59:27 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Kyungmin Park <kyungmin.park@samsung.com>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: Re: [PATCH 02/10] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
Message-ID: <Yd41/06PvO7DDGlO@robh.at.kernel.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
 <20220107155215.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107155215.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_175930_516028_4B0747D2 
X-CRM114-Status: GOOD (  13.84  )
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

On Fri, 07 Jan 2022 15:53:12 -0800, Brian Norris wrote:
> These DRAM configuration properties are all handled in ARM Trusted
> Firmware (and have been since the early days of this SoC), and there are
> no in-tree users of the DMC binding yet. It's better to just defer to
> firmware instead of maintaining this large list of properties.
> 
> There's also some confusion about units: many of these are specified in
> MHz, but the downstream users and driver code are treating them as Hz, I
> believe. Rather than straighten all that out, I just drop them.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 42 +++++++++----------
>  1 file changed, 21 insertions(+), 21 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
