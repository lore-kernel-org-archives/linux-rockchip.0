Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8267C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 19:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzfeonjfuDI+jjSaqhZvK4KtMQhwaHUpx90QNOBihsw=; b=Jnhjnd5CK/sfc9
	5GnJoohQRV7935Cb3AaxmmSmld0HQbHULiwod4gfexhDxvkbuEE9Y/1lLoinKeJRowOYf7QZO/by1
	Q7OXCE/5Rpyt4+YZkHVemeI6X4EdrOczjLm3em9uRgl17IuX4O0CER34mI25G4oQrpazjoKOjZjIT
	Mr3c/iSPWUOD4Ne7StAbhAAzPTljxXcMSZOItF0NEBxnGtjyCzUwxHHhu7D61/JTazcH1fu0PyNo/
	Lq+mjJ01Gr9Fb/JNezTBys5rW5f8M2COZsFotJSqQKWHYD+CR5k/8IRlz5MqiIkz0SMcSUbC5vXyb
	vt0v+VKoKfFVJK1mAuzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3i0S-004Vv9-0p;
	Thu, 16 Nov 2023 19:26:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3i0R-004Vug-0x
	for linux-rockchip@bombadil.infradead.org;
	Thu, 16 Nov 2023 19:26:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=NcZwCjQ4JrwVYAwfxeJR9lgNCrE0p4rX4/iJLdX3krg=; b=q/vCHUlixVbvpYn90EccjNkhiO
	6rYEn4mpOkvoB0JXNHCfZDAgz+UA2oWjX5SwAWVaDc/wVpajaAKgnO5msKH3jQ7vLm7MULj0QMx/E
	VNxORrsI38VzFCcZ1iGW/EM2PpJ+JBNqhq712yVWaL4zmMlT6ooHZRo/P0kTZiukUhQWj/t1PPZoA
	VLvItqYAGreg3za0wibhuB5APxjS8ka7GFTFogrNdvXPyj+6xlTnal3bOVola/tplxZO8906HUvRa
	KMK4pdbgpj2UTV6IwgamvGn93mlu8Xl22XTgryxgZ5ovyODAlHGJfWhCOHlhDJcNyc93wthwp+InP
	9DY27Neg==;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3i0N-005mxf-27
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 19:26:25 +0000
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58a0ac41154so607995eaf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Nov 2023 11:26:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162779; x=1700767579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NcZwCjQ4JrwVYAwfxeJR9lgNCrE0p4rX4/iJLdX3krg=;
        b=cgLhBq3ufd3Cn+QKz3rcNNxrFXrNr8t36WnXaM+zNmBgpdmNNvqiG8gt3KnHEUs/xE
         1jrrjIJalUrLjdZzJTE8zfOHsfd01BSP7WGy8BxBxJy8FL0lLzv9WlYOW+i62psn500H
         dkZN1loE+1lGTnJyPo0DHVp67SYQDoEmZ7uHFVeqhzdc1kQvIjM0ZUl1XnkWpmy53VDH
         ZFssTUVm0dCFRFXUfksEkBFZmnuf/eUS/MeiexqVa5OX98M71IpI/bE+12kHqMVwWuWv
         TLs8e7i8yxYuNzkXPbhOPWltEAI8xbP/y0hlWafMlu+LhlnA7s9adRQ2fuDTRb9sjOdA
         uHyg==
X-Gm-Message-State: AOJu0Yw/UR8lRplk8qa4jngDFdMsKT2afh+vLjB5Vi1Gkxai4YgLC2tB
	u6f0KwHTZY7wJoy9p6nPmw==
X-Google-Smtp-Source: AGHT+IGSTth+hP2mmYGFO8yjKtjUWI7ZiE2Wb5+MqaNsG99C+yIPf6hkTRBp8Wbxr+QbyVOYwjXPNQ==
X-Received: by 2002:a4a:9181:0:b0:589:d6c7:8573 with SMTP id d1-20020a4a9181000000b00589d6c78573mr16344725ooh.3.1700162778694;
        Thu, 16 Nov 2023 11:26:18 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a2-20020a4a9882000000b0057b74352e3asm12380ooj.25.2023.11.16.11.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:26:18 -0800 (PST)
Received: (nullmailer pid 3049422 invoked by uid 1000);
	Thu, 16 Nov 2023 19:26:16 -0000
Date: Thu, 16 Nov 2023 13:26:16 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: robh+dt@kernel.org, sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, chris.obbard@collabora.com, s.hauer@pengutronix.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kever.yang@rock-chips.com
Subject: Re: [PATCH 07/11] dt-bindings: soc: rockchip: add rk3588 vop/vo
 syscon
Message-ID: <170016277633.3049138.9769922490771899888.robh@kernel.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112820.1771240-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231114112820.1771240-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_192623_945458_3B4DD1DD 
X-CRM114-Status: UNSURE (   8.78  )
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


On Tue, 14 Nov 2023 19:28:20 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add VOP and VO GRF syscon compatibles for RK3588
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
