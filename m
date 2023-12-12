Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18206C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 21:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NmyvfeSvBo7kKSRwnz1XSIHuDwUdM7tnpi2iZ6iB+fM=; b=JXVTCQfsqXUb5vF/1j+Iz/ZMOL
	6+CgAw0X/obUVE8cFn7GKrXBGNajrepgeU3/XD9Fpf8TULmd4L1xDqpDD+Kk7MIeY/LYE5pTMEf6r
	KcGNBslPSGSk3Gr5a8WTqjs4Zipjr2KWuS3bV7J8YZjm31MbGjc79D97iuF+rfPukhn2vthkUoHdO
	yI/ZXIpZyHC9PgTYvZzM496IAmKv4B19w4ixUVfhW/vdZq8hIbv2vh9hJ1im3trEfaz1R1hQQcsXP
	PBZPJkxej4Tqx73UpfhtsFUSiH6lsu7yW/4Rb7gib5ULR8NwdI6EKdTmeyp46OCRYLjbBgJ2or/fH
	V0qKfb8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDAgH-00CrqO-0m;
	Tue, 12 Dec 2023 21:52:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDAgD-00Crpi-1r;
	Tue, 12 Dec 2023 21:52:43 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702417958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L4O0xLTuW49hcnRZ6oXP9tZLQjMz8O4O8wL9GnqPeFA=;
	b=aL6LoBetuv5N4jVCYP5te9l4WA27jUJVjQXU2nQ7jO70NyNhsaoauPpCdAQohWKI7IZUU5
	pzGcTN3tNVes4w6cK72ICDQBp3/vwsG4qSdCzfwHvGVducJQbqCmqa8ae3HiJfpL/IJoEX
	sxk46DYP7hjJFNprAuVIVG4Qjny1KY3EM86tRkFIivWgzEFOa6CQD8qY3n0IoNlnLUVBXM
	oXbWNVI7/267z3cAdGhbJrK2i7uUCZHuArF1QUpLJSo7U7im8m5xdYrNHomWTDcLxAaejV
	NCTm/k/WUtHgCFjgpqNNDTnNHI1gP76HBzxBxJW9bAxrpotk3/K+EPSAFdLvOw==
Date: Tue, 12 Dec 2023 22:52:38 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for
 RK3399, RK3368, RK3328 and PX30
In-Reply-To: <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
References: <cover.1702366958.git.dsimic@manjaro.org>
 <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
Message-ID: <953de15233be59ae1b3bf69e0d2e7474@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_135242_093991_4FC4EC69 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023-12-12 21:16, Heiko Stuebner wrote:
> On Tue, 12 Dec 2023 08:53:47 +0100, Dragan Simic wrote:
>> Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs 
>> and
>> datasheets define no numbering for the built-in GMAC(s) or MAC(s), if 
>> there
>> are more than one found in the particular Rockchip SoC.
>> 
>> Moreover, not all boards or devices based on these SoCs actually use 
>> the
>> built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases 
>> from
>> the SoC dtsi files and add them back to the appropriate board and 
>> device
>> dts(i) files.  See also [1] for the initial discussion.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for RK3399
>       commit: 8030063ca9b019f9dfb90a654f557d8bb15a97a5
> [2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for RK3368
>       commit: 7aab60df473c70f74880267500884b12151b160b
> [3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi
> for RK3328
>       commit: 20a9a7667af6b11b7369073d0186d9c92e52db04
> [4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for PX30
>       commit: a69907a915e4c15bf7e632cd324ec5c3e38c3afc

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
