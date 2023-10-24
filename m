Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CCF7C00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 03:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxhjcqJcY4agf40PjPRHnUJXjWCSGOQF4xPWt/QkkZQ=; b=S2YVWtvxUoenzc
	wEfoW9zxCEQHVEfH8CbNk925CEesDK82Mtz+kptc5nw19WmxlD8qJ9Kf6HJJ3zD0J4x/YP52oXqyo
	0GNdcf8HFUlRq5wRXmEa043c0g7UeForAT8CWxvjwnDl2rVzsT+rBkBOsEROXP8LPCOw4X87TWM4t
	ZuSC/Fqinj1x+ORK/2f7lgD5Q4nnqLHcyY4YXaRbhs4VmGEpXSVz4Kwa2ldjyGFYSfs2ICUC4+Yhw
	OjOk0Nuxlq4UsDRKM/EKAdk3Z4hEhNcQpkoU8OXNnArrdiOB7U7HnihcNPym5DBaN3HPbjXBRon4l
	qOOKO4B05ves6HkEVmhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qv7u9-008hxM-1C;
	Tue, 24 Oct 2023 03:16:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qv7u5-008hwq-0t;
	Tue, 24 Oct 2023 03:16:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 19EB9CE2AD1;
	Tue, 24 Oct 2023 03:16:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D32C433C8;
	Tue, 24 Oct 2023 03:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698117378;
	bh=p1hhuvIPakueBhPkMTsnJZD7jEV0fRvqzqRBD6XqoAY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=SE3dOp5CnQIijBCv2/Tuk2N4/tJy1tJRKwkt4QY2fAckQY3nvjFfuOk/rWdfS2hsa
	 4hYgfVdHEpLBPAL18XB/epo72m//06issvriq+/QVME8U9xbsJIlgDS2Ox/TNUMYYQ
	 OsTJigJIEFNtPRbfYFCJPIu3fPdVGqvF3ghSKKRZZQ28d3pDzWQFipgl1XzEoI+agd
	 OF5SGEipUz11F8M4oe/FTq+UHsEqJQzFNHe4edOCzzooKRCzIH9IzTi7TIMv/TBZVy
	 5DTp3R/X75YtHc6ds4iQixbF8azq9YERs0H6291L0+7ZfHv0al2AMscD9A8zgCp65R
	 QwRjPV6RdN/OA==
Message-ID: <d5fb4c972273c5e18662e5d6914b04fe.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231006213959.334439-1-robh@kernel.org>
References: <20231006213959.334439-1-robh@kernel.org>
Subject: Re: [PATCH] clk: Use device_get_match_data()
From: Stephen Boyd <sboyd@kernel.org>
Cc: patches@opensource.cirrus.com, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org
To: Alim Akhtar <alim.akhtar@samsung.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, David Lechner <david@lechnology.com>, Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Rob Herring <robh@kernel.org>, Sekhar Nori <nsekhar@ti.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Tero Kristo <kristo@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>
Date: Mon, 23 Oct 2023 20:16:16 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_201625_508973_52CDAA46 
X-CRM114-Status: UNSURE (   6.94  )
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

Quoting Rob Herring (2023-10-06 14:39:58)
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
