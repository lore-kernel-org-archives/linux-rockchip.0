Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05CDEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 22:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkmcI4blYYR0B5BgoU36g09Yjve8W1F4joaJ2r97iZs=; b=HVAgEosGAxOeHD
	apB3ubq8Wt6mb1DXLYtn55cPfaFxPD2bv62RPOmsNCVeo3FAGe/LjgcSARAMaZnelh7my2+N5fm13
	tKGggtGZm1LEFn86Im34twTFq59BSvQOD++udyK9H/BZ7c5po8572z1jrspOHXtgxwmux5d/M5UWd
	AUC4c7PrWhRlC+MmVmtAOtsYAhp/Cj69cjF+Ory2dCxeNBJaZ0bJ0/C6d3s4T5MceJrhFj43xm5Ji
	WLJLYWWbf6L4sivuJlT2GJPVJb2tlt2n6aPLBkI0iM8qKIQw5uVBeT9l93JCJnPRdZt+AzhBwvh+j
	bqePwLSWC0guOHI8YtBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F7b-00BcQx-P1; Tue, 14 Jun 2022 22:34:51 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1F7Q-00BcNs-Dj; Tue, 14 Jun 2022 22:34:41 +0000
Received: by mail-io1-f52.google.com with SMTP id p69so10978855iod.0;
        Tue, 14 Jun 2022 15:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nfvtIdPgiXULHnvZfVP5vqYcUUa4+OVCxD93E+5pMPc=;
        b=Ga6ag4lJPgambSu7mhzx/583zio28o7tba8lQXvaNmnNXOWDp2S8egOvUtgDyEw5NN
         UiF8iCaQ9SYT5HMnQ15+lPppAP860pfptQoCevcVu2jabhCzaiT6Rr1DeWWbCEs2C8J9
         6fcNUuPQzzTFXWLEAXChrhLnRBybKkynOYZ/lutsei0lZfEKTr19JZJIt+tN0qoEjUuZ
         2pRPI7xM/37LZg6+ySmpyI5UtDytX9DsnLeNCwB3IHpTH+uEwmWneMu3B0rW6xaNrH3J
         NcNf3RQdPxj0B8YfpR92Y2ogDVxwi5m550t5zho4H5k8Rb1BOJkLH63iLVFKoA7RiMBf
         Y32g==
X-Gm-Message-State: AOAM531J67hAmg95jl4nfGlsDgnRhAGnLGC0tFXpTlGYgSN+g74cYbG4
	8Gq94FiK8FaTJX1HJxnNhA==
X-Google-Smtp-Source: ABdhPJxE1abxcZlYMoUexYa+t1QhZEgC3GbKhXiUkgv+6tmPmB+hvZlvUSYMxVLNMKQy432HbWyDcg==
X-Received: by 2002:a6b:6a07:0:b0:66a:2e5f:2058 with SMTP id x7-20020a6b6a07000000b0066a2e5f2058mr1167288iog.72.1655246076467;
        Tue, 14 Jun 2022 15:34:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id n11-20020a02710b000000b003315c00e885sm5402674jac.0.2022.06.14.15.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 15:34:36 -0700 (PDT)
Received: (nullmailer pid 2853736 invoked by uid 1000);
	Tue, 14 Jun 2022 22:34:33 -0000
Date: Tue, 14 Jun 2022 16:34:33 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Greg Ungerer <gerg@kernel.org>, DENG Qingfang <dqfext@gmail.com>, netdev@vger.kernel.org, =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>, linux-arm-kernel@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>, Peter Geis <pgwipeout@gmail.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Landen Chao <Landen.Chao@mediatek.com>, Heiko Stuebner <heiko@sntech.de>, Paolo Abeni <pabeni@redhat.com>, Frank Wunderlich <frank-w@public-files.de>, Eric Dumazet <edumazet@google.com>, devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [PATCH v4 5/6] dt-bindings: net: dsa: make reset optional and
 add rgmii-mode to mt7531
Message-ID: <20220614223433.GA2853676-robh@kernel.org>
References: <20220610170541.8643-1-linux@fw-web.de>
 <20220610170541.8643-6-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610170541.8643-6-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_153440_492790_DB11E3BB 
X-CRM114-Status: GOOD (  19.95  )
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

On Fri, 10 Jun 2022 19:05:40 +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> A board may have no independent reset-line, so reset cannot be used
> inside switch driver.
> 
> E.g. on Bananapi-R2 Pro switch and gmac are connected to same reset-line.
> 
> Resets should be acquired only to 1 device/driver. This prevents reset to
> be bound to switch-driver if reset is already used for gmac. If reset is
> only used by switch driver it resets the switch *and* the gmac after the
> mdio bus comes up resulting in mdio bus goes down. It takes some time
> until all is up again, switch driver tries to read from mdio, will fail
> and defer the probe. On next try the reset does the same again.
> 
> Make reset optional for such boards.
> 
> Allow port 5 as cpu-port and phy-mode rgmii for mt7531.
> 
> - MT7530 supports RGMII on port 5 and RGMII/TRGMII on port 6.
> - MT7531 supports on port 5 RGMII and SGMII (dual-sgmii) and
>   SGMII on port 6.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v4:
>  - add port 5 as CPU-Port
>  - change description
> ---
>  .../devicetree/bindings/net/dsa/mediatek,mt7530.yaml      | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
