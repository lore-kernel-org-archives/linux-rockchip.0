Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 820ABC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 11:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgcZfMtMxuG9JGFOtyEuo7+CsJlcTMPifPqGsya2AWA=; b=Nb5/Ljs+yFnwjM
	DSzfjrSKjfe/DC4t8zAa8h/hP3T6pUu65HFa85f5fYQY26XGm4dx+ECr9nXKjHvN4xPAOI8csAQYt
	7xRspxzwEzZCmKDdB6lfNXaUxs6qNjwZuFqBoY+mgRPkve1Dpuw9T2bpn731FGJWJ7jJ9O9zRgNzr
	DZzVRXNDz5yaLWoN/5OMQVdlmsFckugDvSMbU2QB09Dk2Of8DGdAU72PFidU66vIzNomq5Y95y+1G
	zcRZeeTi3hqdY3mFOeABHd6UBe219mz/F8cig/mPdidWR6fQwktvbzG660MrmvQvOCcEh0wOgd499
	qEDTV3DP/U82loDig6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FHO-0001xv-Vc; Mon, 20 Jun 2022 11:09:15 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3FHB-0001qL-MX; Mon, 20 Jun 2022 11:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=CZYkuwuyEVUXwAO4XEMsBG16iYPMRoKYAzF0IBgK8jw=; b=wL0TKz6sUdFxt5robK9s3vw+3G
	vpCedd//rpevuhpOWvmzXtuI9V6if7lusAl/IUIO7gLmtPLmRydFYlzsTA4QGYxoPCryVFxTrC/ed
	DQj9X5V2Iofi04R4r3gi1vbNV0IOLuGlNKnJuNVSyssmuo/3RAZKQSFiLd42qpxAMrIiUaGzO2rL2
	eYln0Vxf/ZYHf820uZKfZF6B5lryx/pAgcnh1Y+juyqJJRzaS3IarO0crKCUX5GK0Bf0uLBs77Uvv
	DI1aX1UMTtVe6MYIosymILmwqyo/qFJFDvjRbHQyCr/4VyDlhzMRXBGp0sy8d3uTl621LW3GemvTg
	DxIbGEfQ==;
Received: from 92.40.170.2.threembb.co.uk ([92.40.170.2] helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <john@metanate.com>)
	id 1o3FGu-0002Pu-OT; Mon, 20 Jun 2022 12:08:44 +0100
Date: Mon, 20 Jun 2022 12:08:43 +0100
From: John Keeping <john@metanate.com>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <YrBVO+2TWufDOrtH@donbot>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <YqceGFafq7QoT+8w@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqceGFafq7QoT+8w@Red>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_040901_770199_BFB079B1 
X-CRM114-Status: GOOD (  14.54  )
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

On Mon, Jun 13, 2022 at 01:23:04PM +0200, LABBE Corentin wrote:
> Le Sun, May 08, 2022 at 06:59:24PM +0000, Corentin Labbe a =E9crit :
> > The rockchip crypto driver is broken and do not pass self-tests.
> > This serie's goal is to permit to become usable and pass self-tests.
> > =

> > This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> > rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_T=
ESTS=3Dy)
> > =

> > Regards
> > =

> =

> This is a gentle ping since this serie has now, no comment to address.

I've just replied to patch 14 with a comment, but other than that I
agree that patches 1-24 look good.  It would be good to get these merged
soon as crypto acceleration on Rockchip hardware has been totally broken
for several releases now.

Patches 1-13 and 15-24 are:

	Reviewed-by: John Keeping <john@metanate.com>

I'm less sure about patches 25-33 as I don't really know much about the
crypto API, but it seems strange that dispatching requests to two
(nearly) identical accelerators should need so much special handling in
the driver and that there isn't some higher level management for this.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
