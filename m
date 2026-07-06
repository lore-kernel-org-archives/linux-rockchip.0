Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86E6AC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 08:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJjZUOGWRDWMrtaplKNOJL8yRREft7EkaG9dFgh5Auc=; b=y/qXBNWD9fLMhU
	mkRgSr1bo5uoyi3ita3LnARf49YSfslObvnZvCFGqcKJtexPaa6NlN9TORVkSi0qhrBkLpj/9M6Fi
	W5Bx9ZKBH4uD3E6/za7piS1sl9N6iZ6NJ9li6kK0D/jneLt8KVURBOr51IhMDiDQp8p9YxQt+yciX
	NnEBikCnPe/0PwAwvnVDAysWbpA9ODimM0BTQGuyEw9A+T7iHZRZ+gVaMcOD30YSlFJR/uKogALqe
	0qzpZ9Vv6lp6WQ4l9DtrJ6IeRHRhGBlXOwqv1dQjxh4lpyxXi7TADc45kJlJwFbUbge0tgC0pjapx
	EIuJfxVbIrkpyJJ9fSMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgeM3-0000000BmKb-4339;
	Mon, 06 Jul 2026 08:07:03 +0000
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgeM1-0000000BmKA-10eO
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 08:07:03 +0000
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5bbd26a2729so2050048e0c.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 01:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783325220; x=1783930020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xlcdnSGCAGaaD3Qtz41jPpd7wkV1TEYjW94sOKYd3zY=;
        b=CON4aCKOisI+lSxRbvW4qTHultf1N/tj1izQJ36RV1qW52efZftJkfQshV9h2bar0M
         gFcnJrJsvPGV9OsQqWy0fQ5Y+inY6qrGJAPqsUsTbHijD/A+2jRIBBnWg2pph292XgxD
         2icX+z6IR5OH4F9kI9IMgdhM/xC40BUR21/BqHt4+JoR/lduLdToFw7xdJfjwC9hlzrl
         9ZHAprh0TQuTLv00NGA82kXkG2NDvNpcrdSPHkrV/fDvI4B31BFAvaKeYXp7d+hWjvwa
         e74yjxKY9cimkoba35BZVu/vvrDrV5+5B+DsUZsDhfpNzifqdoeeWB95gjR+cLPiqYmi
         4jNQ==
X-Forwarded-Encrypted: i=1; AHgh+RqPzXn9KcjC5UPsCPOIpk317xssxEd4/liKwTup80tExQvsQUfVjcl86quNrbn9NZZciw0PaRmdBHr7bAMpVg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzuPuPtm+LeOraV39FacYm+QGe3JUJFP5hLaZD0gnro+qOmcjYG
	/wPZPSKnqelHgq+NBpbsTpn8xN3bZ3ksPK4zLXsWAe+BwRY+IvqKWYmlRrpFpWjn
X-Gm-Gg: AfdE7ck6kGtJ3QKpll8Y0tLwCqWzFn39e8Qv37OhbzAa8nua/KLXL6ZOn7YkM5H3XiJ
	tPQgp2Biu3h24U6Itok33zPLQNJguIlgqvQp8qOJLA7GJB1E9P7MwJ/aK643o8U5SCtkPPCRR80
	W+TkqpmdId+8lv66ufbGEMrV9v8Ha83LXS7Crtl4bJQvQYl0auoKIij0CHdeRcf9xu4kHJQ/uPq
	KT1uYpCvDoQT08Mcx9MK2b1kuTvoO0sKEv/4APu+5glxjpMXrG71qj3JpmgmFYWYWDO/hZZLj01
	d/gtnLX5ASe+NDyDFiTMdfbKtMx/EzFgNvKx2QgolCRehvbv1v5mFDL5ayGyusv99YRxmGneY0r
	THA8NqZb6Tbf+QQf2LaVeZENOVYXVXE+8g3O7AGXZ6MzN85TfmcXnGzuL2lzB8BdE5SlhKmjo8l
	qce9FqIqhzmGP3qHrbZGBsWV1BLWM6CKtttaMtStj8d2ApirnHKQ==
X-Received: by 2002:a05:6122:1d41:b0:5bb:c529:5f05 with SMTP id 71dfb90a1353d-5be1031d2d6mr3077283e0c.14.1783325218365;
        Mon, 06 Jul 2026 01:06:58 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5be029b3875sm4429722e0c.8.2026.07.06.01.06.58
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 01:06:58 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-73a442f7cd3so2205748137.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 01:06:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoLa+o+wh/YBLIN5oen17LmzgUMrtOAZefFWEgJMQ1xHmeDYqxgrZ8u3VxJN0emUfNh50P7S58WBFmSen7Ing==@lists.infradead.org
X-Received: by 2002:a05:6102:800d:b0:722:826e:1423 with SMTP id
 ada2fe7eead31-7427f0478a0mr3286706137.20.1783324855096; Mon, 06 Jul 2026
 01:00:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1783263835.git.ukleinek@kernel.org> <20de6cd60c2938aad2d21397b92742849418ab1b.1783263835.git.ukleinek@kernel.org>
In-Reply-To: <20de6cd60c2938aad2d21397b92742849418ab1b.1783263835.git.ukleinek@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Jul 2026 10:00:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXKyFJ20N6qKafvMZ_0sVj5+XTxcod_6wGkwTsokn7dvw@mail.gmail.com>
X-Gm-Features: AVVi8CfQACxAMot5VlqKHI6FXvkOZpEWhTZp1dlkgWSruFHOk1f-I-dS5kVo31s
Message-ID: <CAMuHMdXKyFJ20N6qKafvMZ_0sVj5+XTxcod_6wGkwTsokn7dvw@mail.gmail.com>
Subject: Re: [PATCH v1 4/5] pwm: Unify coding style of of_device_id arrays
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
Cc: linux-pwm@vger.kernel.org, Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
	Neal Gompa <neal@gompa.dev>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Benson Leung <bleung@chromium.org>, 
	Guenter Roeck <groeck@chromium.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Vladimir Zapolskiy <vz@mleia.com>, Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Paul Walmsley <pjw@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Michael Walle <mwalle@kernel.org>, Chen Wang <chen.wang@linux.dev>, 
	Inochi Amaoto <inochiama@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Hammer Hsieh <hammerh0314@gmail.com>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, Alexey Charkov <alchark@gmail.com>, 
	Sean Anderson <sean.anderson@linux.dev>, Michal Simek <michal.simek@amd.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	imx@lists.linux.dev, linux-mips@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_010702_417598_CBFFEFC6 
X-CRM114-Status: GOOD (  16.70  )
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

T24gU3VuLCA1IEp1bCAyMDI2IGF0IDE3OjE0LCBVd2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFi
bGUgSHViKQo8dS5rbGVpbmUta29lbmlnQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gIC0gVXNlIGEg
c2luZ2xlIHNwYWNlIGluIGEgb2ZfZGV2aWNlX2lkIGFycmF5IHRlcm1pbmF0b3I7IEEgc2luZ2xl
IHNwYWNlCj4gICAgYWZ0ZXIgdGhlIG9wZW5pbmcgeyBhbmQgYmVmb3JlIHRoZSBjbG9zaW5nIH0g
aW4gbm9uLWVtcHR5Cj4gICAgaW5pdGlhbGl6ZXJzOwo+ICAtIE5vIGNvbW1hIGFmdGVyIGFuIGFy
cmF5IHRlcm1pbmF0b3I7Cj4gIC0gQWxzbyBubyB0cmFpbGluZyBjb21tYSBhZnRlciBhIG5hbWVk
IGluaXRpYWxpemVyIGlmZiB0aGUKPiAgICBjbG9zaW5nIH0gaXMgb24gdGhlIHNhbWUgbGluZTsK
Pgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIChUaGUgQ2FwYWJsZSBIdWIpIDx1
LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPgoKPiAgZHJpdmVycy9wd20vcHdtLXJjYXIuYyAg
ICAgICAgICAgIHwgIDQgKystLQo+ICBkcml2ZXJzL3B3bS9wd20tcmVuZXNhcy10cHUuYyAgICAg
fCAxMCArKysrKy0tLS0tCj4gIGRyaXZlcnMvcHdtL3B3bS1yemcybC1ncHQuYyAgICAgICB8ICAy
ICstCgpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRl
ci5iZT4gIyByZW5lc2FzCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
