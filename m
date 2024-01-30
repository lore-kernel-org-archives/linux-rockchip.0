Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C5E8C47DDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 22:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6xTij/gt5WIB+coGdXZgMBuvJqU3/lfB3HyZVsFOog=; b=tPKj/D8L0046Xg
	uyo5KmGhMkIMYm83uiGNH+6eTyRf5CLuXWxT80MbedPQipcOF20SDVatkQQ6frljxq+MymMroBwjR
	bRTv0mTV1LYHTnvdScm13sI82HUGF4p3mF2AbUpL0IOHaCk49RFnJbRKxnY0+CnB4MguuYxTFqwHO
	Zvdkjb4NwL01rUJmvDS+opOloChHI+oru1MeODbQYmpIbNED26/jFrX9sI1YWHKKn/+h/2B+IB9Xr
	vr4ZjWEynhD34DB38uPu05h7HIuBkeVg9iAM7aDf3YYdbuT/basOV/0ly0gnQ4ik5hD8WWG04fWtj
	GFz7ThenCEsYIjOyel2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUx2M-00000000p9r-1RcN;
	Tue, 30 Jan 2024 22:57:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUx2I-00000000p9O-2xqE;
	Tue, 30 Jan 2024 22:56:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D2B5F60F8A;
	Tue, 30 Jan 2024 22:56:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DF22C433F1;
	Tue, 30 Jan 2024 22:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706655416;
	bh=VdU6if5rHUMAoE64rsagsgfaJZ9LSIB1pT2VMNKYYv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N8aIbmYbXSXUzz5OyjXF3V2Y2TT9ChHKCPaL9WHvH4FEVUrx1FjfoWpyxup97VDjc
	 WaL2DH0GbT8Iiq3NcJSXI6GQ80Ki26ot7TM3fZqiJjpPyO05xT0MEHuwbGjQcVQ5BS
	 V8Wr4Zv9j2lssXNz4uF5INuWm9Z+g4junrxh9erfKwa/enwapQz+lgrrDA6f7wzj0Z
	 GlFUVmW4iF5UhST7Psd0Y1ct0PlPXqnSjNVzrxMcUROEWwkonZ41uDzs3TE6ZYa437
	 JDcIYoAkMLGHtdRodVmeMsMlBsvSDDN2iNIybKUMpPqtonI5yGl8mqp/RK39FPs7ry
	 t2V7H1fYOMOpQ==
Date: Tue, 30 Jan 2024 16:56:54 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v5 1/6] dt-bindings: serial: Add binding for rs485
 receiver enable GPIO
Message-ID: <170665541359.2569633.3534356334365614400.robh@kernel.org>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
 <20240126-dev-rx-enable-v5-1-5d934eda05ca@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240126-dev-rx-enable-v5-1-5d934eda05ca@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_145658_803673_1D97430F 
X-CRM114-Status: GOOD (  12.40  )
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


On Fri, 26 Jan 2024 18:27:42 +0100, Farouk Bouabid wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> RS485 has two signals to control transmissions "driver enable" (DE) and
> "receiver enable" (RE). DE is already handled via the uarts RTS signal
> while the RE signal on most implementations doesn't get handled
> separately at all.
> 
> As there still will be cases where this is needed though add a gpio
> property for declaring this signal pin.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  Documentation/devicetree/bindings/serial/rs485.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
