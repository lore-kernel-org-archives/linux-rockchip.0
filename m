Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8E3E6895B
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 08:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvX86L96dO7B4v2UyV9IXlLzjZobVwN+P5jlhMu/MQA=; b=e7ve2/YP78y8gb
	e+O7Txpv8H8N3lRmeG31atrnGEGz9w0W6K6CIQ07VggCUHp+js9AjoPvtp+IeWi6l9IRlhcveeczc
	8Jgyy/HKiuSxm0ey40ZRA/+sIr1g6hywPxOPiRDILnR0Nr7a0wsCjVRDshAi4PRGMj4JWKNjpiU9g
	IZVwNDWSUgRNvkMpBH6hFxUZQgWcLaJU65ra4qs/SbNLU3izMllOB5uqBhAGnIbuMHJ2KwcRvR0Ck
	z2NjZ9puCLI+O+tSgAEQgiwcu+WSftV1fhmi63SGLfJdMkeaClCTEO1dEmcr1ge2C242NtHZP8OCg
	Y7UuRuf1+/se33pzfO9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Qbv-00000002x10-0F6z;
	Thu, 31 Oct 2024 08:32:55 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6QaG-00000002wqv-0Fxu;
	Thu, 31 Oct 2024 08:31:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 69304A42FDE;
	Thu, 31 Oct 2024 08:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9613C4CEC3;
	Thu, 31 Oct 2024 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730363470;
	bh=xlqpRXm6GQ0UagqS3blmLRplAa4RYc97tCA9IGBFtcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sTxQJzmMpBKy/MOAa+h1uw6K+O6EuGffkeobixeFuNU4h85gQ6knUcRf6l8DAzO2i
	 ustFNd3rPLwFpeYbLLlL0BA7kKo09VOi8XrJLBmP+uevPSrQbqdm48ryPdi2toh+L2
	 d7J//5vG1ewPurrpP4H36OrYsufrIApaZIp3rZUd46i4afFSDZATwMdbJU5YOVP3No
	 W9QGTU3zDRhaaSYkMnK5oDGCl7UqKzYxISlitWoQCEAQy8xTGO1lrG5TlEaNT4O0jM
	 wCdfwPt3AXCEyxCCJ/msVaQp1tGJokXcmauJWFQuI5SB021hcOSBXGcQkXyLtLtkbV
	 YfXiHp8mKFzGg==
Date: Thu, 31 Oct 2024 09:31:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5
 Max
Message-ID: <qyrpjugdzdd3h7536cbjcb2uq5y44mliipmagthfxhbdrmnx3e@a4ttzrfak3gp>
References: <20241031031528.23428-2-honyuenkwun@gmail.com>
 <20241031031528.23428-3-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241031031528.23428-3-honyuenkwun@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_013112_182985_F6BB0F3D 
X-CRM114-Status: UNSURE (   7.76  )
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

On Wed, Oct 30, 2024 at 10:14:50PM -0500, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Max board.
> 
> The Orange Pi 5 Max is a single board computer powered by the Rockchip
> RK3588.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
