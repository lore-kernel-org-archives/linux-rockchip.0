Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 225BECDE002
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9Pn0O0SuYqMJByrsq/zQcz4sncj+JN6VYdo6QKtULM=; b=vzg+CLXQX7tDIm
	jx0NSoQ4H0Pg6pg9Ompppzx80qmZ1BD0soLZyPcKvkH2p1siHRg6iSsorhYc4yn/rJUpoFIOcc4NT
	8H796T/hboislYCsYqx0vJV+qM/Ddvm21RT1mC0Ks7tXxU5Fm5You9uk6bJSuvdyO6MIMtJzFFv7s
	Z8osaeN4VcqaQe2NagK9CF4jaIZCDhOme7JSaeoyXdDlXJN/CLW1xDGwGFZpi3I6afiMpUhMVL9Wn
	3kKmy9FLyHfEuyq0pKY+x9CHnP4eeOKt3XGY6YYoBML/53TXUtJEwLaBsFtJV+pAB7ATGJHBcbl7u
	Upm6rn1e4kXqKnwkoxHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5hk-0000000BJDz-0ZFA;
	Fri, 26 Jun 2026 12:30:44 +0000
Received: from mail-ua1-f44.google.com ([209.85.222.44])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5hg-0000000BJDb-3hiU
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 12:30:42 +0000
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-966d70b9e1cso614126241.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 05:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782477039; x=1783081839;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Qc4TavqegVrav+S2qpl9+8s6wcCSKt3nqOoGSJ8Fvk=;
        b=P6egzg9Z342fozuwP0LPE/UOi2/xHCxyyqRNueuIJl8Ygw3lR7iW5/SY+8IHdnopJ9
         xKkJTltoVdFtrDqOnHzDP4DiRpYvHOft4Y0Jqd3X28KM9LozvVVJEo0LK7gfIG4xjftZ
         BH4N/LZALYJ6jLyjCRBfzw2QpI8fIoN4XDAGtjuwj6mdrx25eYC4c0Ca1l0V/KjKtc/x
         HYJ9lbNwdV3fZz9l9hNSEcvIDwx1X7Q5JNzR2UIX8jiyS45KPV0R9iKVbRh8vpVFlUYF
         3NBqv3ATBZ/YE73Zi9Gq5tVRXZKIiDbY5TlLjbFy9XcB5NJsqrhAxabACL2hQBRWReGv
         mSvQ==
X-Forwarded-Encrypted: i=1; AHgh+RrvF4gfgeH+/bjcYWv4aRKt4i+r+zJItdIr3NvE62klOKxkzXk+uuqsESzzsMfO0od+2yzjvwUuivYkFYQCPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCM6s8cTpImFefdFCtC/qIvrX4UdowowQDY1FjYZrcvZkGfLAb
	3C3IlVrA+pBw+EbBaeD5nYoEYXTslzu6M6qi/R3E87VUTTjxWIYifdOR80vb55qm
X-Gm-Gg: AfdE7cn5DXiBm7bFT9zawSrbHjosR8M7Jr6Rsqj99hZkkcOIvZH19CoRI5mp1o0omOo
	WAO3LHJMlycNZJ8BBLoYN/fab4q5C8F/eML6rpLpjSBCq5muyUcQnGASLgNYjJFMXpE9iHoudyk
	3BIuYMHhKxESPYjmHkTJ1ARiXxHYtxe6Hl7KKOCBG1BKORRdH6xlViI5P6NN8G+SjHDrdTHbptN
	bvwJtFRNsgrKJkaws4zWpK0uNtQf6AmAxIrPG3JVZCDD/JJSOwCF2HIdB2P/EGBmb92FBiQBJ6A
	Tl2p9PD7QDzLil6P0bOVOGlAvSv6xqZqj/brI6rE4SIpcrFxGbP2AUr2lDUjcN4a6Hc8/b+h8IA
	s3N3q02FSnBaRdgW4RrykHZpeZhunDaFwz6kxwfmjWhGu2hFJm8XbCwmrwQhOuCc7tzS281MTRg
	gyrgdEiXVUf+rKqt7/DWsdmx6Be/PhBmGVOsH/NQlMsx8ZCGCpdQ==
X-Received: by 2002:a05:6102:510c:b0:6c5:d55d:c096 with SMTP id ada2fe7eead31-73435b9382bmr3546545137.16.1782477038636;
        Fri, 26 Jun 2026 05:30:38 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96917e1293asm783499241.5.2026.06.26.05.30.37
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2026 05:30:37 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-7343fb4c752so618938137.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 05:30:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrMuoVlK36yBI1rUKEVGzjHgfA8xqJO92UiqquLn/YPSfqhrXLm1c8KhKeOa7alr0S8hQbeynkChKurW4TjRg==@lists.infradead.org
X-Received: by 2002:a05:6102:5491:b0:631:4580:6a46 with SMTP id
 ada2fe7eead31-73435b90f5fmr3476500137.17.1782477036873; Fri, 26 Jun 2026
 05:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com> <20260626-kbingham-orientation-v2-7-47178be927b4@ideasonboard.com>
In-Reply-To: <20260626-kbingham-orientation-v2-7-47178be927b4@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Jun 2026 14:30:24 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+BDLjuhVo5fyHxSEibW8E4opXbaDrgsmTgygXXJoATA@mail.gmail.com>
X-Gm-Features: AVVi8Cc1rFvCNNORSHDtFmL_tkYQ91oxJ5vGSfmmYwanPmDM2yIyJwQSJ-fX378
Message-ID: <CAMuHMdV+BDLjuhVo5fyHxSEibW8E4opXbaDrgsmTgygXXJoATA@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: renesas: Convert to new media
 orientation definitions
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Jimmy Su <jimmy.su@intel.com>, Matthias Fend <matthias.fend@emfend.at>, 
	Mikhail Rudenko <mike.rudenko@gmail.com>, Daniel Scally <dan.scally@ideasonboard.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Tommaso Merciai <tomm.merciai@gmail.com>, Svyatoslav Ryhel <clamor95@gmail.com>, 
	Richard Acayan <mailingradian@gmail.com>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux@ew.tq-group.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_053040_962286_4AD05FE6 
X-CRM114-Status: GOOD (  18.01  )
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

On Fri, 26 Jun 2026 at 14:08, Kieran Bingham
<kieran.bingham@ideasonboard.com> wrote:
> From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
>
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
>
> Update the users throughout the renesas device trees to use the new
> definitions.
>
> Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
