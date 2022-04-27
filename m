Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDE24C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 14:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X5zsNrrEx6hT1jc2zetDqv93y4TYS6uz0sgGrreFNso=; b=Xl9weGUDveRwh4ULMT1Kh4xP/h
	qo0UdcT61GbbOy2s99PLqkxUVk/VZ9LADGoFnm7uKyp/IRjBSXQGLBMgUpJCS1Y1KVHgP/HkEDzHI
	Mw+EXLQIxbRlQwVEgb8USX3K8kKcx7Bm4XQIyr7mUziFYbvn8g01v0xontRFHvC7DWp5p+Izr3MDn
	omr5cSbN3DlKaLT0g0DxLDY4qKtP1duexyrRz3qJLYFSHdxburXV1cB14Bnuz9n6STUSn+V9lOjjc
	LkjMuSJUy0ZmUK7d5CVglWSYqlCwyb5ttouDc/otFVuEB7cVJqexafdWnp+6qUHhc5VAQ2tReK1x1
	oEQZVNAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njiw5-001rEz-EA; Wed, 27 Apr 2022 14:46:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njiw2-001rDp-PZ
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 14:46:32 +0000
Received: from localhost (unknown [IPv6:2a02:3030:0:1e3e:2277:ba57:a2c0:4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 58FD21F40898;
 Wed, 27 Apr 2022 15:46:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651070788;
 bh=uPnBJqA7/3gJZoazRFRY0NtvrjeKFWjy3algIjYxiJ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kb/UkQ70CysqS726R9AKoHGmM2vrUsQj4301/n25YMFbnt8gVDogsJWgBYF0P4N+S
 CtMFfmQJExEjX/w3NGl0Hk+PGJkIsit+NgRt5rKj5/GK19XRjMNpdnuI5UkuNml3m5
 4CC33j4iQ/ONoUKoQL5rkSz+BaYb2B4p5DCqaDD35NAl3lEaL/LfD5FLmLEIluG5q+
 vmpzVa6sfhojxQ55yQ6SpRnYAQNH40HC/oJspHik+EFWgywbsiSE+B4JTcUGoLlVTz
 n5HOzibcc3Rtg/ceBDKRV8PX1Xc/RaW4hDJ88TrzK+nIoPqHCm6IcWM7Arsnk2d1Z5
 kS4ILsXt1lGTw==
Date: Wed, 27 Apr 2022 16:46:24 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com
Subject: Re: [PATCH] media: hantro: HEVC: Fix tile info buffer value
 computation
Message-ID: <20220427144624.vtbdlczmykflccut@basti-XPS-13-9310>
References: <20220427135517.381959-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427135517.381959-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_074631_106797_A5AFF143 
X-CRM114-Status: GOOD (  10.60  )
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

On 27.04.2022 15:55, Benjamin Gaignard wrote:
>Use pps->column_width_minus1[j] + 1 as value for the tile info buffer
>instead of pps->column_width_minus1[j + 1].
>The patch fix DBLK_E_VIXS_2, DBLK_F_VIXS_2, DBLK_G_VIXS_2,

s/fix/fixes/

Greetings,
Sebastian

>SAO_B_MediaTek_5, TILES_A_Cisco_2 and TILES_B_Cisco_1 tests in fluster.
>
>Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>---
> drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>index bb512389c1a5..ffeb2fbeefd2 100644
>--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>@@ -74,7 +74,7 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
> 					no_chroma = 1;
> 				for (j = 0, tmp_w = 0; j < num_tile_cols - 1; j++) {
> 					tmp_w += pps->column_width_minus1[j] + 1;
>-					*p++ = pps->column_width_minus1[j + 1];
>+					*p++ = pps->column_width_minus1[j] + 1;
> 					*p++ = h;
> 					if (i == 0 && h == 1 && ctb_size == 16)
> 						no_chroma = 1;
>-- 
>2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
