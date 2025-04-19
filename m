Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1533DC369BD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Apr 2025 04:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l00LHEXA+CV5d+oFcU+SaD5uVqXkzHo1JBedXSVEJSc=; b=WVRoVoWiJkDGq1
	DVr5/rlX80YvzJ85Ut3qtb6OdkITfu8iv0UQxOC5p7v0Wc0K0mdMcbNqPXOcHOwtL2U0xdb0tOv9R
	EJHhgyeVRZpKH72DQF0uccS7lhbGNHO+uwFVUTcjJkmaT7Z6k0wm8HA5vy7px5nG353sS0MArbJi6
	V+iB1FLCaG1djq2CEggc5dWLhxJq4Xddp5QamlGPvetpFyZ5nE8LDXZ9rGTZKW0++tLPtKSATm5uY
	J4e4xim8Y7Xx+F86eQiwYOqqBmS8CXhrosWD0Ct5Ndlr33LwD5ok3kw4f2BSgWzrDFuUpKUMDdpbl
	6UQrP5W9wpBQoPKT3fsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5zUJ-00000000oL9-1pHC;
	Sat, 19 Apr 2025 04:07:31 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5zUG-00000000oKf-1l8I
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Apr 2025 04:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hmeau.com;
	s=formenos; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=mGOL1PpCjzxYDOyt68iLzxOF7neGzcJzaEFed48nI64=; b=fpEMYrW4F3s5PLFL/Ef9G1NbgQ
	QQyoMzDUPfQuWxEFTTf6xkxvAW7+Vh98b5rCfmot6EC24KjxAzsgN5qJiRSPxMcFTTf6EEPTh5hk0
	R1l9nY2TeLw4TAqfvF1juHCWtYI7As6qp88q7FIV0xZBKKHNzcVZSlkUJcgWT5aPbe80JxIj4sbvQ
	8CEDqH/I6mSZUb6WHaZ/M+/wnquNzEJ0zEBbRluNbjhhu42Ybyzm/DaRSHWWjZXiafojk034Zcuf2
	TzKdOtuahJkcbECreTpBBHQ3OCvl30fhVInYzjS6gSPubNgHjjl/Yl3Ky0PCSrd/vndzaaU9ryjJL
	VQKzWDeQ==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1u5zTl-00Guwx-2S;
	Sat, 19 Apr 2025 12:06:58 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sat, 19 Apr 2025 12:06:57 +0800
Date: Sat, 19 Apr 2025 12:06:57 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Akhil R <akhilrajeev@nvidia.com>, davem@davemloft.net,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	linux-crypto@vger.kernel.org, linux-tegra@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/10] Tegra Security Engine driver improvements
Message-ID: <aAMhYaq0Ze-z6E8q@gondor.apana.org.au>
References: <20250224091610.49683-1-akhilrajeev@nvidia.com>
 <D99QMGBHHYJO.1D7D0ZXJLBG9Y@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D99QMGBHHYJO.1D7D0ZXJLBG9Y@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_210728_460373_D0383420 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
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

On Fri, Apr 18, 2025 at 01:45:23PM +0200, Diederik de Haas wrote:
> 
> Earlier today I tried to boot my 6.15-rc1 kernel on my RockPro64
> (rk3399) and that didn't go too well:

This should be fixed in the latest mainline kernel where hash
request chaining has been disabled.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
