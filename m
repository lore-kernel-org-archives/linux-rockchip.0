Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBD6CF31AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLSzVSgCea7zSG/7/CQB9kQlzRtX2JV3NkaMtb0/mAk=; b=UAaPXir0xYrqy3
	9SqFtk2ZwY+dv6WvoytOOK5ETEZFi/CEZsh9c9FOKb3IvWG16eB47E5f/V+ajl6jPgS9+uQxul1Sz
	MMYggO0UeYLLqRaTiQM/n3wze9Hhoep+7z8yutuT6kA/y261QA359go2Ycel9yYHdpYJNoIXBoBCT
	+CfkpRpP6Z6rYQ7uB0UqMIRI/bf9xBGP4CL24PVSrsQZkRxNfv6RjX02CRzdI6ZLI4dVUI8f6nN0/
	dZpXeiu5aHo3+6ZrVDGXq4CJrWDhVe/ijKna1cNa98Y394AM1EYNnmOrTMeiSc3pjqPIUg2G8tzNc
	Dq6EktmTsucW7xKn6kWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwVv-00000005TfM-036K;
	Wed, 02 Oct 2024 10:23:23 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwSo-00000005T44-2jNh;
	Wed, 02 Oct 2024 10:20:12 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3114923D0C;
	Wed,  2 Oct 2024 12:20:09 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3x9mbW7CcFki; Wed,  2 Oct 2024 12:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727864408; bh=v/SHaBe3azNycrMX3xW1hD4p/17jiqX7UnkDglACAuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mkyWSGxUfC2oOU3psYN5YCbt3QbaFJddEq1Ypg0q2JvA8zooHmk0ptKXK2MSYDJUv
	 VSE2afuV85JyyJ8fvStXw5/uJtaNadaigGITnfsmf/wa5JQ2YkMurGVvP1CdiBmjDW
	 0jbuj4CAzPGA5NoQNLAFVB82SDK++eVBmL/L3Pikc7nnTxJQdn5dL/ZdbsKpU7hcMd
	 gRwIIgo2WW3y8fn4LUHP7f1JFvolA4USCGPvPVy5pD3SwHH+fsu0q4TbXE53g3TwZr
	 i/bcJEfq9IUtad4G8YS3ZUzJjsfup0Z4SB0nwRUOCYftWhgp6pBEs6pXfbVrlEtI8P
	 q3snlL+imgJTg==
Date: Wed, 2 Oct 2024 10:19:47 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: reset: Add reset ID definition for
 Rockchip RK3528
Message-ID: <Zv0eQ0GofiaXxkB2@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <kg7lh6gafeegmljsygukhfjiztx5wbothngtxrcreccao3itpy@f4bxf4w346ky>
 <Zv0YRkabzDTARc-L@pineapple>
 <2647978.Lt9SDvczpP@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2647978.Lt9SDvczpP@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_032010_846595_31213374 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 02, 2024 at 12:07:06PM +0200, Heiko St=FCbner wrote:
> Am Mittwoch, 2. Oktober 2024, 11:54:14 CEST schrieb Yao Zi:
> > On Wed, Oct 02, 2024 at 08:31:53AM +0200, Krzysztof Kozlowski wrote:
> > > On Tue, Oct 01, 2024 at 04:23:56AM +0000, Yao Zi wrote:
> > > > +/*
> > > > + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> > > > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> > > > + * Author: Joseph Chen <chenjh@rock-chips.com>
> > > > + */
> > > > +
> > > > +#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > > > +#define _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > > > +
> > > > +// CRU_SOFTRST_CON03 (Offset: 0xA0C)
> > > > +#define SRST_CORE0_PO			0x00000030
> > > > +#define SRST_CORE1_PO			0x00000031
> > > > +#define SRST_CORE2_PO			0x00000032
> > > > +#define SRST_CORE3_PO			0x00000033
> > > > +#define SRST_CORE0			0x00000034
> > > > +#define SRST_CORE1			0x00000035
> > > > +#define SRST_CORE2			0x00000036
> > > > +#define SRST_CORE3			0x00000037
> > > > +#define SRST_NL2			0x00000038
> > > > +#define SRST_CORE_BIU			0x00000039
> > > > +#define SRST_CORE_CRYPTO		0x0000003A
> > > > +
> > > > +// CRU_SOFTRST_CON05 (Offset: 0xA14)
> > > > +#define SRST_P_DBG			0x0000005D
> > > > +#define SRST_POT_DBG			0x0000005E
> > > > +#define SRST_NT_DBG			0x0000005F
> > > =

> > > What are all these? Registers? Not a binding.
> > > =

> > > Binding constants are numerical values from 0, incremented by one,
> > =

> > Do we have related documentation about this, or I just miss it?
> =

> here the value notation in hex format is very strange.
> =

> For reference have a look at the rk3576 and rk3588, which follow the style
> recommendations.

I have checked their implementation before sending the reply. Older
Rockchip reset bindings, including this series, encoding register
offsets and effective bits in IDs, resulting in the mess.

In next revision, the new style will be adapted, just like rk3576/3588.
But what I'm asking for is a generic style doc of writing dt-binding
headers :)

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
