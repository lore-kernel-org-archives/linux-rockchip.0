Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33553C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4s0YpCvLTk18vBm5VF3MyZ1cKvfwRthUnRIJ0dbwpY=; b=bOwf/QP3cC7e4I
	9KASCq3rmU5KdbHgcHD+zuE0GzbkaIgpk3oP1Ywbs+YgQN+LIOSsTqw8KJ8NE+JGSa0Xz5cgZZD2M
	MwmmMpROTmd00Lp2Z+LOknr6XE/yWohicmFqusIzsPyqGD9uNhSvd7Mw47BInUcHoli9wQGn1fhnI
	xe1vhd7ul+eoTjG/tmyk/3m/ZEBE37BdBfHZHpAEiKZuKMwUPehuXapBrKfevGORZDxvfTHDP6NcW
	jK1n3s/W2LPnKkrhAVrUJjIIRgIKkS2yvPf5OlX4BnWZeMHl28PNQsKe/GrUeag2On6cq5/RjxCX+
	92zpdKHYF4vR3TAiHnkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6uJ-0000000CaZ3-0kvp;
	Fri, 28 Feb 2025 20:24:27 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6fg-0000000CVok-3ViV;
	Fri, 28 Feb 2025 20:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9D9FF61FFA;
	Fri, 28 Feb 2025 20:09:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FA5CC4CED6;
	Fri, 28 Feb 2025 20:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773359;
	bh=c+sE0vRTYPK5+zxcrp1859xwPNcSp2Ia8bQxKP+1ue4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iOEGFbAikIKhBwP7R8Q1cczMdTxG2DxAm34nkOjMcPQOK34QCTo0FEzUP/5x+cyHh
	 yoDrzdjSR/uzA5F1IGSnyCDE9D5m2gFyKVuoHGADz7HC1xgMX2yii1lbqAW955qv8K
	 h/V412TyHwr8NGysE3uVpzKmmyFmGHl9MGTJt+iYal9u449N1KZ1KvJCKQwj+dGrqj
	 YQEi/S4DxwQYkd8Vp/FIOGDLDyuRRDoAZsGCi3ht8rVqkWJBnEoXp8t5uwU45gEmzS
	 n0VV5lfD09hK8dIoy61eN7hkmnFPpuQxylgWnkstonbpb9CGQXgVJQXz3FMx6NExqU
	 heg1FzlU7dwkA==
Date: Fri, 28 Feb 2025 14:09:17 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
Message-ID: <174077335739.3514286.9596779963584656318.robh@kernel.org>
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:08:02 +0800, Kever Yang wrote:
> Add compatible entry for the otp controller in rk3562 and rk3568, add schema
> for different clock names for new entry.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Update the commit message and add maxItems in schema.
> 
>  .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 7 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
