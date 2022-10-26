Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A71C38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 10:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptqsl2/Dd410PyFYW1gzwyzKOqaUxtd8qxe/FLyjZHg=; b=Nn7Rhfnm3sybVj
	8YcclVJTOGjJ1bl0LwaHxvKJt9kPDq0UuG0W92EJoXT8yEH6bRtmxRtQfUMAtnIDdy6SOqjR9dVHU
	EQJu2oqTQ0BbEhygN+VJe+RuJ6TeBBibx12JCvymgdQ4HGn61bT/v7qT8V+NvMsslugx4k6cxFBRj
	vaJEfHY0+/P7Lj0GMfJjm6s2oB6qnLO5khA7pG5TIy+e460+WN4VApvLGdLulecWwgTFdzJ4Qidmw
	w+lH1xc2ZjLNn973JR4kh4metj/iftRjQjzeWIn6G5wAhu3DeGIixg7NsAnfBpDc7jvekTvzx02c/
	ma1JDji3T1KexoWWsxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondIY-008tYo-6r; Wed, 26 Oct 2022 10:06:10 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=formenos.hmeau.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondIN-008tWj-Pw; Wed, 26 Oct 2022 10:06:01 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1ondHU-006UUy-SN; Wed, 26 Oct 2022 18:05:42 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Wed, 26 Oct 2022 18:05:41 +0800
Date: Wed, 26 Oct 2022 18:05:41 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin LABBE <clabbe@baylibre.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, ardb@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	robh+dt@kernel.org, sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <Y1kGdWyYPtcgQPtd@gondor.apana.org.au>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
 <Y1KctXMZ1+c5uQqd@Red>
 <4780296.31r3eYUQgx@diego>
 <Y1jkqiYjXT30/hk5@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1jkqiYjXT30/hk5@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_030559_851264_88B621AC 
X-CRM114-Status: UNSURE (   6.04  )
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

On Wed, Oct 26, 2022 at 09:41:30AM +0200, Corentin LABBE wrote:
>
> Herbert any thought ?

Please let me know exactly which patches you want me to apply.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
