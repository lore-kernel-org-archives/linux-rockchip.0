Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E3CC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUEuSoXEnUHoticgX1x/pRop5obVWdgV+INsZOwt/Hw=; b=xc6nWWcCKXqlC9
	ZIb8dhNEB1dxQBPrzCm2rhg8WlYf7LaufeRZEicTxhymfTRtmKJ5QWmiDmgOh9r9e908Z38woPG2X
	j8kpe7vLGDB4fmOGd0XvPvr/2Nh+hDJC6mbRSjSvSoKiHC4hauGgzjfEOfmonhBxdaQC8qijgqrjt
	HxNcudq2X8ofW83WhmIisCNaHA/QT8LCHV7v3IkVkhVoNUEWAKLae9Cvp/i5IRgSlp+Ja+CxQ+KoN
	/dxplk7d+9F11T1vdcKt54aeglyu/wTM9R0m8hYcCzMSUxhpwuENFqxVSQS/q072isj6J2ELn+H2e
	eXovJrI84l+afyb3PHZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3D6-002Oza-1y;
	Fri, 15 Dec 2023 08:06:16 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3D2-002Owt-1G;
	Fri, 15 Dec 2023 08:06:13 +0000
Received: from 8bytes.org (p4ffe1e67.dip0.t-ipconnect.de [79.254.30.103])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 440051A230B;
	Fri, 15 Dec 2023 09:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1702627570;
	bh=OkEpmCjmacYvQzkZNvnUiFvrqwjUDe3c2eZzK8vTqw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ordYmHJ+C9oE47yNpE52tp/tNulBl8pgnO5ZePNFyTSgc+bq5vxZCMj8sANP3b0Qo
	 tYQEQQg1zGTrAwojWY5NlsITds4ZMZ/rccniMlVoxrdhyXLhaOnsZq+FIAKTMRfHfS
	 NQGP7boRyTyHae6knEWhVbQas96v4aEYbMIwrC7FQ4gnewVhNX8hbgLBOpX7xHwVLN
	 Ocs3dkQAFiq9spC0Fdnwj0JEpZTSVMkRs78vhLkvZjwgvkWY/LiDGDxRdOfSzodUPg
	 ErZay1RiAMmOYI1WARNQ4KVd+OIcntAvlxwX4hSNxaKk2e/pTOS+9USp9WL1RIfzyz
	 io8GDNlsHqDEw==
Date: Fri, 15 Dec 2023 09:06:09 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Andy Yan <andyshrk@163.com>
Cc: iommu@lists.linux.dev, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	robin.murphy@arm.com, will@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Message-ID: <ZXwI8TzrvizvCC0f@8bytes.org>
References: <20231212005710.1837066-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212005710.1837066-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_000612_586539_F5AF3EAD 
X-CRM114-Status: UNSURE (   9.87  )
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

On Tue, Dec 12, 2023 at 08:57:10AM +0800, Andy Yan wrote:
> Changes in v2:
> - Add maintainers for the iommu subsystem to cc list
> 
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml     | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
