Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25915C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 05:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/35UaEcVKrenq0FfABGEnFVrU7DyWiFYlcqTJh+ztY=; b=cyhj8loplpORMJ
	kZVoc5kTPJt/J7bJAAGW2UtXIi6wG7jjHkuPzW8UEeNnSNoIu4PuJREZe/svYpzRmJUq8Mg84LM4C
	/SeqtV1BFP9vXgyXi+cTpwtJB+skQN4Ez/6QSBDqDoteWlFilGxkTWL/XPmWJAQIfarFp8+K06OeZ
	iZpaupTzBlx1arWX9MYs4n5VsKpowLa0MSNOpfp+fheJw26YfGW9Mj6ovs8VV+dlVd+YC0nF81A8X
	YWT1N1ijuiQdF6RH4uGeNCt7ObmpUNoVz3DYuaAi5J4z/pleegFV8Ej41UZg5+B7fhG+EA5DzhC06
	BRtKot2p1FkzGchujlLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWWlW-00A1YY-SK; Tue, 22 Mar 2022 05:09:06 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWWlU-00A1Y8-E3
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 05:09:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C84A55C0195;
 Tue, 22 Mar 2022 01:09:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 22 Mar 2022 01:09:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=Bsf4s6xZnGkUX3Pl0cr5iuTW9m6asQbJeWr89o
 X/OKU=; b=C6qIW/zJwqftFIH4X1K/Purd20IeAii69GCrUwLB/TSxe08ZkvGDn2
 atzCQ6MD61T1hIjifVkmTwqoHD1rovKyIUKCtUPUMwKgCKh6VQVpgvvBp0mvdSSj
 a5BWlU/IYEy+zdSiTswvQcO7dNV0knAi9Dw4zyGt32hDLkMV6Tn9V890IkOnUUVu
 nD0jf6EI5beXhuqs34pXheaNt/sT/KX29fk0B1hs3Qt78mhihSInFTqowjwBj9H8
 +/p0Ozoy6zu2irQ31+Jra8fwVMo45xijCU0AJgMCYQFIHcaGlXhLs0GZRNj4lPas
 5OyCGEVeeITYUpsT1f8qdIiK0K24OKzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Bsf4s6xZnGkUX3Pl0
 cr5iuTW9m6asQbJeWr89oX/OKU=; b=POrDunUkyn+hAgG0nuSCX1eEJpAjMTlqZ
 Dixyw6+jkEs8+bl07I4unsPVvXi/C7hPKxn2zWsJCoUD4lZthSNUGrSD+rRgFmka
 DJYcNpxV8UXBnqqxqCQqVa0ui3YzMZbQKTAB0K3cMAgVddJpca1nC78BLwJZKD7q
 KdR95vrLMKoFULa1hTYG4XpL0KfjHyks6BNqmquruWvdPN/IzaxWaUvjgcK+Cwwl
 qpvczeMcTgFGRZNhEITh7xnQFFGYSkLga1JBi8zpKHmK55Va5zH5FJz75816Bv54
 ro9BVGSeMlWRW5dR/jpwV7hPXsAQWciDg9rbUJek16tctJIjxVdmg==
X-ME-Sender: <xms:71k5Ys5KLi5L7902sm0HTjyKE7Ydr3VTduVkY6kvNtq87IHaC84EBQ>
 <xme:71k5Yt4JySKYbwf6LaAW4eOZDSd2ca_AUWwBCrc_41UxYD7Cqu5FzzPqdi6CeF8wf
 7ezuw-0FwyYJJgzGk0>
X-ME-Received: <xmr:71k5Yrf_fgIKp3lXpwYmRykURcnD7JgvWIuYjiAqet1tVaB995jgeThyDJ5E43ZnhK8Y7l0kyJ9dlVevYA0fVm1p>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeggedgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:71k5YhK3aN0zcS7qiTTsO1IAnGK5aX1XGq_dnv3L8UL9jXuei6sTxA>
 <xmx:71k5YgLj6_aoohevgtUbrfnr_0fXDoinQMGCWfc_af6bFTt88rc0MQ>
 <xmx:71k5YiwQIpMmjPh5s0A51EwheP_sfJc238GVzHl37YjKwAtUaFwnKA>
 <xmx:71k5YlERHnpyaSoAvmJc684pEUT5QyI7mpc07Hd52T3_kpS4Wv-ZVQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Mar 2022 01:09:01 -0400 (EDT)
Date: Tue, 22 Mar 2022 07:08:59 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 17/17] media: rkisp1: capture: Bypass the main device
 for handling querycap
Message-ID: <20220322050859.scmzeyglcrkge43z@guri>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-18-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319163100.3083-18-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_220904_573540_2C95EE2D 
X-CRM114-Status: GOOD (  13.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 19.03.2022 18:31, Laurent Pinchart wrote:
> From: Paul Elder <paul.elder@ideasonboard.com>
> 
> When handling querycap, the capture node would access the main rkisp1
> device unnecessarily. Get the information from the most direct source.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index a7cf672457cd..94819e6c23e2 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1248,11 +1248,8 @@ static int rkisp1_g_fmt_vid_cap_mplane(struct file *file, void *fh,
>  static int
>  rkisp1_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
>  {
> -	struct rkisp1_capture *cap_dev = video_drvdata(file);
> -	struct rkisp1_device *rkisp1 = cap_dev->rkisp1;
> -
> -	strscpy(cap->driver, rkisp1->dev->driver->name, sizeof(cap->driver));
> -	strscpy(cap->card, rkisp1->dev->driver->name, sizeof(cap->card));
> +	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
> +	strscpy(cap->card, RKISP1_DRIVER_NAME, sizeof(cap->card));
>  	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
>  
>  	return 0;
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
