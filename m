Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50D0EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 12:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ser9+qzXy3FDlEO33CgW/r5Qv2hhBUwh5XVzZPwcboA=; b=LlOGWDsR2oKa4o
	M8rd/WtdufLzBwykDBi3wn1oTUeVjbtL4RPrjIFdMqJjkWagAzdhpEbERoVviuE6PUyU6WHHjlPWs
	vmyTUrOX8H0/aIMtq8TBwsvFaB9jvrUFaUOsYkUh546otELlRqUp8SoLyYBKEPBCp49KIQUrqhPjF
	RKg772lPNX4vgJ2DJZdldvM+cBeSgr7/N5qvNatFhQm5bxvAQuHpx0E05t9DXrca7PY3p6VEKOUGO
	roV1pZGuN5Zx6g+uValygB+A981ytP+c8DWijRojMDH+cdUe2pSjPXFBAifTYzB3PDunfLuRZcXn4
	zBxCDaTZ91USknb128ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3zrC-00ANjf-Ti; Wed, 22 Jun 2022 12:53:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3zr1-00ANfk-Gr; Wed, 22 Jun 2022 12:53:08 +0000
Received: from [62.91.21.7] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o3zqr-0001t1-JW; Wed, 22 Jun 2022 14:52:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 26/40] arm64: dts: rockchip: align gpio-key node names with dtschema
Date: Wed, 22 Jun 2022 14:52:54 +0200
Message-ID: <4976966.7s5MMGUR32@phil>
In-Reply-To: <ca7f343f-fec0-a365-9263-06354c920b01@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-26-krzysztof.kozlowski@linaro.org> <ca7f343f-fec0-a365-9263-06354c920b01@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_055307_603687_E9E225C0 
X-CRM114-Status: GOOD (  12.52  )
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

Hi Krzysztof,

Am Mittwoch, 22. Juni 2022, 10:34:08 CEST schrieb Krzysztof Kozlowski:
> On 16/06/2022 02:53, Krzysztof Kozlowski wrote:
> > The node names should be generic and DT schema expects certain pattern
> > (e.g. with key/button/switch).
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > ---
> > 
> > Changes since v2:
> > 1. rk3308-evb.dts, rk3326-odroid-go2.dts: different names according to
> >    discussion.
> > ---
> 
> Heiko,
> 
> Any comments on Rockchip parts? Can you pick them or shall I grab them
> with rest of cleanups?

no it looks good and I'll just pick up the patch.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
