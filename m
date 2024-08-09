Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310EAC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aw9vTclmhq6XMEDNg596Ul8XYoBVNLDRsUd4BtX55mo=; b=2aVoieHG2s5aFQ
	0de9yoLnKr7pMZFtRNXxvjn1lzy4wwGvTIxaiZSuiR0hg1JUXL/6Wc1a+QbKqDW/GD1wO1yZEXwpM
	6xvnxr/CY2OUzD+K0kN92zLrjCuTSHz8c1VsXHsXAqeLPgAererQfGPkevAZLTnKfGmondhGmshUh
	6bZ6Ro81Mpio4LoJrPNRLlCFSbCO4jKQMGXJji3qXSIJQwUiOq2NhLJdflCyoWBQ8Q5VR0aZY5T2C
	lkebjBPbKCABxtvz/e/hXK9bqbWbPn2lyof+O8/PEYGfoFyk2PK274wnG7nDrDb/I57xtv2iNNm4y
	2xMnqfjHrBxgmdfJbpVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQes-0000000BYNN-3sbC;
	Fri, 09 Aug 2024 14:31:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQep-0000000BYLs-3g25
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 14:31:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1scQei-0000pa-Pc; Fri, 09 Aug 2024 16:31:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1scQed-005gfq-Tz; Fri, 09 Aug 2024 16:31:43 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1scQed-00Aq7J-2b;
	Fri, 09 Aug 2024 16:31:43 +0200
Date: Fri, 9 Aug 2024 16:31:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: John Keeping <jkeeping@inmusicbrands.com>
Cc: linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] media: rockchip: rga: fix offset lookup
Message-ID: <ZrYoT7HmTc7OT2Y4@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	John Keeping <jkeeping@inmusicbrands.com>,
	linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
References: <20240806094842.248775-1-jkeeping@inmusicbrands.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240806094842.248775-1-jkeeping@inmusicbrands.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_073155_935524_5D739568 
X-CRM114-Status: GOOD (  21.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi John,

On Tue, 06 Aug 2024 10:48:41 +0100, John Keeping wrote:
> The rot_mir_point_matrix is arranged with the rotation values in rows
> and mirror settings in the columns.  Fix the order of indexing to match
> this so that the correct values are used.

The table and indexing is correct. The rows (second index) contain the
mirror modes and the columns (first index) contain the rotation modes,
and the table and the indexing are correct. If you read the columns, the
corner moves clockwise, but if you read the rows, the corner moves in a
z or s form, indicating that these are the mirror modes.

It's probably worth documenting, how the table works.

However, there is a mixup of the arguments between the call to
rga_lookup_draw_pos() and the use in the function.

The function definition is

static struct rga_addr_offset *
rga_lookup_draw_pos(struct rga_corners_addr_offset * offsets,
                    u32 rotate_mode, u32 mirr_mode)

but it is called as

rga_lookup_draw_pos(&offsets, mir_mode, rot_mode);

I think, fixing the order of the arguments in the function call is the
correct fix to your observed bug.

Michael

> 
> Signed-off-by: John Keeping <jkeeping@inmusicbrands.com>
> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 11c3d72347572..b7d51ddb10fa4 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -97,7 +97,7 @@ static struct rga_addr_offset *rga_lookup_draw_pos(struct
>  	if (!offsets)
>  		return NULL;
>  
> -	switch (rot_mir_point_matrix[rotate_mode][mirr_mode]) {
> +	switch (rot_mir_point_matrix[mirr_mode][rotate_mode]) {
>  	case LT:
>  		return &offsets->left_top;
>  	case LB:
> -- 
> 2.45.2
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
