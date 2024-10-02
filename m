Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 515CBCF31AE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Npy2mQkSubMee0m2WPoL12U2w3Bk2eo4/b30FlfFFG0=; b=VfIB6PESTZA5Ym
	jQcQOynlXXU+zmO9BOzJ2gW29lg4u4msgq16bf9+c/pWKHTRFJMm75+oiIyWnM1AbtdSJZp8s6YOG
	9xWRh0rZxIjpqEDieNeXOvf4ONeHmz25JjwjO6jDYhexit1z1fdPSYw2mAqA5dQZk1H+CWUrT4uPQ
	6PfftMo6qNzIdDDIOgnVYg/iX8a1JcapYJrv0vBCeWJNcJ5nN2qhKYSTnpQliMSATN61A3Xxutr6G
	tuzZpQ3etjoZ3ZVngJiS6lDzxDbArpT+2yvd7Zs/ECWKf5c/agkZZeM7sNkg3flyOGT5Lmb2ITzKJ
	BB0RofBCaG2k5wuNRkFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwCy-00000005Qqh-11hx;
	Wed, 02 Oct 2024 10:03:48 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwBg-00000005QTF-13uV;
	Wed, 02 Oct 2024 10:02:29 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id DA5F423D0D;
	Wed,  2 Oct 2024 12:02:26 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOgPIL8UERTp; Wed,  2 Oct 2024 12:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727863346; bh=diAxOzbkDt7Ql6pEvIoL0lSFjwVt76nj7B7wQU8hIL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e72KBXjw1unZIPqp2BXx5mVZl28cPYllJrN30Iu37IpAJAFXtK41o4XqmiqGkK6L2
	 RckGry+l71IxBSykpvTGO4jSKz8Cbz6SqmMwHpYqb6K466M2zsU9WxrSWEUTveAizt
	 SPIgEBUzYhyHP2SjJ5yJ6nqqcKTBbK2MsXqlvDOVx+0jg1uYrIcBHKz/kjnyKsAc/y
	 ImX5OTlpp9CwmMXq4Qgiot+ihKF75R/GyjZ26CmNdDNOZ+IwjPpWKx7uThR9MN7HCm
	 RhCw7UsAmpd4eVtuPczhT+4gdMST0u11W/1qcFdD6SFR8gvavrYqJl0tzqgCgI1sx3
	 hlkE3e0V0uyFA==
Date: Wed, 2 Oct 2024 10:02:04 +0000
From: Yao Zi <ziyao@disroot.org>
To: Conor Dooley <conor@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 3/8] dt-bindings: clock: Add rockchip,rk3528-cru
Message-ID: <Zv0aHDUSsGVIWkRi@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-5-ziyao@disroot.org>
 <20241001-name-stooge-7a939f71a08e@spud>
 <Zvxm71YvGbF1s_2w@pineapple>
 <20241002-sash-gigantic-f79da2043875@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241002-sash-gigantic-f79da2043875@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_030228_502482_9AD90DDF 
X-CRM114-Status: GOOD (  18.70  )
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

On Wed, Oct 02, 2024 at 09:49:21AM +0100, Conor Dooley wrote:
> On Tue, Oct 01, 2024 at 09:18:03PM +0000, Yao Zi wrote:
> > On Tue, Oct 01, 2024 at 05:29:15PM +0100, Conor Dooley wrote:
> > > On Tue, Oct 01, 2024 at 04:23:57AM +0000, Yao Zi wrote:
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: xin24m
> > > > +      - const: phy_50m_out
> > > 
> > > Why is this input clock named "out"? clocks should be named after how
> > > they're used in the IP in question, not the name of the source of that
> > > clock in the SoC.
> > > Without descriptions provided in the clocks property, it is hard to
> > > understand what this second clock is for.
> > 
> > Thanks for explaination, it should something like "clk_gmac0".
> 
> So it is actually an input clock to the cru?

Yes, phy module generates it, being parent of several CRU clocks.

> I'd like to see an items list in the clocks property please,
> describing what these clocks are.
>
> Also, "clk" is redundant, since these are all clocks, so drop that
> from the name.

Okay.

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
