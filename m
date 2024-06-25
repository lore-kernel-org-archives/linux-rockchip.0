Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC1FC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 16:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FL66JgsPeIts6e8OxKYpOXQ+iNNQ+16nnYb987TgzVE=; b=0LrKcSbMlX6sQIxPULnqmr9lsd
	Qpm5YveOrEqXVdMxRM1RUb+oYwey7CP92Rfwut9moexWPkMUpUJ/30Cg2OD4tabOM4Y6eRpPLxx5e
	JqUO72AjVkv59r/hjsbZ30pTu5GrRhksHJ4cMIafb5MeyGVHoRbiIIkaCav950OQfTxXdmiFh+qfS
	qzySSKHSvdt0E6TxfjBZRKIrwENjIJCKg/mrGc04JQwq+Ob/QobB6QahbQm4JIDBrhc0WK7j5KqoA
	lm1dg0mUwrDw+vzxcWEnZqdiyBGSX4yqFRgBoz3QXtrXH+vWGwbVeGhADFGwfFQH8lO9FVyFYMJTa
	6U7zymhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM9Te-00000003mWD-00wy;
	Tue, 25 Jun 2024 16:57:06 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM9TW-00000003mUs-0b6N;
	Tue, 25 Jun 2024 16:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719334615;
	bh=J7aUssdG+d+SSneJjCzjAIvna71yISDKfeg2F6cDG5I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PaEjRFyx/ENwXiPBxuhCmUBAQvT4N1kdNZ/T3YWSGawBczsJTgGOkpHNIgYvPdEMQ
	 u7Q6yqTFzUSrhoJ+guzDr/SF8P6RnwAqSfuADoTh8inpNRJNcfcRr7jT47tnCHo9ln
	 V641SbYDnkuWIJq1TpqPzmKiZAW+poAS+CFo6a+9XuDNAYewwb/uLFZU/Gvy4d3eoT
	 RNAnMZ55eEspJedCuPCGRwVV/roTSL7ZA6SydLffUn9fR1fhwmBo57oQVK9+167SKV
	 fXNxpRFLhzECX7Z8GtSaOEP3e1YxQRfbXTitapA4QW+mWhgTWJXqpDf4koFABmO+d8
	 Kp5pJvS2wuDGw==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E299B378107C;
	Tue, 25 Jun 2024 16:56:51 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>,
 Andy Yan <andy.yan@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v3 2/4] media: rockchip: Introduce the rkvdec2 driver
Date: Tue, 25 Jun 2024 12:56:24 -0400
Message-ID: <3815203.kQq0lBPeGt@arisu>
Organization: Collabora
In-Reply-To: <c7882f94-e2cb-4023-a53e-87ebc8fa3460@gmail.com>
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
 <20240620142532.406564-3-detlev.casanova@collabora.com>
 <c7882f94-e2cb-4023-a53e-87ebc8fa3460@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_095658_527875_34BF5204 
X-CRM114-Status: GOOD (  49.58  )
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
Content-Type: multipart/mixed; boundary="===============2354681841212680894=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2354681841212680894==
Content-Type: multipart/signed; boundary="nextPart3570016.iIbC2pHGDl";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3570016.iIbC2pHGDl
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Date: Tue, 25 Jun 2024 12:56:24 -0400
Message-ID: <3815203.kQq0lBPeGt@arisu>
Organization: Collabora
In-Reply-To: <c7882f94-e2cb-4023-a53e-87ebc8fa3460@gmail.com>
MIME-Version: 1.0

Hi Alex,

On Sunday, June 23, 2024 5:33:28 A.M. EDT you wrote:
> Hi Detlev,
> 
> Am 20.06.24 um 16:19 schrieb Detlev Casanova:
> > This driver supports the second generation of the Rockchip Video
> > decoder, also known as vdpu34x.
> > It is currently only used on the RK3588(s) SoC.
> > 
> > There are 2 decoders on the RK3588 SoC that can work in pair to decode
> > 8K video at 30 FPS but currently, only using one core at a time is
> > supported.
> > 
> > Scheduling requests between the two cores will be implemented later.
> > 
> > The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
> > currently only supports H264.
> > 
> > The driver is based on rkvdec and they may share some code in the
> > future.
> > The decision to make a different driver is mainly because rkvdec2 has
> > more features and can work with multiple cores.
> > 
> > The registers are mapped in a struct in RAM using bitfields. It is IO
> > copied to the HW when all values are configured.
> > The decision to use such a struct instead of writing buffers one by one
> > 
> > is based on the following reasons:
> >   - Rockchip cores are known to misbehave when registers are not written
> >   
> >     in address order,
> >   
> >   - Those cores also need the software to write all registers, even if
> >   
> >     they are written their default values or are not related to the task
> >     (this core will not start decoding some H264 frames if some VP9
> >     registers are not written to 0)
> >   
> >   - In the future, to support multiple cores, the scheduler could be
> >   
> >     optimized by storing the precomputed registers values and copy them
> >     to the HW as soos as a core becomes available.
> > 
> > This makes the code more readable and may bring performance improvements
> > in future features.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >   drivers/staging/media/Kconfig                |    1 +
> >   drivers/staging/media/Makefile               |    1 +
> >   drivers/staging/media/rkvdec2/Kconfig        |   15 +
> >   drivers/staging/media/rkvdec2/Makefile       |    3 +
> >   drivers/staging/media/rkvdec2/TODO           |    9 +
> >   drivers/staging/media/rkvdec2/rkvdec2-h264.c |  739 +++++++++++
> >   drivers/staging/media/rkvdec2/rkvdec2-regs.h |  345 +++++
> >   drivers/staging/media/rkvdec2/rkvdec2.c      | 1253 ++++++++++++++++++
> >   drivers/staging/media/rkvdec2/rkvdec2.h      |  130 ++
> >   9 files changed, 2496 insertions(+)
> >   create mode 100644 drivers/staging/media/rkvdec2/Kconfig
> >   create mode 100644 drivers/staging/media/rkvdec2/Makefile
> >   create mode 100644 drivers/staging/media/rkvdec2/TODO
> >   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
> >   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
> >   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
> >   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h
> 
> ...
> 
> > +static inline void rkvdec2_memcpy_toio(void __iomem *dst, void *src,
> > size_t len) +{
> > +#ifdef CONFIG_ARM64
> > +	__iowrite32_copy(dst, src, len);
> > +#elif defined(CONFIG_ARM)
> 
> I guess that can get an "#else" since memcpy_toio exists for all archs.
> 
> > +	memcpy_toio(dst, src, len);
> > +#endif
> > +}
> > +
> 
> ...
> 
> > +	/* Set timeout threshold */
> > +	if (pixels < RKVDEC2_1080P_PIXELS)
> > +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_1080p;
> > +	else if (pixels < RKVDEC2_4K_PIXELS)
> > +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_4K;
> > +	else if (pixels < RKVDEC2_8K_PIXELS)
> > +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_8K;
> > +
> 
> Did you test if it works with anything > 8K? If so, you propably want to
> make the check above
> 
> +	else
> +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_8K;
> 
> Otherwise the timeout may not be set/contain invalid values from any former
> stream.

That's right, but it would be set to 0 because of the memset. 
RKVDEC2_TIMEOUT_8K might not be enough for bigger frame sizes, so I'll set it 
to the maximum value (0xffffffff) when frames are bigger than 8K and also adapt 
the watchdog time: RKVDEC2_TIMEOUT_8K is around 100 ms, but 0xffffffff is arnoud 
5.3 seconds (reg032/axi_clock_freq)

I'll do more tests with this as well.

> ...
> 
> > +
> > +static const struct rkvdec2_coded_fmt_desc rkvdec2_coded_fmts[] = {
> > +	{
> > +		.fourcc = V4L2_PIX_FMT_H264_SLICE,
> > +		.frmsize = {
> > +			.min_width = 16,
> > +			.max_width =  65520,
> > +			.step_width = 16,
> > +			.min_height = 16,
> > +			.max_height =  65520,
> > +			.step_height = 16,
> > +		},
> > +		.ctrls = &rkvdec2_h264_ctrls,
> > +		.ops = &rkvdec2_h264_fmt_ops,
> > +		.num_decoded_fmts = 
ARRAY_SIZE(rkvdec2_h264_decoded_fmts),
> > +		.decoded_fmts = rkvdec2_h264_decoded_fmts,
> > +		.subsystem_flags = 
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> > +	},
> > +};
> > +
> 
> Note, that this is also given to userspace (VIDIOC_ENUM_FRAMESIZES) and
> this is already incorrect in the old rkvdec driver (and hantro): From
> userspace perspective we do not have a restriction in
> step_width/step_width, as we are aligning any given width/height to HW
> requirements in the driver - what we should give to userspace is
> fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS; fsize->stepwise.min_height =
> 1; fsize->stepwise.min_width = 1; fsize->stepwise.max_height = 65520;
> fsize->stepwise.max_width = 65520; 

Is fsize->stepwise.min_height = 1; and fsize->stepwise.min_width = 1 correct ?
Or do you mean fsize->stepwise.step_height = 1; and fsize->stepwise.setp_width 
= 1 ? 

It would give this instead:

.frmsize = {
	.min_width = 16,
	.max_width =  65520,
	.step_width = 1,
	.min_height = 16,
	.max_height =  65520,
	.step_height = 1,
},

and .vidioc_enum_framesizes sets fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;

> I guess this new driver should be an
> opportunity to fix that and distinguish between internal and external
> frame size requirements and the .vidioc_enum_framesizes callback should
> adapted accordingly. Regards, Alex

Detlev.
--nextPart3570016.iIbC2pHGDl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZ69rgACgkQ5EFKUk4x
7bajeggAmSBRiILCUDDpGbIjXBxb00RYdK6MgtbGJuQfBDgf3F0t1eYIpRNodLjn
HLcauJWna1LSOjVdzemEWqrbzXMNaT2w1YyN3emSxO4IRZ7SLlM9ZvoNoELtE9Bu
Lww+nu1qxDwuieFRQLIRRoySMHWfN2b+mjDTJEFmfSrXis+izpqthQsAt1Pqm8FV
kugdGZNqtqx5fUPuYXkn2zorpPcSXFL58vqUZ9yhYRKoVvdz+X+bkfNvg6vMIW91
kq0isaB9YHSX5+P1mAn8fU2utGNrv15F4ZgQChLnKVVCjfT0IO++t12dh7ff19hl
1br0WjEsuhJ/UwmcVWhqp3S1NG5MoA==
=4M84
-----END PGP SIGNATURE-----

--nextPart3570016.iIbC2pHGDl--





--===============2354681841212680894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2354681841212680894==--




