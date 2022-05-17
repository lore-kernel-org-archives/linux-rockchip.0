Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C6AAC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRagmfgOSXJiwIZSjZ7odQPmaXN0CtO9k/Qvqxen2D4=; b=3rMvBs8IVJjcO4
	ImS3WdRrQsaJ+BO2WSz6lGx8DgcDwTCW+gnlREqQ05ZkJMDCHJHFUNmKKisdtKFnWDdY2Ig6xtPxE
	24S2zUGstiQ7leVcRmRu6vTchm9TcdIbilbSU/F+NrWVkZhv8bgPqfo/NVFgM7er9g60fvfIMGoLj
	b2NytV/doc5T/Dnmz/+0AfN4Lcjuyi8UMOo3YjDCSpIyDi/aUrqtqRsEO/sC7UlRmADuxbf0BVegB
	dr9FlRl/vXQA5LiJKgpLDV/0sl+38burxdbbaJagPzcIg81rFHOxSd9Mkajj8QrB/O5gfJ6YjO/Lu
	+kuus5lJvffC0DJKCkrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2ba-00FWrK-HK; Tue, 17 May 2022 19:11:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bO-00FWhE-Uz; Tue, 17 May 2022 19:11:28 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bK-00043L-7B; Tue, 17 May 2022 21:11:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, sboyd@kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: convert rockchip,
 rk3308-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:14 +0200
Message-Id: <165281458742.3119039.4240634682274966111.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329184339.1134-1-jbx6244@gmail.com>
References: <20220329184339.1134-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121127_084629_2B2A5764 
X-CRM114-Status: GOOD (  10.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 29 Mar 2022 20:43:38 +0200, Johan Jonker wrote:
> Convert rockchip,rk3308-cru.txt to YAML.
> 
> Changes against original bindings:
>  - Add clocks and clock-names because the device has to have
>    at least one input clock.

Applied, thanks!

[1/2] dt-bindings: clock: convert rockchip,rk3308-cru.txt to YAML
      commit: d87642d72e2921517a01139f33652dbb819a8115
[2/2] arm64: rockchip: add clocks property to cru node rk3308
      commit: d7283a95de1a0e9c1c2a99e1d643fa391010fb0a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
