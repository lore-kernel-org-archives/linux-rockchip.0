Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A16C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 04:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zy6Wle4vh0tWidOdJO96DZYYeEhKDlk4YYFI+M57vVM=; b=pjAQ3jLhAkuX+O
	5QNMzzbWfealzOUTSAScuQ3oeoywWcSqiy3l9LruJr1hWwDq5l3B5eEQ5VDzKzARt5eG7kBGuei9i
	eVgh0KJN+MwjD0vxcCflvWrtMqw85Nk4wakJ/W0NgB/zZ7qLJQmypTPjxd7N8aC6R3VUoOJ3S4fcJ
	Ul7oy/gFvJgdLZZsDTOv3Bm2DVkR8YZHQzfmfQWBGN1ixJWsmioBmEERkqLsq3XpF0b2pXCvaIU16
	jxaolP2UsRuvEiloIJrgPjKPhUNkIXrMl9epN5fvxxCV9ifJrCxlmeNV1Z6KOI2MNm8vSQ5y21+Rc
	EMbumh03CIsTvV58h0oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1my5BL-008c2e-SN; Fri, 17 Dec 2021 04:49:23 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1my5B9-008buD-7w
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 04:49:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y12so3110104eda.12
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Dec 2021 20:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6GJxpDiLpbpPINaOcBipsmIBKGtNQ+pTxcsj8dWvqKk=;
 b=XYX28P5JN9Qi9AqY6RdU8NHuKgyb2ni3yWGjFXejI92Mjdz2ktEGfEELSSPmDUvvYi
 VwQtocGg4rHGd9xMk3Bi7dczQ0gTHV5gGIrlx7knTiCdNgY+HQZBz3LLpZ4Hmn7qVHes
 b6+7t6q1ga50czfzqpOCqajlT9bPCwJePv67e86JcPtB3x8/o2wmaOaJh+aSsocy2jIW
 uiJmVzeCGY4indD/+XgNQjohvs6YD7OA6wjDxp4Lislknx/3m2e9qrNEXEnMidcoVu6P
 3mA3ziprDkCer2OKiwRwYJdJ6zmntOfz6XUSs3BPscVTzwRuSZ3YtGD/NsqR1YnuqO3r
 v4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6GJxpDiLpbpPINaOcBipsmIBKGtNQ+pTxcsj8dWvqKk=;
 b=yQL7pqeE/+MTsSHtU+zvxdBbJThbEIbvWcvHNerSYtZh7koNUH3gnppxrIcqkhlyBZ
 nAU0sNQUHx0NI4Z+jP/WVPXtLow2XIh9iKXVZnNLwJ8COKDYOhBctkFcPEmynj2TnmNR
 5IqRYB+MzD/UY5ghFF4cyfm6WYwLwqlzN5kfAOq6RBswkAxx8Y97XVE5QVL+6NSPy244
 xVnoAfDEpb8g0CJhHjwQnThWn3QgZO297GXmcI33/j1wuwgV1AhjDs9k+vi6HkxoGySY
 uJSF2VV3FAv6DwZPE2e/yYCgfO1Dul4ebU7JAVIV5k69Sfi9teeFEWqv7plndd5bhPJj
 Mo0g==
X-Gm-Message-State: AOAM5337ahY3ExYwxT4MCTlN7gAjR9F7JeMvHpsBplMGgbQ8PVtVbeCb
 +hOPgUeo7piZT0z3q7VCcAKyYQeBGfZwLZe+ZTHZkQ==
X-Google-Smtp-Source: ABdhPJzaIuToc0djVyjp+VsjCbme0PeMuRClgq6NqRenM+df1YY9uQXZCbxUdpPkTSZu7ypDqPFBB+GLvvmn9r8MBmg=
X-Received: by 2002:a17:907:16ac:: with SMTP id
 hc44mr1138627ejc.363.1639716544065; 
 Thu, 16 Dec 2021 20:49:04 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com>
 <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
 <CAHCN7xKM9RUE7z-+ug1on+D=nDoEm589R4m03ofys92Aq75ZVQ@mail.gmail.com>
 <8db00a4b6faa99c940d9bc86e17161eb0db5efe3.camel@ndufresne.ca>
 <CAJ+vNU28UJffFv9jQ2KryJMudqYxvCaoVOVcU5dPqRA209iN6A@mail.gmail.com>
 <d91532c2c0772f9aa708ead36b2a97203727a7ea.camel@ndufresne.ca>
 <CAJ+vNU3H-V+bPoZ3qKead45h=W7AhQK6Lhjrx5ssdF4c_qfe=A@mail.gmail.com>
 <CAHCN7x+0LwwU_rEST+TZxGquswGKL19gnTy9WLofsXtGAtWqdw@mail.gmail.com>
 <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
 <CAHCN7xKRzxMBmPbDobWTuvNNSpTXk5XENvfBnfkhRY3eZKhn6w@mail.gmail.com>
 <CAHCN7xJFLNi_g+HX8PCy1Rkgf0jnWpO5QGYVz8nH19xrJkwHrA@mail.gmail.com>
 <CAJ+vNU3zFd=6k_Emc5aafxKkGwCPp4crgOFezQ-E_MbWsn1_EA@mail.gmail.com>
 <fed6c2fd7cf4971062c417ce41ed1e3812b900e0.camel@ndufresne.ca>
 <CAHCN7xK+wROHaqDcsY-3WYFQ82qX17L-LHNL3siSWnWvwFShzQ@mail.gmail.com>
 <CAAEAJfC1xXvemaFP+vTFVJ3S-SpYtrxyZgDamSOgLC1F3ua5xw@mail.gmail.com>
 <CAHCN7x+UMMP6RXsNm0=OC=UTQzh=RKqQo6B7FD5e4eoJAEfmpg@mail.gmail.com>
 <CAJ+vNU1epi9SwPMHkuDmKcb68RLemYF=bsp7AVnzz06zKc2efw@mail.gmail.com>
 <CAAEAJfCpjk5nWWkJYjjDT-YEpJi4pTZqZbzp_if9OGC0HKspzw@mail.gmail.com>
 <CAJ+vNU2we5mGXgYsR6CfimvFXZsc0zktR3fDa-h6RRa02jTT0g@mail.gmail.com>
 <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
In-Reply-To: <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 17 Dec 2021 01:48:52 -0300
Message-ID: <CAAEAJfBXU-AiKKhkhXzgUSR4p1yefysNuHFycBz3F-GzNewS6w@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To: Adam Ford <aford173@gmail.com>
Cc: Tim Harvey <tharvey@gateworks.com>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 linux-media <linux-media@vger.kernel.org>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, 
 Jagan Teki <jagan@amarulasolutions.com>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 cstevens@beaconembedded.com, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang <qiangqing.zhang@nxp.com>, 
 Alice Guo <alice.guo@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_204911_315118_EE089572 
X-CRM114-Status: GOOD (  11.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Adam,

>
> I will post a V2 last today with the Mini's post-processing removed.
> Someone, I apologize that I forget who, mentioned it was fused out of
> the Mini, so the testing I've been doing was with that removed and I
> removed the H1 encoder since the Mini doesn't support JPEG encoding.
>
[...]

Resurrecting this thread here. IMX8MMRM Rev. 0, 02/2019 mentions
post-processor features for G1 and G2.

Have you checked the fuse and synth registers to see if they throw
any useful information about the hardware? For instance,
comparing PP fuse register (SWREG99) and
Synthesis configuration register post-processor (SWREG100)
in both 8MQ and 8MM could be useful.

As I mentioned on my previous mail, even if G1 PP is disabled
on the Mini, I would imagine the G2 can do linear NV12 (aka raster-scan)
which in our hantro driver jargon is a  "post-processed" format :-)

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
