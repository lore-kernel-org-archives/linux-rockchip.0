Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 759AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sP8hLIbPZNimn61CcB4yvdE6vTsMyfMjlS6qsNxr5y0=; b=a/QZJWD+4u2Mo9ITo70J15E5Kg
	3Ji4dIjVV/DYD43RRPGlUiZZMKjy0iyUpKsZiSLRjxWLooLPnS7eVAPN7xSToyJtTNJydKpkQgetC
	21oAWzGjatPv0dTrQQJzOlC0M0ekxxfx1EgZfhfsLDxVp8hAphm0HBMFf8Z5IdgIdiEujFBkWeamv
	jFgWGWUYTUEslpfIBh4CknG2hpoNM1TqikyZskU0zuV4qVYz3stHciwHCu9ofCxOsgEati8u8fB/+
	Sta+DdrJiwMk10ajNY9I7DCfJUKVfppgg/lwalbOjy9aIhihxIsVzHKV4Szes9aU3S7JPkNK4L91k
	FX3x81vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xPV-004bAe-O2; Sat, 25 Jun 2022 04:28:41 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xPS-004bA6-ND
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:28:40 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 339903200921;
	Sat, 25 Jun 2022 00:28:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sat, 25 Jun 2022 00:28:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656131316; x=1656217716; bh=hvxEUS58aQ
	Bvi7at1sMVHl1T8q5rv+ulpWwzOT/w/RQ=; b=peRG6hFhbsT+haDqboR0CW8TTV
	46NWJrSSNBzrAoSDtHSoLiucO+koEg/Sj7kprPOfteVIhpgVmgVlfwZm9dmQLkoJ
	njWRckBODcYlGVIfSOts9A32fX+LQsKuLdLElJFgfEXXrqXvp3pj3jI4HTFA9isG
	LqeCZaYd57gwealZGFzdeRFhEuAuIhwxVUnqhGtkhjwBmvcaw697g6TpGqs4FMEd
	GkrGgSADo4KL02fwkgZGH7fqPC+IP/XgwHdrPx0g9l6bDDIOVBKLmrbD67QveHhq
	5Jsp/F/O3hbnsgv81ebjH9pjRN2iKhLihJBREkJiaVWGJnT9+hFUt6Lat51w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656131316; x=1656217716; bh=hvxEUS58aQBvi7at1sMVHl1T8q5r
	v+ulpWwzOT/w/RQ=; b=I+/yjxIq1DcDlFVhUvCNVxzb2pX5tgirCqejVya41vTT
	MNkTt9FD+QQ2TbxOojXOKo7G7DOLqB8f17/Ip6PTcbobpy3Pcr2hf3R47DwoS+/G
	wXGanoka1uJ/fMPBBTltotjIGtGmK7Ilu6UMVRQEmPpXSUaR26nFCr0/DOiSIKEe
	3z92J4kOxFEAJ4o6aL2xFMw9ElxCb9QfUYDPpWVMLMbTeFAWghkBflA+evu5/Ir2
	0keXTOnLCpsy4bF0w8g6lWvcvqmCMTGIMUVc7tWNPWuy16vNdbbOOcZ0Ex4b1Oje
	5ptDStVyH5RWpeZqHmWiXoAyGdXVDX4rD/bHitAHew==
X-ME-Sender: <xms:9I62Yqd3CIaf1N-27f-bLzURDROB0NR79MR0S2ImGl2f1RP4NgU81w>
    <xme:9I62YkMYBRW3CpUR9r-JfwV99WMMK7ktvCNrCHy3CufDaJYoTXN-A5wUMFodVVlNM
    otFFjA9optN6qEjw9I>
X-ME-Received: <xmr:9I62YrjeG_Zymdn_dDj2hG4MtW246eWkB3rhyT2BMVjAwJyQBISHFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgkeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:9I62Yn-QevoQQrTE5LAM1Xi_gZ0CspD0H7pB4yqlFQnVqOL3OsRD7A>
    <xmx:9I62YmtkWVc9ezTbnAiZ9NpYxuPkasanz_M_58GuxRwloHNZa-MTPg>
    <xmx:9I62YuF_0l6Ae6R42t1PQo28NzATKhbG2wVjMNoFAbSBclr9J1-CBw>
    <xmx:9I62Yj85QXECJ1wKMVAEHudI4aNsI_z_TPbJStJeCJgDHHuJlTHmZQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:28:33 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:28:30 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 23/55] media: rkisp1: csi: Pass sensor pointer to
 rkisp1_csi_config()
Message-ID: <20220625042830.rk5kjzguiepwwph6@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-24-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-24-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_212839_128310_90463377 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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
>To prepare for the removal of the active_sensor field from the
>rkisp1_device structure, pass the sensor pointer to the
>rkisp1_csi_config() function instead of accessing it through
>active_sensor.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>index fcaffffd371b..925274b9a3c4 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>@@ -19,11 +19,12 @@
> #include "rkisp1-common.h"
> #include "rkisp1-csi.h"
>
>-static int rkisp1_csi_config(struct rkisp1_csi *csi)
>+static int rkisp1_csi_config(struct rkisp1_csi *csi,
>+			     struct rkisp1_sensor_async *sensor)
> {
> 	struct rkisp1_device *rkisp1 = csi->rkisp1;
> 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
>-	unsigned int lanes = rkisp1->active_sensor->lanes;
>+	unsigned int lanes = sensor->lanes;
> 	u32 mipi_ctrl;
>
> 	if (lanes < 1 || lanes > 4)
>@@ -102,7 +103,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
> 	s64 pixel_clock;
> 	int ret;
>
>-	ret = rkisp1_csi_config(csi);
>+	ret = rkisp1_csi_config(csi, sensor);
> 	if (ret)
> 		return ret;
>
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
