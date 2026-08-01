Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E50CC55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 19:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41A+RjzrEgBPbaRdD3Hhz57v29gJLoH4pCBgSOkOnog=; b=wfy/1UNgNc4l1D
	ZahdSalouXypTILQAl8BLfkyFVB8WD251/vHJE/oU8i2YiixQPgFQRL4mVIC681V58vKq3LvJdJKI
	g9+7jJE2nFZJZjjRuMxrB8gNdBv7QaAVGhpAATYy4oULmOeuo3+VHsfMy5njJNj3Ef9jL/8II2hsz
	Y281pvoWonfpeCzfO8KKevqdIfXZmMJcN9DdmIZkuBdIpVVHya7/NGXJ1dlDIET1U0zQ9tcE0PxOY
	poYh6QrETRAnvmhMWzs5EKL6Q7sxmU6uxD/i4NoZB8Y4MvEvjQKxHJkbuvvu3oa7vdbYNptPcxMX3
	IbCfXDTAb9nW8u5gQJfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqFRv-0000000F0Am-0atr;
	Sat, 01 Aug 2026 19:32:47 +0000
Received: from flow-b2-smtp.messagingengine.com ([202.12.124.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqFRs-0000000F0AR-2iW9
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 19:32:46 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailflow.stl.internal (Postfix) with ESMTP id 5596D130009C;
	Sat,  1 Aug 2026 15:32:43 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Sat, 01 Aug 2026 15:32:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785612763; x=
	1785616363; bh=h4pCU4/CMtucnCiDqmBkCeL8ZPVvlR3funlO0gGKHSw=; b=1
	5o6qLH6uwuRBa1DjsrUtvQXQePV6UX1vwogHkEiMZKgoP0dFUuJe7k3jV9GXkqDa
	guqwgcuGWxDLPVoi85t7qryCUlBBp9F9LF5MrHDCs/g5UwF29CaMn1pDycyrrLid
	kzSd9g8xyQudBNloIVgcWOQlFVW8nQj1WTeH/QYwa6jGYrQfd6Li0h0C03ydOSCy
	GH/LxalEzSSAebp0dVYlq7+YSTXflzFEDj5XfSIy/pgv0yoVVogIeYdaqbjeUppE
	yGwx+8O0vQd/+AXz+UB1dnzdg08XoYN5m44pcImBcUnmVBkVbq1oqxNzSIDTOW0N
	gbWkUX/Ro0aMUniSLodXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785612763; x=1785616363; bh=h
	4pCU4/CMtucnCiDqmBkCeL8ZPVvlR3funlO0gGKHSw=; b=Uk+9cZ9xDD9OO/9AS
	jSNSDos8mwH3azFyLHiu/OFxcfPYLPMTOvbXGjIQJqxWuyN8zBslAHrwJxjPG2gL
	KrhfI1HpA39B1+ajJPq75SeUsN3JwKClrQsm2H2Z5YwEAp6/e2SceCJ+5ktm570f
	ApHlvIk2KdDjL6cn4+Hfp2hwcdKndt9kPRZVKr1IS33KBH/fuNClvDGl42CJ2DUZ
	hSEsiB+EPueXQFsmwOqBfwTNpPxyisvGZJRCEqTnkdhs+oG60NXby2Aee7s1Ytkt
	V3+bkbRpvg48p+c58c80qDcdCjBJHjsLnMuf0eQfD44bbs4WLNkmxePQOCdYdyA9
	boT7Q==
X-ME-Sender: <xms:2kluamI_n_rxENt9_Y9IRbw5o82sih95jWIT7iWeO8Ije_o02nz7Dw>
    <xme:2kluaqIG0BMThOGagic-omIfo7co9XwZIEj7KQ-ZQOp4QG3mDGEOh3oMLFIjitr9W
    W0qJhcDB0GuFL26MknrKM5t0_NsSHAon7Di6PQBODhIvKdo0u-eHsJc>
X-ME-Received: <xmr:2kluao6vo3EnSxanInzE96PIm2_VBVrl_Tcp3i9v8phMEJvvXOd_SL9bOUZp5bPvKOB-EV2X2g>
X-ME-Proxy-Cause: dmFkZTFc68sdbaWkmAjjSgmXgbfSDnG6xlh6CshoLXaFT0NdOq+fseK7gjvV+wVXmAnSNb
    DOaujidMVYaBb9TfWqH26futy//maGMsYSHgjuaFkrExKeq7fsDD845mOIBCKonKYXFKhb
    jPQSyLH2QEuOXpBV9AorUdGxijLnUONTy4V467mop1XjeAymSOf2D6PoWHxxkMBVGzkcEL
    aestLdLTB3GP1RTO1ZcpY9JtumygG47HAvzYnwab59UUL6BfQGftqjnBsp66DKaW5wyWd+
    jhIAlrpO3dhe3Kq8NzcJms9ULKAoErC8Uf2wRZNdijCG1f8e31xquE6zl/0mA6CnwPfrqq
    fEd7gGqg/qAqG7+napQvIyeFURiuiBY2aY9FnIkgiR+VgLvJdKPeX1elYVMP16Ho6LWqPk
    a7ZB17iHh/noEdi5HadC5NMzQpByDZUqIN8ytDW4I7/RXf6aJ/TCG+LVM/ePhHJBLd768u
    5fsWAMattWv//UMUr0flJCXll6EVKMEljk5A2Zl7LPGRSadXahiascNg29SDOMCDwmC1TU
    T/w1O/qrHpTfzxWUk4UJB1fhIor2/qP8f3vl0OQGGJgqjDRnblCIedoY0Ya2bXNO//zX4g
    ODZPPbNH2Ykys9hfi2Kv0WyNuFHCUnQJy6N01/OyB9H4rgUuFrnvIvHohFWg
X-ME-Proxy: <xmx:2kluasczB6BxhaKrxT0aNRo2uj_XLQBGtyJrhgKHdPIJilvhoOiB0Q>
    <xmx:2kluarGqJ3CJT00BoSC4FLXYT3Bu4ApBjvi_vM3muODx5gwn_9VWMA>
    <xmx:2kluatRo90qy0fLmP-c9qZkFJWiPKfaFi-vyfY3q5rgJ8gsiHGsGgg>
    <xmx:2kluahZKdjBsHSWGu6YpwPmjT-hTfdM7e_M1Q08SCjkdL7qf7qF2Jg>
    <xmx:20luam9vuQb2PODRk-ghihPKMHwj9MN_twwWHtsaF54MdHZQeZBEYZi7>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Aug 2026 15:32:39 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	diederik@cknow-tech.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Sun,  2 Aug 2026 07:32:36 +1200
Message-ID: <20260801193237.2539957-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260801131656.58450-1-royalnet026@gmail.com>
References: <20260801131656.58450-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_123245_081302_7F3C24E4 
X-CRM114-Status: GOOD (  11.11  )
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

Hi Igor,

> all three NPU domains already list the NPU clock (rk3588-base.dtsi
> lines 864, 877 and 885)

Those lines list CLK_NPU_DSU0, but the clock the driver holds as "npu",
and the one devfreq scales, is <&scmi_clk SCMI_CLK_NPU>. The driver never
holds CLK_NPU_DSU0 at all. They may share a root, but if they do not then
the handshake is not breaking because you scaled the clock it needs, and
the notifier is treating a symptom. Worth a look at clk_summary first.

On RK3576 they really are the same clock ("npu" is CLK_RKNN_DSU0, which
PD_NPUTOP also lists), so that comparison at least is easy here.

Also relevant: the vendor does not scale the handshake side at all. Live
sample from a 6.1.115 BSP during a working inference, captured by
Olaf001au:

  clk_npu 950 MHz, clk_dsu 198 MHz, aclk_cbuf 198 MHz

Compute at 950, everything else left at boot rate. If something similar
exists on RK3588 you may be able to pick a clock that is not in any
domain's list and avoid the constraint rather than veto around it.

Two smaller data points:

We get an async SError from NPU domain power-on here too, which is why my
v3 has the settle delay and the reset cycling. But our DSU0 sits at 594 to
786 MHz permanently and only the cold power-on fails; later transitions at
the same rate are fine. So either your constraint is RK3588 specific or my
settle delay is masking it and my explanation is wrong. No idea which.

You said you had not tried PVTPLL because reading its registers is
supposed to hang. I tried it from the other end on RK3576, routing the NPU
clock through SCMI: zero jobs completed, 83 scheduler timeouts, everything
else unchanged. Not a drop-in for the CRU clock.

On the OPP table, your plateau looks memory bound, and the vendor pinning
aclk_cbuf at 198 while compute runs at 950 points the same way. If so, 600
is where MobileNetV1 stops scaling rather than where the hardware does.
Maybe worth one compute dense model before cutting the table there.

Cheers,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
