Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15BAC021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0oxAukzbA304R1k1/khSnb7qMUxXkBc+4Yumy79L3E=; b=MO9dGawoHYNhG/
	sm2FNPAUNq1rlA2rBdSLIfg1r8Fy1rNjyLBfIouaswgzDYEkJ3WfHy2Qk6YT7wGh1aVf7AYrH3m1X
	UOM5nPdbQprlIfgc6047wnXFU5xv+43S4E1Rot3kFe6dEfDrVcaERfFnpFu0v8QaEfgfSsREIt9V6
	1ZvdZWmq+k7lMYHTe6UylTdQwEF6AZNUO+NQbz0P/RT/S6NZdEodhuvIBCJtEy/PxTxl5fu/IQ2YX
	2oCUwWN0N5Y7tgZIP8AF01hkx/0qNpUIXvXhzxQuGBO1opPytQObPUQztcPOmY5ZZN8NZiRAPFfck
	LOeHIGd3FHnEHAF0D4ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tndtE-00000007WZB-2VPD;
	Thu, 27 Feb 2025 13:25:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tndmi-00000007UnG-2ymU;
	Thu, 27 Feb 2025 13:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=odRe86wbBsQkcjq+MlDDcHZ1ydHEZEkP/u4cZxHpKl8=; b=I/ckulVENplgJLCSPkpinMhiHF
	cya+hcSVQSocal22jUocKva6Y3YPPggHj7N8rUMd6sxpwPiQysYVQV4QX9YftUu9UwxqVX/+7yCNZ
	h9Ey4lCbqJOfcVi1d/L6Pz4jKJBTnQ3j7pGN7HDT5e3kB8wsPqwtK9JJdCGkNYuUr1xY2MUBAPW6A
	zmsr6Qh1i6iT1iog0K00WDYJmA8LtkJdEEG4a25Mt0yFwo0Z/F+GnNl/7AmJK6pv0ZpQR9xKNHOPn
	Hd8DfmcCmhPB7AXbHCsRyIy1gyD5m/K2nFDz9iR9mIHev3WHc/CBz9/jxvbpPvAu6h1EkEvFCI9Jj
	v1KAeXGg==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tndmV-00012t-UU; Thu, 27 Feb 2025 14:18:27 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-pm@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 2/2] soc: rockchip: power-domain: add power domain support for
 rk3562
Date: Thu, 27 Feb 2025 14:18:27 +0100
Message-ID: <3210955.TQGk6oTFT5@diego>
In-Reply-To: <20250227105957.2341107-3-kever.yang@rock-chips.com>
References: <20250227105957.2341107-1-kever.yang@rock-chips.com>
 <20250227105957.2341107-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_051840_749573_72B5D1DB 
X-CRM114-Status: GOOD (  10.05  )
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

Am Donnerstag, 27. Februar 2025, 11:59:57 MEZ schrieb Kever Yang:
> This driver is modified to support RK3562 SoC.
> Add support to ungate clk.
> Add support to shut down memory for rk3562.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

After the move to the pmdomains subsystem patch subject should be
	pmdomain: rockchip: add power domain support for rk3562

with that change
Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
