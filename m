Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E17E106289E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pg01Skw8ojMMqXBNJRl0ycXGkxqWtXoIZpl6ckSgYxE=; b=lGk8OZSBuIWFDZ
	BhY2cUMxOwZQZFO3SG1TdIox5hs3prcvMeOqMtaW9xC4PoaaaYP4/NWnNB4ZPHX6xfWmXfjpd4eeH
	0dN5Jj0Jjludil4bvmWgtjqLmCDosJ0xK5z2CTsren6TlXqqcts+0UvLtuM4fLxkN4AbiJWew3j8T
	f2/iSBLePckG2R5gb9icLlANonfwCQglA8z+GUmv6n3QuqHL4zYFzyEdWrH0Wbiu4y7kipiENCitv
	6GGA/ysf7JR2tgNDzj9CDqwF4KRvhAzriv7MJyOT72Fbd7tXktGdzNxghS+Mp9RBEXixNILfnHpri
	UylQnfjqdeRG9zjiqasw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JKr-0000000BcRw-3ZO3;
	Wed, 11 Mar 2026 13:10:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JKr-0000000BcRf-09FC
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:10:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2570F600B0;
	Wed, 11 Mar 2026 13:10:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BA1FC4CEF7;
	Wed, 11 Mar 2026 13:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234647;
	bh=I1WbPQA5NEIo1AGI5Oi8bYm76YQx+F1VeHq/ntSHCZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gXrDLokLmDYfK9g+e3VHMWaQdVmejzQpJg5uErLMgOSalsrGXf9T7mbaRXkwXrJjL
	 2O9SoczvAdFdUA6tJ0Fbi8BL4/KI+y4Pg7daOEb4X60iUw8yUMLHCpUzigu69mnPBQ
	 UBCqCWvQqtsu6m8BOwpT53MnLbFI3lAN4s4oG43unJnFL2BWdxyz5M7nCaHJYD0Pkr
	 yufuUq72l0UBqiGt8eU2/JpnPeCnT4Gvr8fdNgWNDwGZQX7dOvdw4PrDim0OepWkoX
	 C3DJ+QTs9VxiPiPmJHDkkaaOU4joVE21dvMHYjg+pB6NaDNzUShxiM4rHR+N8iPYY+
	 B0981YH066GgA==
Date: Wed, 11 Mar 2026 14:10:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
Message-ID: <20260311-ultraviolet-shrew-of-management-ca536b@quoll>
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
 <1773193218-215988-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1773193218-215988-2-git-send-email-shawn.lin@rock-chips.com>
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

On Wed, Mar 11, 2026 at 09:40:17AM +0800, Shawn Lin wrote:
> Add the mphy reset property to the devicetree bindings for the Rockchip
> RK3576 UFS host controller. The mphy reset signal is used to reset the
> physical adapter. Resetting other components while leaving the mphy
> unreset may occasionally prevent the UFS controller from successfully
> linking up with the device.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> index c7d17cf4..e738153 100644
> --- a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
> @@ -41,7 +41,7 @@ properties:
>      maxItems: 1
>  
>    resets:
> -    maxItems: 4
> +    maxItems: 5
>  
>    reset-names:
>      items:
> @@ -49,6 +49,7 @@ properties:
>        - const: sys
>        - const: ufs
>        - const: grf
> +      - const: mphy

ABI break here and in the driver. Considering this was merged year ago,
so for sure it was tested and was working. Otherwise commit msg would
explain the actual bug affecting users.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
