Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8C8C52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEGsFga/6Yf0RxsnxlFgoZdwIlsU0qBdpHQ3+gIVGNM=; b=rAl2sS4iUFVvlX
	B7ipv0Fl/LMyLZGAxB1qTWVhOKeS3y11rsC7ER6TSyojn+hzrWXlf+1QKyEN10u0k+RC8F6+9Lgrj
	hO/2jPkrxbmKwRSJrEIrmHlCv2roOEeWQ50ltF1jcGHCzCGcLxmaNPRxMTDlL8FG2JIz+Y3i0YXEB
	l4v+OFox9GjN2RoFsCOluQIDifSwLmcKqApz69XAUWdAOxUlnOeF9Nsm1NMDVR/6ZeTUkfUg5tW2O
	x2lNcHvQU3Cmyw8y4ZoEonJ+LBO/zSCFmwt/AbdXUM1S8veCRCOST3oOreeyyjQ9IxH2ziWu79U56
	5ZWWkYu36uGULDpZXndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisuz-0000000AgLZ-3315;
	Tue, 27 Aug 2024 09:55:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sispE-0000000AexZ-1d0W;
	Tue, 27 Aug 2024 09:49:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A16A2A4168B;
	Tue, 27 Aug 2024 09:49:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9ECCC8B7A0;
	Tue, 27 Aug 2024 09:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724752159;
	bh=i7NI4Nrkz5Xqzy0dJnBCstnJ32/Jo2lh/i45uj2UqIg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Cygvi/OgZdHtqq0AMRAJRp78Rc4ZBdfMMPXYVfc8o4bdDtdC2wlSp9KusaMSwWGWT
	 YUYGidlt2nSYLzkiiFqRZX49f/pqvSGRFLs+xNURMmU205hRAUNcbGbsUmfpQp/xbD
	 9p/IBH+qQXYPC9qPQi3uA9yuKbklEjRxSBwSJurhGD9CFWOL8VHs4lNBMop/ZRlgZ+
	 /3zPeS82CE42Z8NsG7bRXLe9+d1hba5SJo7RGWtHrzIJM9NtmH/yFYtt9e2bEz85Ds
	 dtksnOSEuVayjjqJrXHM5pX68LrU5mPCyf8/RimDvJIawSHB20NrINI555SGgS5Q4M
	 J7mYfePXbXMkg==
Message-ID: <ca9e5cf0-2e6b-4584-ad2d-86e1ce638093@kernel.org>
Date: Tue, 27 Aug 2024 11:49:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] pmdomain: qcom: rpmpd: Simplify locking with
 guard()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-8-8320722eaf39@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-8-8320722eaf39@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_024920_527455_2F8E6A98 
X-CRM114-Status: UNSURE (   6.58  )
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

On 23.08.2024 2:51 PM, Krzysztof Kozlowski wrote:
> Simplify error handling (less gotos) over locks with guard().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Thanks for taking care of this!

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
