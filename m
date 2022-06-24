Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B70BC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 14:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9EmRrwX89v7evi4+rK08r3Nz1ZK0Ln0GeEl4Ufme+PU=; b=TV5LJY0Y7onJgIa4zfppC2dtpc
	bAXKk5uYrskgrQSfMa/j7DhUOZsQ5GPKCB7qkPVYiBeEuaHM1FAbQkN1rDxv17qP6ZpaDYys5ZldP
	oBLldEYBY9mcxYhn+IpFYst3VnHl1YX0b5qlyZSZ7Cu2VShFVAeC7FM5T/QQkqZMDYMSg5MLD4lPd
	3VsL20XddPY+rKJAaOygQH0+N9iWCI96OjMZuptZ1LTYcwLOp3USRo3ZbqIRJSDvaUZWpOlDxIs9u
	y2c7FKsxWVLAbl/LGM9Z/vahmsuTHcFFYd4YicEfN6BNwl8YJ8vqWZrn1MhdlnHwqMvRy9Ks9ZsFK
	+bix+c8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kPF-002dfZ-Ih; Fri, 24 Jun 2022 14:35:33 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4kPC-002ddu-7e
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 14:35:31 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id E40A9320091C;
	Fri, 24 Jun 2022 10:35:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 24 Jun 2022 10:35:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656081328; x=1656167728; bh=tcz65/MMAx
	i7w9JzUonZxPihwwNmyYf4cTMwzAEWYCE=; b=ERH3oWXAiGPnExA0xUWuJKq6T/
	5P56u27EzfcpPTTlXDIyqLiK0aH0I6PSFlN6mGwS6O4mTx/jyw6QvdQyFmVNeWhW
	ySmjs/qokdINLDKuxoWjH+PU2a2ZMHph1HQmtIK/QbSGBNi3KP/yDdtEnAqsEYF3
	+IZCYZobI0WLxzZOyYYNuhJ3Munyx2rY3rCMnoIlchu70+7ksPHUaBmYYzzYJzJe
	mMNcwCV2qGvU6AC0nJTkJ/l+LSAXyk/UglVYS0cdWuPgioJANZedDS+qtv7dtKih
	RZJIqiuk81NeUI9jcwg1DKfiSOLaRvgqb05FONS08/DmWD51dVBcQCzeRgBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656081328; x=1656167728; bh=tcz65/MMAxi7w9JzUonZxPihwwNm
	yYf4cTMwzAEWYCE=; b=RYEs/tAWjgiEd5wQuyson6peoCmm9MGQYvlvEa2zLwsz
	brD5mf/5j3ex2tu25wNC5kBG0obqXOt0jQfqikzOdQglStAEM5R9mZQ5IvzAsxAo
	Kp65QN+pUS6JFnfi958SVGwzqtd5lnQG0EN+PNCWncTsRqKUOnGcpcCW9CiCpvVj
	yYayAwobJt6En0gqSbkAiRR/JneEEPJsjwFyNM3TdLwxCDLVjcsEn16ehOWrs5Uj
	vkfZe6lJR6oE2OnVgYs2/ocb3vvnfTGJEwdguKA9F3wK/LOGBZ0Lq5Bz1Y76KmPX
	zmip0QH4VyufIGFcXuHFyeRER4O3mpNPyiH6+D7Qsw==
X-ME-Sender: <xms:sMu1YjTNiOMGiWjrETg56SiNv5xgq7mOelEkK-jii08CcgCNQIQKVg>
    <xme:sMu1YkwzglWaPKpvUgHHnfDK6qHq8kFgIg5Cw9w8F5lzgSQqix6xg_qkskhVAlcDe
    DmVDYqd0GdoU9-howk>
X-ME-Received: <xmr:sMu1Yo139ouQSpAdcpx7PQF96_PSJhKIBWVeuPt-q--UCf0Kackxqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgjeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:sMu1YjABOchUUO68Y1WdCHiTX4MyTByE-DAICZfLCzijkELglK-z_g>
    <xmx:sMu1Yshl2mvr9xCBB-y_6JadxxNZPa5KdE2k-JVUVj7ukG8SDLLEXw>
    <xmx:sMu1YnqitehkI9tXpXOHMo8nCLI5BYl59pAOn2-PsR8PWNC6MNLtDw>
    <xmx:sMu1YogoT2uItS5sjz60rFcj0hwVgYgSNAthBdyQn_M-_bc517kWSA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 10:35:25 -0400 (EDT)
Date: Fri, 24 Jun 2022 17:35:22 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 08/55] media: rkisp1: Access ISP version from info pointer
Message-ID: <20220624143522.ap2wfg52j5jf5dg4@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-9-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-9-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_073530_350356_B0340597 
X-CRM114-Status: GOOD (  11.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>The ISP version is stored in the media_device hw_revision field and
>access from there in the driver. Now that we store a pointer to the
>match data in the rkisp1_device structure, access the ISP version from
>there to make the code clearer and avoid depending on the media_device.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 4 ++--
> drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
> drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c  | 2 +-
> 3 files changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 02968656f3c0..328e8fec14e9 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -417,7 +417,7 @@ static int rkisp1_config_mipi(struct rkisp1_device *rkisp1)
> 	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL, mipi_ctrl);
>
> 	/* V12 could also use a newer csi2-host, but we don't want that yet */
>-	if (rkisp1->media_dev.hw_revision == RKISP1_V12)
>+	if (rkisp1->info->isp_ver == RKISP1_V12)
> 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_CSI0_CTRL0, 0);
>
> 	/* Configure Data Type and Virtual Channel */
>@@ -535,7 +535,7 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
> 	rkisp1_write(rkisp1, RKISP1_CIF_VI_ICCL, val);
>
> 	/* ensure sp and mp can run at the same time in V12 */
>-	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
>+	if (rkisp1->info->isp_ver == RKISP1_V12) {
> 		val = RKISP1_CIF_CLK_CTRL_MI_Y12 | RKISP1_CIF_CLK_CTRL_MI_SP |
> 		      RKISP1_CIF_CLK_CTRL_MI_RAW0 | RKISP1_CIF_CLK_CTRL_MI_RAW1 |
> 		      RKISP1_CIF_CLK_CTRL_MI_READ | RKISP1_CIF_CLK_CTRL_MI_RAWRD |
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index c88a9c0fa86e..9da7dc1bc690 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -1801,7 +1801,7 @@ static void rkisp1_init_params(struct rkisp1_params *params)
> 	params->vdev_fmt.fmt.meta.buffersize =
> 		sizeof(struct rkisp1_params_cfg);
>
>-	if (params->rkisp1->media_dev.hw_revision == RKISP1_V12)
>+	if (params->rkisp1->info->isp_ver == RKISP1_V12)
> 		params->ops = &rkisp1_v12_params_ops;
> 	else
> 		params->ops = &rkisp1_v10_params_ops;
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>index b7ae9166c52f..7d82356b5345 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
>@@ -427,7 +427,7 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
> 	stats->vdev_fmt.fmt.meta.buffersize =
> 		sizeof(struct rkisp1_stat_buffer);
>
>-	if (stats->rkisp1->media_dev.hw_revision == RKISP1_V12)
>+	if (stats->rkisp1->info->isp_ver == RKISP1_V12)
> 		stats->ops = &rkisp1_v12_stats_ops;
> 	else
> 		stats->ops = &rkisp1_v10_stats_ops;
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
