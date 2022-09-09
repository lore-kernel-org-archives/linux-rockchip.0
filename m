Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF6B1ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 01:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4HvxE0E50psqHTJ6KiS9dR9smYBmCs2XtzuHNSku3s=; b=woCLQlDvAaslbo
	DrOzFVhRaFm6E5PqoekxPQr79miFTCPoKU2KpUV/TFsrkDoz0fgoFOwCbPb7ku6PKxEm6V3aWcNmN
	Ba2J6n2DsZo4rCLjYyE9p49Z9ShWiSqwtpALACry4t0diHTgbQ7/XtX8kjVpTQJkFLSAkMbFc4hdT
	Pmt2aqPVC23QKEZhUmZXO3ZTndzscNhLH1EIOWef1JgKycijsRyrTHmcO0SyJZ25cPi6Qa6ghzmyJ
	AdXZHKku2uSY2SaDgBudajZakC7Avl5MpipZHdSk60p+uat4fVLMpgtK4nKdqpiRO3uDYF41+cZIA
	Rsg4YR2kADND5pxs++zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSyF-00ApUH-6Y; Fri, 09 Sep 2022 01:38:15 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSy8-00ApSH-DV; Fri, 09 Sep 2022 01:38:13 +0000
Received: by mail-oo1-f43.google.com with SMTP id l40-20020a4a94eb000000b00472717928b5so72748ooi.1;
        Thu, 08 Sep 2022 18:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=nRIFgaZTQg3GTMp42p+xtgZU3B5YCuKF0IgaGfelaL8=;
        b=6Qkjo4n03nybdKeHcuu/0WqJ8IzAHMbuc5UrRbhD5eAu9FE7Keb8XVmj4K3iZqHq16
         JnryuyNQoKiRXIuOg89ET3tmBD6Qrlwb3fuhtxX9Epfbc/gpm6gSthbD17Nfe179+D5n
         RI+D+aLUTm1fi3Zeagj5WVKA86aDJUGGXO1BQ3FFKVsYeFrWXbEQOA9c3tzI61ypu6hL
         dcixA5i4r+gyJB/w7UXVNiVTs8uvM3UDTjGITFpQWPAX4admC7pU2OEz3OQTWz8xT1fR
         DSKzHOgWMi7yBnqxhm2GmQ5Rlxwo0nEbBecSfxt3hCpOhd0BXzMocUAsEjetQQX8Nn0o
         406g==
X-Gm-Message-State: ACgBeo2HqN6QQ9/5AKep7lKsfNM06xeyagtsUj9FTL27Hh/yY281HGIt
	Q14Z0QlxKzPPatuZv7UmQw==
X-Google-Smtp-Source: AA6agR5Ri1cpDqeioMDMRveNKAA9XWfPiesLEzehJ7tTC54BrN5u5TocdJnGNPB59gIW0p0DXxZjDw==
X-Received: by 2002:a4a:d085:0:b0:448:93e6:bb67 with SMTP id i5-20020a4ad085000000b0044893e6bb67mr3980181oor.55.1662687486989;
        Thu, 08 Sep 2022 18:38:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w20-20020a056871061400b0012763819bcasm411419oan.50.2022.09.08.18.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 18:38:06 -0700 (PDT)
Received: (nullmailer pid 3737271 invoked by uid 1000);
	Fri, 09 Sep 2022 01:38:05 -0000
Date: Thu, 8 Sep 2022 20:38:05 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: kishon@ti.com, hjc@rock-chips.com, linux-phy@lists.infradead.org, cl@rock-chips.com, vkoul@kernel.org, robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com, krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de, airlied@linux.ie
Subject: Re: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add
 compatible for rk3568
Message-ID: <20220909013805.GA3737238-robh@kernel.org>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <20220906174823.28561-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906174823.28561-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_183808_474746_AFDDD29C 
X-CRM114-Status: UNSURE (   9.99  )
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

On Tue, 06 Sep 2022 12:48:20 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
