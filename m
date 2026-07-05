Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB75C43458
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jul 2026 15:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kqIhwquRidQnFEoY638YAyloU4OLalKlYPv9hJis2lc=; b=Xi7tbnyDt9N+1e
	A0r/Oi/HSMcdNp9p2LULS+ItCv2zQmzJoiqHaYnr+sB30QBFgByV61aD+qTZRlRBlHKlX7HOPoUh4
	yfhOFjs2Hd58vih7F2uXdxe3rARYS/t+NAjz8kBreych9qJcU3AZQEhr7p7wxxY/fNlUjncM8209Y
	WH8tq3/oqEWy5SsCUZ3e6gvuA2iyz7ah8JdZqf+6bkrNQCInxjeZOwmZR/0OB6K0C215jiiendI/v
	K+7Ar1uow5jrt5NrjlWK8uUxSQSWD2YugEcqvVZqveRVnb4Cf8QDn+p+QGe7HFishXgdO0A7dg6fe
	hkwmQNBJPs9TZy9y9WSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgOYL-00000009QmG-25WN;
	Sun, 05 Jul 2026 15:14:41 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgOYF-00000009Qji-2cXP
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jul 2026 15:14:38 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-493b61b52b6so13866615e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Jul 2026 08:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783264474; x=1783869274; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W1sbIzpLoPVOsWAp5a91/2b+hubQz3OERKvp78vmABs=;
        b=QkAmfXp6Ejoq/shQ1qsKhM1MHivT/mJ5Yum6xlWdi6AL3fN+2q2ss1RhMpAszVadGQ
         52gBorbZQZx59vy38jtceT96bdxQhmrXcmgMwsrzen890jAyx0TnXT/KpOb8iwKxpoaw
         Y4NHf1af4a2yRLZIYAENucEoPCqxk11ilSnrVLtMnYrpjlMhJf34etKZ+MuEpl3W7KCB
         izGyzFq3Naic2EpV0pJfbKEI6kCq02gZ1X9yFIZvmU9AONDOlFNG7k+XaO+1I3KnN4jz
         3OWhfxiYA6Mb6xOhCRmAtwwK1y80NOROpC0V2yRR5O/kowOHi1SQYXK3pVlLLjilitFG
         t1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783264474; x=1783869274;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W1sbIzpLoPVOsWAp5a91/2b+hubQz3OERKvp78vmABs=;
        b=HNfcOwOptThqNIJLCFWtAwZQjKdA5/vRJWUnHNOi7ieKghHcBSlWgx+s6jIPfXrAN9
         wNkRakGWmE89N5ed2xvApa0Aetz6NTZKCK3FcvXiGs1VV+ag7JDzy71Df7IHsYlYEz3X
         aLRHL5O1CwA9Y8xLBtm7A1jdlaDUUWdKdU7c7VlcNw+MmuV4TupAL9GrNmTOXHK43D7K
         PbqzSjsdBhjWSZ1Bib3lMrZX3byxyy3KNC5ZhfuklDFL/X5OXQmj/uJrGp1cvApQaqH0
         Z6me+gVQ+QEpla0a8xJ9e3OmRV+jXD1QgZ1DWKN4ZYUHozbAKjDlZ1y009i7N58+CLCm
         fsbA==
X-Forwarded-Encrypted: i=1; AFNElJ9xWKsiKF+l8LIsOFW158mks7OYyLd7eh0VTNA3H1JaQgzgszggXRxx0tMGO3ysOJMV5TNhqciMJVtuiCY6NA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7P/XtQOgGSbtiFdgdzLwovwUE3mZOE8XQnzzLiYLGbKQ5X0lE
	DCEEgToYWSp7vpKegSvX44vFpibR84N6miHxfZsnLyu1kgb7SEMRkU7HUXbsxf5QWTo=
X-Gm-Gg: AfdE7ckpLyG8bcgZG0itkhBFYgkI7kSoA9GsReoiuLsSeaIhdSRknv2LexlKJgtzBUW
	hv2h15w22zSAOJ3tOXxCN3K1GHoHE0WNYw6gncWWM5XPGRlvTe5n7QcQumBXIQtoyhYZRu7tWlo
	vHIwsFBrPpkYjyoR0u0EhSFdTRedVhsY58ZPloINcThO9mqhoiPrUV/aByu/+25ji2SrixWO06B
	+cDnfGSd0ljamgckMGMshpWfaVcJ0rckUtkGTetTwFfw97UR1ZkZB/dfOTP5WEqkI9y0rJ0G0Xi
	ZRdX2XoIRSRm++80FpnKUWB6zkqxdJTnkSl6KIS+DAZEfMU9dbkD29TCk6SqC+Rbw9dlvEtcY1l
	/CiEiM3BRdaMP4j0x7xZM28ezMlKzLn3mkUKgZpxphyS6Jp2vbJ8v/QUnlijcNC37UZR9/fB8wu
	voSxw2ULqrPp1FjsUL2g==
X-Received: by 2002:a05:600c:8b61:b0:492:7084:32af with SMTP id 5b1f17b1804b1-493d11f4b80mr87345205e9.23.1783264473096;
        Sun, 05 Jul 2026 08:14:33 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493c63b6f8csm262180195e9.11.2026.07.05.08.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 08:14:32 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?= <u.kleine-koenig@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Paul Walmsley <pjw@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Michael Walle <mwalle@kernel.org>,
	Chen Wang <chen.wang@linux.dev>,
	Inochi Amaoto <inochiama@gmail.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Hammer Hsieh <hammerh0314@gmail.com>,
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
	Alexey Charkov <alchark@gmail.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Michal Simek <michal.simek@amd.com>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	imx@lists.linux.dev,
	linux-mips@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v1 0/5] pwm: Unify arrays of various *_device_id
Date: Sun,  5 Jul 2026 17:14:12 +0200
Message-ID: <cover.1783263835.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.55.0.11.g153666a7d9bb
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3597; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=/ARYZ3nMFNE4qw1dHISvtgGeE92jI229vSRxfVl732s=; b=owEBbAGT/pANAwAKAY+A+1h9Ev5OAcsmYgBqSnTF02HXaqUpIDE1Mt23JzG4uWfnR2u11awWU 3umjMoAUj+JATIEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCakp0xQAKCRCPgPtYfRL+ TnxCB/i0tqSm4WRb5bStOYawCPIjfRWQcr4xSi/+9osjT9WCMkOFcdJIALH3OTjRDssO1bo27Lf HlxVL0NC+cyu2/kdQnTKxCwlN4Mr+K0ubzHhjQG0p5hKoo0E+ymyawDtJ372H29L5zSSYeZCvIo x4WE6N9MvkYqMFbIYzoBUakF9cYdVbu6ohyBqtXYSqr1ZwGjdHd4MWHija/sPCTtV/LrwSg4fhc gQCbrGPW2Y9VKehuNTAzHv2wje5Cu3eNO+c3uV15dBMdPgO9DfEp3EXIwH2ZR09Uaz5HwWXbYK9 FN+Z8CfZYziZ0D7HLlPGgse2ncweWpObjQ6pQzued8YQFKE=
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_081435_708939_B2CF47AF 
X-CRM114-Status: GOOD (  12.14  )
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

SGVsbG8sCgp0aGlzIHNlcmllcyBpcyBwYXJ0IG9mIGEgcHJlcGFyYXRpb24gZm9yIGNoYW5naW5n
IC5kcml2ZXJfZGF0YSAoYW5kCnNpbWlsYXJpbHkgbmFtZWQgbWVtYmVycykgb2YgKl9kZXZpY2Vf
aWQgdG8gYW4gYW5vbnltb3VzIHVuaW9uLgpTZWUgZS5nLgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvY292ZXIuMTc4MDA0ODkyNS5naXQudS5rbGVpbmUta29lbmlnQGJheWxpYnJlLmNvbS8K
Zm9yIHRoZSBpZGVhIGJlaGluZCBpdC4gSSBhbHNvIGdyYWJiZWQgdGhlIG9wcG9ydHVuaXR5IHRv
IHVuaWZ5IHRoZQpjb2Rpbmcgc3R5bGUgZm9yIGFsbCB0aGVzZSBhcnJheXMgd2hpbGUgZ29pbmcg
dGhyb3VnaCB0aGVzZS4KClRoZSBwYXRjaCBzZXJpZXMgaXMgYmFzZWQgb24gcHdtL2Zvci1uZXh0
ICsgInB3bTogcHhhOiBEZXBlbmQgb24gT0YgYW5kCnNpbXBsaWZ5IGFjY29yZGluZ2x5IiBbMV0u
CgpCZXN0IHJlZ2FyZHMKVXdlCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcHdt
LzIwMjYwNzA1MDgzOTEwLjM1MDIyMDctMi11LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tCgpV
d2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHViKSAoNSk6CiAgcHdtOiBwY2E5Njg1OiBE
cm9wIHVudXNlZCBhc3NpZ25tZW50IG9mIGFjcGlfZGV2aWNlX2lkIGRyaXZlciBkYXRhCiAgcHdt
OiBVc2UgbmFtZWQgaW5pdGlhbGl6ZXJzIGZvciBhcnJheXMgb2YgYWNwaV9kZXZpY2VfaWQKICBw
d206IFVuaWZ5IGNvZGluZyBzdHlsZSBvZiBhY3BpX2RldmljZV9pZCBhcnJheXMKICBwd206IFVu
aWZ5IGNvZGluZyBzdHlsZSBvZiBvZl9kZXZpY2VfaWQgYXJyYXlzCiAgcHdtOiBscHNzLXBjaTog
VW5pZnkgY29kaW5nIHN0eWxlIG9mIHBjaV9kZXZpY2VfaWQgYXJyYXkKCiBkcml2ZXJzL3B3bS9w
d20tYXBwbGUuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWFyZ29uLWZhbi1o
YXQuYyAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC1obGNkYy5jICAgICB8IDE1ICsr
KysrKy0tLS0tLS0tLQogZHJpdmVycy9wd20vcHdtLWF0bWVsLXRjYi5jICAgICAgIHwgIDYgKysr
LS0tCiBkcml2ZXJzL3B3bS9wd20tYXRtZWwuYyAgICAgICAgICAgfCAgMyArLS0KIGRyaXZlcnMv
cHdtL3B3bS1iY20taXByb2MuYyAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20tYmNtLWtv
bmEuYyAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWJjbTI4MzUuYyAgICAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1iZXJsaW4uYyAgICAgICAgICB8ICAyICstCiBkcml2ZXJz
L3B3bS9wd20tYnJjbXN0Yi5jICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWNsay5j
ICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1jbHBzNzExeC5jICAgICAgICB8
ICAyICstCiBkcml2ZXJzL3B3bS9wd20tY3Jvcy1lYy5jICAgICAgICAgfCAgMiArLQogZHJpdmVy
cy9wd20vcHdtLWhpYnZ0LmMgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1pbXgt
dHBtLmMgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20taW14MS5jICAgICAgICAgICAg
fCAgMiArLQogZHJpdmVycy9wd20vcHdtLWlteDI3LmMgICAgICAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvcHdtL3B3bS1pcHEuYyAgICAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvcHdtL3B3bS1q
ejQ3NDAuYyAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20tbG9vbmdzb24uYyAgICAg
ICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWxwMzk0My5jICAgICAgICAgIHwgIDIgKy0KIGRy
aXZlcnMvcHdtL3B3bS1scGMxOHh4LXNjdC5jICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20t
bHBjMzJ4eC5jICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLWxwc3MtcGNpLmMgICAg
ICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1scHNzLXBsYXRmb3JtLmMgICB8IDEwICsrKysr
LS0tLS0KIGRyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jICAgICAgICB8ICAyICstCiBkcml2ZXJz
L3B3bS9wd20tbWVzb24uYyAgICAgICAgICAgfCAgOSArKysrLS0tLS0KIGRyaXZlcnMvcHdtL3B3
bS1tdGstZGlzcC5jICAgICAgICB8ICA4ICsrKystLS0tCiBkcml2ZXJzL3B3bS9wd20tbXhzLmMg
ICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20vcHdtLW9tYXAtZG10aW1lci5jICAgIHwg
IDQgKystLQogZHJpdmVycy9wd20vcHdtLXBjYTk2ODUuYyAgICAgICAgIHwgIDYgKysrLS0tCiBk
cml2ZXJzL3B3bS9wd20tcHhhLmMgICAgICAgICAgICAgfCAgOCArKysrLS0tLQogZHJpdmVycy9w
d20vcHdtLXJhc3BiZXJyeXBpLXBvZS5jIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1yY2FyLmMg
ICAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvcHdtL3B3bS1yZW5lc2FzLXRwdS5jICAgICB8
IDEwICsrKysrLS0tLS0KIGRyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jICAgICAgICB8ICA4ICsr
KystLS0tCiBkcml2ZXJzL3B3bS9wd20tcnpnMmwtZ3B0LmMgICAgICAgfCAgMiArLQogZHJpdmVy
cy9wd20vcHdtLXNhbXN1bmcuYyAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1zaWZp
dmUuYyAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20tc2wyOGNwbGQuYyAgICAgICAg
fCAgMiArLQogZHJpdmVycy9wd20vcHdtLXNvcGhnby1zZzIwNDIuYyAgIHwgIDcgKysrLS0tLQog
ZHJpdmVycy9wd20vcHdtLXNwcmQuYyAgICAgICAgICAgIHwgIDQgKystLQogZHJpdmVycy9wd20v
cHdtLXN0aS5jICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS1zdG0zMi1scC5j
ICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvcHdtL3B3bS1zdG0zMi5jICAgICAgICAgICB8ICA2
ICsrKy0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgICAgICAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvcHdtL3B3bS1zdW5wbHVzLmMgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvcHdtL3B3bS10
aWVjYXAuYyAgICAgICAgICB8ICA2ICsrKy0tLQogZHJpdmVycy9wd20vcHdtLXRpZWhycHdtLmMg
ICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS10d2wtbGVkLmMgICAgICAgICB8ICAyICst
CiBkcml2ZXJzL3B3bS9wd20tdHdsLmMgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9wd20v
cHdtLXZpc2NvbnRpLmMgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcHdtL3B3bS12dDg1MDAuYyAg
ICAgICAgICB8ICAyICstCiBkcml2ZXJzL3B3bS9wd20teGlsaW54LmMgICAgICAgICAgfCAgNCAr
Ky0tCiA1NCBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRpb25zKCspLCAxMDIgZGVsZXRpb25zKC0p
CgoKYmFzZS1jb21taXQ6IDFhNDkyMDk0MGViZmQ4ZDkwNzg1OGFiZDhmOGRkMDliMTM3NTI5NDYK
cHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBiNDIzYTlkMDQ5YjQ1MjBlZjM3YjQwNjM1Yzk1MDA0MzYz
ZWNmNjkyCi0tIAoyLjU1LjAuMTEuZzE1MzY2NmE3ZDliYgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
