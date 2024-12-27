Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7695FE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCwYfY5IB5A7Hiypnhwo5A5qrpB82MaV6HiOjlIG3Is=; b=ztQOYOIXglPjzU
	kczG71WIDIrVZ8xt4+RoWYLlGNEIedpY2fPIBNmHLWVuPG+IJNDcdAPIxuTvvYlpaS1PzC2sSrdY+
	5ly/oarkeBTxbinutjp4J9Vo8aWRRrxeLL+zsaKLo8fcUSpr/+MIyizh0kbXtRXS6qMj/wDGksBVW
	OjL89p3fpRBQ8oiLuIZ0y3XYnX2yACkLIGUMVix9uuRzDdagSzpZKLxnXyzn4iXkZvaz2HkE4gQiE
	y0+cNet3JFrs+e9BMIOUZTwTlRjBkxocAZz4E2thQ9kuPABS3T1QK03b3/6o9fkwvUrRsWVoUYmhy
	XAqPyYjOBkuarvULHKVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4zc-0000000HHls-1gxE;
	Fri, 27 Dec 2024 07:42:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4yP-0000000HHZB-3LC5;
	Fri, 27 Dec 2024 07:41:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43B80A405B6;
	Fri, 27 Dec 2024 07:39:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCA5CC4CED0;
	Fri, 27 Dec 2024 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285288;
	bh=FtA+adBmn4Tc44PWrXmCgKMhhJV/rkvT2y5z+qWhnSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AyB+h0RUIm+bzM/nsAJAghJ90XnFctsZTH5AjaUawPw4iTOjV5CUXjeAlcaQDnPMT
	 ythinKx0gkmrcg1IskEFXRhNCQimm+vvmscPmClMe+uzrWm4qxCK09mA2SU6c0GSKY
	 a9Z3UQ6vx49qqTOnpGxP8xdxXY56k5JbFApnqy5c89F6rxpElG5R/5lkTYsJoWiuGq
	 revePAJvGrBQDqMQD25CiLhoLQtRue8ZIx8NaGkxoivY3UueLB6BWzlzF4sf279u+2
	 Meztq4+8x/N6MK3tLSU+o20oBCOUpFuoYHZct3KgHuPEJbwmx+bM6wNY+oo244Z1k8
	 LZWdpEwIVonhw==
Date: Fri, 27 Dec 2024 08:41:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 03/17] dt-bindings: mmc: rockchip-dw-mshc: Add rk3562
 compatible string
Message-ID: <n35dljnwvup4e4mye2v4lgygwsefvux7jbnjlvx263m6bfupap@ajm22inne7do>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-4-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-4-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234129_906244_D0589575 
X-CRM114-Status: UNSURE (   6.75  )
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

On Tue, Dec 24, 2024 at 05:49:06PM +0800, Kever Yang wrote:
> Add RK3588 compatible string for SD interface.
> 

This we see from the diff. Say something not obvious. Where is the
driver change? Why devices are or are not compatible?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
