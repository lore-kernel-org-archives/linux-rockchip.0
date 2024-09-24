Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE297CF9C69
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 20:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwCtTptub+yRnIN966thKMiOrRgt/aaAK8HhXupvS9g=; b=QOxh84KyXlqRNC
	8rbbw37xKj9Avogl7xlZdpVbu5TJ5X87KRofv2Codzeb+YqN52irCHrP7NvmA7+UFFABmQ2v3GFqA
	phDjzLSs8jL0nyC6k+quOemjYLTk3rGhnAw8xBjnmr/OEpjM5N/Mw0l0fECCZzvAcU40+3oKDKL05
	2a1qG+wRXRuAt16FV14DRT8CN7IetIPq11M5y8BC82NP2Pe01UM5/qAys5McLzgcBa47T1+rC2h0+
	2NhzwAEDai4j+IYlPXkhLSyCgc1ZdweWDnaRKTXRcY1sTYgKntY8hvNcWwU2BQoSfBMuGx2gandgn
	u6C6Gac80krdTaLzL2PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stCGE-00000003GRA-2qwm;
	Tue, 24 Sep 2024 20:35:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stCE7-00000003Fu8-1Ljl;
	Tue, 24 Sep 2024 20:33:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9746F5C10AC;
	Tue, 24 Sep 2024 20:33:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D2FC4CEC4;
	Tue, 24 Sep 2024 20:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727210018;
	bh=vIbuZ+ZMJIXtuHtEu0Uxq/wiaFCGkBym9byGH31f1Lw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Syi51eA1lj1ubFJ0LT4O6ridE2NqmnwzIXklsi8x5mr7S24c0CruC8+Qc655+hqAz
	 SHWhmck67BYNUXbVA0tGPyFHrAAzqHk4ViQBAzoT93knZZrB8IqreuIKm6VESgayxO
	 Ldyajoh8wpNB9+vzRHa6Hwq2XmLeS/pIcANQHb8D9+jjHzcF3RpW1Amwf+ZnzqoDI7
	 2mwfL1XuFhvOHZUW2Se67rS4xG47X5Sh0YkQ8ualdgwP5ksC4DAZ0uUFuBS0Azj/21
	 /PCvi5KF6cBS+KqSeceMjvQMlEKUviVTbckMfwTSE0ct6gl76OCVra8nGZ9q6LqDqP
	 O4ZEpGgPQkTUA==
Date: Tue, 24 Sep 2024 15:33:37 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	joro@8bytes.org, heiko@sntech.de, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
Message-ID: <172721001667.289647.10163147936752673484.robh@kernel.org>
References: <20240920094947.7566-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240920094947.7566-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_133339_445915_C412B553 
X-CRM114-Status: UNSURE (   9.70  )
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


On Fri, 20 Sep 2024 17:49:40 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Just like RK3588, RK3576 is compatible to the existing rk3568
> binding.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
