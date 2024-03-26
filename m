Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 045A6CD1280
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 20:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nndyWC9EuXwUL04auCE5pKS4USTDAP8fMMjkvrikE1g=; b=VrcMmqX78DPBXF
	iGUG6eLSmv8r68hukMHRUsiHHEDVfzMOvO3UwQ6eOH41wq0NQyg1QWAsov/emavOro8XteifDOlz7
	KhbPqnkuwfpnbmg20VNVY5HjPkCCemInCRMFwuOKedIilXgcczRkA0f9uTIYAYQD3ZOKd2vAYeCPG
	ypEbM7wv2lQAYsLiM2EvcJ8TMziBZ3np1zx+H2/mHpNv9fsCRESKEBK9+wMMh1uy14FyQlJGrWrNO
	JQ3MjjrXzaJPiFs4wWB6UPbZYsvFcZGmpd3WJqGIX8q1LMD3y/AQSqS79NiHbWoEHcYVQwPIXhwGl
	KfAiskXeciJS5G+JmlVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDR7-00000006MnU-1OQZ;
	Tue, 26 Mar 2024 20:30:22 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpDR2-00000006Mkr-3XXb
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 20:30:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E7E7CCE21AA;
	Tue, 26 Mar 2024 20:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2838C433F1;
	Tue, 26 Mar 2024 20:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711485013;
	bh=vXSgfx5ZlUMqb12HaSRiMrCETc8zcbZB2rpWCbEe/N4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jobp2iJMTCC7ePRlfqE3kPeCGHtBwA64FPlOwBxcDsGxGaLrCR439DIIdDJu5viR8
	 bTfnhwEwdLFaSwghgYkteGPMVhFRV04vEjSRwa7zDK0Zml/jVASpBbDS355FzX0heP
	 mv+ibo9ZXQEjSgNpS0+axQ8xWWIGWiV/R73H0o1KLYX5U6ra2GeYjMRzAapjgWM9SR
	 BwZ8RwwLjV13yaABxrAUPm3e8eybBoS5MDwCaT0W+3zEO8ONV39adewLhFZ4pg13KW
	 md8X3Y/L0J6b6Z6IO4LWIt0Rs2odNLJOtY5sQGVjH8Y1Sqa8KEUiGQiFTXMnovRF15
	 ScfFetCSWOuMQ==
Date: Tue, 26 Mar 2024 15:30:10 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: sam@ravnborg.org, conor+dt@kernel.org, megi@xff.cz, airlied@gmail.com,
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org,
	devicetree@vger.kernel.org, kernel@puri.sm,
	Chris Morgan <macromorgan@hotmail.com>,
	dri-devel@lists.freedesktop.org, agx@sigxcpu.org,
	linux-rockchip@lists.infradead.org, quic_jesszhan@quicinc.com,
	heiko@sntech.de, daniel@ffwll.ch
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
Message-ID: <171148501047.3376252.8555158106984338212.robh@kernel.org>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325134959.11807-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_133017_437214_C303D190 
X-CRM114-Status: UNSURE (   9.03  )
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


On Mon, 25 Mar 2024 08:49:55 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> GameForce is a company that produces handheld game consoles.
> 
> https://gameforce.fun/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
