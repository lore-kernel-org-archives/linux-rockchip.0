Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C37A0C8303D
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jul 2025 11:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhFMm4HtXYWRgZ2/E4ypwI/uusGpX0PeKwM6vN2s2cw=; b=qXKhpJ/7FXVFjh
	Qfu5nf8Q3G2hX/Hs3dH3ans5njB85K+tNYKSAam6NTl5MGJeRt27yoRRUjdBl9ZEp8XjxxOQEj73M
	w9BGZ+OJr2sJt6QR4jytBIsqMoLq45BQrjETk2Tu0h4Lu3x2Ifn+eR2gfvyWEt92bNPAvfAlMpdKg
	OBKp09Au3V78qMjxS1PXkGuK90sffVBr6uGLB09og83U3PsQWiCwgFIYxmj8hjP53eDOlBIzDDreC
	bsw27dojX+rWm0zyvbTO3O1torfANTf/505PDVIIF7XFCCIKXnJLzRK1vV3Niau3CdixyYComfo2L
	z56BiQijWByjhg95th+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY1PW-0000000GSke-0zYX;
	Sat, 05 Jul 2025 11:50:26 +0000
Received: from mail-24417.protonmail.ch ([109.224.244.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY1NA-0000000GSWn-2hx2;
	Sat, 05 Jul 2025 11:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=6jkn22ie5vbihk2u7c7sdltbsm.protonmail; t=1751716076; x=1751975276;
	bh=J8qcIEE70SB/9XoQJlUDk3lierzSpVmt7i94rUb6dyc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=lNGSAAFPU1MmzqoCV75zjasud+Ltau2kMAf0ucoEJNdAv3QWhms7yq51MwkJZnfcj
	 7hBkRK9R2WmK4w1JG2u4mCWV7F9k3Johv2zake/jMsn5oYtbJKY8lmQiy9IJbp2J/G
	 xOlTYR1VNDtEx6H98fhU3geuQyf2ZPTfRWulXUmkI3fd+48Y6wjDPGJy+u8h44sjso
	 7SasVQfsjinPqv07yROXw41U3Bhu/9KzzLfynmoTM3onN2EpW3lqblXcAiz/biBgFo
	 s7EulQJl0iETPIQ9c4k3QeplPvYXGNhyy+25uNWRNO2XhUFNjfR7baSU4Fn/DD2T5P
	 S1h1rOoPQRC1g==
Date: Sat, 05 Jul 2025 11:47:47 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:[PATCH] rockchip/drm: vop2: make vp registers nonvolatile
Message-ID: <zsSK9sOtcc1AH88pS645eND72d0SjKh2VXYA7waci9cnxW5rwIdm55a028FTHz8vZXJfScx_GJmiXXZBkLW_7EwQj518m3UYtauIIH0BnEw=@proton.me>
In-Reply-To: <9947ce4.7929.197d484ec6b.Coremail.andyshrk@163.com>
References: <20250628180914.1177177-2-pZ010001011111@proton.me> <9947ce4.7929.197d484ec6b.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 6d028a90de22091ad8d42a1328fbfe0732ace29e
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_044801_293304_2B1361BE 
X-CRM114-Status: UNSURE (   4.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> Hello Piotr,
Hi Andy,

> > */
> > static const struct regmap_range vop2_nonvolatile_range[] = {
> > + regmap_reg_range(RK3568_VP0_CTRL_BASE, RK3588_VP3_CTRL_BASE+255),
> 
> 
> Small nit: there should be spaces before and after the +
> 
Hmm weird, checkpatch.pl didn't catch it. I will send v2.

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
