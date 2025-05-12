Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4505DC3ABCB
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JHAvIezXDYNGzwhzhGNL1nXe6huDb9deYQ6UDoZWg8=; b=0IMwDk9WewtkdF
	5sAIYqU0IhAHjNIDFQG+PhF4MTj+ogW49kTRMXcy3ocVTnGPCsCyNeygwfA/9jNMYaYS3Kb8AAT/h
	UQ3XfC4OtsVlckboypAZqT3QUi+TMIYY/JHOi2HSRePVrowmVLAsJmCwnGksSvX9HuGNaNCFQvPm+
	VjVRIFrNoqrrvVMaMLmSNdexkQqY6/dLT1tuToEzw+g9CDpMowI5O7RYgA/bTSrI2ATqxvF5lg3KX
	XLw5hanJ4rh3dl5Vedz0kd+27YjjuXTW5HbcN2avDhNSRVYrCXC0stLWiehH68gNPJdYAeXflRZZK
	rClc6rz682iNB9eQlDxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEU5d-00000009idh-1fPE;
	Mon, 12 May 2025 14:25:09 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uETtg-00000009gFF-2qfJ;
	Mon, 12 May 2025 14:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=yj8p53ovX1+3UyyM71GInbt9+CKkAiGCTIRkjobnHN8=; b=SnRitf4IOUUHRZ2ZeFyk/ZbCd5
	kFITwLA/KfISWk0c5OFEgVAQDvnl+1L1qGR49bOx8qEGYKVh1fLCegGbnIJgu2Dx1fLZ9pygGjrTJ
	BodaOQlCXeviGP9incCtyZ+QjZtH0tmpKQj6V84b808MbsVtI0utb75mvQVUeNIYlQnM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uETtW-00CLRS-So; Mon, 12 May 2025 16:12:38 +0200
Date: Mon, 12 May 2025 16:12:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: chainsx@foxmail.com
Cc: robh@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	krzk+dt@kernel.org, sfr@canb.auug.org.au,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: add DTs for Firefly
 ROC-RK3588S-PC
Message-ID: <7570efcb-254d-4a12-be7c-33033ce4986a@lunn.ch>
References: <tencent_9922367945B45D45C938B0B947EEFFCE1808@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_9922367945B45D45C938B0B947EEFFCE1808@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_071248_713726_4A5E0381 
X-CRM114-Status: UNSURE (   6.02  )
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

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-rxid";

Same problem.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
