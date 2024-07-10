Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F943C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 10:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p71clRO7seWw/4aSXMGvmGQMNUHwxQjcH2sePkKl1tk=; b=Z5X0kvF5FbnGiHgZUL6YNULXOE
	utPymy6IPDQE3cI6UO0jtAjnAK1DIdQXRuVf+C97GHhOhte7otG5Gc9FYiR7sryxjqro4kNzqmeFV
	oxOl3GD9MKqbc8RaOmsHUUbUrBwc7gwGn0a2FbMtN0kcKZFvV0HA++Wbappwt3xfTcHDi5O+jdOaQ
	WfVg8V/q946Scj+B8heDxyj4YXBzPWfq+GzkLOFpPIFAvyHRHZrA3FYkyrygRpapwk4RWxBhotY5g
	3f9b31hL7Y4jGeyMfkAa7kHOhL8KOu1Ma/aELGT9Fs/pt3Sq3rO3mxV8pZxnE2FlNeRUN4IPBUT/1
	KwnMcdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRU9h-0000000A9PS-2Rnn;
	Wed, 10 Jul 2024 10:02:33 +0000
Received: from out-181.mta1.migadu.com ([2001:41d0:203:375::b5])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRU9d-0000000A9OP-1XCf
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 10:02:31 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720605742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NJJ/PSTQTb3tpev2BiBmkCTWQ+ec4m22cqLbanWHxvA=;
	b=uT3hvtKAgzY/2ioKZDXPhajbmNsXISurOLmNL5g2lU4xhAdAu5hukNSIOEXMJSrGNRRkeq
	1bTPNKbDXbjsBBn6rnByRdvqZsP7qlRx8+1fol1sLcluA1FcqziBJJbn+riR9/mgMeATc5
	8uspKRWTosYc965LyPcYNwOD4mrEqZJ6TX2z1tAwPV16oz+lqWLb84dYT/kBwESfOhNTNe
	OtdgczFHK0h0qDPpg3IB1QhIwJW8F2qsB19+rWCzXIsOVYjlrTFKp6QTjGHNShJlUw1+pY
	BMN6IvwIF67W3b/PSd+lrVFEEPEdj1YEykQn8O3imZJAkqvB2k7OfFC+arEAAQ==
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: devicetree@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Philipp Puschmann <p.puschmann@pironex.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, p.puschmann@pironex.com,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi for
 RK356x
Date: Wed, 10 Jul 2024 12:02:07 +0200
Message-ID: <5414331.Y6POrrGVKo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240710093356.3344056-1-p.puschmann@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_030229_773244_4DBB8ABE 
X-CRM114-Status: GOOD (  12.09  )
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
Content-Type: multipart/mixed; boundary="===============5246047654950942229=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5246047654950942229==
Content-Type: multipart/signed; boundary="nextPart2472209.eE7AJ3UNXe";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2472209.eE7AJ3UNXe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 10 Jul 2024 12:02:07 +0200
Message-ID: <5414331.Y6POrrGVKo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240710093356.3344056-1-p.puschmann@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
MIME-Version: 1.0

On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
> DMA names are required by of_dma_request_slave_channel function that is
> called during uart probe. So to enable DMA for uarts add the names as in
> the RK3568 TRM.

Setting it on channels without flow control apparently causes issues. See

https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/

> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..4ae40661ca6a
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>  		clock-names = "baudclk", "apb_pclk";
>  		dmas = <&dmac0 0>, <&dmac0 1>;
> +		dma-names = "tx", "rx";
>  		pinctrl-0 = <&uart0_xfer>;
>  		pinctrl-names = "default";
>  		reg-io-width = <4>;
> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>  		clock-names = "baudclk", "apb_pclk";
>  		dmas = <&dmac0 2>, <&dmac0 3>;
> +		dma-names = "tx", "rx";
>  		pinctrl-0 = <&uart1m0_xfer>;
>  		pinctrl-names = "default";
>  		reg-io-width = <4>;
> ...
--nextPart2472209.eE7AJ3UNXe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo5cHwAKCRDXblvOeH7b
bouTAQDB9gDa4u0c0OxsnNTQjkvPClfMbVNKdre+EbNLhZVp3AD/daehVUuO5Yc0
iI+Tdb5gNHR3VR2aBz+Sx97qu1gPVgA=
=v8JT
-----END PGP SIGNATURE-----

--nextPart2472209.eE7AJ3UNXe--





--===============5246047654950942229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5246047654950942229==--




