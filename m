Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADC6CC44509
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cF3tY3jjGl6whc0uywHT7QM7bQEnIrKJrvZnpOc28pI=; b=Su0hT+Pk+7KUym
	5q3qpBYwAhE5FsFmKy/6SyIeUntvt+ZiF95eQFjN6vKsu4G1OdhmmmOthcAge1wq2giZ0IYWXjfoX
	0P3/LWzXzkgIl0dGpf9W4RaMa8H1IawnjVYFWLKBLVRGZFsGaQ1TjWfsxs/NVEPfzkJ6KmaafMXZF
	RFcmBLJOS7p0yqBbBVXf8lIxfB9a2/QlZfWNykanHnIpx77kqQlEN6gAI6X3gQ1luulMZPscoo0oP
	lDW19K0+vmIlgMX1lCsRF32ChITGNTckjISA6lpVqCeShv0oKWd5q/2nG14iwa4+Q39xKkBc+9HG5
	8/Ak8QsTUMjXFyzjyVQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQk-00000001Uin-1m46;
	Thu, 09 Jul 2026 08:48:26 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY1WN-0000000FSgD-3jsj
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Dec 2025 12:29:50 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-37fdb95971eso35549191fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 04:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1766492985; x=1767097785; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h6OXWNpcTZmo3fq5/Hn/HjwTOV2GaxRDyFEHGkPfSDM=;
        b=ypg77tjV10aej7MmgkGQE736q9T3VE1zZTT9h+oXg4zU4ZuAJ/BX6+k+B7dixKxV4v
         bBbmEaqqM07y9edcQNl2NPOl+cFZoQNsQwiOLNAB2B/IMAbNTE5PSbQyra9Yh3OgR3cK
         1utX1r2rtj1JWbq4x+Zw9/mebuA1kyZcdJOEF2FJvFhxNFg8C4VXtVY1QxugLPDaYSIM
         66qWu1YHobdNzwTF5o57btHLpmAwWNwbh7jnci6wmdfBbnTSRB63o5Xt83loV05sQ39A
         zr70edP/3m6BeY5oSVrIzYD6oKSUmNlXzaHOlQdekNY/eOcNsTfT6KYe8YDZoqyMk3Sb
         LF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766492985; x=1767097785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h6OXWNpcTZmo3fq5/Hn/HjwTOV2GaxRDyFEHGkPfSDM=;
        b=J/ckx+W2lhJZnPBECGKVO1bbRNEPl2Pwq/fvT5RahnTnHQpBu88ZQwHMVxQarzZrD0
         P5qrB6gYqa99ELgcti3hAHyYhEWYpnSfi+y2R5G+MyN1hEByrYxCgOhJYO1pBpyXnxkF
         UaMRHKvlJgnfUl/cS05goqm7dmD763SCQIknFXvApzwST1vtOILjy5DR40fuRnYMO5UG
         hSGgCkp25v6+DLOWRSsdhtc2gY+5PqHMW7hKYTTX7hhP34gLTCZL2EbL//Fx+qjJeel5
         Cr1YFuYX+xRkhDVPSwtbk5Dhu2ZVhre6Q5bH1Gq+y41/tfXzjdBysSdw4Yv83j0d45sT
         VJ6g==
X-Forwarded-Encrypted: i=1; AJvYcCWmDhAEUpDbzWz2W9XxPT/CA7iWS2RZWGLsL9wdUoqKrmrRMVbVDGgaSjkzukdZpopucn3QiE39r++wy7MyoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHmX+Lt0fZiQLlYIWrPUUSSrs7jWSMkAMhaKUSerIGRbbhBcCg
	VwbBtcQmZt4IFZnVuVsl6J7Et2l6oTmqBx1/ZTd1Jm9eNxbrlD0JyUEcDanBH8e+kDFcVLtktdE
	pKUCRMA812U/riHGAVK/OfTgYKK4VbLFEzYAYcdJtxw==
X-Gm-Gg: AY/fxX6q392IBMDZC053R/H1H65Tdz5y3VLl70at1OWJJHBqvt7IJjbTZ1aZ+0ePIEC
	ZGuDsJqB24ezQMks2hX+c8CIbCYKrYvDYlNMu1Sz1KKoLIT9ptNMTvdZ6wZWBlxQh84J39L+7wM
	ZN9zyjMSp6vYoxpnkFNevFr+kWVZuzauDRAOq6Q2D9U0TtsIE7U6jd2regtfICCA8/vjS8FDRg+
	Tyv7KvCBIQ9TybnADrblpkMzWdxoNznj1sEpjFK+lnfj0BNGBHxic9PIiPRW3Z7YN03A4CXnp5d
	8b68QWEtXWVxaIKUAxXY4sgU/O03Z0boWWTebw==
X-Google-Smtp-Source: AGHT+IEBOhkGPqyyAQ1vT8Z9LQwcalYcPegEonjbT0vsHKYCaYN4/Y7HunNV2ZOFRdC/NVauUA6SJStJulcaNDLUuvw=
X-Received: by 2002:a2e:a7cf:0:b0:37a:45b0:467a with SMTP id
 38308e7fff4ca-3812158ffe9mr48663611fa.5.1766492985167; Tue, 23 Dec 2025
 04:29:45 -0800 (PST)
MIME-Version: 1.0
References: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com> <51c7048a-52dc-47e1-97c3-2aa0d6555643@redhat.com>
In-Reply-To: <51c7048a-52dc-47e1-97c3-2aa0d6555643@redhat.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 23 Dec 2025 13:29:32 +0100
X-Gm-Features: AQt7F2oUd4L6z6INXPzdFurDETLUQbJOAVCbMRjbjb79EkFyrJjgdrXB0o2w2nA
Message-ID: <CAMRc=Me7++jcT8SpA309F-0XoZvHPQF2Hfr17+Kt=Jmdy635pg@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] net: stmmac: qcom-ethqos: add support for SCMI
 power domains
To: Paolo Abeni <pabeni@redhat.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Matthew Gerlach <matthew.gerlach@altera.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
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
X-CRM114-CacheID: sfid-20251223_042948_112671_2F386F02 
X-CRM114-Status: GOOD (  20.47  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

T24gVHVlLCBEZWMgMjMsIDIwMjUgYXQgMTI6NDLigK9QTSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gMTIvMTkvMjUgMTI6NDIgUE0sIEJhcnRvc3ogR29sYXN6
ZXdza2kgd3JvdGU6Cj4gPiBBZGQgc3VwcG9ydCBmb3IgdGhlIGZpcm13YXJlLW1hbmFnZWQgdmFy
aWFudCBvZiB0aGUgRGVzaWduV2FyZSBNQUMgb24KPiA+IHRoZSBzYTgyNTVwIHBsYXRmb3JtLiBU
aGlzIHNlcmllcyBjb250YWlucyBuZXcgRFQgYmluZGluZ3MgYW5kIGRyaXZlcgo+ID4gY2hhbmdl
cyByZXF1aXJlZCB0byBzdXBwb3J0IHRoZSBNQUMgaW4gdGhlIFNUTU1BQyBkcml2ZXIuCj4gPgo+
ID4gSXQgYWxzbyByZW9yZ2FuaXplcyB0aGUgZXRocW9zIGNvZGUgcXVpdGUgYSBiaXQgdG8gbWFr
ZSB0aGUgaW50cm9kdWN0aW9uCj4gPiBvZiBwb3dlciBkb21haW5zIGludG8gdGhlIGRyaXZlciBh
IGJpdCBlYXNpZXIgb24gdGhlIGV5ZS4KPiA+Cj4gPiBUaGUgRFRTIGNoYW5nZXMgd2lsbCBnbyBp
biBzZXBhcmF0ZWx5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kg
PGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IEJhcnRv
c3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1YWxjb21tLmNvbT4KPgo+
IFF1aXRlIHVudXN1YWwgU29CIGNoYWluLi4uIEkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIGlm
IHlvdSBjb3VsZCBzdGljawo+IHRvIG9uZSBvciB0aGUgb3RoZXI7IGFsc28gdGhlIHN1YmogcHJl
Zml4IHNob3VsZCBpbmNsdWRlIHRoZSB0YXJnZXQgdHJlZQo+IChuZXQtbmV4dCBpbiB0aGlzIGNh
c2UpOyBmaW5hbGx5Li4uCj4KClRoYXQncyB0b3RhbGx5IG5vcm1hbC4gSSBkaWQgbW9zdCBvZiB0
aGUgd29yayBvbiB0aGlzIHNlcmllcyB3aGlsZQpzdGlsbCBvbiBMaW5hcm8gcGF5cm9sbCBhbmQg
Y3JlZGl0IGlzIGR1ZS4gSG93ZXZlciBJJ20gcmVzcGlubmluZyB0aGVtCm5vdyBhcyBhIFF1YWxj
b21tIGVtcGxveWVlIGFuZCBpdCdzIG5vIGRpZmZlcmVudCB0aGFuIHRha2luZyBzb21lb25lCmVs
c2UncyBwYXRjaGVzIGFuZCByZXNlbmRpbmcgdGhlbSAtIHlvdSBoYXZlIHRvIGFkZCB5b3VyIFNv
Qi4KCj4gIyMgRm9ybSBsZXR0ZXIgLSBuZXQtbmV4dC1jbG9zZWQKPgo+IFRoZSBuZXQtbmV4dCB0
cmVlIGlzIGNsb3NlZCBmb3IgbmV3IGRyaXZlcnMsIGZlYXR1cmVzLCBjb2RlIHJlZmFjdG9yaW5n
Cj4gYW5kIG9wdGltaXphdGlvbnMgZHVlIHRvIHRoZSBtZXJnZSB3aW5kb3cgYW5kIHRoZSB3aW50
ZXIgYnJlYWsuIFdlIGFyZQo+IGN1cnJlbnRseSBhY2NlcHRpbmcgYnVnIGZpeGVzIG9ubHkuCj4K
PiBQbGVhc2UgcmVwb3N0IHdoZW4gbmV0LW5leHQgcmVvcGVucyBhZnRlciBKYW4gMm5kLgoKU3Vy
ZSwgdGhhbmtzLgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
