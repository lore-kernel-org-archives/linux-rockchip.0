Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 334CCEE0AD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 11:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjNadArICUfuFDN+NuQr6p7JmIg7BwWSuhpuVHf7VXs=; b=u08ABTxPounudB
	ZskaAWC5ctSkUd5KM0PVShm3XcS42eL3HbU44hBNLAH3AkafA+8ic9MAi0bZ+PdxfKjD6GVqqvj6f
	knVUcOKJUIL7kl18Ks5dp/bK23jYCoYmZ6sbC2AKhqMYRe7F74BRWpd4j+Ek/uDp1zihRjW5t7KYl
	a4pJEnTMC+3XKAwwFypWJFoMvkiVGLR+XmX70iMK4qbQw9FcNtR/9w2E/5qlfjM/ugrcZEhJ17Q2g
	xxDUAEfcM61vj+rPrksooAc6nYhcPF7Tcf0xMlgUinSF1GWLEZQzo6e3psGWC1jCSgRrVnPgIWzJB
	6JGCOj01yXDHqszEyJjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog4W-0000000CNhZ-0Ozo;
	Sat, 07 Feb 2026 11:01:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog4U-0000000CNh3-3HQU;
	Sat, 07 Feb 2026 11:01:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 85E5A6001A;
	Sat,  7 Feb 2026 11:01:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6076C116D0;
	Sat,  7 Feb 2026 11:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462109;
	bh=7JCBZP9szhahntx62P+LWsta3kzGRKfx2xylbZb7Hmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XDs/GxDa8Hr7uToH0sWpIkIoZQLgOJ29l8Akc4jIrGqbu9MTMSVrWByDGdB+Rv/RM
	 8KSj3oF6Wg2d2pJmroRC6+ttbnzpXjVcAzICh2YXCfjFjq72r1yki54Y4FFhZp1D2/
	 WYNxOf7XVG36gAznlYz4gWS76hKtYw9cUjWZEIn7yoj+gz9WKMD+2zslaXrDftdkha
	 Ycd7nmwoVWbo8yHsZkQLQ1vreKNMCx3elRx0NdfG7vO9s6pO6dDU+9uzw9OvfNVF07
	 goTl3MA236mFp2/zIyLl2iFkxBafKIfqPBolxmy9E4Cigei6L60mo/AHybt+JKneCy
	 mpQPfAvu4tRig==
Date: Sat, 7 Feb 2026 12:01:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
Message-ID: <20260207-dazzling-stimulating-lizard-14eec1@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
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

On Fri, Feb 06, 2026 at 03:13:00PM -0300, Fabio Estevam wrote:
> +#define MCLK_ACODEC_TX				204
> +#define SCLK_UART0_SRC				205
> +#define SCLK_UART1_SRC				206
> +#define SCLK_UART2_SRC				207
> +#define XIN_RC_SRC				208
> +#define CLK_UTMI_USBOTG				209
> +#define CLK_REF_USBPHY				230
> +
> +// PERICRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_ARESETN_PERI_BIU			0x00000002

NAK, not a binding. Nothing below is a binding.

> +#define SRST_HRESETN_HPMCU_BIU			0x00000003
> +#define SRST_LSRESETN_PERI_BIU			0x00000004
> +#define SRST_PRESETN_PERI_BIU			0x00000005
> +#define SRST_PRESETN_RTC_BIU			0x00000006
> +#define SRST_HRESETN_BOOTROM			0x00000007

...

> +// ======================= PMU1CRU module definition bank=9 =======================
> +// PMU1CRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_PRESETN_SPI2AHB			0x00200000
> +#define SRST_HRESETN_SPI2AHB			0x00200001
> +#define SRST_SRESETN_SPI2AHB			0x00200002
> +#define SRST_LSRESETN_PMU_BIU			0x00200003
> +#define SRST_PRESETN_WDT_LPMCU			0x00200009
> +#define SRST_TRESETN_WDT_LPMCU			0x0020000A
> +#define SRST_HRESETN_SFC_PMU1			0x0020000C
> +#define SRST_HRESETN_SFC_XIP_PMU1		0x0020000D
> +#define SRST_SRESETN_SFC_2X_PMU1		0x0020000E
> +
> +// PMU1CRU_SOFTRST_CON01(Offset:0xA04)
> +#define SRST_PRESETN_LPMCU_MAILBOX		0x00200018
> +#define SRST_PRESETN_IOC_PMUIO1			0x00200019
> +#define SRST_PRESETN_CRU_PMU1			0x0020001A
> +
> +#define CLK_NR_SRST				(SRST_PRESETN_CRU_PMU1 + 1)

Not a binding, either

> +
> +#endif
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
