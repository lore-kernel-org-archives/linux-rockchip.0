Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CDF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l0NUzqwkhBa9cqB5WrJI6xfzWOAHw7988QgqrUqKQFs=; b=r6tBUPG38C2m4qAJGKAXqtAZcJ
	Fn0x/nTR8HyTmUnWoLkTZq9MUhq1X/JxD8c4u8H21BXUYY4lCO2Yvg4+VRJtldG7cb4cmoYLgJedi
	W54gu+vas/lPc2vvOyjRBcb1QsOohAAUhKICuxfLq/vPOzpoMyXhjLAzxDGVkEQWyRQwX3QbjCB9I
	qSCNnOgod4Z6vPV3OIU+pKo65s12rvjQDbW1EXlZB7A6ntqXseVkx8m2Lm1DKCA2m8evbN6BbbtKa
	9+DOtKlMZWCf2IWeldpF/JF3JMoIRPJMjv2gusw++JlExLZDrIdbNDB999JHFpoVzQiPSfIeD0NHc
	e5vonJng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njMnQ-00F73H-Ap; Tue, 26 Apr 2022 15:08:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njMnN-00F6zO-Le
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 15:08:07 +0000
Received: from localhost (unknown [IPv6:2a02:3030:3:7d2:2277:ba57:a2c0:3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2EF7F1F43AF8;
 Tue, 26 Apr 2022 16:08:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650985680;
 bh=/9X+6WyLqs1GN7OeFO40lgmlj/Imhhsr/HAhx6cMuHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tc3VgAmsk+pe98NajtEuMllc5Pcw0UM1wLnGZ1T8PjqjkbE7ZfbPQwO6mEmGUS5Hi
 Ncshj9lg+j+fFJ0A44gEapJq9As4255mgQl+3d+hb7PTdsdFKhpkc4bnODLtss15is
 zwk55+lo8K4c4rXWIocsYlhaCb95EzdMxCsPtYwgcYasa6Dl7LxqvmlCl2a7ZbvGRC
 VxgwXyKAEqj+MclS9dBu7Vr/8EoTdzPH6ygL5EniVWaOeGzx3L9YyoOLmNvrrdokvT
 SFxSX2OkzbLwRk41JN71XewFNkWxSDuhvjiEh4ihoh34xa1XhjVRAUBjfTDufzosXQ
 cZE+Nu3JDBzbQ==
Date: Tue, 26 Apr 2022 17:07:56 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com
Subject: Re: [PATCH v2] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
Message-ID: <20220426150756.ecjc4q5ncxzy3lva@basti-XPS-13-9310>
References: <20220426135034.694655-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426135034.694655-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_080805_945428_2624F811 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Benjamin,

On 26.04.2022 15:50, Benjamin Gaignard wrote:
>Always set pps_cb_qp_offset and pps_cr_qp_offset values in Hantro/G2
>register whatever is V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT
>flag value.
>This fix CAINIT_G_SHARP_3 test in fluster.

just a small typo:
s/fix/fixes the/

Greetings,
Sebastian
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 9 ++-------
> 1 file changed, 2 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>index 6deb31b7b993..503f4b028bc5 100644
>--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>@@ -194,13 +194,8 @@ static void set_params(struct hantro_ctx *ctx)
> 		hantro_reg_write(vpu, &g2_max_cu_qpd_depth, 0);
> 	}
>
>-	if (pps->flags & V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT) {
>-		hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
>-		hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
>-	} else {
>-		hantro_reg_write(vpu, &g2_cb_qp_offset, 0);
>-		hantro_reg_write(vpu, &g2_cr_qp_offset, 0);
>-	}
>+	hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
>+	hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
>
> 	hantro_reg_write(vpu, &g2_filt_offset_beta, pps->pps_beta_offset_div2);
> 	hantro_reg_write(vpu, &g2_filt_offset_tc, pps->pps_tc_offset_div2);
>-- 
>2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
