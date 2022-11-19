Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3890EC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 10:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+N4cXxn+1/LQI6WVt7F+TpckAh6R3zpDoaMSALAdDVg=; b=wO9L/2bEYx+c0VQ85R7l4MoiFs
	OlPvZDDyXAAVOhtkdKUjfxSi/4UMicIps2NszSauVMbp/J6pPZcnufe0utJsN323sMJT1TR76G8qw
	KAMPgoJA2MWJHWdJqWum68SND21ubb3EKSu9GDHudcjuAa2rvr0lWa/HjpusAM2yWuYxp/wMbkaRv
	IxOHZK/Anc2djF6RZ/WrvjSSWu3ZH2Go97BUUhxkdooMgW9uHVMxp7BXCTkKhFmFB4f+f3Lzkvgpq
	akAECEC879GHHJ3gOt8lbfx/OoyHRXt0A4nBchbGdfPeoU/2LU35VM0fP9iHF8cd9jIhfK5t/qKwT
	SdtvelcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owLZT-00DCY8-Pr; Sat, 19 Nov 2022 10:59:39 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owLZI-00DCVG-AY; Sat, 19 Nov 2022 10:59:29 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id A736F5C0200;
	Sat, 19 Nov 2022 05:59:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 19 Nov 2022 05:59:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1668855567; x=1668941967; bh=nxpA/TE2f4
	5QZ8/wmR+33Sg3Kp5V6ggqh5WzuAJE96w=; b=E0jZ3XpYJR1oN650kElec6hWIK
	ZQPFqN3MmzjDw/Y6aqW4AQ+jpnOVrseU7bL0H+Jp2l8bez0SeSujb/sXSam2Z7SX
	5WEUm85Jh7JeoZrpe/cEOj6waxvBjajAT3D4bqRyeP1tyOTIew2hn23qcg6QR6Wn
	fbWsCjwZSzgOl7QG4i92ua4g1hp+chq5VmjOOW1CxL8EJIy7oTtNM2CD514bsNbi
	bK9Yg3WQkFLi6ZN9duGOWJnOLeWwK6M64cY3AzEi3UEcmI3BYP4NGr8a+Dwn5b5H
	6J6dvAf6ZrI4r0tnX+AFD5n94binxOfaXBC9ixlaxmtQXKpw0mngP2GaxjzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1668855567; x=1668941967; bh=nxpA/TE2f45QZ8/wmR+33Sg3Kp5V
	6ggqh5WzuAJE96w=; b=QlahImdWiC0rxFy1Xe6W42PrrQ1hR6MPGvDzfNNVkLxj
	msa6TylO7t8WXr5MCx8xk3IeJyUoxrU2SOEPlolQeU3+1Xcyv74njzr4phynsnDB
	YrClS+0PIl1I/6cgxzJo6BtuthK70kZxnN9h0Gj/wv960ImG9JdjOk4xfKuVE9wH
	aM5iUWUbzUamGA2uJKIBsaYfy+Upp9PE39A6UFCPHIhHIb4jco+9hYbf/TK+CbJj
	bMeoLJuCREWFwVpt/KqJFLGUbE06HBgWPk1UvxBqtWR6n5/DEkkHCvpTDvNYKZYX
	WTa3LsJgMYcG40LNCOG0K92KStHvpN18KNtOqpip0A==
X-ME-Sender: <xms:D7d4Y2PUZ1ExFu0dj_POSG1EBaSeQ2m-zOQ3dC9_iJ64xZbwGsYWpg>
    <xme:D7d4Y098QN9Pic1Iw5PxIv_ZessaMhHIPBkoOThKo7LTD8r1XOSCJQgS9BL64Kk2k
    GZkwJA5M87jqZk-Z0E>
X-ME-Received: <xmr:D7d4Y9Q_WBAHxyP1goHFNAaOBGTjmAFuTHHlptmq20qbxl4IU9XvOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrhedvgddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
    ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdujefh
    fedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:D7d4Y2sRPzPlhw1wEtwFdUFm81qZLfFaTGAgAI9FAqxE2laBP1lcpg>
    <xmx:D7d4Y-dQaJBZu9FWM8a2Iol3OwHQLNtRgsJ30xxqhID1cfNsTNimBw>
    <xmx:D7d4Y62Y9JyDjZeH-uD2Fp86Gwv45n1ROBl0mrSKBS1xGDvBauiiKQ>
    <xmx:D7d4Y2QYT4PyzhrNyGvVWIN4U4LDOjVwwYuhUH32DWl3LRxX7uGUTQ>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 19 Nov 2022 05:59:25 -0500 (EST)
Date: Sat, 19 Nov 2022 12:59:22 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: rkisp1: Add NV16M and NV61M to output
 formats
Message-ID: <20221119105922.ktgpadbhhb4wsild@guri>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20221117084217.3892680-2-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117084217.3892680-2-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221119_025928_456230_A39C07E5 
X-CRM114-Status: GOOD (  10.03  )
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

On 17.11.2022 17:42, Paul Elder wrote:
>Add support for NV16M and NV61M as output formats. As NV16, NV61, NV12M
>and NV21M are already supported, the infrastructure is already in place
>to support NV16M and NV61M, so it is sufficient to simply add relevant
>entries to the list of output formats.
>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> .../platform/rockchip/rkisp1/rkisp1-capture.c | 22 +++++++++++++++++++
> 1 file changed, 22 insertions(+)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index d4540684ea9a..7695ef134908 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -110,6 +110,16 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
> 		.uv_swap = 1,
> 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
> 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>+	}, {
>+		.fourcc = V4L2_PIX_FMT_NV16M,
>+		.uv_swap = 0,
>+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>+	}, {
>+		.fourcc = V4L2_PIX_FMT_NV61M,
>+		.uv_swap = 1,
>+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> 	}, {
> 		.fourcc = V4L2_PIX_FMT_YVU422M,
> 		.uv_swap = 1,
>@@ -237,6 +247,18 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
> 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
> 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>+	}, {
>+		.fourcc = V4L2_PIX_FMT_NV16M,
>+		.uv_swap = 0,
>+		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
>+	}, {
>+		.fourcc = V4L2_PIX_FMT_NV61M,
>+		.uv_swap = 1,
>+		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
> 	}, {
> 		.fourcc = V4L2_PIX_FMT_YVU422M,
> 		.uv_swap = 1,
>-- 
>2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
