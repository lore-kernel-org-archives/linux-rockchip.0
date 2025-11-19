Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FF6BCF2588
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 07:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coFeavbp9NILlg+vsL1P94MkpjODqVKdwLMh6IcpuCE=; b=2ZI3cRwsSGCGvE
	fzH2aU1C3wJiHuJnlDXhQuGvEkwiBRYlAgPyiZoIln6yvxZMUd/hZIbHtoCXSpNqkDLlLM5Cc8tVh
	j4eag2JGiSllibBk/qC2sgjnFS513crYgX0eFL1oeS2jIY8AXT0UrM/tdHqBLxLmi9ctSTkjBOI6P
	BHntbEWalB1ctddAOxy/s4EGPRBMBRAUzcWAzT4sdu+xi36GOSR10g4pe8fhHUHqyV7pMMeGgpXP5
	RSYVXKgd8UJ36tLURgvvieodFvtWQab/dpti/NGLDeG4kRZpditLEELjet2jW/TbCxWu5NTgzQX6g
	DpJdu7mBdMnUyTtezzQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLch9-00000002ibN-1q1i;
	Wed, 19 Nov 2025 07:33:39 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLch6-00000002iYw-04Sp;
	Wed, 19 Nov 2025 07:33:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D9F6641286;
	Wed, 19 Nov 2025 08:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763537612; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KAMiGfurenT2cKpD6fJ0g74kT8O/Vr7UmjESZNeBwpg=;
	b=hr4NdMDsV5REL4iJLXH9UOQlaLlBJkCZr4fKzK3b4F2isEqrz5QENWUc6fpNh/UTbBnRXJ
	LBrQPPxcT38Sa24r6lrKNNjULFjdfWE1qtRHA+VyIDasYjOQouKGqH+UsCcUyDtAMPr7Xn
	oVvn0Zl13TExqJi8iE2XLbzxOKE1z1Nr8DclapIDfdILmCsdifU7aS9Qta4yBIkT5LJw5g
	o1HefaMkAvdgOSL2kPXq2zjP46841i2vKcG+evua5BAcO9BIMf86u32RYDmqv6UdVZherV
	yheSHZIIr/5ah8M0Wyt73eoKnz2QAWRppYb+tcO3K2MPoH6QtT/VJ4KkdhlGSg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org> <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
Date: Wed, 19 Nov 2025 08:33:31 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
MIME-Version: 1.0
Message-ID: <1417577e-10da-7101-5f78-c0299efba587@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_233336_282778_FDB7CCE6 
X-CRM114-Status: UNSURE (   8.31  )
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

On Wednesday, November 19, 2025 08:09 CET, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Now you claim that you want back v2. Really, you are NOT HELPING. It is
> clear you do not understand what you are proposing and this is not
> helping ion the process. Please refrain from such confusing reviews.
> 
> Best regards,
> Krzysztof

Oh, i forgot to mention that it certainly may be that I don't
know everything when it comes to DT bindings and definitions, but
you also may not know how to handle communication with people in
a polite and friendly way.

Thus, I'd suggest that you replace "Best regards" in your signature
with "No regards".


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
