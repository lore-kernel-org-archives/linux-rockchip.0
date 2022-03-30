Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 848ECC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 09:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZULP7K/UcR0m9BWtYYVmRdwJc0DxemuNlQeEmGiAGI=; b=J4i4c2vKdeOBQ5s8LkNNHmXxtS
	SSg5Ys/eZZeH2KY7qEuD99KfA4me4Zba9Fme1mHBb7TBaJPr9mi11jMKBQ1ExtnvvF4PKsqpO0xBb
	HIfOhy19+IZXKuACPVHnOxJDM5VDKLy9EJdO3Kc8rk/OWzuZFz8sLb563KPHDV0SZiYJDvDVtd0nO
	uP+hiu8ZiigKq2azoEkaXz2aloLRy0j6T5bRzMPg9JxVwyoXCw7I5+AmXP2s8Y6D9WtvZaEifcLnA
	GSmM4uBFGZgEflJcKG5LXpIT0xpHZ3n8/bdWfZ6Z65ya364SXJI00dRJhhsBsQde6GB/sYk0PYDZH
	KA6kHNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZUHH-00Euyb-Fo; Wed, 30 Mar 2022 09:06:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZUHF-00Eux3-0J
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 09:06:06 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A82C61F413F2;
 Wed, 30 Mar 2022 10:06:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648631163;
 bh=RoXU/zRTOsprxcVyL8cesrL4y5J+39EDv2zM0wrojSw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsYrTMkvC3ZG5fswH35ZdQ3YJ8wUwCx9HwSKpoVveS1P4plUbJMOOmxfZcOgWvrtq
 y/RvpouQH4alULASbqTjPnjMZO2Tfhkkd/khgWKywZGyTz/owP6fgxrMLvSY+9QE61
 mPuLXz8ItZ5004fOL7E7WB1tcoo8ieQn0m6XQrHw8YEUehwEd4voOlrYqzjf5LYs9u
 wZQmzb36WzWMm/ZKrkr0M0bZT1uQlK+ga0YELbaDNBM8Q++6tdEiE0VbxwrgepElDu
 Y9VgeOSh5yjgwCV2KyPS5zAS0wXDxOhJsDizR1oH4driNsA5WZdMaI6WaNtyxecJpY
 hcHiKcagipUzA==
Date: Wed, 30 Mar 2022 11:06:00 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 16/24] media: rkvdec: Ensure decoded resolution fit
 coded resolution
Message-ID: <20220330090600.blvhjzqnklu6zrnd@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-17-nicolas.dufresne@collabora.com>
 <20220329153933.nrbqhayyivqskrcf@basti-XPS-13-9310>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329153933.nrbqhayyivqskrcf@basti-XPS-13-9310>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_020605_202297_D8D08965 
X-CRM114-Status: UNSURE (   8.94  )
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

Hey Nicolas,

Also typo in title:
s/Ensure decoded resolution fit coded resolution/
   Ensure decoded resolution fits coded resolution/

Greetings,
Sebastian

On 29.03.2022 17:39, Sebastian Fricke wrote:
>Hey Nicolas,
>
>On 28.03.2022 15:59, Nicolas Dufresne wrote:
>>From: Jonas Karlman <jonas@kwiboo.se>
>>
>>Ensure decoded CAPTURE buffer resolution is larger or equal to the coded
>>OPTUPT buffer resolution.
>
>s/OPTUPT/OUTPUT/
>
>>
>>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>
>>---
>>drivers/staging/media/rkvdec/rkvdec.c | 2 ++
>>1 file changed, 2 insertions(+)
>>
>>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>>index 05824f1997f7..22c0382c579e 100644
>>--- a/drivers/staging/media/rkvdec/rkvdec.c
>>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>>@@ -269,6 +269,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
>>		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
>>
>>	/* Always apply the frmsize constraint of the coded end. */
>
>s/frmsize/framesize/
>s/constraint/constraints/
>s/coded end/coded format/
>
>Greetings,
>Sebastian
>
>>+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
>>+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
>>	v4l2_apply_frmsize_constraints(&pix_mp->width,
>>				       &pix_mp->height,
>>				       &coded_desc->frmsize);
>>-- 
>>2.34.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
