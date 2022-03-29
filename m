Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C638CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9+z2s+ojZxSwyRpyzxiX/lSwqlNBZp1HKcmJwHNYSDk=; b=f5Es/7M78jS2nuieU+Fo7/uu27
	tKhpgeDICLjHUpqg+sWfy5UWuD+WOBGt5pDmu3VLez0LhqDRh9dOhy1ki6gem76o6aAbSymrSRKAu
	Ipn6qPDAVuoWtowJ9nugcGCWABqjMaDtlI5x954kVavzuvXBT8OwrPdh8Xx/rHf00oaU12nB8ilbj
	R3Y9rAm5Y1Ezm0xg9sm/tINWrwf8AV4PNGdzs+hPd0zBUqcPQTOQWhKsJnKkGlM26Ve+8bjPtucCi
	G9OBqEB4hDZ6FC4DqhEBar0LebXlAv2Y150tx1UhrW5iAtgMBg9Kr0dHWyY4nK1I0eSU9zfGbXp3h
	ohfC0Ttw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDam-00Cd52-JV; Tue, 29 Mar 2022 15:17:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDaj-00Cd3q-OX
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:17:07 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 725F61F440E4;
 Tue, 29 Mar 2022 16:17:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648567024;
 bh=LlSCtClpCQ+4yHQfFaHiVQc1oJ1WM6l4guj4ciQuaEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QZwlbdCEWJBNkfxfxIorTwE5Zxg7xoUpw9KLGnG4pMrphr0j3rJM/aKTa/8tIRhxD
 e/caKpg6IoA703T5soDthiQI9EsDkD2JoOmC+vZZovPyFKyENyRctovz6qponrWPux
 QuYjlxUyT3zNX2rPY3XKtgTAT5Zo/aHOi/+xR0qP81wi0mN126Z+cATNI3fborJ9g8
 VmaC9j4LAMGBrrGUs51uTeIqNSWLx9azGUMjf4PcplB2qdR69ea4FsDrC/1UqTG+b7
 ajp4qhhEfA29lBZPuYnVy74EqTMGmKOWs7op/g0HSheHjbr9bl9O55FSziZcGI6KGH
 dsfzqeTixEIkg==
Date: Tue, 29 Mar 2022 17:17:01 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 13/24] media: rkvdec: h264: Fix reference frame_num
 wrap for second field
Message-ID: <20220329151701.nt3fem5cd2nwmerp@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-14-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-14-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_081705_951386_DD8C45D5 
X-CRM114-Status: GOOD (  12.22  )
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

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Jonas Karlman <jonas@kwiboo.se>
>
>When decoding the second field in a complementary field pair the second
>field is sharing the same frame_num with the first field.
>
>Currently the frame_num for the first field is wrapped when it matches the
>field being decoded, this cause issues to decode the second field in a
>complementary field pair.
>
>Fix this by using inclusive comparison, less than or equal.
>
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Greetings,
Sebastian

>---
> drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index dff89732ddd0..842d8cd80e90 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -752,7 +752,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
> 			continue;
>
> 		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
>-		    dpb[i].frame_num < dec_params->frame_num) {
>+		    dpb[i].frame_num <= dec_params->frame_num) {
> 			p[i] = dpb[i].frame_num;
> 			continue;
> 		}
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
