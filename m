Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 469E0C282CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goLjqPvq8zku25z7XFcCUEvv6BL85sf6g9DqBLiaFG8=; b=jGzVXSgQv2Yu9g
	86SkC1Sf+nIGYdUzUJkNmqMypvA4dxVSYuxUPbBA8Aucye62lifBOCu+dVfvAzf/qcV8I+EPjvsq0
	Sbi+diqPujLfVxuEGl51bYE3JoNNXLp0SHUP2SaWI4jI0fhSlfy5OKayMWGFIYTh3te9NrZlZq2uJ
	yTY8JlAhhK1Kthrl5QZrU7PlWasjGbJQEK2jzIEH8pDtazX6IdIr69RegcWdo5nC5eX886QSq1/v4
	u8nDfHRxIlCDpoJN+NlbWIju2wf9TBAHjmh1GjBPNaf6pe37wYcTWtydxDbCtMTyZRf3G6CLRlPkN
	CT3A5J8uG/3fixB3KOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Dz-0000000Ce20-38k3;
	Fri, 28 Feb 2025 20:44:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6ni-0000000CYl1-4690
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 20:17:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 859DE5C63B2;
	Fri, 28 Feb 2025 20:15:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C244AC4CED6;
	Fri, 28 Feb 2025 20:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773858;
	bh=6KGthV4tzaFDj3AdVqt3lZ1JPdgm3iYGLTVOdGvXUYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qtrc9H1okaLzbmE+Rjqt7C4BwGX3P+5Ap7QSNqcPCpTVO3cGrwapLhVDlA+sySqSe
	 lifzYGJ1SCGvJvnVRr24cd8sMoVShLXfXILXyxgkiqyd690AnE7kyeTC3Wjz31FOfX
	 BkrvjYcGJfwl+Idhtf6RkSU5ahN1LBVIYdZXeUjW7L27pgV7mpbAQ71XgEvoRM9BHa
	 8SJkdzueATLWi9GSZr4bjH7ZhIQWikm1vFxMTVr+NvL6VXjFCeadzbJE6EnDq7azor
	 p6oM2bzkQL8h0NJVyHLdKcIhwzlAPbExatE7LnHk6LIRhGdu2KRqXdS11i+AXfkFX2
	 /ddNC85ZfVEMQ==
Date: Fri, 28 Feb 2025 14:17:30 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org,
	Jamie Iles <jamie@jamieiles.com>, linux-watchdog@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 06/15] dt-bindings: watchdog: Add rk3562 compatible
Message-ID: <174077384995.3598768.385877979363043345.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-7-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-7-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_121739_054235_A13FC6BF 
X-CRM114-Status: UNSURE (   9.08  )
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


On Thu, 27 Feb 2025 19:19:04 +0800, Kever Yang wrote:
> Add rockchip,rk3562-wdt for rk3562.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> 
> Changes in v3:
> - Collect reveiw tag
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
