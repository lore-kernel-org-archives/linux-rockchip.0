Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD26C4450E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57X7LrcjiaYQhEr8T8XAvQCecdBhJHqEMEi3YkMsm2k=; b=QVNc365xZ3dF72
	3zW5FOY9nWBEncsW5atO4m5vKxS+EGlSWMBv9DnWS0AkVT0VMU5is8WilwEI4LA0V2STlow4B5JBm
	YloxdDxVbmFdLh6H6pnbGlVqD6jnAr/ET4lOO9kOyOxwTiN6r92lT6iylrS4531zN8TRNNXnUDEkv
	2cx5Vka23G2SnL5eKy61hnLh69Yva1TdXIb9zsHzSeBHHuUXkU7KJ1IYTLS00fzk9EzRj2gnGqTdU
	td446CCuYXW1F8w2/Bgl8rgZpU9XejVvbLzZp2oy6EX5bIagH8eTuGFql4T0038QWu0TNZPTGKbE9
	9SIWcHN+cmZTky8h59CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQk-00000001Uif-1Hma;
	Thu, 09 Jul 2026 08:48:26 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWwMJ-0000000BbZr-2A2d
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Dec 2025 12:46:56 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2a0c09bb78cso18163885ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 20 Dec 2025 04:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766234814; x=1766839614; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PnLeQHT6gKO5LrS+1ND5Ys5FEsU3x/z5LzPcGERhZEM=;
        b=f9T7EX3GhepjZEeRo9flz3bWBC9apzypbCY/3lT1ak+wSGTYte8BfLOQP9gt/chxI1
         drORO6TrgOMZ/FG34C8DaqEcq57X5hWqR2APCfZLHNSrHM5c1vVJObL2eOU7hONpHM7u
         VD9RsUODHCFiLkV8QDY8/INsjStqtWh1ROmajgEdM+rLaXWLmaE+nmmbnqk9qF/po/S8
         ibHyWwQZOpTRPqwaBPJCD3QXW2iMhSuVv+9tXSKooXS60pjES+wHya5IDCHaeQe0GsJR
         qIoLYNngUxPf3vLENx09wJBaTjcFSypO8YKt3+WRHCBLiKdNkibER8WjauhoFdtLrxX3
         CLpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766234814; x=1766839614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PnLeQHT6gKO5LrS+1ND5Ys5FEsU3x/z5LzPcGERhZEM=;
        b=OxDSy/C8hCwSwb2Uv5XOYBK3L87L9wPVG0E9+bDxFUxeS6TRXZorOKMK4l/yB68gV3
         mgTFU2xRjsxYaM9aBZ7Dk7rTGtHgs0u47bMuCc1DvzbsOnU/GzyeMdcGpqtFVxDmp3Sd
         tkoojMhf1fmUe6maODj9dKKI6UgwE9g41uhIynTkygrrTMIuNGk3sYoVViFXvF+XfKqD
         NxF7AD/4BR0w/0g0Npry4M/7rnl7iHyZFdGXT+gEyfAxKTcmkkiNVMJLy+AS5D7TgA5L
         GXTbJVoy6+GktoJjRYuuegofz4FuKCBQuLuaPf6myHqpJ5l3ZeUM1DgSCoJtQZet0+71
         K5gA==
X-Forwarded-Encrypted: i=1; AJvYcCUYb3enTQP51PYDBML/ndAntCMnZXzf6smp//na8zDSpvvrJsIpRMmbndnB2gMzAn7TxWxNnLe8F/1W0wcphw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOFSMLnHCgh5GvJOjyLWeflz715mdwcNeReQeB1JLtjw504zIx
	tm6S6fgUJa537A8hyLbifCOfSA/MRImKS7VoNx449YnbJdOvXYJck319HJTk4VRtKX4BFvtdZF3
	WyjEjRyb34yhkGD7VJHOI+bKGYgr07mQ=
X-Gm-Gg: AY/fxX6+89YNpHfLHXw39n5FFXl2hRpmmQKggw6lQrFVhdXy8HeaNFw1f0QkMXUqfCK
	cOtuCw6oQ+XzlLoS2/e+Wzk+/vdK49AGRUbiTceUmcXyieJPavXUKPWQnpq32VgVivSii7grba9
	x7jtMP/0hNS8zfbht1z3NUnaOQEWM0J+K8D/lSPtqeHAe60LnxazByDawyBEBVq4cNn8UeA1OO/
	bXZEt8iz/CsH/IwuKIF7VjgOtUHjbUWf6wF/FbBir/mxPsTjBamYca5ZlnVniB+aSILDpPxe9E3
	G0DicP9kbvP3UKKxPxJZYaAwUGXarF67ai7yArg=
X-Google-Smtp-Source: AGHT+IGTZVFXf6rAC1bEGZmO7YaQs0mj72/Bxua6dbMs1yZR8CidcfGRl/4LVrNe9mb+pBaCXI6UiiHmEjBYB9UahrA=
X-Received: by 2002:a17:903:198e:b0:2a0:99f7:67b4 with SMTP id
 d9443c01a7336-2a2f0cbc904mr55199135ad.8.1766234813931; Sat, 20 Dec 2025
 04:46:53 -0800 (PST)
MIME-Version: 1.0
References: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com> <20251219-qcom-sa8255p-emac-v6-1-487f1082461e@oss.qualcomm.com>
In-Reply-To: <20251219-qcom-sa8255p-emac-v6-1-487f1082461e@oss.qualcomm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 20 Dec 2025 13:46:43 +0100
X-Gm-Features: AQt7F2qpxOToWQKPYlABMJwLqho0Xychdf9rQln23uKf9MMkpqj4U-v6YeXkrYo
Message-ID: <CAFBinCAXb87FKwA_=UEx5YTekevVUun1gieUfMux=oQAgjZS7w@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] dt-bindings: net: qcom: document the ethqos device
 for SCMI-based systems
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Matthew Gerlach <matthew.gerlach@altera.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Keguang Zhang <keguang.zhang@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
	Romain Gantois <romain.gantois@bootlin.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Heiko Stuebner <heiko@sntech.de>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Minda Chen <minda.chen@starfivetech.com>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Shuang Liang <liangshuang@eswincomputing.com>, 
	Zhi Li <lizhi2@eswincomputing.com>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	"G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>, Clark Wang <xiaoning.wang@nxp.com>, 
	Linux Team <linux-imx@nxp.com>, Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>, 
	Samin Guo <samin.guo@starfivetech.com>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Swathi K S <swathi.ks@samsung.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251220_044655_554689_172FCAB2 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgMTI6NDLigK9QTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxi
YXJ0b3N6LmdvbGFzemV3c2tpQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQmFy
dG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+Cj4gRGVz
Y3JpYmUgdGhlIGZpcm13YXJlLW1hbmFnZWQgdmFyaWFudCBvZiB0aGUgUUNvbSBEZXNpZ25XYXJl
IE1BQy4gQXMgdGhlCj4gcHJvcGVydGllcyBoZXJlIGRpZmZlciBhIGxvdCBmcm9tIHRoZSBITE9T
LW1hbmFnZWQgdmFyaWFudCwgbGV0cyBwdXQgaXQKPiBpbiBhIHNlcGFyYXRlIGZpbGUuIFNpbmNl
IHdlIG5lZWQgdG8gdXBkYXRlIHRoZSBtYXhpbXVtIG51bWJlciBvZiBwb3dlcgo+IGRvbWFpbnMs
IGxldCdzIHVwZGF0ZSBleGlzdGluZyBiaW5kaW5ncyByZWZlcmVuY2luZyB0aGUgdG9wLWxldmVs
Cj4gc25wcyxkd21hYy55YW1sIGFuZCBsaW1pdCB0aGVpciBtYXhJdGVtcyBmb3IgcG93ZXItZG9t
YWlucyB0byAxLgo+Cj4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6
ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL25ldC9hbGx3aW5uZXIsc3VuN2ktYTIwLWdtYWMueWFtbCAgICAgfCAgMyArCj4g
IC4uLi9iaW5kaW5ncy9uZXQvYWx0cixzb2NmcGdhLXN0bW1hYy55YW1sICAgICAgICAgIHwgIDMg
Kwo+ICAuLi4vYmluZGluZ3MvbmV0L2FtbG9naWMsbWVzb24tZHdtYWMueWFtbCAgICAgICAgICB8
ICAzICsKQW1sb2dpYyBTb0NzIGhhdmUgdXAgdG8gb25lIHBvd2VyIGRvbWFpbiwgc28gZm9yIHRo
ZSBBbWxvZ2ljIHBhcnQ6ClJldmlld2VkLWJ5OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4u
Ymx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
