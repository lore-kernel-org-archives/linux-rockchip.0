Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD4EDCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 15:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EW6UFAEBYZJNn+Tr6e8EEJBqoWL9/j370GJLZ2KwA2U=; b=e+lrm520rj2R8QD4DiBNTTZAtl
	UHSfbWdp6TzYDeRQtGMnDxjiUdLS0CzQ4/itMmEOzieeCJkFa4/GG/FIzXYxDVKldKipOhfbYAHwr
	rAa3ILBVpkSqO2t7XQEKQXbRCD3K5cuZ3h+O1TnPQSMdfGKaZeGv458Y+lhkolrW5xKMc5Ynuw9/Y
	zMNN7EDqw9EecoyYyyXGlujlSBNqlIaP6d0en902mZLFQboTLmSQJRcVkJXATyIRIaxgNX/ed1mHV
	6Dq/xAonF6nMlkJ2cPCxOoJA3SN2bP4A+cfedXDtChzxDkoG50La4dU6WIuOwUIR3WdEP1dOE+PbZ
	Tw+PZxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4LJV-0000000Ajtd-28FO;
	Thu, 02 Oct 2025 15:33:49 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4LJT-0000000AjtI-10fL
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Oct 2025 15:33:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759419214; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=d84ImoPKOwA86C5xmCVawfahilb1YtNNstmMwTO87aXHF9CJLmc0DFkFXyGnJM6TrjeK+J71WqxXV6/86YpvTjk52SZsUGW9bzrBgzm7Th6UJ/Eljl5IB9YApgb5etsnGqmVPeiT6OXldH7I1d1OjzTReBYoLyRvOfIB5sZR/s8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759419214; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=r/AwdxsrSi9lPAk5D2IuToqAmxz0JzjUf3es969h1gk=; 
	b=HLh5+XnjERyUioG5F79JuySEk9BJ9gRfPZctsk+dgecCW2EhFNivZAM6cbU15LAupsm4o3/MT5+0R8PHJZjj7XHVYfjZbgLEokpn6LToNYe9arFzC0PF4B/CYiHhOaUDlNAL3jYcq0vUljJRJeabKAlaQb5S+NUfCTVOpUMM70o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759419214;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=r/AwdxsrSi9lPAk5D2IuToqAmxz0JzjUf3es969h1gk=;
	b=iVwxA3XdR2FFIbz/PR7N9184BJKElkuf49bsgnk507zBC1bTktRztlUymaRagF6F
	IOsbhgMG8fBjgqSpZOhuyLu979ZbpSKNoLOYFyUqatEiyt+fsEhPL6RDkdj/qTeW1rV
	9dzpUkfjUG68S1gqhZ01T1Dm0G3ibk9x1ioo+BUY=
Received: by mx.zohomail.com with SMTPS id 1759419211558738.1078829537233;
	Thu, 2 Oct 2025 08:33:31 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 6305018077C; Thu, 02 Oct 2025 17:33:27 +0200 (CEST)
Date: Thu, 2 Oct 2025 17:33:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, jose.abreu@synopsys.com, nelson.costa@synopsys.com, 
	shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com, kernel@collabora.com, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] media: synopsys: hdmirx: Detect broken interrupt
Message-ID: <wrzkhnslrwnpsv7gbdcvxobahun7l6foftftk676hxinfeqwjr@v3di5okva7co>
References: <20251002140750.579059-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20251002140750.579059-1-dmitry.osipenko@collabora.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/259.363.73
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_083347_365252_2D093A9D 
X-CRM114-Status: GOOD (  29.78  )
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
Content-Type: multipart/mixed; boundary="===============1396764908402486088=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1396764908402486088==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v4vzuz4tykreqsri"
Content-Disposition: inline


--v4vzuz4tykreqsri
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] media: synopsys: hdmirx: Detect broken interrupt
MIME-Version: 1.0

Hello Dmitry,

On Thu, Oct 02, 2025 at 05:07:50PM +0300, Dmitry Osipenko wrote:
> Downstream version of RK3588 U-Boot uses customized TF-A that remaps
> HDMIRX hardware interrupt, routing it via firmware that isn't supported
> by upstream driver.
>=20
> Detect broken interrupt and print a clarifying error message about a need
> to use open-source TF-A with this driver.
>=20
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
> Changelog:
>=20
> v2: - Added PHY r/w lock and moved the clarifying error message as
>       was suggested by Sebastian Reichel.
>=20
>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 90 ++++++++++++++++++-
>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  2 +
>  2 files changed, 90 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drive=
rs/media/platform/synopsys/hdmirx/snps_hdmirx.c
> index b7d278b3889f..e6456352dfa5 100644
> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c

#include <linux/cleanup.h>

Otherwise LGTM and hopefully helps people to figure out the root
cause of their problems:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> @@ -132,12 +132,14 @@ struct snps_hdmirx_dev {
>  	struct delayed_work delayed_work_hotplug;
>  	struct delayed_work delayed_work_res_change;
>  	struct hdmirx_cec *cec;
> +	struct mutex phy_rw_lock; /* to protect phy r/w configuration */
>  	struct mutex stream_lock; /* to lock video stream capture */
>  	struct mutex work_lock; /* to lock the critical section of hotplug even=
t */
>  	struct reset_control_bulk_data resets[HDMIRX_NUM_RST];
>  	struct clk_bulk_data *clks;
>  	struct regmap *grf;
>  	struct regmap *vo1_grf;
> +	struct completion cr_read_done;
>  	struct completion cr_write_done;
>  	struct completion timer_base_lock;
>  	struct completion avi_pkt_rcv;
> @@ -796,11 +798,50 @@ static int wait_reg_bit_status(struct snps_hdmirx_d=
ev *hdmirx_dev, u32 reg,
>  	return 0;
>  }
> =20
> +static int hdmirx_phy_register_read(struct snps_hdmirx_dev *hdmirx_dev,
> +				    u32 phy_reg, u32 *val)
> +{
> +	struct device *dev =3D hdmirx_dev->dev;
> +	u32 status;
> +
> +	guard(mutex)(&hdmirx_dev->phy_rw_lock);
> +
> +	reinit_completion(&hdmirx_dev->cr_read_done);
> +	/* clear irq status */
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	/* en irq */
> +	hdmirx_update_bits(hdmirx_dev, MAINUNIT_2_INT_MASK_N,
> +			   PHYCREG_CR_READ_DONE, PHYCREG_CR_READ_DONE);
> +	/* write phy reg addr */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG1, phy_reg);
> +	/* config read enable */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONTROL, PHYCREG_CR_PARA_READ_P);
> +
> +	if (!wait_for_completion_timeout(&hdmirx_dev->cr_read_done,
> +					 msecs_to_jiffies(20))) {
> +		dev_err(dev, "%s wait cr read done failed\n", __func__);
> +		return -ETIMEDOUT;
> +	}
> +
> +	/* read phy reg value */
> +	status =3D hdmirx_readl(hdmirx_dev, PHYCREG_STATUS);
> +	if (!(status & PHYCREG_CR_PARA_DATAVALID)) {
> +		dev_err(dev, "%s cr read failed\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	*val =3D status & PHYCREG_CR_PARA_RD_DATA_MASK;
> +
> +	return 0;
> +}
> +
>  static int hdmirx_phy_register_write(struct snps_hdmirx_dev *hdmirx_dev,
>  				     u32 phy_reg, u32 val)
>  {
>  	struct device *dev =3D hdmirx_dev->dev;
> =20
> +	guard(mutex)(&hdmirx_dev->phy_rw_lock);
> +
>  	reinit_completion(&hdmirx_dev->cr_write_done);
>  	/* clear irq status */
>  	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> @@ -1814,6 +1855,13 @@ static void mainunit_2_int_handler(struct snps_hdm=
irx_dev *hdmirx_dev,
>  		*handled =3D true;
>  	}
> =20
> +	if (status & PHYCREG_CR_READ_DONE) {
> +		hdmirx_update_bits(hdmirx_dev, MAINUNIT_2_INT_MASK_N,
> +				   PHYCREG_CR_READ_DONE, 0);
> +		complete(&hdmirx_dev->cr_read_done);
> +		*handled =3D true;
> +	}
> +
>  	if (status & TMDSVALID_STABLE_CHG) {
>  		process_signal_change(hdmirx_dev);
>  		v4l2_dbg(2, debug, v4l2_dev, "%s: TMDSVALID_STABLE_CHG\n", __func__);
> @@ -2313,18 +2361,51 @@ static void hdmirx_disable_all_interrupts(struct =
snps_hdmirx_dev *hdmirx_dev)
>  	hdmirx_clear_interrupt(hdmirx_dev, CEC_INT_CLEAR, 0xffffffff);
>  }
> =20
> -static void hdmirx_init(struct snps_hdmirx_dev *hdmirx_dev)
> +static int hdmirx_detect_broken_interrupt(struct snps_hdmirx_dev *hdmirx=
_dev)
>  {
> +	int ret;
> +	u32 val;
> +
> +	enable_irq(hdmirx_dev->hdmi_irq);
> +
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG0, 0x3);
> +
> +	ret =3D hdmirx_phy_register_read(hdmirx_dev,
> +				       HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_FSM_CONFIG,
> +				       &val);
> +
> +	disable_irq(hdmirx_dev->hdmi_irq);
> +
> +	return ret;
> +}
> +
> +static int hdmirx_init(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	int ret;
> +
>  	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, PHY_RESET | PHY_PDDQ, 0);
> =20
>  	regmap_write(hdmirx_dev->vo1_grf, VO1_GRF_VO1_CON2,
>  		     (HDMIRX_SDAIN_MSK | HDMIRX_SCLIN_MSK) |
>  		     ((HDMIRX_SDAIN_MSK | HDMIRX_SCLIN_MSK) << 16));
> +
> +	/*
> +	 * RK3588 downstream version of TF-A remaps HDMIRX interrupt and
> +	 * requires use of a vendor-specific FW API that we don't support
> +	 * in this driver.
> +	 */
> +	ret =3D hdmirx_detect_broken_interrupt(hdmirx_dev);
> +	if (ret)
> +		dev_err_probe(hdmirx_dev->dev, ret,
> +			      "interrupt not functioning, open-source TF-A is required by thi=
s driver\n");
> +
>  	/*
>  	 * Some interrupts are enabled by default, so we disable
>  	 * all interrupts and clear interrupts status first.
>  	 */
>  	hdmirx_disable_all_interrupts(hdmirx_dev);
> +
> +	return ret;
>  }
> =20
>  /* hdmi-4k-300mhz EDID produced by v4l2-ctl tool */
> @@ -2606,10 +2687,12 @@ static int hdmirx_probe(struct platform_device *p=
dev)
>  		return dev_err_probe(dev, PTR_ERR(hdmirx_dev->regs),
>  				     "failed to remap regs resource\n");
> =20
> +	mutex_init(&hdmirx_dev->phy_rw_lock);
>  	mutex_init(&hdmirx_dev->stream_lock);
>  	mutex_init(&hdmirx_dev->work_lock);
>  	spin_lock_init(&hdmirx_dev->rst_lock);
> =20
> +	init_completion(&hdmirx_dev->cr_read_done);
>  	init_completion(&hdmirx_dev->cr_write_done);
>  	init_completion(&hdmirx_dev->timer_base_lock);
>  	init_completion(&hdmirx_dev->avi_pkt_rcv);
> @@ -2623,7 +2706,10 @@ static int hdmirx_probe(struct platform_device *pd=
ev)
>  	hdmirx_dev->timings =3D cea640x480;
> =20
>  	hdmirx_enable(dev);
> -	hdmirx_init(hdmirx_dev);
> +
> +	ret =3D hdmirx_init(hdmirx_dev);
> +	if (ret)
> +		goto err_pm;
> =20
>  	v4l2_dev =3D &hdmirx_dev->v4l2_dev;
>  	strscpy(v4l2_dev->name, dev_name(dev), sizeof(v4l2_dev->name));
> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h b/drive=
rs/media/platform/synopsys/hdmirx/snps_hdmirx.h
> index 220ab99ca611..a719439d3ca0 100644
> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
> @@ -114,6 +114,8 @@
>  #define PHYCREG_CR_PARA_WRITE_P			BIT(1)
>  #define PHYCREG_CR_PARA_READ_P			BIT(0)
>  #define PHYCREG_STATUS				0x00f4
> +#define PHYCREG_CR_PARA_DATAVALID		BIT(24)
> +#define PHYCREG_CR_PARA_RD_DATA_MASK		GENMASK(15, 0)
> =20
>  #define MAINUNIT_STATUS				0x0150
>  #define TMDSVALID_STABLE_ST			BIT(1)
> --=20
> 2.51.0
>=20

--v4vzuz4tykreqsri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmjem0MACgkQ2O7X88g7
+ppLAQ//VI3yv0XdZ1Vei2q8ytiglfbk1o69KxvWDy76dNiO2hBJMRr+5PKZGZiJ
oliJv8XDPvgrh9jXbWkjRMoP+eBnU0xFLzcVogHHDvpTReGPqGuMNM+olkA0gfwu
S8Z4UuV/uaIotyMqEiOL656WAfIUWQSyLQ2mKCovQ/N9ZB+w7zhYnvqpMJJaZ+z9
q0ahk+Ai7sWC4DzEeEy5Mj6OCLyH9TuqADpCu+NlWjYKwK3hcsenzx9y1MIJn9/O
mKmB6T6JuW4cKDuRRnd43gpxN+7OlEjmGZpycttlNMDHHMusjRzFYztZ1tQQrWpo
hLvKfANF/Eeypu/z1SN6JuakeCsR+SJkK5gw5AlKjZrb1d9AeGCq6exyl8Y4y+tg
aXWH5UlpuchPlYXOBmCbvNRaUap3xUedTGxgWeIu4ObbdNrD4GXWtDhIN1usnaoO
HL6nGMBPvaNcbk1tqPsJlTMaSITieV2kRe27vCeiOWo12e1Tt1FXqHMKVNbb+Qpk
sBBM8Mip4XuM3Ex9ZtokrWFi9e4P3IDqn3W9sw75t6940rmi1PQtOWArvLjzAm9R
l7hHlsRCvfroW2CkisK6EwN3bmO5JUjICRR0FtrdAXlfr31/iqCa+w52LKdbG//3
Uum6Clapb5pNZGu73Q8NO1f7w+zU+HLVtr3kdzrIDtex545nEEM=
=Hq5P
-----END PGP SIGNATURE-----

--v4vzuz4tykreqsri--


--===============1396764908402486088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1396764908402486088==--

