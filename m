Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABB4C44503
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CAT/CZUchRxPI7YZgvktfwKQQ2Dxf/n8HGk/oiNjThI=; b=4qxxahM5NFxpTn
	2NTN1Fd3YC2QnjOaXO1fSlt8AHUdSW5WALz8EwDbXq2QdxQYbqTF2LbAuFSlNHedH2bjyAPF/Ps2Y
	UGrQn0De1p4YbDo6F01tkESnY7qnDcA5sQ2KEhSLSd2xtE14wdyYwZVnEW4iONN7Cw5Hrp0CIL+hM
	xL3bMvSwUJnNBesb6si3HDpYyMeM4tHBMkE9HqC4VzUruhTbnRR+BsAw1qoUoLnCv1QGGpDfZ4Zd3
	zJ3WqS7lUbcmLYymGYmdFitgPkagZRbFmO2AMmpTbqylSOhUs4GwMkSEi8MYgzVz2prw+kLKNpk4E
	gpLuaiJZ7cF8O7SAOaGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7lx-0000000FJM9-3qLY;
	Tue, 07 Jul 2026 15:31:45 +0000
Received: from out203-205-221-210.mail.qq.com ([203.205.221.210])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCc5-00000003pZT-1m1a;
	Thu, 02 Jul 2026 08:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782980247; bh=1B5GSyAJIOG4wfRq0mDuvB3G4ilaYLoysw4eWFLduAs=;
	h=From:To:Cc:Subject:Date;
	b=cpd2NHg1cpKsDzPB67xLogddoX0ZexDC8qnbgdxJEwhGKQ1qR7hMp2oJ2oKX2sa26
	 tt2XXkk+1D674l/Q0O3epxFPonHVpGqdVZ75BwOhvuA7gcTCPu1ttWYBvJEQ3xuARA
	 hCbWyEt6uyUAO5OctzMpT6nUUp9ij3qUQSn0tF4s=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: M/7aYRxQgGxsDc7Ynwti5r/VjLIh7JToZmaGq7z/9Lpn+xoTtnMY+ObYS5q7v3
	 8tGSzg+S/2qII7mL9LKOta4NXyXzmq00jDmWAGEBwcFcXOu2vEZiQCYYFn5QRLh4zSF87Gpd3lH+c
	 VbRSN7jq4nJMSt0o8AxY80ZbfcgAdWYxm/BEhJObUXUhq/opU0rhMEXxuZFUMdITWda4qneGtswU0
	 6/600Oum+0LTImHQbWjz07VvKDwjuGzg90NC3nmMUcawyRZ9iTZlMb3GMsbFvWQvxFcHlAxW9rdVL
	 R8zDRCsYpb4veRyIh/x0KaVAfLcXGvPgKqHoX+WzCEyDK3L0gPY9EOtiF3tVDQ33cxrnGbpb48ybU
	 ShfTiKqv583HgYrYz39xKvQX9T8oUhbVdwyRHDEoNM+PEIxPWaS4PfuBCspWyFSpt7Fe9k3QY6mrE
	 /6JS/xTS55iW6vC0CFarU2zIX/QBqyxZoK2W4vaeQENwTit4l/I0Ll7e5ijCiQAjX2uNojQtqisg4
	 ngTrzq9Ym8GvP1s/hSM85bSsmsDhq7hMZwOahFxr32T0kMnNk24UgxfhhpDZxcn/7YGn4Z3AiYYnW
	 1ZA/jClQKpcqfzIOCWVaYDUBTY2A1bTQNL+DiKW+h1Qbeqmika+roigtEdjdLnDD1puyIkNIffvzi
	 bLTj6QLnt7PakN55+kYWbUfmSTlxiVoYgH5dX9UYbZ6TY5+4cN8rWj1xstYHMHXAwxxZWorfFl/0M
	 2RTOmiTr6Us2sTTruEhxJ2+sv1cxN5kTRBz1UsiXGeGH/3nTTAnX1to6TTviEDWgmKGYwXT7sFVEf
	 HtJgatzh1T3rnVViBYB8+ko954blgfJJ2Ztgm7/QwuPBO1e6xtuRZadWAvCNwMY+dVP9UJKYJ2HQ+
	 tSPZEMz4xdwc14WqoMaNwoDb4LMX3S/dRVnB0gmWLI4Cf/PJAo5uRd4hi9yliO/GHhwFdXTQ6FNIG
	 1IkdX2JAiQCi/ZbB9hUUTiCLEViEXhWjWJIgw7x+o9DMWgoqMyXyDe0SULRF5ccANJSMzNvIgK7zK
	 FfrtrGWutjheKsws6DxLyMvYq4/HthrgeVteV
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?a3J6aw==?=" <krzk@kernel.org>
Cc: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: can: rockchip: add rk3588v2 CAN-FD compatible
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 16:17:25 +0800
X-Priority: 3
Message-ID: <tencent_97F21396469202221027FD429A6E69DA6409@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmsezb41-0t1782980245tkalsowho
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_011738_122594_FFD55E81 
X-CRM114-Status: GOOD (  16.37  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:51 -0700
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

Hi Krzysztof,

thanks for the review.

> DT properties have nothing to do here. Are you saying it is fully
> compatible? Then express it properly with fallback.

No, I do not think RK3588v2 is fully compatible with RK3568v2. The RX
FIFO count field uses a different bitfield on RK3588v2, so using
rockchip,rk3568v2-canfd as a fallback would describe a register layout
that does not match the hardware.

Both standard and extended CAN-FD frames worked in my local RK3588v2
testing, but that only confirms CAN-FD functionality on this variant. It
does not make the RK3568v2 register layout a valid fallback for
RK3588v2.

I will reword the commit message in v2 to explain this hardware
difference instead of talking about the DT properties.

> Do not explain what you did. Explain WHY.
>
> Driver is irrelevant here.

Understood. I will remove the driver-focused wording from the binding
patch. The v2 commit message will explain why RK3588v2 needs its own
compatible from the hardware description point of view.

> We do not take anonymous contributions.

I will use my real name in v2.

> So that's just enum with previous entry

I will fold the single-compatible entries into an enum in v2.

> And why is this different from rk3588?

The reason I used rk3588v2 is that this is how the controller identifies
itself at runtime:

  rockchip_canfd fea60000.can can0: Rockchip-CANFD rk3588v2 rev2.2 (errata 0x0000) found
  rockchip_canfd fea70000.can can1: Rockchip-CANFD rk3588v2 rev2.2 (errata 0x0000) found

I also checked Rockchip's vendor kernel 6.1 sources. The RK3588 DTS uses
the binding name "rockchip,can-2.0" for these controllers, while the
upstream driver has SoC-specific compatibles for the Rockchip CAN-FD IP.
That is why I chose the SoC/IP variant name rockchip,rk3588v2-canfd.

If the preferred binding name is rockchip,rk3588-canfd instead, I can
change the compatible in v2.

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
