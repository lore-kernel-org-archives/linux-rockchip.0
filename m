Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF9AC36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmfxM71TGLmrxau332fFLq42LTof3BKwPn+D5dx3380=; b=vrz7YtxD/Lkc2c
	OChfyIn0Tve6kMNAuocfbUPTVtlRSLymg+3APWN+nOVjViTS2E4ZNTJ1Ksr0H7tIhYM3SItpwbD4Q
	6C8ZUgWj6GFTuGMkmVYxpyOGKwa+OoLTCXzKboI2xs8t2JFW0PgPrMGsQWd1MtlGoJ531D9OLMljA
	1zfgl7KHZ1gjeDb6E+QGTPrsFqSXYPbTpKdd3BW0LSuCM0gsa6HqB1h6AtqRL+EAiOa6HlGYEBp5t
	Yuatgi2hM8AYvBvuNFbc2TB3w2Scthc37LTjzFfEhldTzAxZDG2rTEkDVKlVphK1dNA6W+4Klcz8E
	/yOudAFk9IfnQpngZ1TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rYD-00000001ceB-1qQH;
	Mon, 07 Apr 2025 18:50:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pKB-00000001Av4-2kUd
	for linux-rockchip@bombadil.infradead.org;
	Mon, 07 Apr 2025 16:27:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2E83vRDeGBi2KQKmMy4PdlP5hsTnpBPGTayVZg7p9Bg=; b=jBBIAWyhJk3wvbAVMIJNDS2QMW
	rA+hO8oWotCtsw4NG091UtNpxoKx422Bvy56MU6906szr4Ag6uDDBxkmzqoopQQtidT0+sVqulNlD
	inDUGstw/CKlbTWrH27r8OnNaasXwevRCRSme+B/djyXtIQNv+LD5BYnv29rFAlO0XI+bRC2F3h1H
	7QO60+XQw1eBqVqTMr41ZDBxS9wXnTwLKr3u50Sj502fWappdwMM913jEiePNHuNXZPSJeISQ3NEH
	wxIRjZADaPg84Oj2TAd1qcpnQviUgQ4asxzjcN4sKiO8U7/mF4Iku5DMc80XjfXb0Wir0NaCV8AiW
	QX5lffPQ==;
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pK8-000000083MH-2ukC
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Apr 2025 16:27:50 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-6f6ca9a3425so53850297b3.2
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Apr 2025 09:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744043266; x=1744648066; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2E83vRDeGBi2KQKmMy4PdlP5hsTnpBPGTayVZg7p9Bg=;
        b=xkY2zL35ZrIeJ2h7iimk8YNwvJ69z6xvQmX21luuOvS4QTMPXsDXEJM5NLiT9FOmve
         E/VplsY3id4rpxbuv2zMHyn2g/JdkSJsSj7H0l/bLB1xiU2txTAKPxmUbUK82xl4V/0g
         Ymic6WGfu4EPq392Q+MnnUbUeWjUbNmkqU8mrddqkwvWLUPPbplpW8E+zZArzb0JAyYF
         ulXZzaZV1ZOYRI5Lt8i3yy9G3prVNrUj95HuYoddur5UjRXiGNiRvk69mPFNHeleFBph
         SpomeNqiBj9u08xi0jsBwOf7s0cqZOkx3w0CHBMAAuId/236UXYO2N1F05WaPUYrPAwQ
         nNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744043266; x=1744648066;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2E83vRDeGBi2KQKmMy4PdlP5hsTnpBPGTayVZg7p9Bg=;
        b=j7zf0CIgavpD4rpxS240sW0IJ/KTYisAqAYEocPdymgh/fP5IqVXqz+FUTlaeaSnLE
         8NiOk80xCwqrXTn5QI3IeXSvM5I+Zt8oh+i0/AfIgKfeBHehBcTatWqCf/XgepQ28ylv
         gzD93Ew7R9Gd8LdAAFAhw2jz3Uic+ajudidkKqrR22xOjWKRJ+tK9BGbOhsqrQLbNKOU
         8J687HUr6G5b6mR/F53I+UFZplia9tyBgO5g0J5KWdPW6crWl2kO6NJ4yjNZLMN4ZMek
         bIaL4rnwSyypvnPqPzasq/wQ8EMGGv9gKYreoVmK0ACfoLLccu0VS4BiUdOlhbnP1iFg
         eS8A==
X-Forwarded-Encrypted: i=1; AJvYcCWq+D9Mnd5W4y0PHDifYTRpwzdMmCRt+cAwGzMVlz3g2mJK4/Xaxyi19gXJRkWeRtHoDwMXlYOD/HwChb73KQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGGS4CLwB0Y+Sh+nVCi99c0wCbAZuQGvhqGpasuP6CVhy/ScC6
	uYZabBnrLa7r9Kj9EMt93L7TVZzk92wSZ13raWUPozdGl3qNJfuU0WBzKVZz+kYeH0yhxNRSDSw
	pPTSctZ4JZLxJkHDiDFciwaS3vmRRfaFy/FdJEg==
X-Gm-Gg: ASbGncv52W5DiLQzwJNexOn0eb0kOsHAO6f6kVrMTpkYyhiBpjFEWy2FX2snCaiBFJl
	8Mc+jzXm6ZqEu1Qf0FWf713T7g7JEnuKtKMUIRBAC8LBGUY4lTdyzOMtA5eXQoAgod96bsHp8sA
	q541DWr96cRZIDh5sgg/4BBEhWIw0=
X-Google-Smtp-Source: AGHT+IGtNp2BrAkn3PRcCBrP5vhlJ1looux4OpDWyP6ljq92N0vWykgYWHtVBu01P5IBh7MS/lbuITHOgr8FD7w/MVE=
X-Received: by 2002:a05:690c:a84:b0:6f9:9d40:35cb with SMTP id
 00721157ae682-703f41267b0mr168266747b3.6.1744043266227; Mon, 07 Apr 2025
 09:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org> <03011a33-174b-4027-bdd2-043aa685380b@oss.qualcomm.com>
In-Reply-To: <03011a33-174b-4027-bdd2-043aa685380b@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Apr 2025 18:27:10 +0200
X-Gm-Features: ATxdqUE6-dDNiPO2iJ2zywPixm7KYg2Lx2vGxVH4s4tPgli0QW4REXdhqc3rxfE
Message-ID: <CAPDyKFoZ7NfN+pkCPnusvTOEaxbQhr=1FJqzdDGrLcKAzBpGyQ@mail.gmail.com>
Subject: Re: [PATCH 09/19] arm: dts: qcom: sdx55/sdx65: Fix CPU power-domain-names
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_172748_868519_7D663CF8 
X-CRM114-Status: GOOD (  14.09  )
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

On Fri, 4 Apr 2025 at 22:41, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 4/4/25 4:59 AM, Rob Herring (Arm) wrote:
> > "rpmhpd" is not documented nor used anywhere. As the enable-method is
> > "psci" use "psci" for the power-domain name.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
>
> "psci" is what we want here, but these platforms require some more
> massaging..

So this isn't for CPU performance scaling?

>
> These SoCs don't seem to have any PSCI idle states (deeper than WFI)
> described, which is no bueno, as they support some..

If PSCI PC mode is the only supported CPU suspend mode, we don't need
the power-domain topology to be described in DT as it's optional to
use.

Is this a PC or OSI based platform?

>
> I'll try to improve this.
>
> Konrad
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
