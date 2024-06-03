Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4001C25B76
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 15:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qrkeQQK/5MxtYztWUx7grxBwBwahD3++ND9pZuOmfLY=; b=ALdwjnN3f3usvgqLW4/uU09TIX
	y6bY7jyzLTJl8ghAMwGmPoOm9BkY6D9Q4MPUKa4SZgEua6fZZkCYVDUwd1TS/mzApxhqKSMcHh07E
	g9oxX/YIG81i6u686i25JwBQw98Qaiw5yCS/Pu2sljH3H4m+e6q10DDb2EHF34LzgtwTJNgWagf++
	RM3wqA8tuGPSNy/ZZjYSaDl1a8YDGqjepsmxpZvd1axP4YvmcnLqmeVO1BoUYPD3i/cRpe54V9mV+
	Bsaz4vn3qCjLRI6N3ANxaelfnKMyIoeoXZL1BDfkQj1BBvxmUEqsDJerQBHWFoRUdR+KgmXLE+f8O
	9ovmTdUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE9xO-0000000HHcj-0AAK;
	Mon, 03 Jun 2024 15:50:46 +0000
Received: from out-174.mta1.migadu.com ([95.215.58.174])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE9xK-0000000HHZp-0iw3
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Jun 2024 15:50:44 +0000
X-Envelope-To: liujianfeng1994@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1717429836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aTmnFmkb8bF4TERqRFMbzfPb+Pc3fo4b54LXUjoLOuo=;
	b=D+zEcert3hN9qGsK+AcXWlJsjl3Db9gKXd9jdOfgBXOdhBF/Rj6hfCYf6UV8El6Mo8Zw85
	se61lByt+dUN8+uOWuYBrqOpYFr7cMX/ObegFYCrTB88zL4S5AzP3bDeILhxxNCKraqs5f
	zOLbHrxfKRpT69dPS7dw4jJ4R3uE6jTbo0YRtvXitxRLuWSHpdEzyx8WZszT6tu0wzRJJG
	36ck3nAPg+HtfwzYeR1WHvFpI2D7QVdqGA9x1kL0Wj/QiGDGs/vcKGTnWWNQQYX+Odwmhv
	I8OMDl/mgsZ56PH+SZUmrFY3jCGEhdyY4JC7uus2qf81hf3p3/yg5d+olUH4jg==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: ezequiel@vanguardiasur.com.ar
X-Envelope-To: heiko@sntech.de
X-Envelope-To: jacob-chen@iotwrt.com
X-Envelope-To: krzysztof.kozlowski+dt@linaro.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: mchehab@kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: sfr@canb.auug.org.au
X-Envelope-To: liujianfeng1994@gmail.com
X-Envelope-To: nicolas@ndufresne.ca
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: liujianfeng1994@gmail.com, linux-rockchip@lists.infradead.org
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, heiko@sntech.de, jacob-chen@iotwrt.com,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, robh@kernel.org,
 sfr@canb.auug.org.au, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: Add RGA2 support to rk3588
Date: Mon, 03 Jun 2024 17:50:23 +0200
Message-ID: <1952296.0IMdUL435T@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240322064734.3509132-1-liujianfeng1994@gmail.com>
References: <20240322052915.3507937-3-liujianfeng1994@gmail.com>
 <20240322064734.3509132-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_085042_454595_3F6D67ED 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Type: multipart/mixed; boundary="===============7774741886208784062=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7774741886208784062==
Content-Type: multipart/signed; boundary="nextPart4429252.AOvsMelbiZ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4429252.AOvsMelbiZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: liujianfeng1994@gmail.com, linux-rockchip@lists.infradead.org
Date: Mon, 03 Jun 2024 17:50:23 +0200
Message-ID: <1952296.0IMdUL435T@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240322064734.3509132-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0

Hi Jianfeng,

On Friday, 22 March 2024 07:47:34 CEST Jianfeng Liu wrote:
> This node is not sorted by bus-address, and anthoer patch adding hantro g1
> with addreess fdb50000 is not merged. I will send v2 after that patch is
> merged.

AFAICT the hantro g1 patch set is waiting on an answer to several questions 
Nicolas raised, so maybe sent v2 of this patch set first?

Cheers,
  Diederik
--nextPart4429252.AOvsMelbiZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZl3mPwAKCRDXblvOeH7b
bsnfAQC/cE8BH/2LVsh7rUJAf/rE0KjB2ckiPPsnjj2I3lHepAEA0VQJxXLkXPKS
B+Be5H5BThEaVFp5ODi5Cz5zKSu8qAY=
=XRA5
-----END PGP SIGNATURE-----

--nextPart4429252.AOvsMelbiZ--





--===============7774741886208784062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7774741886208784062==--




