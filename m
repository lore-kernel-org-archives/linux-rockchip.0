Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29934CD98F2
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 17:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww10rgv+ifiH1sHGWmCSQgCjGUklEAz9a7YTmWu2oAg=; b=s7yhtxfY6iMyYW
	DyMVR/Zf70O4MXktDkSZ/5zHcCmB7/eHKWxxT1lwuuqUEBLHC3MhrSllFx4TmWp2U6yhOh4rTU4Us
	5MFy8UQTeyfoemd1RhfaT+l5lBfgDSRcPyzLfzPwxumtnTWvcc8pCtJN1KD13eXzDgGJ+hjU9l2P4
	mg+74LyzcgWtYmqQ0MUie3inR18kO8FkzslwJN6xcYPgkcVhF5QPpzAM0U/VeJkpPinlzBB8Z5guf
	YyGapzpbciPGJIbsOUXpK0du7LMV3b2IxY0HnGCudU+GWKaQa5Mvn/Vj6ZQip8CeHtXSCvvx37ycO
	+cqj0rdkaP6pWVqwTB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc58u-00000006iQT-3Ozq;
	Tue, 23 Jun 2026 17:42:36 +0000
Received: from out-172.mta0.migadu.com ([2001:41d0:1004:224b::ac])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc58s-00000006iPM-1MMB
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 17:42:35 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1782236541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=anXIIGzRFZpi+NzeuxQSLJlrJLRMzvd+LQ042QGuIHg=;
	b=Q0PuAcogSHo6YqMF4M1DObl2CwZSvYOyKWh+wwqNkirzKwnMAErvazQZfpaMcSimyE/T96
	z2P+bFMPWUq2gwjGpNIOlhuTiQjY1YWkU9UMwx2Zuei/ej8hLDnJ2LN3q9V1clcej9nQ+L
	LPI1TkXrJmqztjqKwvSpyE4IxKcB2B+1SBBLm7jr7hBR4vSi/s39On7sBuyr097z8ctoJQ
	xDstumeVTZHvoD6X/qAcNF33W7BBHzE4wWHuwHvObc/pi7YoOIHKvO8VxiLGwv9Mhnoc06
	HX4qLDz44CuDFsesX9JCU7B0X5595CwII/0iV2DAUA7cgt4cWSE2o9k0pejSrg==
Date: Tue, 23 Jun 2026 19:42:05 +0200
Message-Id: <DJGM4D19H31O.4I5N79CG5Z8C@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniele Briguglio" <hello@superkali.me>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Heiko Stuebner" <heiko@sntech.de>, "Michael
 Turquette" <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Ricardo Pardini" <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for
 I2S MCLK output to IO
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego>
 <20260623123316.4111002-1-hello@superkali.me>
 <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
 <20260623132351.4144457-1-hello@superkali.me>
 <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
 <20260623140958.4181297-1-hello@superkali.me>
In-Reply-To: <20260623140958.4181297-1-hello@superkali.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_104234_504280_76A798F1 
X-CRM114-Status: UNSURE (   4.75  )
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

Hi,

On Tue Jun 23, 2026 at 4:10 PM CEST, Daniele Briguglio wrote:
>> So IIUC that means I'd be testing both variants.
>
> Right, that covers both: the mux path and the consumer path. Looking
> forward to the results.

Analog audio works on both. Plus with _TO_IO and LTS without in their
respective DTS's. So I guess CLK_IGNORE_UNUSED works. 
Whether it's a good/right fix, I'll leave up to others.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
