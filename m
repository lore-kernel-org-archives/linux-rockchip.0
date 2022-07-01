Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 162C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 16:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2q+rz3b+Djc7N07hzuQHJwf6ev1RYcR2DarHPGEp/w=; b=Wz/25CZURJSF+U
	rTBezz1oCA15bgMAqDSlYavRn+6Jrej3spVSH246NUCQ7BG02c77obrNnJsAunvVFxBiYnyBQHHnp
	HiUnDCDsq7XI97ZqzYBes4egQuhAHito+HIMyN4nOpmecWoPLXEHUfXsRW+qS35AO/usVtrKzqrFr
	KTRw2eV34BVpWtpA9wykfoWgkZlD+aVjkb43De63XrWHm4w88SF8qAyVoGNmwAlBtvWD6o8o3TjnJ
	efBWrpqPX703QTWXUXeJ1d4GuhgnovwxGs1LgegK0R9yZdFzjF8n/TMy7AuNRHzCKI+BkMWukicmU
	zV2yn5fk1MssKHF4DdHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jo4-0065DU-Lo; Fri, 01 Jul 2022 16:47:48 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jo2-0065BU-Bk
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 16:47:47 +0000
Received: by mail-ot1-x336.google.com with SMTP id b23-20020a9d7557000000b00616c7999865so2230730otl.12
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Jul 2022 09:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3aXEKuYhSekfjFf2iaJFFk/57mY9AqJp8+HZ/oMIjzQ=;
        b=NFQb1gvPPgh9l6ruExkaXLZ1hFCZfoyPD99CK1HWB7to7E8wSHjtHLAHs8hQK2c5nM
         FpMJM4l43Kc6cdx0S/XcRRbIGzbRiat3w+G1TAfva2q1K0ZtJCzvIuZpQ2lf96iLM/sP
         RXGhwEwsvIQNicNbaidCfit2HC/ghNX/2Rxbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3aXEKuYhSekfjFf2iaJFFk/57mY9AqJp8+HZ/oMIjzQ=;
        b=i2KWBD0KMcyk5IPlQ3MmiK3xNCPIcVUmTgLK2l00DNtYLJ5F/vItTmNWpUPMjdPejP
         gZvcbX2me0qsTL4FLmoU1K7kMjuVu7DShcVsgrsIKpGrhdGrSF+Pi7u0LaCMpoFGv1HJ
         aTYJPkfuililIarqojEhs7QjJJehE1cKYuXBecXEnP6f0q3wwYVLRZ8Y4TtednJhLwpW
         jdBmvscKyqrqd5fnWnfvysN5QDvwJGBPi0eak5YM07SRk4lyOgnHP3f9vZvh4zCP5yWr
         cp3KocblGAIr8IOS4hjXN16H62TlX8aaVF/pNEtnkH19RcFacr34bNI3Bq1TVE4EJuW5
         59Og==
X-Gm-Message-State: AJIora8EN1MdjqUasmdlCmj3EicSa1fsO3XxqQHn0A3+PqCgEOVyhOEe
	3KFVMl3coZ8sGvRgh6WoXbpiee8M5dVhOA==
X-Google-Smtp-Source: AGRyM1uJ+A0H4aGBB2GJFzOclqHxpY5NIIJauzzkWfMQKrnlTfkXYt2h0BMpvxnk/TFwcD0aU+V9NA==
X-Received: by 2002:a9d:7984:0:b0:616:dbd1:2006 with SMTP id h4-20020a9d7984000000b00616dbd12006mr6897201otm.72.1656694064247;
        Fri, 01 Jul 2022 09:47:44 -0700 (PDT)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com. [209.85.160.48])
        by smtp.gmail.com with ESMTPSA id e19-20020a9d4913000000b0060bc92bf0c9sm12893602otf.20.2022.07.01.09.47.42
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jul 2022 09:47:43 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-101ab23ff3fso4283031fac.1
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Jul 2022 09:47:42 -0700 (PDT)
X-Received: by 2002:a05:6870:2326:b0:f1:7485:2a92 with SMTP id
 w38-20020a056870232600b000f174852a92mr9593871oao.291.1656694062616; Fri, 01
 Jul 2022 09:47:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220701021427.3120549-1-judyhsiao@chromium.org>
In-Reply-To: <20220701021427.3120549-1-judyhsiao@chromium.org>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 1 Jul 2022 09:47:30 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMof_NA0v_PwD6--ojrsEiMvSOpx48UWS0vmVB4xBc_VA@mail.gmail.com>
Message-ID: <CA+ASDXMof_NA0v_PwD6--ojrsEiMvSOpx48UWS0vmVB4xBc_VA@mail.gmail.com>
Subject: Re: [PATCH v1] FROMGIT: ASoC: rockchip: i2s: Fix error code when fail
 to read I2S_CLR
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>, alsa-devel@alsa-project.org, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_094746_488010_8775039B 
X-CRM114-Status: GOOD (  10.79  )
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

On Thu, Jun 30, 2022 at 7:14 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Add the error code '-EBUSY' when fail to read I2S_CLR
> in rockchip_snd_rxctrl() and rockchip_snd_txctrl()
>
> Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>

Apart from the FROMGIT subject:

Reviewed-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
