Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC216C02182
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jan 2025 08:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/33/QTjWYIl16wQaOh8G1y4pTVjq/el2M7VCq8E/sU=; b=ismGTMAY13aOIb
	RcbUIhJjE6dMlfGuuvwbMxKryOgiWdJeGeq2BlDQOo27IjjZiBS21VGIdUwYAQPT1U+JT2VzNLaBQ
	o1dyRFbBjtZvotpGXWBSUw4hH1XO93/YqR4xRd9z+8gCMBn/y8akFOlBc1dux1p7Izfl0pp1osOgv
	7nCE+c3xhtPtyq/ts2M4K3dc7Aet4KlszalD7QYMaFMbj0JIssZG2CiH2v7LtCtftPS/zlNoNmbcd
	2MerMPi6vbI7KxR89Qv89r7y/0NbmnmvF/nM26QDBNAJTWrnxIL3vQyZcErZfsuSXEDvJH4LJUAbW
	EgLqMxDOQUFo04P9iHIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9HH-00000007CxJ-2UOO;
	Tue, 21 Jan 2025 08:06:27 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9DP-00000007CLY-1iV8
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jan 2025 08:02:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 06744A4103F;
	Tue, 21 Jan 2025 08:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69457C4CEDF;
	Tue, 21 Jan 2025 08:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737446546;
	bh=CxY3/wyeX6n2/22iDBxPz6jy7l55K+eh5I4tb5XZWMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GgxjAwBYHJFoxx9+ryaP2BIRL3EgTEG8NjpXq36QrIFsVD9PopIErdonLQK63d/02
	 dEQYVklmiGBSWrW++TrfN/c13vrxOpWL3dim1VsrzeX2u9PVFNfPjbNgR2ay/2lF0B
	 mpbcbR17ayslhyfreW/p6wwkPok+E5QxQmQ7vyuTanE59DcQo3VJPBrmll5tXd0u2w
	 lTflR1aj73vdlqL7/z+AFoKV+FyOMzFUr8ZiN1Xg4pX7QTQctN6j4ARM9VTliRkRHn
	 5HwVBa68Jp8/8omiQgEz+8+Vo0IYk9iXDtnjIZSNikWqN/3ZJ9iMhHKs6RiFtm2o3j
	 1Lmm4CL4tdoJw==
Date: Tue, 21 Jan 2025 09:02:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v6 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <20250121-organic-exotic-honeybee-e90be3@krzk-bin>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
 <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1737428427-32393-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_000227_516433_17139B06 
X-CRM114-Status: UNSURE (   8.34  )
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

On Tue, Jan 21, 2025 at 11:00:21AM +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Just because I gave review, does not mean you can send untested patches!

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
