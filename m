Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FA3606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 00:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EJEaCKvq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=j+Z46Bmw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6wWBsCSV8JnnaTFfuAlTQS4+Ekknz8BGtjUx08Su9AY=; b=EJEaCKvqTQpaje0Ms7rPyYn0VM
	ChgEn3z5ivnQWTu3eKytxi3krzXeExanlpChU+QhqlLVNKmgnW6KAcOhwQ+Hl0Hcq3uTykY3Xjl8d
	s2ER7sS8mfTlRuGcI5GgphfBTpw54/lSXzNjl8E+J4jBsFshIcN5b+TqVCsUEiyHbhDSAYUgkkJEU
	5S761tmqRV+MW8HtWVzK4MHTF8cQHW/344NS4qwbUm4BMg6Fp0z+mPxVdXL9U63RSEQAKb0Myulnk
	GNlSLczNITHShK6tW0usYLNa2W4Fq1IN15JlLEV5tiDSIemrUqiiXlPNcXq8xyY/f3m+ffcdGuaYG
	z7iliqig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLrx8-00000006010-3G0N;
	Wed, 28 Oct 2026 00:55:42 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLrx5-00000006005-1UvX
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 00:55:40 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4a2000d5fb1so2742915e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 17:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793148936; x=1793753736; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HzH8rykX5lmcZm9pB6FHq6gj3hJ7Y5hZ3zn+8svQBtg=;
        b=j+Z46BmwHYp9ZU19JgR8yQM3oWfUeCN2Fx6UcKUkTGJZfTJ5w5VtAfHWqQUQTQ6LNE
         37I15bTsN2APk9kP5SYwNkzLcYF40f51kmZrep3bFRmP29FiNU55LpM1hRzgZhJT5Zx0
         1g518kyjm6boYZL3TIosMZJ8AjmHf9pamGObCpvvKn352f1nmm13+Sucl8S6I/Nxt4h3
         iwGpgJR1XfmPrmgpxdIz/9YRxp8bXinKSroclqiu9C6jbG/8S0bGbAvTd5cXKl54wZkH
         MjjX4Wnbr+ZTOwOS1LZ32BKc0h9QJrf/yZFvKkUDR2040qQGQhG8LRuFosmS9IVCC1wq
         zsJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793148936; x=1793753736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HzH8rykX5lmcZm9pB6FHq6gj3hJ7Y5hZ3zn+8svQBtg=;
        b=YM4cn3D3KTG1a8yh4DEX/FcNUMqeF4d4cQ0uKc6vaAXu6cSLh23PgmgN9foi1Yvq58
         RiblGXXxkmR5Lbh9Rrrq5OikXGDIyH6qESOSDv/9gvD/yHLSrnY363MB1R75icWe9mcg
         LbmaA0QwWSkhp82xtcDEI6xjgstBdC7jvTFiiJtgOLlYVyWO4DkZMT8zpRBAw0iG5bhU
         eVJTgvPa9dZGjq7YYn+tYg5hAudFq+7vypb0eT8lm1ToYyoqBErV0guuTJyzdRK6yCMB
         vW8sd+hw1nKPF8+gG7K6ucAP7pMGHLSkUYlgIVFq0RJeIixhb8AIEZtNndAcfgOZvLxg
         rokg==
X-Forwarded-Encrypted: i=1; AKwUvBwQsSnmqEWXrVbfoAh0raSGHHPwjJQSNvcpwzOxBbCisi5KZ455KnmxuMHWNtAFF7gy7T3qDgcPU1Q8XAs28g==@lists.infradead.org
X-Gm-Message-State: AFq9FYI/whf8HO2BA1qvPYRW5Vvq2upqLo/whIqhGtKF+8R6I73ar6it
	GiAHBNd2yt/SiwxHuy1Ai3nO2MuvpLrs/bs+yqP1PltcI7X5EF18tond
X-Gm-Gg: AYBFou0cIxzQf4PcfVdH00G+79W7R6ABppuUv3IAluPuWIOILfFRBCNnEcr8x+1iA1V
	y5mCt9MXejvAojpiTZ0WRTkO9JEIuMjkNTpCwBHG1IDDBzrQ4NEuZ8r9ATyqB0jlqjcMKjh62rd
	SZwICoGhVOHIO1GMD8tgwwYSpeS9SEHOnuyU7qFsW5157Cy7oRW3zVvalmz5DWkOpWC5UxTVZFA
	oOiSNqr92uWqqzt7xOCkBrO8V+FbSoTcDh+9pCKJ+506SnxbxGTusrh9MVMM1Z+XwTz1eS8s7LZ
	7TjUCjtfSkTqF0SkUl3ArjVz1ws291opb5tyTDI6yQZ80WKWbadBEA3yJqUrlROfAGHN2iNW7G2
	/6/BL/TBpiuLuKLoY4Y1je/xgTQN13C2clx0syqNFe0P0Ju6tjdu0TsjSwI9kJ3/edX5Vjn9oso
	NL+aUZ6UPISzPkxxoT0oIOyTG3AdcdNLPhBC4gnYamCK+zNC4eDyjzEf1pqachgoCKYU0DMUyXH
	cn6TQAC5vfqyghl12lcVNLsSIOR0ruekbPDf1H+CqXQmHUnmJN9PdOmE2rtqg7W4Mpi5h3PvUev
	LKEflmQxljLY3CgKHZ/yoOHng53apISnROA/4kYvZaP2pJCnSy1qY5mxwNbSxNA9uiZBbCUotVk
	aIEMAGYsuajI7YXBdwKmTlk0YzPplN+XIubsaSDmjKDtarA==
X-Received: by 2002:a05:600c:a11:b0:4a1:e11f:b2e1 with SMTP id 5b1f17b1804b1-4a966773233mr13027905e9.15.1793148935956;
        Tue, 27 Oct 2026 17:55:35 -0700 (PDT)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a978d57b39sm13261575e9.10.2026.10.27.17.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 17:55:34 -0700 (PDT)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: manivannan.sadhasivam@oss.qualcomm.com
Cc: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	robh@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iav@iav.lv
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is already valid
Date: Wed, 28 Oct 2026 00:55:32 +0000
Message-ID: <20261028005532.2399083-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <179196286749.38040.5597453767131590054.b4-reply@b4>
References: <20260911211559.207990-1-ehbello@gmail.com> <179196286749.38040.5597453767131590054.b4-reply@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_175539_451414_1384859C 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 14 Oct 2026 12:57:47 +0530, Manivannan Sadhasivam wrote:
> This is hard to believe. First of all, Tpvperl is the min time specified by
> the CEM spec to allow the power to be stable, not the max.

Agreed, and the patch should not have implied otherwise. Waiting longer than
Tpvperl breaks no requirement, and I am not claiming the current code
violates the spec. What the patch rests on is only your next point: that the
wait is redundant when the supplies are already up.

> Maybe the issue is with the delay between PERST# assert and deassert?

That is exactly the variable this patch changes, and I buried it under the
power-validity argument. Let me restate the mechanism in those terms,
because I think we agree on it.

PERST# is asserted when the GPIO is acquired, not at the top of
rockchip_pcie_host_init_port():

  pcie-rockchip.c:
	rockchip->perst_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_LOW);

and it is released at the end of the init sequence:

  pcie-rockchip-host.c:
	gpiod_set_value_cansleep(rockchip->perst_gpio, 0);	/* already low */
	rockchip_pcie_init_port(rockchip);			/* PHY, clocks */
	... register writes, Gen1 training enable ...
	msleep(PCIE_T_PVPERL_MS);
	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);	/* release */

So the low pulse spans the regulator enables, the PHY init and the register
writes, and commit c47f90be4c89 added 100 ms to the end of it. Removing that
sleep does not shorten the time power has been valid -- which, as you say,
is seconds by then -- it shortens the PERST# assertion by 100 ms. That is
the only behavioural difference the patch makes at probe, and it is what the
boot statistics in the commit message measure.

> But claiming that the Endpoint doesn't tolerate this 100ms delay, but still
> several seconds of the boot delay is quite hard to believe.

The endpoint is not held in reset for seconds. Before this driver probes,
the pin is in whatever state the bootloader left it; the reset the endpoint
sees is the pulse the driver applies, from the gpiod acquisition above to
the release, and c47f90be4c89 made that pulse 100 ms longer. Whether that
crosses a threshold in this particular endpoint's firmware is what the
measurements below address.

> Is the PERST# signal polarity on the board DTS correct?

As far as I can tell, yes. ROCK Pi 4 declares

	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;

and the driver acquires the line with GPIOD_OUT_LOW and releases it with
gpiod_set_value(..., 1). PERST# is active low at the connector, so logical
low is physical low is reset asserted: the DTS polarity and the driver's use
of it agree. The Kobol Helios64 that Igor reports on uses the same polarity
(GPIO_ACTIVE_HIGH) with the same SoC and the same endpoint chip, and does
not show the boot failure, so polarity does not separate the two boards
either.

> I do agree that the Tpvperl delay is *redundant* if the supplies are already
> enabled by the bootloader. But I do not agree that it causes the Endpoint to
> not respond.

You were right, and the two claims needed separating. I have now run that
experiment, so here is the data rather than the argument.

I instrumented the driver with two module parameters, one sleeping before
the gpiod acquisition (so before PERST# is asserted) and one in place of the
existing msleep (so inside the assertion), plus a ktime delta across the two
gpiod_set_value() calls to measure the pulse the endpoint actually sees. One
kernel, both knobs writable at runtime, and the host driver rebound through
unbind/bind to re-run the whole probe -- I checked first that a rebind
reproduces the cold-boot failure, and it does, identically.

  before assert   after assert   measured pulse   trials   enumerated
  0 ms            0 ms            1-11 ms              5        5
  0 ms           10 ms           ~18 ms                3        3
  0 ms           15 ms           24-47 ms              4        4
  0 ms           20 ms           ~28 ms                3        1
  0 ms          100 ms          ~108 ms                4        0
  200 ms          0 ms            6-11 ms              5        5
  200 ms        100 ms          ~108 ms                1        0

Compare each 200 ms row with its 0 ms counterpart: delaying the assertion
changes nothing either way -- 5 of 5 with a short pulse, 0 of 4 and 0 of 1
with a long one -- while widening the pulse decides the outcome every time.
So it is the delay between assert and deassert, exactly as you guessed.

And your objection holds in a way I had not appreciated. vcc3v3_pcie on this
board is regulator-always-on and regulator-boot-on, so the supplies have
been valid for seconds before the driver probes in *every* row above,
including the failing ones. Tpvperl is therefore met whether the sleep runs
or not, which means it cannot be what distinguishes a working configuration
from a failing one. The redundancy of the wait is only the licence to drop
it; it was never the explanation. The commit message had that backwards.

Two caveats I should state rather than smooth over. The threshold is noisy,
not a cliff: at 15 ms one trial measured a 47 ms pulse and still enumerated,
while 20 ms fails at ~28 ms. Across every configuration with the sleep at
15 ms or less it enumerated 17 of 17; around 28 ms it fails more often than
not; at ~108 ms it has never once worked, in 5 attempts (3 cold boots and
2 rebinds). And the failure is not a missing
device: the unanswered config read comes back as an external abort, so the
board dies with an asynchronous SError in rockchip_pcie_rd_conf() rather
than just enumerating nothing.

v3 therefore leads with the pulse width and demotes Tpvperl to the reason
the sleep can safely be skipped. The code is unchanged from v2: the two
cannot be had together in general, since on a board that powers the slot at
probe time the assertion does have to outlast Tpvperl, so skipping the wait
only where the supplies are already up is the conservative form of the fix.

Thanks for pushing back on this -- the causal claim deserved it, and the
alternative you proposed turned out to be the right one.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
