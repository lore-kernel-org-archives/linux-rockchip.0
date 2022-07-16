Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37402C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 05:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IBXJXWZsuOcTJYbOKpChaXHt3iGK7ULSwU0i6DoS6BQ=; b=JiipmGIvWGoK79YTtaj6czNqWX
	FgFUkLrshofl7myaemHvzEHhtb3uU3sgIu2J7eODX/QtZsURtkIbeEFAvZ+j54DzD6reCNN4ZIT00
	rhm27gaVhGras5OejkZwF/3D1Ewg8FvmEJ0wQYcKQKkjXTRaWX8ypZbAxhkdBOrvaU0R4tqAtNqOt
	EKjMdcIFHL5awDJuziTYNq4OnDbtNxIkv02S5T6UU5c352f42+3zJWc0gl83nhfpaNRiSVbjvDR8Q
	/J4sVBE7r/Fr6gtFSW6K1TtB/LE+GHBYhPQzfaqpBKULUbG+CO52nfBBKMqLaGMwiXO40tm1U2d+K
	d0Dk9srQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCa69-00Dpo3-84; Sat, 16 Jul 2022 05:12:13 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCa65-00DpmE-Ro
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 05:12:11 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 31CD15C00AE;
	Sat, 16 Jul 2022 01:12:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 16 Jul 2022 01:12:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657948324; x=1658034724; bh=ZBfAeKEn6t
	7Bgbk2F4A3T0hcDOiY8SHauNE6FxnK6Po=; b=KTxa5hrXsvstpQKCR5je5km/p3
	Ifszx/+z2KTQelNwlEw/bFVzcIzj3ucpcOW8xCE6D6y98gmon733zYtFnKzfOr44
	p2j1OMfKkl0+ZOljyIo62hpozzNjtEdljomYQRuD4CY+WXRF+CstkkODjVLXY8Zn
	Go7BHgRS7paivjH3c0nO0X5xHOzcWAsEn3069zZ+wYggS4HeqsOTcgTYdiDcnDnP
	ni344+S6IJ16vntZ2MRoNimYlUaUbvvcgtrDGW5IP27xAIK1rVFHVrXNRXdG+l72
	BafJ/IlLDeUu7gpoUb7PSNXGRblwMnrVFa+/U8j3Mo1BNV+Kf8XJExUsF7lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657948324; x=1658034724; bh=ZBfAeKEn6t7Bgbk2F4A3T0hcDOiY
	8SHauNE6FxnK6Po=; b=FUzKFCMhkvaqn+mioG6tJ7imcVqDUdtoCmmqakdvB8XS
	VNWpNmTz8hK7nk9HIvYEmTBidOSwm9JNszMdCPUEnvEnGUMJA14+EwmTYv/7q6ih
	MqWed7a4HJqltZrfKgUSQ5vmXDsOym4d7StX1X6HYj6uol906q95CRN6Kw48w3e7
	YQlqCopRmcQQuD41ODTu487XVXfzKmdrdZteyhTs2eEKZeu9bV5lrKgaf0XmPKuf
	XV7Av7zD0725/KVM5AYPoeJZSgPl7yvVrwWICJYkuOu1SSWhJGIbMaMsfzwISZux
	Rg8ZKGoVbyKZtm135+wYtdMOLcOLr6aYkC1D5p9CbA==
X-ME-Sender: <xms:o0jSYs51UWUWCoqjKoU7SjOMAYWgCah6znVHY8WaK92FcAMjHIRGOQ>
    <xme:o0jSYt5YZNnaMqkdL-FM4EYdEQvpZly5Sj6zr8bAerQuOPonXJICCE7exyQ-2ASyA
    HxmmYYoLDECc1ZZUig>
X-ME-Received: <xmr:o0jSYreimR_qd2xD8sPZNveKvCgu6-_O9pQjSLPxB67Fq-OD2Cie7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekvddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:o0jSYhIeMnSUdvVZjA7f_3fFhtwqJ7APqLiuRpAhNvWsZiDtpXshEg>
    <xmx:o0jSYgK-NhGMy_xz3aFAJxqvOEg4c-Rjx509hDCv2W92fK6M6kwJSg>
    <xmx:o0jSYixPw-mXCaOiRaag0XXshQpgBwBLydyzuQh9bSGu9JrXNuj1kA>
    <xmx:pEjSYk3uXRu3tgHvZNyZLRRhH9xZsyTVZhg7tVI4Gyq8Nzg2o34nxA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Jul 2022 01:12:02 -0400 (EDT)
Date: Sat, 16 Jul 2022 08:11:59 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 1/3] media: rockchip: rkisp1: Set DPCC methods enable
 bits inside loop
Message-ID: <20220716051159.uif74xaq2xtpen3y@guri>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
 <20220616160456.21549-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616160456.21549-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_221210_363885_2E487221 
X-CRM114-Status: UNSURE (   7.97  )
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

hi,

On 16.06.2022 19:04, Laurent Pinchart wrote:
>The rkisp1_dpcc_config() function looks over methods sets to configure
>them, but sets the RKISP1_CIF_ISP_DPCC_METHODS_SET_* registers outside
>of the loop with hand-unrolled code. Move this to the loop to simplify
>the code.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 ++++------
> 1 file changed, 4 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index c88a9c0fa86e..140012fa18f0 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -18,6 +18,8 @@
> #define RKISP1_ISP_PARAMS_REQ_BUFS_MIN	2
> #define RKISP1_ISP_PARAMS_REQ_BUFS_MAX	8
>
>+#define RKISP1_ISP_DPCC_METHODS_SET(n) \
>+			(RKISP1_CIF_ISP_DPCC_METHODS_SET_1 + 0x4 * (n))
> #define RKISP1_ISP_DPCC_LINE_THRESH(n) \
> 			(RKISP1_CIF_ISP_DPCC_LINE_THRESH_1 + 0x14 * (n))
> #define RKISP1_ISP_DPCC_LINE_MAD_FAC(n) \
>@@ -66,13 +68,9 @@ static void rkisp1_dpcc_config(struct rkisp1_params *params,
> 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_SET_USE,
> 		     arg->set_use);
>
>-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_1,
>-		     arg->methods[0].method);
>-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_2,
>-		     arg->methods[1].method);
>-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_3,
>-		     arg->methods[2].method);
> 	for (i = 0; i < RKISP1_CIF_ISP_DPCC_METHODS_MAX; i++) {
>+		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_METHODS_SET(i),
>+			     arg->methods[i].method);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_THRESH(i),
> 			     arg->methods[i].line_thresh);
> 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_MAD_FAC(i),
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
