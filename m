Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 177E2CC6B03
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 10:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+Z5SWbPyVdbe9YK7AlLFXFlBKxEdDuRgFjxMkhcweM=; b=vGzC7EAiH50dVr
	ar8oOGhQAzVA3lQ+kceCNHi9sLxe2cRaQWuz5Dh4poA5alott6twb78LpcjZu0l/PRQLkYI0KpfXm
	blldS2bDF4YbEQMhhafUaDLz0aWpnj79EQorq8l27PxIjoRNVQnVvNqqHV0PM5PYXrekxhdhGVOcH
	RmZrAkbFaklSq43SYUNIQ7aN/ntaFv1s4NThL+Z3ffr0FEdMXhsEXKfcnQR+ExDLk9ciHeV/kf2cT
	Hu7/fJsfEt7DU3kfo5adwz84ANuhTrAbcgWiVi4fWDy5eAwuj33sFCo9VCRdfRpIkovwUThK4U3v2
	fstP5EgvHFj9LE9I1SeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZVA-0000000CWrj-13Wd;
	Tue, 13 Oct 2026 10:12:56 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZV7-0000000CWqy-0EyQ
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 10:12:54 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-cc4aa0246b7so1170409a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2026 03:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791886372; cv=none;
        d=google.com; s=arc-20260327;
        b=qpuFg18o1+FiNj0EekZmT6A3HoNjM0UVSK0Tw3DeFZYwqLTjTgYQqMHCBz9kQpL6Nn
         Vb/I4J/6KO3qIzt1xNBmoRa05tWmwAYhFk5ZbNSJBfV2FkHPP+OOQu9da3sXh7tfvhtZ
         VbCxZ5hqDnuLlM+90Woj5qtR7/JU+V0L+ENZeGDpSvF5TBCBgMxOY0qbGtiQlEaqpRug
         6VBQs02TGEmq9I2LfncVg9duOKfKZp/Ym4DO/A8178EOK6Mv3At8oBgBG5Rz3LNkgqt/
         Fnnimp5d2HMTEmvI/gXvdyKwR3hAANz8xmYqbu2ICzHCSOghcveszcr2u606pigLesyf
         3rYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oYpuymV3tgk09qaaDkKOhd9dg2Zp4VCoofN6vnpJl7A=;
        fh=X9RKQr+ilFmnd7wpOgEQXSeTE0SxAQzkvlRlN9HMkmg=;
        b=NXHfLkeyWbIWZt9Tqgs443FmyVudwLCjWkr6fTyjJrDlxkDrjzBEPQ8xppFHelh3Kx
         WhtRZOioFxqt7IQHkc0uGGhruClGVj1A0WzjvdTsU+jkFnpBs6HYn4OTY4CPIPAVf+Du
         Ut/GuhXE3YC2VlOl/PqVr/izehEeTym19dKaqxLXkk4U9eno2ORtkAnVJJqYpj2RRoZK
         rDCXnoeJGQpbG+MpayasjSQ7oZCdquXpVCbMnhijzfe/jaqtJglZBXqJG79BOBdUu1Rx
         bGxpf5C5yQmuaqby+la/KPdzh09jFKCbsvM7E7YCIgk/Lmr58SRbpThv9vMzdDeEXzGh
         NSLA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791886372; x=1792491172; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oYpuymV3tgk09qaaDkKOhd9dg2Zp4VCoofN6vnpJl7A=;
        b=DZj+MBSfRv7GD6qs4ntEjPeGXPxOiiHROxWPYK1toh2+rUahasU5slXU0Ug0FOcuQE
         CHW/HC8ZQW5JP0JHZXWfwBvVoPnZCvGAjB7tlgdU1KNf5fKJEbz77sBttXlR/KtDrCmB
         uPrG15q6eO00p1XZEUyUHAvt3QPLAnRjoIPZ6huYLPfL8Dxa0dACUh6EFRXvUuKBT+M9
         /o2MJtG7emKZP44qy+e6TbUqCpPhB7Lt6a1jrkhRcUjsqrjq6S9Kc7/eL8dga4Il0+QO
         XmKXa1BBA0e7KZRHesoIZ57yrs/v95j661uAWbZXYpp+0kOEDmq6m37lGgo14/9Gbz5R
         X7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791886372; x=1792491172;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=oYpuymV3tgk09qaaDkKOhd9dg2Zp4VCoofN6vnpJl7A=;
        b=VSRIJ5otdWtUqt+6D/2zf+vrGlfmFl/DHHxorTMyqidmeWpEa3QCkFRSX9FCW77jkD
         iw1ABjAb5cmstoDnH9hEZzBUg2GZZlgUi2CSSoU5FZxdlJih04CEI/igZ4/YeF68jFQ4
         hxi3E3t4z/2jjnl+drueIcv1DyJYry0eo1de0H1/8/XcYlvRdJBVF26JIGQ1g2uB8ATh
         ofCTHW3ufavYvqWQ0jRstq8vTuIaxzw9+LBvMcKeroeJGf3E2lZGxZhf30BkIJW2k3vs
         62cepqXeX6dF5zMncxTOmG9i918Ee+JQQdKaN1ZuzjrmlVtZ1UUbUZC5ZEqKixRmWrLW
         /5kQ==
X-Forwarded-Encrypted: i=1; AKwUvBxvoA51U7cf3BXjpwQI3bXih2YfV2RfRVJKdpVQeDZwQD/Jk/pCn5qpqHlaZPd3sZSLgrDlFpIC59mN7p6iqw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLRnaw+VxM7vM/O2ns/YXrRuu7/lmnsJI6KQRb/Zr80SKcTcXMR
	afqBCilO1RMDNHxdd9XhJ4QChyf2WTfPl1N4+HZWDhTvK5h4BureHigseLPzb0f0fQ33G1r47Mt
	Urelg+TiTNitLFwUcqWBxXHzf6Ik8870=
X-Gm-Gg: AYBFou1b4rDIbGwXmxB7qvk87UtjKTaucl+/mQBnFswkjRbHKioXdlVyTEAGjuE5/Om
	+XcPnlHvu3M5oZV4FWvmHIWMoS3F4vb3+sXBgH8zPuHEVDlkbs5zgY1qQCscT/Vku5GyDUuAPl6
	sWAwMHfkcbSii5+AsFUR64xH3o8RNIIDokIVjP4mUNWoN7ztUzY9LgCSSXSPiDtQFk/DCIhaCa6
	MsaH0z5rIaYnUfZjr3PLxcVuQ1O14poTcSmeD9AptbwkY2CBckzWKN5Xr/QamnN9qtDg386Vm2p
	haxLzNXuadgeOcpbQkHUfEJDizdH8fJzEZ0gmwlITlcrhHayDcCC8bUR83U3AU8qSyC/3lG40KL
	F7XkcY5SgfWcFgHZxNTCS8L8Q+IvS/vtEUi9ZBcFUjqLqvwNfw2nA9qb/QMeTqNvn1oc=
X-Received: by 2002:a05:6300:6bc8:10b0:3e1:9071:acb1 with SMTP id
 adf61e73a8af0-3e19071d79emr3692539637.89.1791886371799; Tue, 13 Oct 2026
 03:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-22-phucduc.bui@gmail.com> <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
 <CAABR9nHvCfabGfBu85bm1r=hP3b0ZiCsgZfShhOv3gNUfjjhGg@mail.gmail.com> <87se2aw3ot.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87se2aw3ot.wl-kuninori.morimoto.gx@renesas.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 13 Oct 2026 17:12:40 +0700
X-Gm-Features: AclHuK9ysK1Jav05byu2z6c82z-Prt9juV9RV67s1OGQmeMH_qLrceJ2TQNxX6U
Message-ID: <CAABR9nG-YJZEdj6pVD-gbGU6J2EfRMQYsKd7u0UTgfrWOyAPXA@mail.gmail.com>
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being
 skipped on rollback
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_031253_102628_C83633DF 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Bard Liao <yung-chuan.liao@linux.intel.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Morimoto-san,

Thank you for your confirmation.

> > For MSIOF, I noticed that snd_dmaengine_pcm_open() already calls
> > snd_pcm_hw_constraint_integer() for SNDRV_PCM_HW_PARAM_PERIODS,
> > so the call in msiof_open() seems redundant.
> >
> > Since the first call succeeds, the second call should return 0.
> > Would removing the redundant call be acceptable?
>
> Nice cache, yes please.
>

For rz-ssi: in DMA mode, the driver registers the generic dmaengine
PCM component, whose .open callback already applies the integer
PERIODS constraint via snd_dmaengine_pcm_open().

Could we drop rz_ssi_pcm_open_dma() instead, and keep the return
value fix only for rz_ssi_pcm_open_pio()?

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
