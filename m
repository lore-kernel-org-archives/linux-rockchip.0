Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE54CCD1280
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 20:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXGI3WrWkuQ787H0Z0Tu2vPl8S5oYeLZ3jk+oE0TEY4=; b=AhZL24anBdubvL
	KrOlSyjmdF6C2IATQFVxauXUrUraZxrL+9S2JE9rAvO3danye4i73eJuW/F8v+Nu0kWBUxFr3jc0G
	H6Eq1WbVOjP8ZRJ9DDxVhIh+KGAONiKU0UvFmeBEmfvjGY6vR3EBkxvO3tuMBZwB2EWLYgUxoSzgA
	nuXBxf1vIOWiKpci1ya8F70eNFEQx6OC0Bm6IKzjiE+w1t90knAsyOzJKNay/+fvI7Azsr2Eg+0H3
	r/5QuiDhfbyYtzqP7H7vI11HiR10tDjdlZHImlMFz3bl+p38Ol+B+bM42zWn1WD4Jv9hRutz0dSQ2
	Ei3g8rqrYU02QRu3J+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDRN-00000006Muu-2xOd;
	Tue, 26 Mar 2024 20:30:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDRK-00000006MtW-0OHf
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 20:30:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E1F76134A;
	Tue, 26 Mar 2024 20:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECAFC433F1;
	Tue, 26 Mar 2024 20:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711485033;
	bh=6ZwP4niv2dWrwIYTkjQYyJjMfsiweawr0SSySQuA57U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bqg2s8gy9yoN8pVhMs2qyzeRWc+dxwZyppMpb1ZBUSsvrjRwsxNbzqhq4BJi9DilF
	 lY92XwV0mIJQb34nbJEMBp3I+dqiw6qUDLADHc08fU9EjekHGB+vk91ZGC+kSnUQ15
	 biuc/r0xNAJFQJwI0OEQHGqPQetGJ4E1L6Y0fJadvWQ9mL+F5l3aLbWOKE/LchgaJX
	 6es2GlckvwRxU9pJ3/49jeiViGkrMebnwR7WYA2EttpBpH/BmPD9mQsDttYVsIXKNh
	 IXtjg8QUbdirFu+KhmQ8OK0hLZccT7QC0umT5Pp7Ut233jEuFWSssZ+fVz19RvLds9
	 giXKSEUUzd50w==
Date: Tue, 26 Mar 2024 15:30:30 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com,
	devicetree@vger.kernel.org, sam@ravnborg.org,
	neil.armstrong@linaro.org, agx@sigxcpu.org, megi@xff.cz,
	conor+dt@kernel.org, kernel@puri.sm,
	Chris Morgan <macromorgan@hotmail.com>, heiko@sntech.de,
	dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
	quic_jesszhan@quicinc.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: display: Add GameForce Chi Panel
Message-ID: <171148502827.3376685.18337024060057169152.robh@kernel.org>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325134959.11807-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_133034_301753_DB63E7AE 
X-CRM114-Status: UNSURE (   9.29  )
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


On Mon, 25 Mar 2024 08:49:56 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The GameForce Chi panel is a panel specific to the GameForce Chi
> handheld device that measures 3.5" diagonally with a resolution of
> 640x480.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
