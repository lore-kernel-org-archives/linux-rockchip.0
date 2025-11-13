Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5E0FCEBF88
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIT30mg8zRkB7xgfW/gYTanu9WC1JXI5dWjD6sQbsfA=; b=azaGBi/nAMH5y1
	4ig+NBq3IO6mGJnrkk7r1rabmEGGCUPwZ5pyNI88PJGymWvhpHAdy68U5miK+Z2k0LRBjSCcIJUxj
	3CzR+MItM6eGE3aTz9i1QxHu4H+x/St4B7nwjBWRTYZ9JzGuzIDwiQsrXLyPGsBpDnYKrRJWbdupK
	1HAuYL8zIRU4XODbcD/kK0LZECBet9963FrTeBz4KpccfqYTIXBdQ3RIgV1+AbeW3ko4/zhCUDfi4
	qPtrtNz4DH5YjE5nIvtTHfWLD99zCY+5P9evPA2D05PqPkfsIJydhsvCUdc7ovSgczU5lYP1ltM0p
	uiop5exoJ3zQ51q40MbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhd-0000000ECIn-2O6c;
	Sat, 15 Nov 2025 23:29:09 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJXE6-0000000AWsV-2DU1
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 13:19:05 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-594270ec7f9so736697e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1763039940; x=1763644740; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZfCaucUzkZTNK+50YPVLfmUuvxNRaVom6NqjpdOeAc=;
        b=K59WUnJpeZ/8W9ndOHLrcN7OAuxHTOsIsZQQBc4zS3rc42zO4P42RtAkg/Coor5MYc
         bCSImfuZJzc/AtDfh4GTx0qr+O3NbavZ3SEHu0ePxZTnsE9zhKHQrt7ojI7uOqI8mFgF
         1i4hqTBomZWFOgfJMgXWckG+ci5FnPSHwYzHcf++aS87o8gAdQXHyqOQeYjoaV/7DVcT
         9fLRVmR0EaQ8MC0weEdOb4M6iuA7tOhPzyF0zaH1mRQTtDYejxhi4ks3KHrva5XjBycq
         x2pdjy44QPUAYFFe99VdALwmn2axKXwPqLf9ZsSF8Lk1O0FdeoYKsz9FF3UnIPyu+UMj
         jhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763039940; x=1763644740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VZfCaucUzkZTNK+50YPVLfmUuvxNRaVom6NqjpdOeAc=;
        b=i3QfmIuDtgp+hJ8/o7vROCBiScb9PS3VzDa/p8B/nSkHpeTY55Of8DxYTQUFdCoNn3
         WYw5lvEp5k6PiQ0RPWZOpw66xECinHP2BIRul/UobpLBAlxD04hgf3iRfSQs+oOK8o5m
         J9sZdnnC+Tr0TZntJf7NaYzaMfGTdQdMnG9ImPwF1yMHPhs0dzXAdV8zAmXANCSdQy4i
         qe9azjMcC7SZNPqhaTDnP37S/hlUxLFmzHN8horWU+2WbWmS4zwOPZ/ZV4jhNIWGeOqx
         PgQ3dDq+cyxS3AUx480E2Qje/ucqIUiOlR/Aw3V158ORGSv3T1gZPHAKJEF2oTNxSn/3
         vYtA==
X-Forwarded-Encrypted: i=1; AJvYcCUY9cSA729kjxGdMF43GDxVClIR87lZIik9lg6KeUn3PYqkotD+aWPoAx2JDQu0ra5XMqjqZsbQMfsUDdYZZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbO5Zi54ldyGEDkLxpZ+Y4gdJ9v/SrR2kdGMAEvQm+jm7sZgtD
	erFL4NIBYAcv9lKR3Ao0ocdNhoTwUH9e+KEpmbB63Uxj7objYIqXbDbrXvXseZNgDbJKMGIx0mo
	0OQSJLPipvMr1tPxzNcezctbBnr+GSe18ywt0HHYUZA==
X-Gm-Gg: ASbGncvK8NmwXEuWGL5AuLngJK3Nbxr+eH2W0RwYCdMW8dzdMwUUJaH17PbxCv2A/N5
	xSl6r76d1zKBQSFjEIlSCNUOTDYy7GPxh0ZcQhhzct1Rx9sWVAVQgwIFWvhPK9fE5Gw/TqzsWSF
	OCPcGmObHMKfIm27dt+o6HZnZ1DNipaPD+sJoK8by9w1IwBq9PJmqJzyGTr9/xVbBHqkAtSx7I7
	zaNsJG+A5FEpoDptVpLjGG9f9+dN3fwwDHU4wm6+vc92WEAUjInndumCpp418xsdWW2ozD9uCxb
	U6cv/8ZkUvDfDwBo
X-Google-Smtp-Source: AGHT+IHeVzTuj43c2XKQpZBw2ErEf3YOWTRFAtQ1vaZEEtKBTkEs3tR1Hd50SIgH+QjYllZZcXodcrSS9KZ8vRhrh3k=
X-Received: by 2002:a05:6512:3152:b0:595:7b24:d36e with SMTP id
 2adb3069b0e04-5957b24d58cmr1396653e87.7.1763039939830; Thu, 13 Nov 2025
 05:18:59 -0800 (PST)
MIME-Version: 1.0
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
 <20251107-qcom-sa8255p-emac-v5-2-01d3e3aaf388@linaro.org> <21a3d269-76e6-4da9-aa25-bfd1fb6dfb07@oss.qualcomm.com>
In-Reply-To: <21a3d269-76e6-4da9-aa25-bfd1fb6dfb07@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 13 Nov 2025 14:18:48 +0100
X-Gm-Features: AWmQ_bkdL6yYgjauNyydNchJ2jLFj9s46UQ7WB4-Hc5rFElcxZ0Jmq78mNjUwDc
Message-ID: <CAMRc=MexMn_GSC2EtMek5hDRLjGYA5HKM8ge9vrxw1pYDqPJgw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] net: stmmac: qcom-ethqos: use generic device properties
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
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
X-CRM114-CacheID: sfid-20251113_051902_817482_E145DF3E 
X-CRM114-Status: GOOD (  13.47  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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

T24gRnJpLCBOb3YgNywgMjAyNSBhdCAxMTo0OeKAr0FNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiAxMS83LzI1IDExOjI5IEFNLCBC
YXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8
YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IEluIG9yZGVyIHRvIGRyb3Ag
dGhlIGRlcGVuZGVuY3kgb24gQ09ORklHX09GLCBjb252ZXJ0IGFsbCBkZXZpY2UgcHJvcGVydHkK
PiA+IGdldHRlcnMgZnJvbSBPRi1zcGVjaWZpYyB0byBnZW5lcmljIGRldmljZSBwcm9wZXJ0aWVz
IGFuZCBzdG9wIHB1bGxpbmcKPiA+IGluIGFueSBsaW51eC9vZi5oIHN5bWJvbHMuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBs
aW5hcm8ub3JnPgo+ID4gLS0tCj4KPiBbLi4uXQo+Cj4gPiAtICAgICBpZiAob2ZfcHJvcGVydHlf
cmVhZF9ib29sKG5wLCAic25wcyx0c28iKSkKPiA+ICsgICAgIGlmIChkZXZpY2VfcHJvcGVydHlf
cHJlc2VudChkZXYsICJzbnBzLHRzbyIpKQo+Cj4gVGhpcyBpcyBhIGNoYW5nZSBpbiBiZWhhdmlv
ciAtICJzbnBzLHRzbyA9IDwwPiIgd291bGQgaGF2ZSBwcmV2aW91c2x5Cj4gcmV0dXJuZWQgZmFs
c2UsIGl0IG5vdyByZXR1cm5zIHRydWUKPgoKVGhpcyBwcm9wZXJ0eSBpcyBhIGJvb2xlYW4gZmxh
ZywgaXQgY2Fubm90IGhhdmUgYSB2YWx1ZS4KCkJhcnRvc3oKCj4gYWx0aG91Z2ggaXQgc2VlbXMg
bGlrZSBpdCdzIHRoZSBwbGF0IGRyaXZlciBjbHVua2lseSB3b3JraW5nIGFyb3VuZAo+IG5vdCBp
bmNsdWRpbmcgdGhlIGNvbW1vbiBjb21wYXRpYmxlIGFuZCBpbmxpbmluZyBwYXJ0cyBvZiB0aGUg
Y29tbW9uCj4gcHJvYmUgZnVuY3Rpb25zLi4KPgo+IEtvbnJhZAo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
