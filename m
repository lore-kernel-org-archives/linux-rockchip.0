Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BAFC47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIzxAc9kgU4c9gXhkeczUWr0lUCCtqDYlI0RiqEPegI=; b=AwvaRBh/UCZjZu
	GWPfPcP499PE1NmzTUNuF31Xx1y/WGRMDdDAsZlgdDSBTZMPLdqFGyOTAQ3Z8DwgBcC45avKIiDPK
	6ed+ARVdlpQfEMIh9TB8wB5IEWdHbPJ71oLvppCd+WzjA8JOutG7E4R+FhxZPaaFuoB5t09D9ouUC
	foPw242UKceaGqs/e59TTYpnJF4rEctKYK7wLP3f9epkCowtDn5vKOfsmbtRv7X/D4b9Plwq/ulWL
	j9Cy5nAQjEmu2Dh3Y7ZkklNcwHZEIBppOuZKLHXVadEINZIokaYXwErvyCEtaVueFJqnFLRqjVRX/
	nzwIPiaVH3yw2dzm2KEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfIr-00000007QSb-2Nrw;
	Fri, 22 Mar 2024 13:51:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfIc-00000007QHC-0yzC;
	Fri, 22 Mar 2024 13:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Nz3ke1VyQ3/nrBgkJo48Kejptb8i6Qi/LKRDybpRcrE=; b=hIi0hE0iJYPJ4OywSrUW5BKdN3
	XFtEDvjIULNr8SHvymhuq6ISAnoB/45EOckv1HffIYQG3FFqxlGVtSZCSlCtUemfEvGhGwx82c3mi
	51kHrJS0a4svLfBH75vKtih3Hy6lsVyGJaolj1Fhd7E4FwQlx0rHwGt4UFIbvCGkGDCtB23lI4erK
	c45x82yO2FuPWt/exVlGlImPKilb85kcweAgjPEUHSMd3y6OMlUdE2wJ5hPvSK0CGycmOMRjXLbpY
	AYONtW9YaZKgDaTJ+lJqA7k2NsOGfc3tntWrHZmHQ3VtenpAGkvVcn0dmAHzQZrLiJtMIcBpZ0Ft2
	phbYtKAw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfIY-0000000EoXT-3Yn2;
	Fri, 22 Mar 2024 13:51:08 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rnfIT-0002tt-Sm; Fri, 22 Mar 2024 14:51:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-i2c@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 47/64] i2c: rk3x: reword according to newest specification
Date: Fri, 22 Mar 2024 14:51:00 +0100
Message-ID: <13914065.RDIVbhacDa@diego>
In-Reply-To: <20240322132619.6389-48-wsa+renesas@sang-engineering.com>
References: <20240322132619.6389-1-wsa+renesas@sang-engineering.com>
 <20240322132619.6389-48-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_135107_100405_C5E7C7A8 
X-CRM114-Status: GOOD (  26.46  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 22. M=E4rz 2024, 14:25:40 CET schrieb Wolfram Sang:
> Match the wording of this driver wrt. the newest I2C v7, SMBus 3.2, I3C
> specifications and replace "master/slave" with more appropriate terms.
> They are also more specific because we distinguish now between a remote
> entity ("client") and a local one ("target").
> =

> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/i2c/busses/i2c-rk3x.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 086fdf262e7b..01febd886bdd 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -28,8 +28,8 @@
>  /* Register Map */
>  #define REG_CON        0x00 /* control register */
>  #define REG_CLKDIV     0x04 /* clock divisor register */
> -#define REG_MRXADDR    0x08 /* slave address for REGISTER_TX */
> -#define REG_MRXRADDR   0x0c /* slave register address for REGISTER_TX */
> +#define REG_MRXADDR    0x08 /* client address for REGISTER_TX */
> +#define REG_MRXRADDR   0x0c /* client register address for REGISTER_TX */
>  #define REG_MTXCNT     0x10 /* number of bytes to be transmitted */
>  #define REG_MRXCNT     0x14 /* number of bytes to be received */
>  #define REG_IEN        0x18 /* interrupt enable */
> @@ -68,8 +68,8 @@ enum {
>  /* REG_IEN/REG_IPD bits */
>  #define REG_INT_BTF       BIT(0) /* a byte was transmitted */
>  #define REG_INT_BRF       BIT(1) /* a byte was received */
> -#define REG_INT_MBTF      BIT(2) /* master data transmit finished */
> -#define REG_INT_MBRF      BIT(3) /* master data receive finished */
> +#define REG_INT_MBTF      BIT(2) /* host data transmit finished */
> +#define REG_INT_MBRF      BIT(3) /* host data receive finished */
>  #define REG_INT_START     BIT(4) /* START condition generated */
>  #define REG_INT_STOP      BIT(5) /* STOP condition generated */
>  #define REG_INT_NAKRCV    BIT(6) /* NACK received */
> @@ -184,7 +184,7 @@ struct rk3x_i2c_soc_data {
>   * @wait: the waitqueue to wait for i2c transfer
>   * @busy: the condition for the event to wait for
>   * @msg: current i2c message
> - * @addr: addr of i2c slave device
> + * @addr: addr of i2c client device
>   * @mode: mode of i2c transfer
>   * @is_last_msg: flag determines whether it is the last msg in this tran=
sfer
>   * @state: state of i2c transfer
> @@ -979,7 +979,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struc=
t i2c_msg *msgs, int num)
>  	/*
>  	 * The I2C adapter can issue a small (len < 4) write packet before
>  	 * reading. This speeds up SMBus-style register reads.
> -	 * The MRXADDR/MRXRADDR hold the slave address and the slave register
> +	 * The MRXADDR/MRXRADDR hold the client address and the client register
>  	 * address in this case.
>  	 */
>  =

> @@ -1016,7 +1016,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, str=
uct i2c_msg *msgs, int num)
>  			addr |=3D 1; /* set read bit */
>  =

>  			/*
> -			 * We have to transmit the slave addr first. Use
> +			 * We have to transmit the client addr first. Use
>  			 * MOD_REGISTER_TX for that purpose.
>  			 */
>  			i2c->mode =3D REG_CON_MOD_REGISTER_TX;
> @@ -1162,8 +1162,8 @@ static u32 rk3x_i2c_func(struct i2c_adapter *adap)
>  }
>  =

>  static const struct i2c_algorithm rk3x_i2c_algorithm =3D {
> -	.master_xfer		=3D rk3x_i2c_xfer,
> -	.master_xfer_atomic	=3D rk3x_i2c_xfer_polling,
> +	.xfer		=3D rk3x_i2c_xfer,
> +	.xfer_atomic	=3D rk3x_i2c_xfer_polling,
>  	.functionality		=3D rk3x_i2c_func,
>  };
>  =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
