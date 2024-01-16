Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B652BC47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 19:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CC03hLgoVbvTATwEnNiNFhhe4Oxs5DSIZVdXRcxCBnM=; b=MTUQdP+F5nkoUN
	9EwstabYrTQhaxpMPgfbKJRbIoJa+RGZKh08wMi9aGlSDerQbt9hkcRrpBcsDiUJR2ZAUB70RNDo+
	ovmMKCHNoArvEDPahKNz9fAsc2wAgvFE5YUnSbTIXZTZRbL1mQTTlVeKqAfnjMoLAVuQVxlt1sa3u
	h+zpZTfG2srqRQqrrFrzBJ+rxr2TP8ts95/jH1j7CxC4ezcIgjvIwzgP0ZhRZFphANU1XyVkNxASW
	NgRVkjWGjwilaxR0GR9rO0hIChd3CRmA2YOWrh9/tqpUdw7gZXkecMJljyxE6c5E4vKYfGgazuars
	H7PkOby/S3k4DV39WYNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpFr-00D9uy-1b;
	Tue, 16 Jan 2024 19:37:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpFo-00D9tu-1e;
	Tue, 16 Jan 2024 19:37:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 0E1C0B80E53;
	Tue, 16 Jan 2024 19:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A1E4C433C7;
	Tue, 16 Jan 2024 19:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433862;
	bh=XdQ7WzNDKpvau3vdk/AGXntBjvVQmDV/vPmkgieP+Jc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y0xBrptUbFjR4G7MCXOtysXoOyrc51Rdo5evNHTPRyqIDytxEJrJ7T2QmovRO2btS
	 EuNRGQ3Bp+ABBrwayhX5AwU67o0Ag4sVZ5sWLKTkWY8tu2qVkTQ9xPXAEf02r6LhCx
	 1fldhny+tCKfC+0XiM0h3oAr76i9lKiWhrfhzCvnpUWN6mZqKog8O7p3n92PgXkXwO
	 a/NFAHsoJT5YrJl1+JgWvWprZoJtHBBhWysHd80fzkk5ebNtaStm0IXXUnBA9lC6xp
	 JcBTHNt8hxd8FyFPyoMIJst1bkfyVDAs/2LboJXhPSFrgoRRoVOn7drq/kx3a0Gq9/
	 5kTqM0Lrug60A==
Date: Tue, 16 Jan 2024 13:37:40 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: rk809 fix compatible string
 in examples
Message-ID: <170543385965.291741.2100641423770592209.robh@kernel.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-3-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116084618.3112410-3-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_113744_699263_BB24B62C 
X-CRM114-Status: GOOD (  10.24  )
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


On Tue, 16 Jan 2024 19:46:17 +1100, Tim Lunn wrote:
> Fix typo in the example specifying wrong compatible string
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
