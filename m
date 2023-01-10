Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7C7C67871
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5o0jrTHuoUwsXfhndFIvZIodKuRBawqy7GSgIbAzGLQ=; b=ZhO7CxGPgxWOHt
	FSAdn19xaL9es2am20x8Fhrp43noOxX1wmOqPYY9Bx1wJ2Vc4iTwKdCryswntHK6viBy95sjWaSQJ
	Xak6JOTOaUp54NgKo81nijpwQ9NsPkORgL60rMMY9bLLl5z2IMHnPui1HF3OOUFYEkpIizKTkUIxE
	QQmiiI62bWe3bKhqLRqnAkagnAK+IXcfOFOnAN+Ff1P2TKclg1tYTgCbn1IkjvqRg3k4TP79HvxKH
	jD2Uyvhn8jSZQLyQKQrI5E8xo8kX6RR4T9QbbvxV+8Mo317jgALYEuuYiejkwW/Mqt1egtWtnQvWP
	jk7LDXth6ZwB9q8ks00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFJc-007DjB-5C; Tue, 10 Jan 2023 14:09:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFJN-007Ddg-GM; Tue, 10 Jan 2023 14:09:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B92BFB80DBE;
	Tue, 10 Jan 2023 14:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21FAAC433F1;
	Tue, 10 Jan 2023 14:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673359743;
	bh=ZW8zH1O3OT5Bp4BpLwzyu94ISS4KXN9FeJy07iPv8zI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ZPFUMwIPCz1QziTWYjfNzf1TdAPThj8UpnTYREZdnh7hEiBiDbVlkj+3Ww6a8nYa8
	 sYTT0/ARQ/JFq2FLHPaRhE/DNAC6fjqRMcVTOMV3TfF84NWgDbnSUsqrzgdDZXCyCf
	 9+a9Qrucd5TwoVGKdxUF5fig0i92hdJsd34gUzkQBAPbe1EMzhokkopdOu1w6ts4Bw
	 tMvbKnAZKE5d1g8vImC45R/5MxTp+iNJTzwut00arQZflkgOK5L2aF9NFUXy5t6iSe
	 fVTay4Y5UtskummFeC4eEtCS7lZAIuEXO5+HImDJ3jZB4dpQHjGZlMF4Vw+NASqhFS
	 0/FIv7qAwM6Qg==
Received: by mail-wm1-f50.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so10027272wms.4;
        Tue, 10 Jan 2023 06:09:03 -0800 (PST)
X-Gm-Message-State: AFqh2kpLK74DkdvsSPd0iSN43QGOfj5W239DCjYCAP3K1eDfqM5ILwm6
	3hwXF7M1JCbCaYyYbx2Soj91wFw7nUcEcnSFegE=
X-Google-Smtp-Source: AMrXdXvlN9KvJTYTfk1TS1b+8QF4hYykKkN0w478BO3kb39MXm4RJX+WTrxHB1QZCsEIsVqZ3OYIbr6LFu4sGoVJjC4=
X-Received: by 2002:a05:600c:2d04:b0:3c7:6e1:b5c9 with SMTP id
 x4-20020a05600c2d0400b003c706e1b5c9mr4815765wmf.154.1673359741319; Tue, 10
 Jan 2023 06:09:01 -0800 (PST)
MIME-Version: 1.0
References: <20230109203232.45192-1-f.kardame@manjaro.org> <167335938203.2550251.9294002031370939026.b4-ty@sntech.de>
In-Reply-To: <167335938203.2550251.9294002031370939026.b4-ty@sntech.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 10 Jan 2023 22:08:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v66RnP+Gk+3ZAVjb9Fde=+82BTaRuRCnuibbzQ84+FQU6w@mail.gmail.com>
Message-ID: <CAGb2v66RnP+Gk+3ZAVjb9Fde=+82BTaRuRCnuibbzQ84+FQU6w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
To: Heiko Stuebner <heiko@sntech.de>
Cc: pgwipeout@gmail.com, Furkan Kardame <f.kardame@manjaro.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060909_740877_C761E96C 
X-CRM114-Status: GOOD (  16.64  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jan 10, 2023 at 10:05 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> On Mon, 9 Jan 2023 23:32:33 +0300, Furkan Kardame wrote:
> > This patch adds simple audio card nodes
> > Enabled i2s0_8ch as it is needed for hdmi audio
> > Added i2s1_8ch as it is needed for 3.5mm audio jack
> >
> >
>
> Applied - with remarks below!
>
> [1/1] arm64: dts: rockchip: add rk3566 audio nodes
>       commit: 9ce61898b3075892b01792fd3a44507b7e459c6f
>
>
> The core i2s@fe410000 node should _not_ go into a board devicetree.
> Thankfully an identical node for the i2s controller was already
> added to the core rk356x dt, so I've just dropped the one from
> your patch.

Shouldn't hdmi_sound also be enabled? Otherwise i2s0_8ch is enabled
for nothing.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
