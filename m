Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB05C606A680
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 23:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=exF+g2P9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vheyV6CeiXCk9R+Qvc8NZkxZS70gpCTSYjAeJlLvF5U=; b=exF+g2P9K9EESXM8oefp5aYVx+
	XaxF8frq2XvCj/KdBzpqSS+0VpRLEnBHvLhNlUfg2dZPR6jTxFe+b9iJvL46RbSiKuarUhPy+tXds
	f7Acefa/yy8gFAgWudgSYTbp75HXD05kuPr8mzZ61OZKYo6LK8oI0LyWdG8JPmo7eyceo1ulMIJkc
	TEvPjC6TCmEp7Cr7HrkoUgkoNHYrx9i6kwVcjlg3b9X1eWYSTY0HH4mD6qLGlRXwvrEQAeQzt2q1z
	cTFPhNvuxQTN9V06ftWHcQSJRE9BYsCACGGEQSX84aipNgEoRokAfK7IxNohCgj6RgPQCTLUraGzE
	VkrEN22A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXx2-0000000GPXI-3Gxi;
	Fri, 20 Nov 2026 23:23:28 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXwz-0000000GPWm-3msi;
	Fri, 20 Nov 2026 23:23:27 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xUXwq-000000002ZQ-437a;
	Fri, 20 Nov 2026 23:23:17 +0000
Date: Fri, 20 Nov 2026 23:23:08 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] media: rkvdec: hevc: bound the RPS reads by the
 control size
Message-ID: <awDWVpqEBcOGsCuu@makrotopia.org>
References: <cover.1794645268.git.daniel@makrotopia.org>
 <bb9c44d0f56221874b105394169e5c377ef21b42.1794645268.git.daniel@makrotopia.org>
 <6ae6d1101d3f7095d11462579a5a3313153533e6.camel@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ae6d1101d3f7095d11462579a5a3313153533e6.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_152326_132039_52B891E3 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi again,

I missed the part of your review which was inlined with the code.
See my reply below.

On Mon, Nov 16, 2026 at 08:49:44AM -0500, Nicolas Dufresne wrote:
> [...]
> > --- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
> > +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
> > @@ -448,18 +448,18 @@ void rkvdec_hevc_run_preamble(struct rkvdec_ctx *ctx,
> >  			      V4L2_CID_STATELESS_HEVC_SCALING_MATRIX);
> >  	run->scaling_matrix = ctrl ? ctrl->p_cur.p : NULL;
> >  
> > +	run->ext_sps_st_rps = NULL;
> >  	if (ctx->has_sps_st_rps) {
> >  		ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
> >  				      V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS);
> > -		run->ext_sps_st_rps = ctrl ? ctrl->p_cur.p : NULL;
> > -	} else {
> > -		run->ext_sps_st_rps = NULL;
> > +		if (ctrl && ctrl->elems >= run->sps->num_short_term_ref_pic_sets)
> > +			run->ext_sps_st_rps = ctrl->p_cur.p;
> >  	}
> > +	run->ext_sps_lt_rps = NULL;
> >  	if (ctx->has_sps_lt_rps) {
> >  		ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
> >  				      V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS);
> > -		run->ext_sps_lt_rps = ctrl ? ctrl->p_cur.p : NULL;
> > -	} else {
> > -		run->ext_sps_lt_rps = NULL;
> > +		if (ctrl && ctrl->elems >= run->sps->num_long_term_ref_pics_sps)
> > +			run->ext_sps_lt_rps = ctrl->p_cur.p;
> 
> So you are saying that if the passed array is too short, we should use an older
> entry to none? That seems a little strange, what about up-front rejecting bad
> entries?

That's what I do, but only after patch 5, before that the decoder would
still run with the previous table. I will reorder the series so the
refusal comes first.

Rejecting when the control is set does not work, as the count and the
array are separate controls which can be set in any order, also in
different requests. The first point where both are known is when the
request is applied in device_run.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
