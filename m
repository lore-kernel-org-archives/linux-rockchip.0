Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1218CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE0hMIvK2C2k/8Rsxn4KXrbC6QSOqtGLU54REe8RveE=; b=kL5oQYUPK4Upal
	AUNP5azxHxyweGNhtknHk77puNlDofkxrVTGOcw6gGxK4g4H8bu3wAa42JxyfBxAFrFn9ESMsMB1q
	piH8C1xr74wZW6+sX1rMa8KlLFL0dvNIyCMPER7WlTvIFrc36wwrlUhzQe9QDFBHjmoUaWALnlmG/
	vdf85kqUqOEU9AxqVOFYdUa9XgVouBELjIpLdCyU7sCcIAwV1G/EZmTvxvqaleIBeGuVijhU3/gGi
	C7LhD4m6utMgRcrv/L/L5Eui4nIsrpv3ewXGD/N07KowjNL9u4se6N8O1L3CXjCJic9/YVChRMkC8
	UZ4n/42tyR44mIjQj9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkRr-00000007o2a-14r3;
	Thu, 26 Sep 2024 09:06:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkF5-00000007lNG-0E22;
	Thu, 26 Sep 2024 08:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fd5BXslH/t6O1o9B8qLu7CipOnWPeHEzCvLu9CNlv7Y=; b=Dkkvc5udY4QTsSbOqbBk1kWCN4
	qLEXRuY32P5bcNs5PCO1M6EwQR3z2/ryo2S+bZfTQ5EKiOiOdX77Kcf41DoF/G0pKukoNIIKN0ro2
	6TjeYYB5tqJWNOCTT1OMOcEW4I6KPrzeCZXhQo+JGO1nsxpqcmyVByoCBHZKzY1pr6AD+k8SdUqRN
	0ry0IXxMVc737Rpf6V2aI3QAtGI8FZW100cS9YksBfsEFc7VUooPsGI2CTMN353e3BrkmLCVMomN0
	O/Ao8c4YdQzNb8je5Q1yUJdp7W5sKs1CoXiPqFv7y36REWk7TMN5991HfMbi1V6mJBMhKIxq3iFFC
	X9U73pqA==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stkF0-0001pZ-Fk; Thu, 26 Sep 2024 10:52:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] spi: rockchip: Perform trivial code cleanups
Date: Thu, 26 Sep 2024 10:52:49 +0200
Message-ID: <6085918.31tnzDBltd@phil>
In-Reply-To: <663ec6bb472ab83bb5824a09d11b36ef20a43fc7.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <663ec6bb472ab83bb5824a09d11b36ef20a43fc7.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_015255_164841_AC57587B 
X-CRM114-Status: GOOD (  10.39  )
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

Am Donnerstag, 26. September 2024, 10:38:12 CEST schrieb Dragan Simic:
> Perform a few trivial code cleanups, to obey the reverse Christmas tree rule,
> to avoid unnecessary line wrapping by using the 100-column width better, to
> actually obey the 100-column width in one case, and to make the way a couple
> of wrapped function arguments are indented a bit more readable.
> 
> No intended functional changes are introduced by these code cleanups.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
