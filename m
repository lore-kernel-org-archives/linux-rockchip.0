Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BC91CDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 13:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LdkvPPZMhQNvfQxZTyH7Od4BqHP49IoUnIqDiy7b8I=; b=lUhiwB3jpyZAET
	2m8pjz3b8ZAkVT4zDF0pJR8UIYSoVE9mJTADKPtpAWa6bCmV1Fas9naLup4azaPJ4pavgxVtHb9AC
	Dil1ECDnFUzu/+SAWTem/fnlSs8cd6DaYW8d/m3BZ3q4D2UYW9nRRj7IvZyCjPYTn21X320Fvk9ge
	01ySYN2ZUXiYEtQY0JToqV5gdv05DjCkHnDOpOhwSkxth/yJk2dt9XleAaMuMQbwhCDabBpbINMFt
	Zo0yPJ7EY4bSUS3zw7p9YyuyQa4K5GijWHNk//iiQzuziRbiignzQkIk0nyaWRvLkAbCLX71Uv2I8
	N/Irlkt9Z5TWZGEsZT3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc1RZ-00000006MT5-3gcJ;
	Tue, 23 Jun 2026 13:45:37 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc1RX-00000006MSW-1w8E
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 13:45:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1782222332;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UZ4++YxJXc/6SFIqw2u6ldCc2haTxcSXXUeS9bd2ENM=;
	b=Xvt2WwtmOY6PYw8fMMtaKUPwhp00TjzdQIEHqcqaypIosTEKgcmztrkWySTKWpaBWtZTCA
	1L4m4hU0BAGVvOjQ+nMVV0yHMl39CI6/NJfo8JrXcGL71Gtfc2bxxcCIpcQ1/NHm0YSScq
	VixU+qrUJNYvHsjEUT/yHEAyQjSidSJOszChjXClbXTCVq1nBsFVsdfkEQ3XlUrvRKI7Co
	QdXQtaOX2kRLeEiv6rBCwXc0J7rhVqhqtw7KvAZ3ArRpIPUeJEG9l7IjUTcel/3bweDh7B
	moSJILJFXOBN0NCfuwE0orLdYnOz0zgWN6FG/xVbLACwjwdu2UIz6BWcHfUQWw==
Date: Tue, 23 Jun 2026 15:45:23 +0200
Message-Id: <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
Cc: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Ricardo Pardini" <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for
 I2S MCLK output to IO
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniele Briguglio" <hello@superkali.me>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Heiko Stuebner" <heiko@sntech.de>, "Michael
 Turquette" <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego>
 <20260623123316.4111002-1-hello@superkali.me>
 <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
 <20260623132351.4144457-1-hello@superkali.me>
In-Reply-To: <20260623132351.4144457-1-hello@superkali.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_064535_725664_BC93F477 
X-CRM114-Status: GOOD (  14.67  )
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

Hi Daniele,

On Tue Jun 23, 2026 at 3:23 PM CEST, Daniele Briguglio wrote:
>> md.l 0xfd58c318
>> fd58c318: 00000600
>
> Thanks. Bit 0 is clear there, so the I2S0 gate is open at the U-Boot
> prompt, after BL31 and before Linux. That matches the symptom: the
> firmware on your T6 leaves it open, and the kernel closes it once nothing
> references it.
>
> Given that, I think Heiko's suggestion makes sense here. Marking the four
> gates CLK_IGNORE_UNUSED keeps the kernel from disabling what the firmware
> already left open, and boards that reference _TO_IO still drive it through
> the consumer.

My suspicion that more RK3588 based boards would be broken is because NONE use
I2S0_8CH_MCLKOUT_TO_IO; they all use I2S0_8CH_MCLKOUT.
(And the testing was only done on not (yet?) upstreamed boards)

> Could you test that change if you get a chance? Just set the flag on the
> I2S0/1/2/3 _TO_IO gates in clk-rk3588.c and check your analog audio comes
> back. The series is already merged, so I'll send the fix as a separate
> follow-up patch, this evening if Heiko is fine with the approach.

I'm going to build a new kernel where I did ``s/0/CLK_IGNORE_UNUSED/`` 4 times
and I adjusted my NanoPC-T6 Plus board dts to use I2S0_8CH_MCLKOUT_TO_IO, while
I keep the LTS board dts to I2S0_8CH_MCLKOUT.
So IIUC that means I'd be testing both variants.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
