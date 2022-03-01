Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A88FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcBXDabB5UBn0kvWCK7pIkffv4UHe6dRJ5TgUsrcDzQ=; b=Wk0CO7YSeJD/d9
	/izddpo5NQNMmc2e+vas6/oy/S9vFff3CdCvCMLCmI79OEY7y3WFdQJooPix6FbxyUvKjlwjsv8SL
	E87pVxL8pvstlFqsR4pNgGbPXHZ8NQdH1oPpdTmv+SmAYSy5Hb2nPMkK1nFGDK4q71+rucR/olB04
	oed79HUgj35/B4UENGyl1tqj2OnjhQKj3+2dQruaZUEI4slCSblQs2OmVkRFCbhNQiXe3eEXl3oax
	Uh0YM0McQE1MaOvoBtHVjRqBkuRfEC1RngEu6RbNPfn8U8uN193bz2Yv6fveCgqMl099vdUiBEvXn
	+O0QWkn+ZQFplAGV19Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP25f-00GgD5-9i; Tue, 01 Mar 2022 12:58:55 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP24w-00Gg1P-O4; Tue, 01 Mar 2022 12:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=dEZeDrjsIzY0RrTo4uH6LCxsW77wAiB3aeEDQoZvGb0=; b=y26oi
 8DUfY7wPVY+Btl2Z6xXD1TtHWrqBS1unDolNzksxqZxi3zr8h7YoSNuGHxoSRtPUmssh7+OQXZnYx
 3+RGVbJnV1oaYxSAVkQPJSVOKou2Z9XBxPfSE0B8SP/DYjBBo0lQ+0WEn7iZ/SBpM+O9zO7cx10DZ
 rJuvoFVtc+Trtu1PTmPEFos0fj1SuHz0HADTZCl30sV/GnUIy/xiP0i6vLggJ9IpGdHj3gktvX8wg
 HZCwx3ohPfypPIFhCwrtTa95V3S5s3FsbQ/T44lQ4uVrEfblktLXmkDopeAZPcApWFLco3QMIXlQF
 jgNS7o3Ggqpu2opvedY9VqDJxSb9w==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nP249-0007q7-6Q; Tue, 01 Mar 2022 12:57:21 +0000
Date: Tue, 1 Mar 2022 12:57:16 +0000
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 10/16] crypto: rockchip: rework by using crypto_engine
Message-ID: <Yh4YLGeaXAzzr+PK@donbot>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
 <20220228194037.1600509-11-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228194037.1600509-11-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_045810_831696_9901D6FC 
X-CRM114-Status: GOOD (  10.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, Feb 28, 2022 at 07:40:31PM +0000, Corentin Labbe wrote:
> Instead of doing manual queue management, let's use the crypto/engine
> for that.
> In the same time, rework the requests handling to be easier to
> understand (and fix all bugs related to them).
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---

In addition to the warnings reported by the kernel test robot, this
needs to add select CRYPTO_ENGINE to Kconfig for the Rockchip driver.


Regards,
John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
