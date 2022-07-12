Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE6CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jul 2022 18:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hpU+F+KtvWGYD7del3uj8PkfkqhmTlzhRpyQuEJzAyo=; b=mRa7CRlynKl8byZdGOp4xKKiKK
	AiMDVVFvvenaUVBzTDuDhWebNwyUfM6640YqCzaHpSlK3K9qXAiLJYdRVhfc4fZ4x2vhNQ1kxcAW1
	dDNhfMYp2vIHaCi7tzMiDVih8unQgFGcIZDp5ClSL9NybaeDEpXpZ62GPfmShpEJsCpWEZ7mMIYqg
	fVZ2W4H5lfqCkHdY1SyxGwX0HzQF1W0fkmhitamnDL8jmT4y8oo4OONUrI1XCRoqU6n4eDiqC2l6d
	lZULjK6LyIut7SziDNNsxcJEZoHP9IXGxsqKpb0HMzjsjh5U5TDwyLpat3+nY+AWeik0pVGh8y6q0
	28Ll3PUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBKqL-00DrBZ-FH; Tue, 12 Jul 2022 18:42:45 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBKqI-00DrAY-QP
	for linux-rockchip@lists.infradead.org; Tue, 12 Jul 2022 18:42:44 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 8B3143200893;
	Tue, 12 Jul 2022 14:42:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 12 Jul 2022 14:42:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657651361; x=1657737761; bh=HpjzQni4lQ
	mNhSxmuAfTDeTcCNmiq8c1Rj6unWmum/c=; b=X8i2jvWR+B05rPqKOvOPCf56se
	YcyHQufSI7sBqFJlENYtCLlkb+XQKAO9qmgoZM2qYc8J3Svti8KcvmgCql13y1Is
	ePC0Sm066WcJuWzTeNw6luwI5BTSkA2o6ajz8qi9cXp4yUzBGtZUiuf89YJXQmsh
	P+oS8Ms/pntHL4z48ahltsPYVp8Sznnlc19Tdq+8/69qwYr4vRkPMtNaWYZW23Wd
	QEEaMCMEEMg0U7/lweD8rYSCmIMKilNnKqvV/uhotb9/S3Ey/vDmjeCCSjBwdFv7
	O9WAWWIMFcF06UKL6dltD81SF05XuCnuniTgbbTrplng/grd6htf4KLwj1fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657651361; x=1657737761; bh=HpjzQni4lQmNhSxmuAfTDeTcCNmi
	q8c1Rj6unWmum/c=; b=F4KbEX5RsiiuSrCVY4tZVFknfJ2krKQxuRpht7hIO2An
	SpEmx+UlCcME+gSZ3AW0AMIydW0+sxbfF3TuC/TOGMEQS5PPe1Q5YLIbC5LwguQC
	w9a8g++4vUEKiRinBXTc0MQHheOlWuJ/3IwacaptvcxVVjpMP774MNKflMrZpqsj
	oZS8iNXf4M6WiSHgx0IbPkd0zyNSGvUYE/iGRYPMLwK0OySGUahzbrNzQSTiX2UY
	cyJHK4KMIlsUmn3lVYg5GmOKR6ig+sJXHOuFj0MD6JFeudrHjuGOBnX4eVFZVD2p
	iO9MQN2FfMKaA/SNo+Q8xuFNkgTm1KZBeIT170Nr1w==
X-ME-Sender: <xms:oMDNYtlKkj-TiSI0RBU50H8u6EEDqn63lGDAs__Dgjd4bnI9OA9p3w>
    <xme:oMDNYo3wivbpcXUsDtFxaptOheF-N5JzV7WVPPI2F8MC5LDIc_FxxXUkuCg8_I6mp
    2YUKfV_E0UfLXZIaUI>
X-ME-Received: <xmr:oMDNYjpyo8wk5spmjkDVBifFPxpoW94YgwcXeMAM9rlJU3wFfpNLlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejhedgudeftdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghf
    nhgrucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqne
    cuggftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdu
    jefhfedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:ocDNYtkqk9ixAJ0lJyzuLKKth5BP14EBhLIaf42rSdrx_e_VWgxZOg>
    <xmx:ocDNYr34d1lAYZRm_BITRizsugOCmO4yH4KM9VFUYZ8bmyIQvYvQPg>
    <xmx:ocDNYstSsZbXdvZAHk54EKW3cDUPb3PgZC8mfl-AJL2eelwcsWkokQ>
    <xmx:ocDNYmRsynxb8p_VtWhGsEIJMo59yDU5P5lhRkLO1ne8O3frhofL5Q>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Jul 2022 14:42:38 -0400 (EDT)
Date: Tue, 12 Jul 2022 21:42:36 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v3 46/46] media: rkisp1: debug: Add dump file in debugfs
 for MI main path registers
Message-ID: <20220712184236.fr5xrmtqicwycsir@guri>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
 <20220711124248.2683-47-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711124248.2683-47-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_114242_903947_8B588FDC 
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

On 11.07.2022 15:42, Laurent Pinchart wrote:
>From: Paul Elder <paul.elder@ideasonboard.com>
>
>Add a register dump file in debugfs for some of the buffer-related
>registers for the main path in MI (for the base address, the size, and
>the offset). Also dump the corresponding shadow registers.
>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
>Changes since v2:
>
>- Rename file from mi_mp_y_bufs to mi_mp
>---
> .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
> 1 file changed, 21 insertions(+)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>index e76dc2b164b6..71df3dc95e6f 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>@@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> }
> DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
>
>+static int rkisp1_debug_dump_mi_mp_show(struct seq_file *m, void *p)
>+{
>+	static const struct rkisp1_debug_register registers[] = {
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
>+		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
>+		{ /* Sentinel */ },
>+	};
>+	struct rkisp1_device *rkisp1 = m->private;
>+
>+	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
>+}
>+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp);
>+
> #define RKISP1_DEBUG_DATA_COUNT_BINS	32
> #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>
>@@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> 	debugfs_create_file("srsz", 0444, regs_dir,
> 			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
> 			    &rkisp1_debug_dump_rsz_regs_fops);
>+
>+	debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
>+			    &rkisp1_debug_dump_mi_mp_fops);
> }
>
> void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
