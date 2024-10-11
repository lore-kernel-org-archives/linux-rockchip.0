Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 622C7D0D79C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 14:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fo5A88lodY59y8V1NXZjzYllJSI875jnhNkqGJELa5s=; b=h3+mJF2V6tUEjh
	UvAJbt+USZ6OcrpeWH2Q3R3nTCQ8PO1Bqn5QWD3Eb3cL4Rm0ZIXRY7D9ZXwXpNYcbpvadkKkSwyi6
	UwJeLpQp+/joytHRoao4xI8/C1sIYuPBdmWNqNmaZzBjVgRHoAYUHKPd+ihVdD3CZbkwmbX47N+dQ
	78s+i6bkrugMwOnXU5g3Z/AnkcRIgB7zqcx1G6y6VBX6TbvGLmzoQte4ATjg7RfFtSYVMHsyi4jT+
	sLTAqGO8t31227U/uNCFGXN/B+C1nr4+Vr+1yNYX3gNarb2mKeYZORuiyxNYMI6Jwgv2byn1DPx05
	G328fXCwA8UyvTXRc3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szGra-0000000Gei8-2FP6;
	Fri, 11 Oct 2024 14:43:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szGn4-0000000GdCx-02Y5;
	Fri, 11 Oct 2024 14:38:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DB6C25C5BA3;
	Fri, 11 Oct 2024 14:38:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA666C4CEC3;
	Fri, 11 Oct 2024 14:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728657528;
	bh=Hgd6/MnZlw7QnHGiY+zYelPvbloqyZAOn1X5DsWCAek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pmdA/Zqws1TABjcWPDhTbDQuItzuA1vihySaNY+7mjcOBZzRcRvcUqSg0ixVEk6aK
	 4tKvrquUaakBeBcNaipW5ufjZXN5exR5eC5OhoaGP7s/ujVWkkeLuNrtTS/VEVXVJq
	 I9FXtriA2VvA+qUHKtVvf8SCK5pP63PgbMf4diLaNochyxZkg8cmZ3+LBf+hULVP//
	 ZAp8bnw75SgcyuDlRWbYsrsvecs8VGyC/O8OInb4EVU5nt0j46UuBJquZsFbR+bRk/
	 YUEehXdWfxsF8hYyXMpAdhmCKZ5TaWC2EXGpf3irnLGdwdJH4j86Llxo0qriRDFa1I
	 ub8dfONZU9vnA==
Date: Fri, 11 Oct 2024 16:38:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
	tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Message-ID: <vauotttw6efm6krwcn2krw47gq6zhgb4nvs3ctv2e4khvizi5z@vwsu7imdbf5t>
References: <20241011065140.19999-1-frawang.cn@gmail.com>
 <20241011065140.19999-2-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011065140.19999-2-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_073850_111440_6E044C47 
X-CRM114-Status: UNSURE (   8.64  )
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

On Fri, Oct 11, 2024 at 02:51:39PM +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
> 
> This change also refactor the clocks list as there are new clocks
> adding used for the USB MMU in RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---

Thanks for the changes.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
