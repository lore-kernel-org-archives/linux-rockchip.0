Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 421B5CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkL80x2oR6NzSHdITovDG/kdRzwDV/1+b42o4y4XoGY=; b=DCiWKWkaawqUP4
	+H5cv7HW9AoBniCh9ZdRBG87E08juQwadlLQyjh0G9InGtCx1UIcmyB0oAk8U1ofOETb5+9R2o32p
	zDX4RYRKhHYdnJXHZuWbhCxa7iQEuyChLJckeLWwdzdREDKlwzZ0v6OAJ1xgnty5R2GYmbdadXDDy
	PA6mr7wSREmlGU7QLriFz9BBIrEQaA0FmMtX8JJYtXZn3jbUOT3WR10pHMe7i8dwGC5edMfLJLicR
	NNF3C1eNYi8lxNtTUVb1A/Bm9YRiXq0G7LAx2ovXWnpWKog7A+/r6WlG3MMJXMd92j3Rcxa4mkfMX
	nvoQcTp79kUB4eRIty6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElrm-00000004Ctw-3C8N;
	Thu, 08 Oct 2026 11:00:50 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElrj-00000004CtD-409e
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 11:00:49 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-6af8620a7d2so4149736a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 04:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791457246; cv=none;
        d=google.com; s=arc-20260327;
        b=Pkkvb34MyThnZwAonaWm3AWgjct5/YmzwUT1kDVLfOcmCRVyzALTqaXErxRXt76IQJ
         akV7C9dSaQiG54OOarNB/NC9Oa/wiuijjo0HdIssxT11+v7fitIUXbr6zby/1NmadlGj
         Ab+ZGDet30dpaJqPpeIn+y92C23cbT6ER1Oq3c6219zVwpRXlvUyeqolR2Pi74qNObwr
         cfbpnzdbn5PZbqkl83N/sg7Ok+gw9DlWoI9ZqAbcelMdPjui4JDVQJwfyt+I8GXUUyvW
         FZBDWaxgWtbsHH+quewbEeNjSTsM2NVFZsGSM2v5DMfMnKCzXbZIKq3WqeY1tDFLFCwz
         YKyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eIepTPV7DS9Aylyj+4CBDzvdvhaffPGskWIagcgTxBk=;
        fh=0UtM8h2fAO+r98KQOA88enOAseVBWmbN5s5gnbWPsgc=;
        b=P0DKUYZKV3RTp4Y9RqKnkZV2nYr+kzt2qpjc8hYit6WZ0AqWyD9vY+Rc+uWPAj1VJq
         7ncDq7S1Rewaic55rPk/EehBrIkbxy5/jb5I7FRP5QXqzju3RCGi7YPPohP0AI/hBOGJ
         adRHOSi9c97Mq5CxTxKDIORdQFF/J2k2vyziCwilrl03jEYGhTL3+S53fetOnRkwyM7E
         Z0XB1LK3ZGplhy2NcNGwrr7dhZuYIstjhxu19ZoMO5cKdTouBqXyw/hZUh3LB7J4hrUv
         0cFKq5k59TwaCQ71SEfgB1RQApLFPOwkJ37gdTzF49HBGt6JuUTju3wAVUZk2y9UgBQW
         TBcw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791457246; x=1792062046; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eIepTPV7DS9Aylyj+4CBDzvdvhaffPGskWIagcgTxBk=;
        b=o7b0j/yM/VFekRqybZImj4mu5eSkC0KZa6ss5+ppsneEvcmWvMnyNcixneqLqRCH7G
         unvoaqk8A740zDVx5zt0K+xbv5YYpxq4foTPrtLSQplhFf50tYC7jlLdB7zWo1aJDz8x
         esgVFfH8qLlmRHmVeZSLHT3Nz10lTIyrGH1KANua4IGH/Mo+eF31Rsg37Dfoe9pVquVM
         eUtNeWNrZolPRw/vrKOL677+bUYhC2lK+Qee/CyNQZ7Kmv+Wvbg6y7w4q4OPPeL6DhCQ
         DqC0R+wedlLxbNc1AEIrzTh6z5jcHFjAziQpLuzFUJ6DkXyHepLhVhQPFrVoiVjrhXdf
         +s0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791457246; x=1792062046;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=eIepTPV7DS9Aylyj+4CBDzvdvhaffPGskWIagcgTxBk=;
        b=DAot4CBkIvFYE2vOiH2kzgbobbtL4mEpsDJuZvMiLugibHlyBPcbh0OHDODmwrhJAD
         emnsjqddnn+nbCk3HM7rX+AdDCfCHnLrwHQZ1NJnXbBBExqrF+XQIPAp9Pl62u779ZPT
         Q+382NPSMQc4gctOM9c0qnwCCHbeGwaWzsdck5FdEcfP44aSroSPEwVbt6mM7NS3V/JC
         PBFbtdA8PFWY+oDxe5lip2ygwZviRraDhTZsTqPQh5HU7kBQLMMMf6vZ4uRWWdWml3Oa
         yWVDlh9rrNa5ctDXuYC1nHZHLmvw0nV3/hvAw//eNT96a9XYu/zdGf3Fmy/fXxLS7Hr4
         fUJA==
X-Forwarded-Encrypted: i=1; AKwUvBzjLpa3YKpvcrLSmI03cU4V5/yxDVCz16d8uBtDH0qjt4Hv9NEv4dalRLnaFshxjmoiobDOOR6nM7Miqgq4uw==@lists.infradead.org
X-Gm-Message-State: AFuF++lOSGX0/OG9V9dyesndXGtyLlSd6975isVOhVoVTAHW3DmFy9XQ
	2SdmtCJGT3epwRAS26BMkeZHGsx58mvHRXYcwSRG1q3K1S15PPrL92JlTVgR5UUe7K67MlUa12H
	Q2PmElIUdynEsTDuTrp5UukLwT+Z21Bw=
X-Gm-Gg: AYBFou2jI21P5hF/ep//3/bFDW7/OZzOTsIO20L/nvfQKAApJiieXr3KMORfv602GHZ
	JkLpyJOpUdc9ylGbD6+m5lqgWOyV6b4DgxfoDzOTCsaTkhqbaOSrhIQ9a4T39LZQ3SfXq/U4Nfp
	+EQURg8TXgJDbcOXN990Ejgepyg0VnTu5QmCpsfuhZNJ53ItlJgSDd/nVy08EARz6yloaas2gIu
	Zbb6Cxln8rziVMxfE+CZsZQ9pLcBG/lLsjTY3uQcaBGYmAhqYx+RoenUPe7e9xvsD/ZxM9/zGxP
	4frLRbxCBLzHR2HQCnjOLurhRZKs69eQ7cjK0Vevp3L9G2RyWahkAq2YFloBoBZ9ond4kUY9ew2
	LCKbwt9vMSTDWsGayeY0gy6vRD3IlY2QrQpZXdrhJfNIq3tO4ZT+GU0lp9i9vnII3MYY=
X-Received: by 2002:a17:907:3f9b:b0:c26:1648:a062 with SMTP id
 a640c23a62f3a-c317be58e90mr502991266b.29.1791457245712; Thu, 08 Oct 2026
 04:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-11-phucduc.bui@gmail.com> <fc7d2b73-e0a4-4a36-b6d4-8080ebb883f7@opensource.cirrus.com>
In-Reply-To: <fc7d2b73-e0a4-4a36-b6d4-8080ebb883f7@opensource.cirrus.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Thu, 8 Oct 2026 18:00:32 +0700
X-Gm-Features: AclHuK_K3qxrvyLSGGdbMZG2p4PEMizBkDvUHEpZw0j03bz-I49nzoxH95pIpWQ
Message-ID: <CAABR9nHx1Uwket5-co+e-LR3j=0Cww0ZqZgZsUbiDmHTEXp-PA@mail.gmail.com>
Subject: Re: [PATCH 10/24] ASoC: codecs: cs42l42: Ensure the DAI is marked as
 started on success
To: Richard Fitzgerald <rf@opensource.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_040048_053954_E7E4034A 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Richard,

Thank you for your review.

> Is there any reason why we can't change ASoC to mark the DAI as started
> if return is not an error?
>
>
> int snd_soc_dai_startup(struct snd_soc_dai *dai,
>                         struct snd_pcm_substream *substream)
> {
> <SNIP>
>
>         if (ret < 0)
>                 soc_dai_ret(dai, ret);
>
>         soc_dai_mark_push(dai, substream, startup);
>
>         return soc_dai_ret(dai, 0);
> }

I confirmed this with the maintainer here:
https://lore.kernel.org/all/CAABR9nEXM1OSnV6L4=N1YCbtWn5yMNr+OMEZ4p8h3WMaQXbgmA@mail.gmail.com/

It seems that the other ASoC callbacks consistently use 0 to indicate
success. The other call sites also handle the return values correctly.
The issue is limited to callbacks that directly return the result of
snd_pcm_hw_constraint_minmax() or snd_pcm_hw_constraint_integer(),
where the positive return value was overlooked.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
