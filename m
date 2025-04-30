Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5EC4C3ABAC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 14:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2WwQViR7itZvo/E4+1z4zEhADNVi9TiJfpSuoKiSb8=; b=0FvcDT1jXHF94e
	9wYaM8ox8Wt/CWrx1OX/w86V8vSHJv8mCltRl0qI5aYCgI3RwPBIQAg5LWg0Uw1Ky7V31sWB0A5bA
	/woV1lQQG7w6mS8Jc7/AW8eruAjBGk9FggpB70lCfw+SjnnZJTA6NTZnYxzegKphnOEEZJ1/do/o4
	yGnS0ESGzPRlI0lvmVBb02ttwHIyjGSs4dXd0GPijHjRcaWBPoo4NEH0RW9TGcaTG0fdZBhXF10Iw
	00zEl1k9yN9nd3qs9VAz5Rml0aHU1O+gBgYUlFpXHVTVheQRwG5ekJ52q0FI9hp77PtEJKqzjyuGV
	qiJmMHLKP8u8xtb1O+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA8aw-0000000D9D5-1zeJ;
	Wed, 30 Apr 2025 14:39:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA8Xm-0000000D8X4-0DYB;
	Wed, 30 Apr 2025 14:36:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BE8804A11E;
	Wed, 30 Apr 2025 14:36:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DE11C4CEE7;
	Wed, 30 Apr 2025 14:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746023772;
	bh=cKXS0wbgFsKYhv80O7ouzrBxO3wfwf4oihtTeXawYtw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WauwNMWtUTHe5HHI+QLThurQGREbcqLfHQ18UpVLclxxxtRUkcfqba7LkFfVysHzF
	 gquw22zFkR4sVoxAjTyUvBDLHEjw/hk2vAnDzHuTQ3yGeuINGQXCkEbDkJcl9uCoNB
	 SIFrgAKrVUQasWkw7hHuyeJP57p1SUs7vnJBG9BZfQ1ygHpKJMI1AV2lf77VEH7qNL
	 93U+RVM9TpRi0UZil/z6y7vppSaydNgyMwUWOH1heAH9QW2b5qofbWydsKh/IXeC48
	 I+4K9y08oLBLT1oUP+qDnBH3GFRTfdjnHTXJOJac4o7Nr+3rOTcqH93G85uveDmGJ7
	 7et0ESu527O2Q==
Date: Wed, 30 Apr 2025 09:36:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add rk3399 industry
 evaluation board
Message-ID: <174602375195.3396795.11425847299435773154.robh@kernel.org>
References: <20250430074848.539-1-kernel@airkyi.com>
 <20250430074848.539-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430074848.539-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_073614_107258_F23B145B 
X-CRM114-Status: GOOD (  12.12  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, Andrew Lunn <andrew@lunn.ch>, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 30 Apr 2025 15:48:47 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add devicetree binding for the rk3399 industry evaluation board.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
