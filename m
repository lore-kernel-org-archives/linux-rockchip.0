Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5362C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 May 2023 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgIuAaXqTY8D2U5lxHmaI+E0OW0+btOS/uaxBfBCexo=; b=1KaohvNilvtafc
	gfgYXARAG7MBVs78hQBr81KMLHHpsqg4LWwsmoQ7vqxNPTzOO8xZqSMSDZzFTKQK36lH9VAzY4uRX
	sDYLExzrc9x0YEAYB/nbRYV3cAAsIWspoNoUcLJSoH0BexSDBtqvLNi8g9DBNpxg5fUFjJ2+EvOUy
	vuTCyFLNvQ433UIl26W1auohLGrarrr8+NNtk6HsOpWqI0IXjH/cyHIjc5JPsEFGhmdFU65YhwfTi
	2B0uYzT7smgbxZRkAWCc7FLGtG6+pVd9IDRvXaf/3q4hHiWjF6fy9+KHhXn1YPIqtMAwnj/YoMNip
	HpseZrHKiPrkm1qybm6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gZx-003cnL-0B;
	Sun, 21 May 2023 10:46:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gZu-003ckx-23;
	Sun, 21 May 2023 10:46:19 +0000
Received: from [91.65.34.120] (helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q0gZo-0008Cg-NT; Sun, 21 May 2023 12:46:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Tretter <m.tretter@pengutronix.de>,
 Sakari Ailus <sakari.ailus@iki.fi>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject:  Re: [PATCH RESEND 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date: Sun, 21 May 2023 12:46:11 +0200
Message-ID: <2290673.ElGaqSPkdT@diego>
In-Reply-To: <ZGUfTP1EXtlJbtxJ@valkosipuli.retiisi.eu>
References:  <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <20230119-rk3568-rga-v1-2-43d4d14365e6@pengutronix.de>
 <ZGUfTP1EXtlJbtxJ@valkosipuli.retiisi.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_034618_679527_88DB7AEF 
X-CRM114-Status: GOOD (  14.84  )
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

Hi,

Am Mittwoch, 17. Mai 2023, 20:39:08 CEST schrieb Sakari Ailus:
> Hi folks,
> 
> On Fri, Jan 20, 2023 at 10:14:22AM +0100, Michael Tretter wrote:
> > The rk3568 also features a RGA2 block. Add the necessary device tree
> > node.
> > 
> > Acked-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> 
> Can this patch be merged via the media tree? I don't expect merging the
> other one via a different tree being an issue either, so alternatively to
> the 1st patch:
> 
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

thanks for the Ack. To prevent conflicts with other additions to the
rk356x.dtsi file, I've picked now both patches for the rockchip tree.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
