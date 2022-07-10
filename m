Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E00C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jul 2022 19:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fHxJoo2Ni7H/gH02gqRgL2PM5+AA7qu+W0glMJYEAuU=; b=s1FyUs0ACNDi3QaLo9ym6lY5cO
	JQyBM7nWtwEgjpXwXO77RcS2xHZJAVE55ETtgf4n1tN7Wx1wxsSpr+821+TQGJAq8RJTma5hVfxZZ
	V55CqzgLsv0JyJ50EuEbHxxvkSc28rHz/bjNlyCAgbgXdFuxmJos1SoINHQRT52p8SShFFV/pnmF+
	Nu6SJn8BFBy58c/o+tdZbQtxsY6HA4DdRLmFfcvr4ZFOgBwo1z+h9aK7lhdQtsNg1ItH5K+67Lt5b
	c00wIGea4ZDdCTaigITzkxohqqdtv19YYkBK8Tq+GnnNV2CNLAEu3HsOdoQWQAc0WqfneHSo9WLax
	9+ZDMuEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAcnW-00DN30-9W; Sun, 10 Jul 2022 19:40:54 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAcnU-00DMxn-19
	for linux-rockchip@lists.infradead.org; Sun, 10 Jul 2022 19:40:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 24CB95C00FF;
	Sun, 10 Jul 2022 15:40:48 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sun, 10 Jul 2022 15:40:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657482048; x=1657568448; bh=z2ln1D3mw/
	WA/USf0NOFQ5xIxofvB946t/dlFqZzj58=; b=HTqAOc8CYTcK1VRxJikS+a4xfL
	3hUEBJKWhu2N7loGku37MGZaAE5xgYcFTZqZbejtk9hsijEEBlwRB/PiQpmwUg0J
	az3EJHiWANtIpoqEwcwUgc3a0rosj8iDWyJ3WvKFv3lgvoGMKDVOQhI8GO8i1ffg
	U1btAFp3KgGR7muZFrsNSlzQri99xWEBVhfSNuV7kFCGrccVO0yAX1RPaJmyruGr
	1MpUX8uhNVSQUlwBdoJuBC8qGBpdWiz53qXR8KQ5S5gSEz6uNw18BZFINGAB/hO3
	zfK8SpvbU+nTy8pf6dGGH3Fsj/hnsR+O4mVtySFymSTQK9iBv/7S3Wr1/A0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657482048; x=1657568448; bh=z2ln1D3mw/WA/USf0NOFQ5xIxofv
	B946t/dlFqZzj58=; b=CXXBaqO+Bmt1DhNKQx9eB/oxt5bCWiBgBmGWSRDJnGVR
	Dm0qvMMEZJDrnj2YR24NFdrtP/2qw0DGHX2QE8+WXEFf9N2GbHbei/Q50dols4eW
	DR2DkHrthxvCD08/kMBmZw6AaFEVwtXM7p6FUYWmSkVTcXTdTCHwIzrxigEJITHu
	DQjJ0GkedOqB2VGWm7X+2d7tVhLlBt04rU4W0fRdVrUPkbe3ce/40hd7sWPeoFw2
	DgJYb/Mc1mpi5F0OAtzFBtjP3PtqTvYPXMG4RkGNcrNndt39ioX9bFLYocgzHrcQ
	d03PfyJ/yzZpdJ+2382ROnO3PXfzi+qGY+Fr4QDSYw==
X-ME-Sender: <xms:PyvLYkMDpwn33H3zX2Gj35E_QvMH05yJf0DW9J_Abkh8zt2e1fYzPg>
    <xme:PyvLYq-xxIzXW2DEsCmyL4joo_e7Ev_WarkKao0nnc7R_KG6vxb-ogbwPUU2fZFWD
    PBRlHUZa68K3dJMvQU>
X-ME-Received: <xmr:PyvLYrQ5Fy4gvYYO0m-Xp3_-PIhDZSSpKuE0SUIjysUKjAfymUm3HQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddgudegfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:PyvLYsu1jgx9xMplPYAnjyzZXFE4prwQnLv_qme7Ax8Alhnb0Uxb7w>
    <xmx:PyvLYseNf23cIShjp3IyDCjFOiqXzVwwU4BOB-83JdNsq9e0LDJ71A>
    <xmx:PyvLYg3ECv8AhnBRuFRN7UyZoqxhz97RKmo2h09gUCiKGMfu3BnaBQ>
    <xmx:QCvLYr66toh30Y6XqYmHaWSFygXjbfZ22puJD4p4omxWQ22OuPW5kQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 15:40:45 -0400 (EDT)
Date: Sun, 10 Jul 2022 22:40:41 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 12/55] media: rkisp1: cap: Print debug message on
 failed link validation
Message-ID: <20220710194041.sjw55jpky7g6dov7@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-13-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-13-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_124052_391566_AF013D67 
X-CRM114-Status: UNSURE (   7.64  )
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

On 01.07.2022 02:06, Laurent Pinchart wrote:
>When a link validation failure occurs, print a debug message to help
>diagnosing the cause.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
>Changes since v1:
>
>- Add missing \n
>---
> .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index 94819e6c23e2..fb14c8aa154c 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>
> 	if (sd_fmt.format.height != cap->pix.fmt.height ||
> 	    sd_fmt.format.width != cap->pix.fmt.width ||
>-	    sd_fmt.format.code != fmt->mbus)
>+	    sd_fmt.format.code != fmt->mbus) {
>+		dev_dbg(cap->rkisp1->dev,
>+			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
>+			link->source->entity->name, link->source->index,
>+			link->sink->entity->name, link->sink->index,
>+			sd_fmt.format.code, sd_fmt.format.width,
>+			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
>+			cap->pix.fmt.height);
> 		return -EPIPE;
>+	}
>
> 	return 0;
> }
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
