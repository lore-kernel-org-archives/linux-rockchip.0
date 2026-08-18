Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85951C5DF81
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 20:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wcJzTUVhLKHB1faDQ/nWdN3MtchpzX7Paov6ME6FAg=; b=pFuX9U7NYTOy+m
	Qp/AjAVDnQex/lQyMeurPfVIHgZRDRrA1icSq9tz/T3M8hLZZX7os8QD54S97BKOP2IiJxajIWu/v
	aNpIjIl9Ml/0TytsVcpc8YKDo9F27LCdNN8+Un+qrj0tSWaU3VheU1enbFht5BTME2yav3dc7zRha
	Pa3mqc3Kiw7ihZvnIdG/eXLp6nquGBqDpx7tmbIKkJbWbxeL/m94QUo+qlTLP8egymaL+Pv3e7h7s
	8ii8xemcelWrU1Cd1BVgZI1BCgzRwLvwXXOA7GuXftrt2CpU/HvFpq9MmvEyGb+Qlq6ZO+lDW9E7w
	Qg3x6gvGms9uxcmDvwXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQLO-00000008dG0-2voA;
	Tue, 18 Aug 2026 20:23:34 +0000
Received: from out-58.mta0.migadu.com ([2001:41d0:1004:224b::3a] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQLM-00000008dFN-1sVl
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Aug 2026 20:23:33 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=AqJeH+5LKRNmRQzJ4ZHVSBjhlvotk7eHnatQlagjm3E=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787084609; v=1; x=1787689409;
 b=EuV0Ut8m3bx+Jytvwzqdg2h8IEQsQw453LdXkbQtrC3ORpOre07Tbei7lUgOTZi3qUtj+JsH
 fYOYY6vJhb8ocWkfupU9xrzbw38FuQ4QVsFVN5SKzhuQv4fvzlggrAK1iDo6Ki3inl5TDlsAsPr
 FsWizV7G/i8RuUEXHSVYaI17hehjI0H+qjZq2Ti9V1D5BHj6/NMsM0XkrD3tdiBASUL2494i4V2
 LAOlenuPwemcftck0H1udTkgnPxgDl7zpA6kc6TFyqBbnrEjAOiu4gjs6wn2g/zxHznh9X4cglb
 EAQ07jyqXAA93/F7oOkavbjtWiwqcIcYsxhsi4yl8E4+g==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: from localhost (92.254.112.55)
	by smtp.migadu.com with ESMTPS id 00a65aeb1c26adae;
	Tue, 18 Aug 2026 20:23:19 +0000
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Tue, 18 Aug 2026 22:23:18 +0200
Message-Id: <DKSCMAUXS10I.2AB9KERO16FRG@cknow-tech.com>
Cc: "Dawid Olesinski" <dawidro@gmail.com>, "Herbert Xu"
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Corentin Labbe" <clabbe@baylibre.com>,
 <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] crypto: rockchip: Add RK356x/RK3588
 cryptographic offloader
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Eric Biggers" <ebiggers@kernel.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <DKF8V3IHKTL2.1PUA8O5IVIRYC@cknow-tech.com> <20260818185810.GA7030@quark>
 <DKSBIH29Z9DE.1OR442P0XUSCS@cknow-tech.com>
 <20260818200454.GA2718123@google.com>
In-Reply-To: <20260818200454.GA2718123@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_132332_688489_FDB03295 
X-CRM114-Status: UNSURE (   7.35  )
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

On Tue Aug 18, 2026 at 10:04 PM CEST, Eric Biggers wrote:
> tcrypt.c reports cycle counts from get_cycles(), which has an
> architecture-dependent meaning.  On x86_64 it is something approximating
> the CPU cycles (3-5 GHz) whereas on arm64 it is the ARM Generic Timer
> which tends to be around 24 MHz or so, over 100 times slower than the
> actual CPU.  So 9044 vs 115 "cycles" for x86_64 vs arm64 sounds about
> expected, and they suggest the real times are likely similar but
> slightly faster on x86_64 as expected.

Phew, thanks for the explanation :-)

> This sort of thing is why benchmarks usually should measure real time.
> The legacy module tcrypt.c unfortunately uses get_cycles() instead.

What would be a better/non-legacy way to test crypto performance?
Is that documented somewhere?

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
