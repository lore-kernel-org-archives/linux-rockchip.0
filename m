Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A254C54EBD
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jan 2023 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoDcDSh5Kr5icnbO83tpjkirF/BqAY/TJDaEmX+YYE0=; b=L7YMPyUXjzbzIA
	qxSx0SS0tCemcIVVzs0Rdg8lWE/xO0N0fPLpXGvJ/G58xkPb9TjDMrfkjfPH+GZtM2oBEIJPO1zIa
	hYJ77dxxyoZRXSz/DoR3JXG/J/0KuSsBfbFzUP1o/Xj0hkmqhgLEAlZqLd0sjB50LFujjrRM12Goe
	8sj0QMERRmnMusViobBfAGYjE7e9Y/yl9ZSU4pwJ1b/8tsFckCYYsZFTDS11zObPgMX8jafqFDoqi
	y4pCy+NO8OH7K/SgkCypTlvr/98nhSCR7j9H2+r+ikx/JxFtxpIizrueBfbFjwguZTE5t8Pef619H
	bPteXT+fz3jIw+iRFxwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEZZ7-00EeRY-V2; Sun, 08 Jan 2023 17:34:38 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEZZ4-00EePH-Sz
	for linux-rockchip@lists.infradead.org; Sun, 08 Jan 2023 17:34:36 +0000
Received: by mail-il1-f169.google.com with SMTP id i16so3287280ilq.9
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Jan 2023 09:34:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hKproKir3HPkv8IvS6jPA1lAY60sR87AX6XZo0jpmrU=;
        b=nYwBwODxHVfzxF1hYClY6MjbX6c1ZT3UHNCobgOhq8GSeE3tdiw61xsM8e6POtAImb
         EFOSP+myYFdlUehEKT6ghslyzjkhzocVfMUwIFCTdNrcUQ3uVR2SOXGOfAvN8TW6sl+z
         Qa/Nt17YaVYs4Wiu+Z9dsmnetjG+wKX3AjZMOYh7rWlxL2FUY5L5LHvBWktbQjmSyG23
         Vz/EAjcJvtCmQPSZxb8KWe83mpnQm+Nl/cZHdXkkioYmg6HDYrtkLfwTO99Ya/7Bji3A
         4Ss2nJt1Jsmw7+5qemnHK8h0SxJ4/WAm3n01BuAoCMG8yVyQGc8L4C5abcIjxFa8g2vw
         HJYA==
X-Gm-Message-State: AFqh2koo1ueTmOKWEiV72CluZd3eye4FZO5wQQ710w5uxlatUR70QfgB
	Zjv0h/SNsXG6lMsmQjpjAA==
X-Google-Smtp-Source: AMrXdXs/6tkgd/YFgM7+TqsDaJ+D3dVVhB/jbNBcIGfVOh9qRYTdfrVyAGfkd6r9yEENJJXK29/mRQ==
X-Received: by 2002:a05:6e02:c22:b0:30c:43be:2a61 with SMTP id q2-20020a056e020c2200b0030c43be2a61mr19107111ilg.5.1673199272913;
        Sun, 08 Jan 2023 09:34:32 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id w17-20020a92ad11000000b0030c44ed932asm2037107ilh.29.2023.01.08.09.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 09:34:32 -0800 (PST)
Received: (nullmailer pid 107427 invoked by uid 1000);
	Sun, 08 Jan 2023 17:34:29 -0000
Date: Sun, 8 Jan 2023 11:34:29 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, tzimmermann@suse.de, robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com, linus.walleij@linaro.org, heiko@sntech.de, sam@ravnborg.org, dri-devel@lists.freedesktop.org, mripard@kernel.org, maarten.lankhorst@linux.intel.com, Chris Morgan <macromorgan@hotmail.com>, krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com, maccraft123mc@gmail.com
Subject: Re: [PATCH V7 2/4] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <167319924411.106065.9131828641363471907.robh@kernel.org>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
 <20230103190707.104595-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103190707.104595-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_093435_118849_A3053B6B 
X-CRM114-Status: GOOD (  12.03  )
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


On Tue, 03 Jan 2023 13:07:05 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for Samsung AMS495QA01 panel (with Magnachip
> D53E6EA8966 controller IC).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Reviewed-by: Rob Herring <robh@kernel.org>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
