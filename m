Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67CDC106FD9B
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 08:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bmma7evMlQU6gOX5aJ/RIJGOTrYnVHNCe8P0GY0alH0=; b=jgfB59q0L8SGJr
	iiEMmPcFWW3K53RxU8nT8D+JZ2rmKVg/3eA6VjFNxfVEtjWjAlFmJPR9OmfyN24timQlZ/gDqz5gZ
	TR74V8ZayxAbloHjQnhFUcTQTB0JIsHUQu3vjFe9QceGNUcFHzRaPIyjJf/Qi7sguawaNm1KWvBJY
	RJDDJbwFqqZozK+bE/ezBcaMEmYC1d9bhfqaBiD0nnCe0jT2SM8jAjAVMdTMzaUQWUe++CR7/lIAD
	Q9PYh6/gGGTDczkLqE/eXNU3bQMxYdCpj/OMXtDqgHduLKxI/fmVJed76WTfgKqwWbyY9IALr1iJq
	+A0KXJZhWtdX+WoVTCVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0xnP-0000000HEbi-0Vbe;
	Fri, 13 Mar 2026 08:22:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0xnM-0000000HEag-0PJZ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 08:22:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 68B08419AA;
	Fri, 13 Mar 2026 08:22:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B28B0C19421;
	Fri, 13 Mar 2026 08:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773390175;
	bh=FFMDDxaT855Ix/TDP2Ll6xNFFN2aEjqsgnS1fdXsQlg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EemAqlKNrWIu3cLWwARNCP8JU0mlyJ+/4OimrZmunnnXZU9DTGUyniyNQWd+le20d
	 A+zJplE8kdsvz/uM6G8FqChKyjrwk+Ypamo4/Fxh2bt6TUaXRRuUBG6fdh+y4r7HSh
	 9J2sYNTDh2+1RynrsCs9Ugp1lX9ZhY7MSaa7sIJEQS2VKnsRhde/yN1DCH9j/6cTGU
	 7gVcDrmEmOvPCKRGzLEOe0UGF0GjLucfPY+bQ/5kWRPPggGQbn9Lz3NfRfULP831er
	 ++Q5b7Ctz+c7op+wm58J/zCNxxqsDscF4zqjAyaMcpYh1QT8pKAVTpEJRwlQIhWQbn
	 YBEKdMeoih8xg==
Date: Fri, 13 Mar 2026 09:22:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Heiko Stuebner <heiko@sntech.de>, 
	Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] scsi: ufs: rockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
Message-ID: <20260313-attentive-gharial-of-opportunity-b4b254@quoll>
References: <1773368467-109650-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1773368467-109650-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_012256_154677_95C687BC 
X-CRM114-Status: GOOD (  13.49  )
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

On Fri, Mar 13, 2026 at 10:21:07AM +0800, Shawn Lin wrote:
> Add the mphy reset property to the devicetree bindings for the Rockchip
> RK3576 UFS host controller. The mphy reset signal is used to reset the
> physical adapter. Resetting other components while leaving the mphy
> unreset may occasionally prevent the UFS controller from successfully
> linking up with the device.
> 
> This addresses an intermittent hardware bug where the UFS link fails to
> establish under specific timing conditions with certain chips. While
> difficult to reproduce initially, this issue was consistently observed in
> downstream testing and requires explicit mphy reset control for full
> stability.
> 
> Although this change increases the maxItems for resets and adds a new
> entry (which technically alters the binding ABI), it does not break
> compatibility for existing Linux systems. The driver uses
> devm_reset_control_array_get_exclusive() to manage resets, allowing it
> to function correctly with both older Device Trees (without the mphy
> entry) and newer ones.
> 
> Fixes: d90e92023771 ("scsi: ufs: dt-bindings: Document Rockchip UFS host controller")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
