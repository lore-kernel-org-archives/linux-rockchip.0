Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19FFDCF31A9
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 09:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+FULdgMqQ3MGj2fz4FJzAvfAb6x+N6iYDTjwnBym+Q=; b=3+jCAfhcX55TBv
	I/ojew+OBpq7Ab3y5F/kRSYfDbBVSLUAvXC4nOhMl7weUCKN7O4rzBVIl8spdReJb85XfsNzVX4zk
	De4/rHs4VYOQZoNrgswKd0r8QvpVXu/loNUKPNDEIU7WDR3hkJZTXBMtwjWv76ei8SVh3ogW0Bz0b
	vWyujVqbhEJrW+2W4mxEUvODw/T4YSPY9ihzrsz3ZvYnIoJGDsxceLda0BzITeulMwZW7yOzRcAO4
	FAif8ny0p1YdMJWbjsLtNemBSkv3eImDkU1CiTCpvfLIkJRFUQfLh0kVK2j6eGAkmC0gG+mC9mczQ
	keCPkMoCcxIhNv0G9QHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svw5S-00000005PUG-1qZO;
	Wed, 02 Oct 2024 09:56:02 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svw4B-00000005PBK-0wxZ;
	Wed, 02 Oct 2024 09:54:45 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id AFFC720410;
	Wed,  2 Oct 2024 11:54:41 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SRQmozoVNeoh; Wed,  2 Oct 2024 11:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727862881; bh=xSMt1kdSUdvpC5ZcDXz5AqDxOhErvDD1+6Rv89kNfwA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h/NgNNyVEHy0CqgBObDYEx05zHyGSr14BwOL+E1a7IYWzz6eG1iNGPfNGA9F4Tk0G
	 Pl9yeSDg5sHmFAx46UxMMVIKbGd3x80TTu24MbIKbLr2F6S3BwHDw15eLw725+NBBt
	 l/mjM6jxsViaFTePNVqqcM66nnntk+18IVefuucl1nZXK8P7kwTuQiIE4q/pg8gAeM
	 nwr6VuGyFcdfY7qf4eGswCBqT2uyr0rYpEHxaUwm9yclmeVtXNBE+mD8XMhaiQQyFz
	 vPMX/uIOrvEsBdL/PyadGsjWJa6ftA1PT9QAK9D3X3lW4IuZIINtDTZcdzx6KpOB3G
	 6yk2T+ray6DZQ==
Date: Wed, 2 Oct 2024 09:54:14 +0000
From: Yao Zi <ziyao@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: reset: Add reset ID definition for
 Rockchip RK3528
Message-ID: <Zv0YRkabzDTARc-L@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-4-ziyao@disroot.org>
 <kg7lh6gafeegmljsygukhfjiztx5wbothngtxrcreccao3itpy@f4bxf4w346ky>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <kg7lh6gafeegmljsygukhfjiztx5wbothngtxrcreccao3itpy@f4bxf4w346ky>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_025443_429072_0CE53F62 
X-CRM114-Status: GOOD (  12.54  )
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

On Wed, Oct 02, 2024 at 08:31:53AM +0200, Krzysztof Kozlowski wrote:
> On Tue, Oct 01, 2024 at 04:23:56AM +0000, Yao Zi wrote:
> > +/*
> > + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> > + * Author: Joseph Chen <chenjh@rock-chips.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > +#define _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > +
> > +// CRU_SOFTRST_CON03 (Offset: 0xA0C)
> > +#define SRST_CORE0_PO			0x00000030
> > +#define SRST_CORE1_PO			0x00000031
> > +#define SRST_CORE2_PO			0x00000032
> > +#define SRST_CORE3_PO			0x00000033
> > +#define SRST_CORE0			0x00000034
> > +#define SRST_CORE1			0x00000035
> > +#define SRST_CORE2			0x00000036
> > +#define SRST_CORE3			0x00000037
> > +#define SRST_NL2			0x00000038
> > +#define SRST_CORE_BIU			0x00000039
> > +#define SRST_CORE_CRYPTO		0x0000003A
> > +
> > +// CRU_SOFTRST_CON05 (Offset: 0xA14)
> > +#define SRST_P_DBG			0x0000005D
> > +#define SRST_POT_DBG			0x0000005E
> > +#define SRST_NT_DBG			0x0000005F
> 
> What are all these? Registers? Not a binding.
> 
> Binding constants are numerical values from 0, incremented by one,

Do we have related documentation about this, or I just miss it?

> serving as abstraction layer between DTS and driver.
>
> None of these here are bindings.

Thanks for explaination. Will fix it in next revision.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
