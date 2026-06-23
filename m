Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E5ACD98F2
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 13:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiibMRWe+9TloJl5/tk35RTMiergHdylv/U9v4g8BbI=; b=cxexCm9Zplg04O
	3ryjLosw6WHVWLEJYYpVPLSKaO/aZ6GrdtYbUYfoDayaWq0QCgeP/wr5JcMme1MhE/uOcQT8me75b
	5LAf685FOHfSb7CAXsU/XPLQ/FyybqT87hGbVOXY+3DBZKRQHW/VVmi7YvXvtqoE7iubL1l6kyFoB
	/KwVIU4lFRQmMwtqANDTvVfv048DmDox4Wn1eywrFqH/4L20OfEGU+Q8hDdQeA/D3txGep4fkqADk
	lKlKIoCC1MBf0bQTjSaTq7/ctDkoDUmHMghbRVue6a8gL3jTS3yn3jWGnuBlfH9aWEAcUpFNeaBoi
	6KvmXf0N9seg1nsIBhNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0oy-00000006JaZ-1hZ9;
	Tue, 23 Jun 2026 13:05:44 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0ov-00000006JZW-3CDG
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 13:05:43 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1782219929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qvZLtxCTdmfsl/KnIY8j8wP9YXfnB9dj4Qz35L9iEGk=;
	b=lfKcgXYP11Ij1m7jRAJceFdxnHCCvXitNhoys7MqLpzeBWipajjIJ+EQnmbNKEghXqw155
	e4h1XiTRjemhrpX8NXm15y+JgkkqH88slcIoqc7aIlrPdBHidFQSylQIPzxkYwvg8DJXBF
	QFUfCEPmm3izh2FAd7Mb1iwMejK2eXD7w1GdurYFhjjh4aazDa3JAevcn0vSuoAbk9nIB8
	HumdTXNDXWuBiGnq69EGjQ3LHR6eTsA1+MnCXeMwlMd4QqUlbz4XpiRYQcuqbzf3IaUBPx
	u79ZE4J17GzJcK7g48qHJfkEzdkL+0GbxVr8veQPNDHYLxOiWHYblvlRkVK2YQ==
Date: Tue, 23 Jun 2026 15:05:13 +0200
Message-Id: <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
Cc: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Ricardo Pardini" <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for
 I2S MCLK output to IO
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniele Briguglio" <hello@superkali.me>, "Heiko Stuebner"
 <heiko@sntech.de>, "Michael Turquette" <mturquette@baylibre.com>, "Stephen
 Boyd" <sboyd@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego>
 <20260623123316.4111002-1-hello@superkali.me>
In-Reply-To: <20260623123316.4111002-1-hello@superkali.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060541_947388_6349DE23 
X-CRM114-Status: GOOD (  15.61  )
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

On Tue Jun 23, 2026 at 2:33 PM CEST, Daniele Briguglio wrote:
>> can you check if adding CLK_IGNORE_UNUSED changes the situation for you?
>> What I assume is happening is that when the clocks were not declared they were
>> just left running, while now the kernel turns off unused (but defined) clocks.
>
> That lines up with what I see. The gates are set-to-disable and reset to
> open, so before the series the bit just kept whatever the boot firmware
> left it at.
>
> Diederik, the cleanest way to confirm is to read SOC_CON6 before Linux
> touches it, e.g. md.l 0xfd58c318 at the U-Boot prompt (bit 0 is I2S0). If
> it comes up clear there, the gate is open, and if audio then breaks once
> the kernel is up, that points at clk_disable_unused turning it off because
> nothing references it.

NanoPC-T6 LTS
U-Boot: 2026.04-00003-g723f0da896bc

The 0003 comes from me adding patches for NanoPC-T6 Plus support, but
otherwise it's plain upstream U-Boot.

=> md.l 0xfd58c318
fd58c318: 00000600 00000a00 00000000 00000000  ................
fd58c328: 00000300 00092820 0fd58c338: 00000000 00000000 00000000 00000000  ................
fd58c348: 00000000 00000000 00000000 00000000  ................c358: 00000000 00000000 00000000 00000000  ................
fd58c368: 00000000 00000000 00000008: 00000000 00000000 00001000 00000240  ............@...
fd58c388: 0000003f 0000fefe 00000000 000000000 00000000 00000000 00000000  ................
fd58c3a8: 00000000 00000000 00000000 00000000 00000000 00000000 00000000  ................
fd58c3c8: 00000000 00000000 00000000 000000000 00000000 00000000 00000000  ................
fd58c3e8: 00000000 00000000 00000000 00000000  .0000000 00000000 00000000  ................
fd58c408: 00000000 00000000 00000000 00000000  ....

I'll let interpreting it up to you.

> If that turns out to be the case, CLK_IGNORE_UNUSED on the gates is a
> reasonable way to stop the kernel from closing a gate the firmware already
> left open, for boards that would rather not switch their DTS to _TO_IO.

I'm not so sure I agree that CLK_IGNORE_UNUSED is reasonable, but I'll leave
judgement up to others. I'll do the test regardless, though.

Cheers,
  Diederik

> Where a board does reference _TO_IO the consumer holds it open anyway, so
> that path is unaffected either way.
>
> Best regards,
> Daniele


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
