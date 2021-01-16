Return-Path: <SRS0=CLqi=GT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 445EAC433E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 11:57:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23B9E21D7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 11:57:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23B9E21D7A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pn5qTnTomPQLm+JXJbN97Sp2uYAMVRZfMuOUI+akyMw=; b=Uq0Hi8zc9JDksL7BvweDUMEgp
	pXjmXuOHyoUV2lGe2G9h7MZLTG2fF9UuNpOcJ9OVHOYZ1WMjdTu2H8chQfLNDjs8mTn/MCHPGqF2+
	QGeNFt/7A8Cb9kyOX7HNaG1zw1yAuFxGiVfspX17gJSLaE8H7124oAtXGR8FvCVSwCI2TWkO9pLtd
	q6EAWT7demRfUwU/MHAhZg0SnnC0Qsp1A2eJpYL4FcqlOPqmn5PC/PFf1cwChHhywCTyqspDvVJwi
	SIy5Uz5s9hplJe7FdeH1hxQqQgTR9LML3xQv3YDcTwhDq6sZl4jCIL8qdydKEXISaksAlK5HpX67j
	Yex4DY72w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0kDB-00030Q-SS; Sat, 16 Jan 2021 11:57:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0kDA-0002zj-35
 for linux-rockchip@lists.infradead.org; Sat, 16 Jan 2021 11:57:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l0kD0-0006w3-3q; Sat, 16 Jan 2021 12:57:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 3/3] media: rockchip: rkisp1: extend uapi array sizes
Date: Sat, 16 Jan 2021 12:57:33 +0100
Message-ID: <2554499.uZKlY2gecq@diego>
In-Reply-To: <06d42f41-d570-7327-daca-40a52978d4f9@collabora.com>
References: <20210115163829.217131-1-heiko@sntech.de>
 <1739328.QCnGb9OGeP@diego>
 <06d42f41-d570-7327-daca-40a52978d4f9@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210116_065744_211658_352848EF 
X-CRM114-Status: GOOD (  30.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, tfiga@chromium.org,
 ezequiel@collabora.com, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

Am Samstag, 16. Januar 2021, 10:05:39 CET schrieb Dafna Hirschfeld:
> Am 16.01.21 um 00:52 schrieb Heiko St=FCbner:
> > Am Freitag, 15. Januar 2021, 18:41:06 CET schrieb Dafna Hirschfeld:
> >> Am 15.01.21 um 17:38 schrieb Heiko Stuebner:
> >>> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> >>>
> >>> Later variants of the rkisp1 block use more entries in some arrays:
> >>>
> >>> RKISP1_CIF_ISP_AE_MEAN_MAX                 25 -> 81
> >>> RKISP1_CIF_ISP_HIST_BIN_N_MAX              16 -> 32
> >>> RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17 -> 34
> >>> RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28 -> 81
> >>
> >> I see you didn't change the value for that define.
> > =

> > In the below patch I find
> > =

> > @@ -103,7 +111,9 @@
> > * Histogram calculation
> > */
> > /* Last 3 values unused. */
> > -#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
> > +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 28
> > +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12 81
> > +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE     RKISP1_CIF_ISP_=
HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
> > =

> > so I'm not sure I understand what you mean except this.
> =

> Opps, I somehow missed that.
> But now since we have 81 entries, it makes no sense to
> define it to 28 for V10 and documenting "Last 3 values unused" (see just =
above the definition).
> We can set it just to 25, we have 56 (81-25) unused values anyway.

The rkisp1_hst_config() function iterates over its regs-array and accesses
4 weight values in each step and writing them to the register:

static const u32 hist_weight_regs[] =3D {
	RKISP1_CIF_ISP_HIST_WEIGHT_00TO30_V10, ... weight0-3
	RKISP1_CIF_ISP_HIST_WEIGHT_40TO21_V10, ... weight4-7
	RKISP1_CIF_ISP_HIST_WEIGHT_31TO12_V10, ... weight8-11
	RKISP1_CIF_ISP_HIST_WEIGHT_22TO03_V10, ... weight12-15
	RKISP1_CIF_ISP_HIST_WEIGHT_13TO43_V10, ... weight16-19
	RKISP1_CIF_ISP_HIST_WEIGHT_04TO34_V10, ... weight20-23
	RKISP1_CIF_ISP_HIST_WEIGHT_44_V10, ... weight24-27
};

and yes the last step only uses 1 value to write to the register.
But I guess if we really want to reduce the max value, we should move
that last part into a separate write, so that we don't access parts we claim
to not access ;-)

> >> The usage of it is a bit more complicated.
> >> It is used in function rkisp1_hst_config.
> > =

> > Yeah, though the for-loop iterates over 4*7 entry values, so stays
> > below the RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 in all cases.
> > =

> > =

> >> Actually the real number of weight values are 25 (5x5) for rk3399,
> >> the last 3 are not used. I think that in order to support both
> >> 5x5 and 9x9 the code in rkisp1-params.c should change. I'll
> >> send a patch fixing it.
> > =

> > If you look at my V12-patch [0] the weight handling is done different t=
here
> > and from the registers, it looks like they exchanges that part of the i=
sp.
> > =

> > [0] https://lore.kernel.org/linux-media/20210108193311.3423236-11-heiko=
@sntech.de/
> > void rkisp1_hst_config_v12() as a search term
> > =

> > [...]
> =

> Right, there is no need to change the relevant code in rkisp1-param.c whe=
n setting the
> RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE to 25.

ok, should we add a 4th patch fixing that and moving the last write out of =
the loop?


Heiko

> >>> @@ -862,8 +898,16 @@ struct rkisp1_cif_isp_af_stat {
> >>>     *
> >>>     * @hist_bins: measured bin counters
> >>>     *
> >>> - * Measurement window divided into 16 sub-windows, set
> >>> - * with ISP_HIST_XXX
> >>> + * Measurement window divided into 16 sub-windows for V10/V10
> >>> + * and 32 sub-windows for V12/V13, set with ISP_HIST_XXX
> >>
> >> It is actually not windows but histogram bins. Could you change it to:
> >> "The histogram values divided into 16 bins for V10/V11 and 32 bins
> >> for V12/V13. It is configured within the struct rkisp1_cif_isp_hst_con=
fig.
> > =

> > I've changed this like your suggestions and will give a bit of time for
> > the stuff above. But I guess I can send a v5 some time tomorrow?
> > =

> > =

> > Thanks for your input
> > Heiko
> > =

> > =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
