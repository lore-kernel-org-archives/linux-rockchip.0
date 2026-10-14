Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B442CC6B1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 11:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvEuO7g5rxO3hO4BEXjnCJIBXuO0717zUCe5sYqDQzs=; b=d4ZZCZEsT6bs0W
	/Nu1m9Z6PhiyUO0OeHa8gdCqZg4yQfRZa6mV238LQZIqMyOUXOa4cOni40B3APHK120uFXMBHfSqc
	buJ+zauYP5MdNVD6/jMTDyNxP5n7CUmZ0o0IWSAISsh7Wu9Rt99njLWZyknPHTpyuTdEZ4MCdaLb1
	Z9dQhpz9NhAGAvh/H6bXR86tQvRVlBTc4QKvqr4qim2MlbAn/ehKV7AUXCcqQrY7Yi7CkNmBpsUZJ
	n8BhgoNhyGvbkXkP5x5LAniqu/8Y2dZgTOwqrVBa2pP6vSjM0UmQkzjZabWLxYYTAqO/Ennw6jnnO
	BcykNBTUNPzMJKzmeueg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxKf-0000000FMlc-46QJ;
	Wed, 14 Oct 2026 11:39:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGxKe-0000000FMlP-1zZa
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 11:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=86HyIPwleJgWRq7xObrqY9hZQITORuKm8Ont8f8xwzw=; b=Lj6MXFrk2E2/BJSy2wShYex5JA
	d4fmlCwcGs7p+CLB7YcGWvIbs9W8e57bwqMi1Mft/xKIu/4z12w+OMBMhwjxkue8Ur8mfEOf+MvSK
	zkIaTPX60MO99OM/22Km7ML66k5GvLGd7LXexANve4PiVV913UOQxj6aRN6UyPzu7BaB8IjhCp1pU
	vA6S1HHsFNIheuY6SkQy0n1cjOkGfZf3QH5syemtG9eTEKDVrI6rkXUyL/D7cjRH2ty8D0gnSu7XE
	IEM4sdbeGRXVzkDE6XI5gGsXLlQWyU+eaharpkdBtSiaFAb+Kle3GZDmknUe50BW06bM9elDgyJUy
	FGb31P1g==;
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGxKb-0000000GheE-2WWp
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 11:39:39 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e5378b281aso21591385ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 04:39:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791977975; cv=none;
        d=google.com; s=arc-20260327;
        b=QQSfGCiN/0BFC+gRf+CKm8Ctb5IrlSLB01SBBt0JXDi4OWRcl1HqroQtolGODf0URB
         kmOWmjrv+OCirjr6kPe+SUKkFUGqlEBaYna1tQGElIX2Ka+iKTJALKT1DPmKm6TLpE+a
         k99/P2AoWjhIxs3kIvvyoKl0L9JRjiKL/CZcwcD1ioTgjjG1APP8+kUlttie3W3/KV+s
         Ad0NEiwyaDdmFPywYMC+oobc2Dzupt5cn/BLV/IYRPccG4LMUuVvOgbvbjhMwzFRDP1B
         igu59LlOg2CF7o26CYPsI8Sn+KCpx/Nsbdxuk2SQ30vRy+PFm57ngMvtCXk10YNjIqZD
         d/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=86HyIPwleJgWRq7xObrqY9hZQITORuKm8Ont8f8xwzw=;
        fh=KdW1JGg5XYg8O937GqAf7IfCmcxiG7F0qEixUB042gs=;
        b=pUtnJga7+Sn81pEZjXECcTVZ04Krkj09DthlYZulzxpdyYbckQjYwNlQX48w4OENtH
         rLnHGxDdEDFv1RCQfoB8XCR3J4elZLQmeQBDceczuOPlHmAGbJT50MdYoqrTijkkfz20
         k25Uwv0bn9wn3b/auITIMwzgxOEfA6BucemNWT7kvcKlSRVzIsizWnYcVeamYoYob9C6
         rXYf3RSBkfajd6TquQja0JeWLWjlVlTcPXhz+BENUrj4I2fQ7uA/sUkMdLPJ/mvtWzxX
         p0XBGHbStKXgvXnldoKZGrxEk7lxZPYViUesE6n46fA7VZSiw6q3wFYgTfpJpBp3M0J8
         bc6Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791977975; x=1792582775; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=86HyIPwleJgWRq7xObrqY9hZQITORuKm8Ont8f8xwzw=;
        b=iw9hSKXKOzQKKTPAfpKGPQJSA9ZxhNx9fDu7sVAgxP5UnHXiv+IsNoDS35Wtce5tt4
         z33iJYoSGlLgtYB1I5aPq/CxILF5DVNi6BUy2DlkUOlzWEsWHRXQYlYJx11hqbwv+uMD
         CQaKDC434avVGKSdmVw8DUPl5V2YtSqIkvrCj5bkmS4vzFUS7vNcq5JRWXjj/ZmUxMsM
         r2b07rjZOkk1KHASGGFN0VsiKyXkyp/6hopTvN/gjalAVhR+4n41CSJrLxlOmPxUjpbn
         xoSwLuagRM4zwiBR/ulETljiBHwho5p8JoQR79IQllJnLjEPPzC03lOSALqZ9GHpiD6e
         Cwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791977975; x=1792582775;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=86HyIPwleJgWRq7xObrqY9hZQITORuKm8Ont8f8xwzw=;
        b=omfokPNqoOKKY2xh3JQaHLSPi9029dSZ2pndykPzR2ZvuGQYtAgH1ARnvfOFwgV61T
         X4SaYr3mteplVhc6cNoIReqwRks0wyUd4uP7iPLkOC4HEswzW8f3IFMB/BfvOrLhKEml
         2YziF5e6UTRsBVWMG6BWgh+bJ2OHR0Xkb6i6Mt+1cXnM/BUfYBxpnzmNHEt7U6R147OM
         aIYC7P7uYvWAi3YHqHdaQhc8IpUZv7/D5yJV3TWBC3tXnHoTlAoNEJeB7p/1vk8WJ0MB
         LLvLnkQw2PGHpdha1QPapLXVZ8Zf2Bohqx+hOQg3B44QuvSeMq6xWFekFCdWS+P1zHO1
         MC2w==
X-Forwarded-Encrypted: i=1; AKwUvBz5qvWeNek17lw1qnlOXG7uIgZlL5vqqICU96TOIS4ize+gRglguJOw2RAAdVzMpC0QEIpC0WL+7u0e83L5WQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKjNGWOVQ+t/afD6J61q6wjN7ztVSKBG842Nh2R5+3407GRQzfX
	XNSRYr8NAwhpC1wGCJRgbvWrmGLua0W/lozDX3Yl2bIkERoB0k5VBcM2ckzFwDKN+DFhgGspSh4
	e+IGlccbqqqstbyG9hqcmffIKNCmvTqM=
X-Gm-Gg: AYBFou0mmOfHw8pAEvdqUWNl3fTPpPnoRghQo3EUYpQ6UiHPiFYdC5OphyuJ71q+QcG
	AflQlZ6z+W0Gd3ouZyCFf1inZvXUddzC6R8hG7nBh0JQsSSG7NVdLs8Zah7CzJ/tUV00/Qmpbvq
	3DmCEOerdQOdpoGQJgAbR0gcrp1+ptK08P84REZinQdXeWz84HGevS6R9cFQqWaqDhIWQJ2jSZ5
	mE7oNPKaS5aWa++UJssquf+ll8pO+ew8eurlePyzRG80+uvduozcvqrCqODkXEggTxWz/bJVXUJ
	agBy+oX+qouyhAofiIe4KtVrGBaI8GKunPrQoEs3HzZdMiwY31D+3CoZV9pb4mJH6HEJKDrhD17
	7JrkamXARx9H1Hd4Mo95r6dldlmUanbAaOdQef6fZDsboC/WEOddVqlOuN2sgpBZbRqE=
X-Received: by 2002:a17:902:c946:b0:2e7:e73e:7091 with SMTP id
 d9443c01a7336-2e842bc6d99mr145871485ad.31.1791977975265; Wed, 14 Oct 2026
 04:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com> <fc30ea4e-3c2f-4ba4-9ae2-054db9b49fd5@amd.com>
In-Reply-To: <fc30ea4e-3c2f-4ba4-9ae2-054db9b49fd5@amd.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 14 Oct 2026 18:39:23 +0700
X-Gm-Features: AclHuK9jgQVtz3xDN60LQFsNWM2GDbLorSH_eG4NihFn39vhGI4sDgE_b4KgxkY
Message-ID: <CAABR9nGbO1tBOL=fN90ZrYPkv767qh_sJG_UHP-FW5C7sBPpmw@mail.gmail.com>
Subject: Re: [PATCH 00/24] ASoC: Fix constraint return value handling
To: "Mukunda,Vijendar" <vijendar.mukunda@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_123937_829366_1A741296 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Takashi Iwai <tiwai@suse.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, wangdicheng <wangdicheng@kylinos.cn>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Liam Girdwood <lgirdwood@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, u.kleine-koenig@baylibre.com, Syed Saba Kareem <syed.sabakareem@amd.com>, Fabio Estevam <festevam@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mukunda,

Thanks for the review.

> > Found by manual code inspection.
> For AMD patches:
>
> Reviewed-By: Vijendar Mukunda <Vijendar.Mukunda@amd.com>

 I'll send v2 shortly with your Reviewed-by tag.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
