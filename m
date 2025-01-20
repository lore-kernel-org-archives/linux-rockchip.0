Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9357FC02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 19:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqLFc6CZHXT0v6fx3cSznJ0amfo/OSgxIq93A9UB/mg=; b=EE+Ir+MRykUUREAnc5hH+C3BQi
	jIi29IiaImB65nXdkEe1JTvxLkZ69+IZdnAGBqbsQiguS9H1Oz5kQDoBevJAT4ak0CyWGzrCR9WoW
	KeRztU7JgKzMxkxAsSAfXBJsOQGkRXtLzbVI6ZuA/0RD+bBiQUHIyMKQNrqugy8ZKg0w72oxuXECh
	M/7qj1jAQnMpCNCdRe2URaV4ghunuaf3VD9L2ImTUtSVA5FhYM7boP+y0k6JY0QHEDeLP8N7G4tpv
	pojRdY8qYs4ZOrLwFuso6oMXDD0APy8UQx26/8XdaK5jTUdCbAx0vFRtTw1msav+M3RNQuPSsoJSe
	t22+VMew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZxi6-00000006LMD-02Jm;
	Mon, 20 Jan 2025 19:45:22 +0000
Received: from out-172.mta1.migadu.com ([2001:41d0:203:375::ac])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZxgo-00000006LBb-1Zmp
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 19:44:03 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1737402240;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5RLve09pHXyDwibCb60WvsnrRpSp359iWUXBWVIy1PI=;
	b=Nv2DeSGiFIx4Z309t7HF/4zhQcgnLOsu0UfBrFN7wJt/JIoTB4p/3oDnyt5TeQzECeyuel
	bgJUCWLa6ljUwXaw1Lf3O7znvOcsPTZ3uRU0XWOx5ez/NyxD+0UPENKbR3xszzfc6nWdhx
	fLAktCxX4d2wzE/ZaHdTxrgiVn4lRKOWDb5EwEzsB/4xf+6hgDXsOjrALmYwehSciTdGln
	t5jfzOUqfNeuoQpRLx0YLsu4GtE5faDd2zRIZNmQCCvl3HA8YxteRXLChw4AH7TAWJhPhO
	K9Kv2TAa72/ISOjYMcRFSW+J6xJQ411uzxLnXXt7zbA2GrSXGLXh3WYPJn3eyA==
Date: Mon, 20 Jan 2025 20:43:49 +0100
Message-Id: <D775OTRW5PI5.331IHP40POB5Z@cknow.org>
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
X-CRM114-CacheID: sfid-20250120_114402_554245_A1DE43A7 
X-CRM114-Status: GOOD (  11.13  )
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
Content-Type: multipart/mixed; boundary="===============8252868994370901854=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8252868994370901854==
Content-Type: multipart/signed;
 boundary=ca11871e295c846aed4751d9c823cec546d395094f287aeab8421f6af7ef;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--ca11871e295c846aed4751d9c823cec546d395094f287aeab8421f6af7ef
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

In the mail that contained the Tested-by tag there was also a
Reviewed-by tag (from Nicolas) further down below.

(sorry about the other mail; sth went wrong)
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


--ca11871e295c846aed4751d9c823cec546d395094f287aeab8421f6af7ef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ46neAAKCRDXblvOeH7b
bpKnAQC5dzfDBEJ+T/sVxmb4LBfT8d37/MjDvpBq72uvBqaJ5gEAtnbofxNYAnzJ
Dej14FaOWZ/N+ZrZgFmVhoR6q/3G+wo=
=RCze
-----END PGP SIGNATURE-----

--ca11871e295c846aed4751d9c823cec546d395094f287aeab8421f6af7ef--


--===============8252868994370901854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8252868994370901854==--

