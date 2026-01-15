Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C60D4660D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 18:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0GESje29jJgj6a2pG8YokVOxFKNZClQmkTOUIZ9BoA=; b=dBkAuwmRUo62Z0
	4YCc/q5PXNiBLx4/dpxh6TmbY5HASWY/ZPnETWyusfWIHak0crMB1CCsSI9Sd3GY+L26ZxuBgC4lX
	o37OaS3/oRbVPLOM8c6Yp0LX+jnDHfia2M6fS0anz2TQ2LZ9BMfXh6LE+vi4+LAMFqDSS8hykBJbz
	nwGheEipFCLvyVdLFvtiHM1HLZJ9IRUJejhAHmf5SMGJ5Wi2ISQpgnBz9LcKtWTBAhAel4AYIKjuC
	Dcow5ZjJr8m5qbo3z+/QyVV0gYAHz9S6jXuqjhrM6s1UhBKk31scgFplpfF3zpqTIfpyxHChSu+sc
	nLL3jl7v0UNOe7p85GLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSVc-0000000D0Yp-2EpU;
	Thu, 15 Jan 2026 18:55:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSVX-0000000D0YO-3vqZ
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 18:55:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8E9A843E5D;
	Thu, 15 Jan 2026 18:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 418C6C116D0;
	Thu, 15 Jan 2026 18:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503347;
	bh=aOSRDFakGh+5h+6qiUYQmK78wJEtBDPIU2CeS3D2/Hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GiXGOy6gJPPQnsMPZ/eN1qB+60jvhhAqMO1MJwulQ3DQBHzw2ohwTnahpaU+EWDKA
	 agSfrzZ8pMUOV7GV8RhyJKFeJW6xK15bHvRxhgvo5y9tNSSvGCgQsK6qi5pjeGKBu6
	 3V2Cv52gYQECGMj+J/5jm0V1otwjUXzqmR8bSZdFdv516fx6uladLQ4YcPPhZMBahj
	 39Y4DodP3tSpbDVflF6/TlPAprOU4X78s+6gEo8tfIc1XZtflLi0eVNp5sW47IEgk3
	 pIz0ai+FnZpmx+BdP/UY3sIENZrm+yJG6isnz6I5F+XEbDb5FwUIZcTNSFil2LaGPW
	 fhEVX9xI4rXfA==
Date: Thu, 15 Jan 2026 12:55:46 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, simona@ffwll.ch, airlied@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de,
	jagan@edgeble.ai, linux-rockchip@lists.infradead.org,
	dmitry.torokhov@gmail.com, conor+dt@kernel.org, heiko@sntech.de,
	jesszhan0024@gmail.com, mripard@kernel.org,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, aweinzerl13@yahoo.com,
	maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel"
 property
Message-ID: <176850334606.1005378.10711190670525490537.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-6-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_105549_866402_23E341AD 
X-CRM114-Status: UNSURE (   8.93  )
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


On Tue, 13 Jan 2026 13:57:20 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a "panel" property to define a relationship between a touchscreen
> and an associated panel when more than one of each exist in a device.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
