Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF335EE0AF7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 21:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgMiKPkCiksv36a77tCRvTmxGuN3oOx03blENyOsK8Q=; b=SZ5e9PfS42ARBx
	/q6GiGY94TtSGvja/czcv3T5bvW1Y5t/+10r9spJIWrJ6TxLn8tvAfNYaJk3uebl/cpH1NUYEK5tE
	KiaL0fITsejua+tedTsDcSxiyCp0mPJUN/+B3MB8dMO+3vis7mpt2N9kX7N9klphFRvrx42uiZXCk
	qsieOTH1Xl6VnaGfQsSoL4D0VganuNF5H6ncwZjUK+T/xqP3LULmT8cW0jpDFOgxdC6VuDKGaJs5f
	w4ldpOQnPk2wXKJULM2tp5DyEzrZNuO9OhqZ/aWoOUderG1WUWDBGs6KOfEthWF7NMdswSSggND0S
	O6Yl7jm6lfqTI7+Qjcxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voq7g-0000000CnLI-1Quq;
	Sat, 07 Feb 2026 21:45:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voq7e-0000000CnLC-4AQU
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 21:45:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9065C6001D;
	Sat,  7 Feb 2026 21:45:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B83E0C116D0;
	Sat,  7 Feb 2026 21:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770500745;
	bh=jhXZ1rCk1S27D4G5e1huyCC+bN3T4hl53lkNYQTOYts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gn+G+bbfwmtLySFjjS46LSEYv1wx93erRBAemU2wGNmCoLNWjxkY5Xk7R1qqq21T+
	 ZQt3mJYFSGgZDlCAOi2OBNZHROkDAqFbC5ZKGKGklLMQ5lvlQ9aB0EUwR1DwnzUpQV
	 HuQnBnkmb7bm6EQBJ0+1uo7XstPLUTNbDPZG4OJ3KZ+KKBgsmOFVOGfSDPKcZSNzw3
	 j2rGFbwPps7Ct4GEhgAWqtHRaxUC/JQxpWFs0Q5IIKwu5AB4fuXluGgLXOGKOa3AmZ
	 m3gCTCsDWCt1joKsxkyWf/+mzRvvgjAEFm7u8O8f+VU7PrmuZIVp0uxVu639lL4hsl
	 nzSHvUTB/IB9Q==
Date: Sat, 7 Feb 2026 22:45:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	jonas@kwiboo.se, linux-rockchip@lists.infradead.org, 
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU
 support
Message-ID: <20260207-hulking-elegant-ferret-8efcea@quoll>
References: <20260207130256.2832815-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260207130256.2832815-1-festevam@gmail.com>
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

On Sat, Feb 07, 2026 at 10:02:55AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add support for the Rockchip RV1103B Clock and Reset Unit (CRU).
> 
> The RV1103B CRU is compatible with the existing RV1126B binding.
> Add the compatible string to the schema and introduce the
> corresponding clock ID definitions.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - Make it a separate series.
> - Start the clock index from zero and without gaps.
> - Remove the reset definitions as there is no consumer for them yet.
> - Squash yaml and dt-bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
