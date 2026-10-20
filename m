Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C10606A319
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 02:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C26K2cXW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=rp8qkkY4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8w/UtChusLrZJzG1Rjeuxfo2oTqrFc8+1+OfYbM8T+Q=; b=C26K2cXWZBTvD+
	yc9G3hDCbHU2D2TrpTKKgwPCygRs2jc7z7txGbPIBbHD+xeL7QZrsWj1Ef+yQAF8tKYwz6558cmr8
	shdVulfHYxdlwE/TsFNSoUoTzxJJI8olXlErh7ngao6LLcxTSZwRPgQUnMkTRuykzmkzDqjCoMWcq
	9/MJkHcc4GicbaNIAsvRMtHetk/pCyrUulpNBfdyE/pjjWW947SQ41FkQFOXVdcpAmxVfmkVS/wMr
	dcmHizeXFgaaftavABrnIwBP/aiyTII9RaWCmmMkKTJ/k7axjmEnebsysOTumGv70R5F3Epsf7DsZ
	PeLcfwNpg6ViS1o16JlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzJe-00000008fgN-1ojv;
	Tue, 20 Oct 2026 02:11:02 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIzJb-00000008ffd-0NI6
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 02:11:00 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e831e86ebfso12819575ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 19:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792462257; cv=none;
        d=google.com; s=arc-20260327;
        b=IuY+0lPBR3CDjHCnAu2SgOCoYx15R+aSEaMdIn47xwTyPwp9NNIA8YscThkUXpFwNF
         LcKbkTbCKMLXZbqRv6SMvjhdlo8U91jTiPIU77tQATzLh9jx9Ix+Mxdal5lHESom+wU5
         FD5RY9gEFErlnWZeuuxMBkOnvhVodJWCMjDgyFhxdriWkvA1V7xJKbGf01LGAlZkfrZK
         /uE/3glvLCShYVWppGYisl1i4rf/WbopE9t5uqLUmnTSGrw5Sj+QtfRDdb3jvfyoWQCo
         ZG3C0woBKI9rANTL0VjZ4QXF9fxoyuBTb3F8j9KmkI2u2bbFzB2m+HYBxknPc1KEvbdr
         M5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J2awcyyaXtld8u9NUvdPyChgRrjEUxgKgS4S5LDKLZg=;
        fh=qjzFab4RoC5oy0VRMNwgDCvgktl+6y0OGpm1GxWhP9w=;
        b=BSzQbt68LBYyoHiOJfkJ9VOsuA6XHtEf0As5AgG2J8HihwDtZuKP46pjGCS2AE1AT/
         hrUOWCjblRd7vsjnJ5imjsO5uV5ytp5oXiIs+Aglh/IwnIcbXMApNHgIfBGZxuaGNw9z
         MTn9zh2/aPCdHL55bSgKBvImo9MD61f61Q4q/qu45RWlm8iy0GxTG/P50k/lfthzX8m4
         imKUT6l9zatL8gRFwcs5P5bDwmnxKxSLyu2sj4GGz1cizybZ4KsmXuyrEhPtKurdoIoN
         t3AfnY8n6/2VtIk70JpxvJG/cQtCOOxjuhrQc1Q8cc+9RsfUfv0+hIYLLLUj04F0Cvml
         tfng==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792462257; x=1793067057; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J2awcyyaXtld8u9NUvdPyChgRrjEUxgKgS4S5LDKLZg=;
        b=rp8qkkY44s4dBqjq0bllzTE9cIkAZMTmKE+ufl1sfWdpmjv/uHUCr+auD1sdifI8Eb
         xaRPsnpeULP8T2oVOwilRGbtfyVxN5rRUHCH6VJMh7MguKq7GKvn0y/2QhDSQnaAkfeZ
         Ec4FC3XlpqG/CPYaAyXoo2rPgXFo8C7Z73MvSArWEDyXxNx2z7jsokgmrUWdBEu5FsXG
         meTWjAdESOzvvA/r91QFMSgtQLlJp+QWxW2HM+TonLHggG1Ecm+UOxSbuQKtzVTZcB/N
         4LXcbNxeb1klACkfIdhoF8wv1vp+u+adi5SZSgMbpB7UQPQQjYFVXh2oBCcR7PSvLrMT
         AZVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792462257; x=1793067057;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=J2awcyyaXtld8u9NUvdPyChgRrjEUxgKgS4S5LDKLZg=;
        b=PEbu1sddA+slGX5iEMSW7uVajZrXKKIs985ulrRU9Tvfp8V+uOUHeDiYbfofWZvhcK
         whOhncUvpVSCdPyn2n+H69KyGiRHPZMyNBFTBbbeDB/8+/vsNGNNR8mBE5yXQkiGy5AL
         aSb4Zi818iMXG9nKlL+SSpsvi2VMoxb08+RRovrJzaeQMdQEGKGRzMAsFOq2z1GOVK5d
         zURoyYqVrIIlOR13Eh6A6krksgU7eW1dNlB2DjtK5XKNMNTOESR6T7B3kjFiVYSNN27n
         dnoRE9OpPu0cPp2ZsiRTM7FmUsVUOwE2MIFtsRkid55TNivZxlDsgi6/3MmBVDjBT+/n
         p4qw==
X-Forwarded-Encrypted: i=1; AKwUvBw9ykjZzY9HoW9oF4moyPweBuCaCIZPN0cfF4j31FXE3QumLZyMIzkBwn5NAx21hsIuIm8mxz08qwZpqz5Lvg==@lists.infradead.org
X-Gm-Message-State: AFq9FYK1vXTXYjDfYuWRsP54XCSLVkRfMWQ5jbj6A2WIZHv4Kh0OT626
	D/nJFU9LRMRviUAQmiyMF9YkJaSaxHqBVixXuMGxYGMeCcfQcTe11/2cvpzHE9Wl6BIDP5R1YrQ
	voI/AIDu7V3nqs0fKFxaXNjzA4yI4GgM=
X-Gm-Gg: AYBFou1+sgVyhOo+n9BtoeCZWiV76YeqXIJSz9cHX/fkRXB/nOEfhvbW0M/gLVFhjKi
	PlvuiFvqVvHoJ5uxwpJxynSKyBNhL2gkCZTIyEG5O+aJ9AKLIJaRL1sRcoVcywDvhfQskF99mZV
	4g2uJFERhur6M9kPYtdFA7E18PvcYB9w3MbwWNURAiIHEzgzSqCg6fbtNc7NvmTSMXNLn6g7htb
	2j58we5QwWFZOW7qGgL/B+UQ2RMoEP4P+ahD/jRGZ/vECIMt/nYuPJtYf0S1vU7dp/QRESykgG5
	8X7Gh6mNF0iTijlYc0KqcO4/0ZjPzf2TLUQj/Li8Bv8HT4H4z8vT9ison8ZdiPJwO9X5FdJ3Gey
	g0Xds5v0hiM3Q+rBnp7AdrH0sc+DZBKpwnl6sXqxTXGXNImmKrCJJLbemBC/iSDClSwg=
X-Received: by 2002:a17:902:e547:b0:2e8:93b5:c555 with SMTP id
 d9443c01a7336-2e9a6e5296emr76192995ad.61.1792462257434; Mon, 19 Oct 2026
 19:10:57 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
 <20261016040946.521195-11-phucduc.bui@gmail.com> <14f60932-9a85-45ee-ad87-593c20cc116b@tuxon.dev>
In-Reply-To: <14f60932-9a85-45ee-ad87-593c20cc116b@tuxon.dev>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 20 Oct 2026 09:10:45 +0700
X-Gm-Features: AclHuK-OxoOqEZe9QHO9PQT5BaN1GB4IUM0kwzQZDjYp5iThqBCJWYOaobvziFs
Message-ID: <CAABR9nGOmx6zvost-Y9Zd2nzQa+ZMYxt2PtZ8xYPLZqZVGHegg@mail.gmail.com>
Subject: Re: [PATCH 10/11] ASoC: renesas: rz-ssi: Remove redundant component
 open callback
To: claudiu beznea <claudiu.beznea@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_191059_148717_F9F7DB4B 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Claudiu,


> > In DMA mode, the generic dmaengine PCM component already applies
> > the integer PERIODS constraint in snd_dmaengine_pcm_open().
> >
> > Since rz_ssi_pcm_open_dma() only applies this constraint, remove
> > the redundant component .open callback.
> >
> > Signed-off-by: bui duc phuc<phucduc.bui@gmail.com>
>
> FTR:
>
> Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>

Thanks for reviewing and testing!

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
