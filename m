Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CE3C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BHNFOV95/U1NAT3p/J0dY6qNEoQJKwuNnmuufWkNKD0=; b=w+T0wFeolBRj7PYrVMVAwOnt8d
	ddXoT/lPBIk5H/yPy5ShdeblF9uVmumqFdJUjVRULE5yZjtsZtzvHQSwVDylSfv2Bazgqd26ynGlp
	80ZZ8zO/Sf4mYJ5T+iNEfGxOzRpUdrBjjeID+zeeNdrTCT5Y9s3ws2yq7UTxuBdi56ydoM0UpEHSB
	YX4iIJTmy+Og2EO6Kg2NBpxRPYbsYWIUwVvHv62MFjqdHd8ZUFFIDBdoPpQ4BHy1Zr5/bZEsi5Yrb
	xPv/TIpzLtaiteWPW1Hnsb7b1NcEfKboxSESbedzzgJEmNPQjNFwLMams8N0kp9QlUZf5f/1y30ll
	1Nfji6dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUA8-00000002v6i-2rHp;
	Thu, 18 Apr 2024 15:59:00 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUA5-00000002v5A-1ZXI;
	Thu, 18 Apr 2024 15:58:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713455935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kiW4f7FdjCXio2Csij/Fy9C8DuPPxHwY5d9PSj9jra0=;
	b=gVWBrhR9O0t7sklMHJuPowAW1JBqpbiO8lYTO9h8bpzXNPbNpEZdPVIS0hj2+p5LfHdJOG
	I/PfMNf3g7pxY8TQwqMpGH90aMbSRxhvdkQzFn3G5WlSf0S91lQ1KtzXThs2wTkAo1enCv
	XvXUkinDb5WOjpTzU0S/EMCIXP8juYJ1+wwRyPSoEyGI0Ua7CauQ4tk8KIXbcrUucwqs6d
	HBzhMKQBZ9JslLFCX+S+Iair2HZbq73twNykIJ1RNkF4vsMHXI6Jz7AFwFwmr5wFoKUmwr
	/bDSyBEIk3eXXFsFPZDZ/z4rz9HhoMwbMsEEPFH2ovHUO0yBIVt7X6zQxRgX/Q==
Date: Thu, 18 Apr 2024 17:58:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, FUKAUMI Naoki
 <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
In-Reply-To: <20240418-skinless-aptitude-245665a7c757@spud>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
 <d00953aab0f1c978e3720885a6844caa@manjaro.org>
 <20240418-drove-boasting-d189ee3e22e0@spud>
 <7fec3e2f4e16b1aca6cd08e1882bd885@manjaro.org>
 <20240418-skinless-aptitude-245665a7c757@spud>
Message-ID: <865d70eea51c18570d94a4fc86dcb5b5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_085857_618087_70185003 
X-CRM114-Status: GOOD (  17.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-04-18 17:57, Conor Dooley wrote:
> On Thu, Apr 18, 2024 at 05:46:30PM +0200, Dragan Simic wrote:
>> On 2024-04-18 17:37, Conor Dooley wrote:
>> > On Thu, Apr 18, 2024 at 05:21:18PM +0200, Dragan Simic wrote:
>> > > On 2024-04-18 15:01, Chukun Pan wrote:
>> > > > According to https://radxa.com/products/rock3/3a,
>> > > > the name of this board should be "Radxa ROCK 3A".
>> > > > Also update compatible to match the model name.
>> > > >
>> > > > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
>> > > > Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>> > >
>> > > Looking good to me.  I'll send the remaining naming cleanup patches
>> > > a bit later.
>> >
>> > What remaining patches?
>> 
>> The same naming cleanups need to be performed for the Radxa
>> ROCK 5 boards. [1]  I had some more cleanups for the ROCK 4
>> boards in mind, but I'll drop them after your NAK. [2]
>> 
>> Though, I'm not really sure why the NAK?  Those names aren't
>> used anywhere, neither in the Linux kernel, nor in U-Boot.
> 
> There may well be other users outside of those two projects that are
> actually looking at it - I don't think that adding a hyphen is worth
> disrupting anyone for, it seems perfectly clear without it what board
> this is.

I see, it's perhaps better to stay on the safe side.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
