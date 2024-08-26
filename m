Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96952C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtRkwEmqcBonBhl45Cd84evqZWOs4fJAkqpQdNUSW3M=; b=157vQHDl6Lyejc
	FfrnDn15U+lFa8YC7u/pxwNAy8dRpOJks3rH7zWeN4HLJIT1ZSa9/w55G8WJH2xaxKaJRkzD/5QCs
	iYrdwWf0+PE19FQUC8cSvF3NR1BpGZ6a6/I3vFp7NA+UPC6JxIRQqwcQ+VYOrJA+TXc9+mnesf39I
	YUtaFXulQiK8QyO8XvrV8nwmmeXnlgkjWZclwQBq7BDCKAckAN2zkxyok0x937oRgTCgWeyEiDhKQ
	+sH1YklW7NSge0YdvVPYNCO4FSnNeBNgBBTRT+WTjUENfad0Hsch5JWykEqQO4uv3W4mxKIXpORVS
	5SnbRHN7L2udwFABlnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicim-000000082Aa-1s4k;
	Mon, 26 Aug 2024 16:37:36 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sichx-000000081tj-0Lyb;
	Mon, 26 Aug 2024 16:36:46 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5befecad20eso715206a12.2;
        Mon, 26 Aug 2024 09:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690202; x=1725295002; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8jfPnZyc0O8niMh513DMmM26/MRMyoDXUuhx6J0cuE=;
        b=Zzi/sINjFL+gvP1YF8nJ/4aT2DblfY52Y12T6SXzGziLLQnNBc+HYiaT6y6nUYMIqo
         S0TcS3zfG3QSODY36OMjIJMMj09HyJmxQ3MJbgPegvxjzdghqjyPFQ2ZM7b59i6IMdC1
         8O2o87eZ49CDeMHIFv9G8CHTkDqoJYtkgWBUoxKsfG+XotJ74/+PVRLNJLbOu1xCEfdH
         mGNAsU6mBfKNirMq4X1lde1KTVRnVDqjqZfHSTo3bm87TQMzRTSOEuR8/PNsaG7MNUkR
         a7a49G2Nj3YZtDPfxfvUuY/OcFpu3w/Td20BQu9T+okW3RK+GoNh8YnSQD1xavtMEEJ8
         xN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690202; x=1725295002;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8jfPnZyc0O8niMh513DMmM26/MRMyoDXUuhx6J0cuE=;
        b=jr0GmQ125WnUe/4LRefxJ8nV2ZyzEGZzWMglxl1EtBgKY/16T+QaQQ0Ya6eFtgYITA
         +p50PQwhMgqwovIZaUK2ZPS7235u01svUoPfT4XcbFcgBtN0C2H5NIqZtIWo4Hui7sqp
         j81js6LoV+vOvrdq0LEX2XN2rZYWH9EUiS5jkJkOfHRUHi2U5liW4aBXnV4ndPP5UN7y
         5xJZNcLCA6XZ85OQuMTFIW8ne3rRZXyF/HSULQjTtZkkzz1egQXdkM2mHQD3PErICkuF
         rJXFJaEKfSXkO3k9OD0uViV7dilTUN8+uU1oqd+dZNoheLkt+DWrf7cnaz/gx0trkBxL
         e6kw==
X-Forwarded-Encrypted: i=1; AJvYcCU4bUlQWL19Zfs8F+zOggewvsMfFUDLbEeCNIzachhMv/sfGPl6Jk/TOEkRxH4jbUjcW2NfhZnfKe6qD31BWsY=@lists.infradead.org, AJvYcCWtneC5DRGitxbuaLP3CjnTVvTufFfa5GAR7ffyylM7ZJsAvRwnWBayo5HB/KluCDeSOkzHgAz2lze6wS2ULCaf@lists.infradead.org
X-Gm-Message-State: AOJu0YwhTIMSvL8U+bstCjTqiZYySelvmc5HaNnn50ia/lmBhFozEFvI
	5yNE9+Mi3Pb71IECWQcd3M0HdhqsCSWTn3j/puI3ChnyRgcoHWQo
X-Google-Smtp-Source: AGHT+IEyVJmDWU0qXTpMNJK9aJPg/tpDtVwnAkXmB9dgmBEieQ4hk3J9h9FQdOCZo5n/3rriGsMFww==
X-Received: by 2002:a05:6402:2549:b0:5af:85fc:1a98 with SMTP id 4fb4d7f45d1cf-5c08910db40mr4200614a12.0.1724690201809;
        Mon, 26 Aug 2024 09:36:41 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3e9540sm5819415a12.41.2024.08.26.09.36.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:36:41 -0700 (PDT)
Message-ID: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Date: Mon, 26 Aug 2024 18:36:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/9] clk: rockchip: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093645_154044_626EB5DC 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
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

In order to get rid of CLK_NR_CLKS and CLKPMU_NR_CLKS
and be able to drop it from the bindings, use
rockchip_clk_find_max_clk_id helper to find the
highest clock id.

Johan Jonker (9):
  clk: rockchip: px30: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
  clk: rockchip: rk3036: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3228: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3308: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3328: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3368: Drop CLK_NR_CLKS usage
  clk: rockchip: rk3399: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
  dt-bindings: clock: rockchip: remove CLK_NR_CLKS and CLKPMU_NR_CLKS

 drivers/clk/rockchip/clk-px30.c        | 10 ++++++++--
 drivers/clk/rockchip/clk-rk3036.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3228.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3288.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3308.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3328.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3368.c      |  5 ++++-
 drivers/clk/rockchip/clk-rk3399.c      | 10 ++++++++--
 include/dt-bindings/clock/px30-cru.h   |  4 ----
 include/dt-bindings/clock/rk3036-cru.h |  2 --
 include/dt-bindings/clock/rk3228-cru.h |  2 --
 include/dt-bindings/clock/rk3288-cru.h |  2 --
 include/dt-bindings/clock/rk3308-cru.h |  2 --
 include/dt-bindings/clock/rk3328-cru.h |  2 --
 include/dt-bindings/clock/rk3368-cru.h |  2 --
 include/dt-bindings/clock/rk3399-cru.h |  4 ----
 16 files changed, 40 insertions(+), 30 deletions(-)

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
