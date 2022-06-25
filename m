Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C662C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 04:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gfNc0UwM7pPXeS40yLKja3uZnv9TQL6th8Vhc9xrUvI=; b=L7PYJmZlfOUMrQpu+gIB3VN8d0
	HSNyxDG0HsJm+3/ijtSjRigq3s80KKSTuTUqdQ2FAs8E6d2JskS3rl4YNb6gew0ZhlVZ8wQyZHR8D
	7nKbvYISfBob5eR5YSeX37mESNmIIPLU4y1j8qfqdC8UW2UrYByEX1U5EnvkFFVYO4Tz9c66yU0me
	tEg09Z8cGpNsfPgBZDAMFqF+GTFa4Ud7UBSPQZkxjK56Qyqxpt9Dko5otTsKSWPMv2NAHDi+ahvo9
	Hoxgm7uipvjMVmLRsTn5F1eiD8atA6mqiMjH4DdHXGuPS9mavO3B9pG3Cun9RKOv7nCrZDWEtbHzg
	B0M5czIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xiW-004d07-JP; Sat, 25 Jun 2022 04:48:20 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4xiU-004czm-Ex
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 04:48:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 26CC63200912;
	Sat, 25 Jun 2022 00:48:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sat, 25 Jun 2022 00:48:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656132496; x=1656218896; bh=c7E388xCAQ
	JaEMV1qtk2Rrh7EwjBocweGnDG2pClfYg=; b=nwYO048TkWweP49Kaftg4L/B1f
	SqtvSz09QX6TwKjho1QeIddcKCsUVPga69N9ku3sj6SuRVSEPSHmb+bjwzMgt3vu
	yzr19tuHmTtUTMPJKp7mNIM2wpX5qc6fWC0Ztf9DR6opQtqq3NsHGz2JF3d+I3ST
	RIVLqa8N0q0lW4TuAMfV39rbcWmqo09/dDbuBwGmkavkueROO2MWmTSIF9gXQ1mp
	SbIc25u+9SE2kVx9FWcwbv65xWjnJzJWeDED4KiXmd9LXI4MxSXX6iR65B1ZDnCa
	4g4Ld12tTsoMnUVJwSwkzG58/qWUR27otUpgsc2lAo3MixT2+8kPyjtGKvdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656132496; x=1656218896; bh=c7E388xCAQJaEMV1qtk2Rrh7EwjB
	ocweGnDG2pClfYg=; b=XxQVU+zJYT8Vx4196D0PWG8gAlm2fVWiGDdcJXwSQNDM
	tTWdOgj+P+gP5zpFQ/u/XTc8IJmxmi+n0rWCJqYZ0rNWw5No7t8dua9jpqjGl5m1
	s1qUTslDfOosAJTxhWiUPY7P+aTKq4Fghp67C6cQvBCIbVnYEH3zLLxVuyv1fLLF
	cCRSAToMPb9NjOJqMH6TtbM/pgMcCmzSJYwdHXeb0pvUloBB1hGyoRQWxv8noCtA
	680AKRCi1E6mEptHNviNbzKJ1JckDZ6rhtnsbKJAEntUpEXtzp6BqDtNasNaswL8
	7srcJJ0Z+npZ3KkLoby5HfeGcaBbc+WVLBskfwp/aQ==
X-ME-Sender: <xms:kJO2Yr_w--TtmFi29fAnl_gmE3zOLrApfungRU2ToO0yMTvz0m9AMg>
    <xme:kJO2Yns3m7NldzPchdA5otNgcyWObHrIqVa7eYZaIcNNn79qg1oNMX5gq40L72joc
    o4_-ceOEMpgpRQfJxI>
X-ME-Received: <xmr:kJO2YpB5s7MjGlAXkSbQUpmcdlYOem2XF1yPcIlLONrwRPhE7ia_dQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudegtddgkeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:kJO2YneORfgyFDdup-PXPuxFVl75sFC_WSKU8htLOE40FhsuIRAmfw>
    <xmx:kJO2YgNXlPdd35yo6dHXHZ1ciNrauVaiEhGJi3-CMCJbrP-5oaW9ug>
    <xmx:kJO2YplaAAK3gL6O7_Dv5QuiskjHyma-5xsB55PWF3F6eGFLObUbFA>
    <xmx:kJO2YneW_QajQPeu1aiKiFfbWYXfQw_6-MVoS0Y_MSbEiNKYxGGs7Q>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jun 2022 00:48:13 -0400 (EDT)
Date: Sat, 25 Jun 2022 07:48:10 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 28/55] media: rkisp1: isp: Add container_of wrapper to
 cast subdev to rkisp1_isp
Message-ID: <20220625044810.d7spqllnxcmn2dix@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-29-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-29-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_214818_574663_960E37B2 
X-CRM114-Status: UNSURE (   9.18  )
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

On 15.06.2022 04:11, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>Replace manual container_of() calls with a static inline wrapper to
>increase readability.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../media/platform/rockchip/rkisp1/rkisp1-isp.c   | 15 ++++++++++-----
> 1 file changed, 10 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>index 4f12fc0b7694..812fb2ea5323 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
>@@ -370,6 +370,11 @@ static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
>  * Subdev pad operations
>  */
>
>+static inline struct rkisp1_isp *to_rkisp1_isp(struct v4l2_subdev *sd)
>+{
>+	return container_of(sd, struct rkisp1_isp, sd);
>+}
>+
> static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
> 				     struct v4l2_subdev_state *sd_state,
> 				     struct v4l2_subdev_mbus_code_enum *code)
>@@ -625,7 +630,7 @@ static int rkisp1_isp_get_fmt(struct v4l2_subdev *sd,
> 			      struct v4l2_subdev_state *sd_state,
> 			      struct v4l2_subdev_format *fmt)
> {
>-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
>
> 	mutex_lock(&isp->ops_lock);
> 	fmt->format = *rkisp1_isp_get_pad_fmt(isp, sd_state, fmt->pad,
>@@ -638,7 +643,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
> 			      struct v4l2_subdev_state *sd_state,
> 			      struct v4l2_subdev_format *fmt)
> {
>-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
>
> 	mutex_lock(&isp->ops_lock);
> 	if (fmt->pad == RKISP1_ISP_PAD_SINK_VIDEO)
>@@ -659,7 +664,7 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
> 				    struct v4l2_subdev_state *sd_state,
> 				    struct v4l2_subdev_selection *sel)
> {
>-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> 	int ret = 0;
>
> 	if (sel->pad != RKISP1_ISP_PAD_SOURCE_VIDEO &&
>@@ -701,7 +706,7 @@ static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
> {
> 	struct rkisp1_device *rkisp1 =
> 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
>-	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> 	int ret = 0;
>
> 	if (sel->target != V4L2_SEL_TGT_CROP)
>@@ -748,7 +753,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
> {
> 	struct rkisp1_device *rkisp1 =
> 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
>-	struct rkisp1_isp *isp = &rkisp1->isp;
>+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
> 	struct rkisp1_sensor_async *asd;
> 	int ret;
>
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
