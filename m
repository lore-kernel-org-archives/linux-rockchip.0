Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1330AC02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 19:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zLzyHeNhinduJQEpZVQc42YMqVCBtI38OgNh3ImQqcc=; b=P6DuT1cTNuoOevoA4BYvWDpF4y
	Lwq1g8V6UHkhCds3xMonyL2lKqPfk3fDBa3cTPyTzxC61pY9AegpcBJyKLco+VkCS94X/muUtct1i
	mOEeon7dyaUSdYVvdX785Ml1Yd8pVOg5tgLqj0g/iY71vyuhpPSmTxbjFulc1ALd9cX4D0SDjwE+9
	TTmj6zwxIgkItHboAiXGcscv7BBHSnjipwkriozo4AA12RmB4mpggglEYxhdQNVFVkoO1qQfqVWBQ
	pvhS8pHhS3CySBEirJP30XX6YyL+9UiTx9FEPaESu8ENcxwFgMmv9sTd60TnP+zS8ryChcpy8b10X
	bahxICqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZxca-00000006Kvl-1lI0;
	Mon, 20 Jan 2025 19:39:40 +0000
Received: from out-189.mta1.migadu.com ([2001:41d0:203:375::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZxcX-00000006Kv9-2BYH
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 19:39:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1737401971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UY4ocYuTApoBERvgYe3e2ISqtrqDwEARpHTsrL3mCww=;
	b=sWmHZRCQNnP6ophX7SoNxGeRmbDaPklEo2jH4A0szM6vj8uuHRvWbavjoF5iNFXgdhwB2H
	SDHZCrEr0jieSf7W12Yr2x1VjcRW/Klf928LYF1m18Qckc2Ionx7qK0YhSuoqpQ0iwSdA4
	IPxgrMtJLmwGW6ABmal4Gh9L/Aj1LDA81Vk51wItK/XKgWJAZ0d4rXATBVMc6vdBy0mNrL
	HkomL9LE7RAlGjL0kIxGAHRSa86YmcebFgwh2OfqXm8/mpUyZY6xzEsWzfz/b/8JJFkip0
	qlFFjTyADEyjikf/0VnH9IUM2A3T1Ia/rjCwNI1wijB5t1dD0F5gRnEGkkjeHQ==
Date: Mon, 20 Jan 2025 20:39:12 +0100
Message-Id: <D775LAB5KL3Y.1NF80DZVT3G35@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
 <nicolas.dufresne@collabora.com>, <p.zabel@pengutronix.de>,
 <mchehab@kernel.org>
Cc: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] media: verisilicon: HEVC: Initialize start_bit field
References: <20250120153555.404806-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20250120153555.404806-1-benjamin.gaignard@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_113938_399627_3E34958A 
X-CRM114-Status: GOOD (  10.91  )
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
Content-Type: multipart/mixed; boundary="===============8220119792282263372=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8220119792282263372==
Content-Type: multipart/signed;
 boundary=d700cadfe156f6574b4a38b3a3a536ccf8ed3afe0fc3c29486f0e25fd36c;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--d700cadfe156f6574b4a38b3a3a536ccf8ed3afe0fc3c29486f0e25fd36c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Jan 20, 2025 at 4:35 PM CET, Benjamin Gaignard wrote:
> Always set start_bit field to 0, if not it could lead to corrupted frames
> specially when decoding VP9 bitstreams at the same time since VP9 driver
> set it for its own purpose.
>
> Fixes: cb5dd5a0fa51 ("media: hantro: Introduce G2/HEVC decoder")
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/dr=
ivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
> index 85a44143b378..0e212198dd65 100644
> --- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
> +++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
> @@ -518,6 +518,7 @@ static void set_buffers(struct hantro_ctx *ctx)
>  	hantro_reg_write(vpu, &g2_stream_len, src_len);
>  	hantro_reg_write(vpu, &g2_strm_buffer_len, src_buf_len);
>  	hantro_reg_write(vpu, &g2_strm_start_offset, 0);
> +	hantro_reg_write(vpu, &g2_start_bit, 0);
>  	hantro_reg_write(vpu, &g2_write_mvs_e, 1);
> =20
>  	hantro_write_addr(vpu, G2_TILE_SIZES_ADDR, ctx->hevc_dec.tile_sizes.dma=
);


--d700cadfe156f6574b4a38b3a3a536ccf8ed3afe0fc3c29486f0e25fd36c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ46mYgAKCRDXblvOeH7b
bs2tAP0fZkLc7mvSidMGiAaaA+5EBs0onm69lzzFZVeLHYxQ3gEA30jFXRcMYMqh
frvuJrLqjpwPdoy95tQxEKUf/CFlRQc=
=p/Bh
-----END PGP SIGNATURE-----

--d700cadfe156f6574b4a38b3a3a536ccf8ed3afe0fc3c29486f0e25fd36c--


--===============8220119792282263372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8220119792282263372==--

