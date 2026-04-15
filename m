Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16378FA0C43
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 08:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mReTPXbZtHMYUCBmEcUXF6BCmY+4zP2jI5P6BMtZfzQ=; b=NgYuHKRNyCnf1l
	kDF0QwTOiMU2gJdiTU5kv78/E31bGrgTSY00meEwfBdu/Uen/RRpZPVpoJyqzFL9JMuvyi4L4k3N5
	ULLN5JtbeYIVFJTlG0S3QHK+bAzUbdP/psAjT08Skc/pbwWcbmropTpZ9llB/cCap1Olz1/9+pfIN
	dI5UISGfQ44J4TidJOtI9kr+X1sPThqiukAvk6WpTAgBHdk5OO36kzgbW79PlOLsVX95fI53bpjvu
	DQz9vXWOiecfTF7H3iTz82hUhiU5amOAw4rJ93tik4jNQZtNY36gCFolL95g9Jzz75YTvU1RhG5Nk
	fZSG61knG2hOMF1A4C2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvKH-00000000mNO-3yNJ;
	Wed, 15 Apr 2026 08:10:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvKE-00000000mME-3Q0A;
	Wed, 15 Apr 2026 08:10:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 800DA42E03;
	Wed, 15 Apr 2026 08:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D051FC19424;
	Wed, 15 Apr 2026 08:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776240618;
	bh=I6eUDp4wTRJP5CSONuLda4AnlkaTkRvF/XhtVGrCOXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f3DLZyu8wclWP9+9yOvpttjvy+zqfD0qAV5MaRuHF9J1O8UwpI4uWV8qnSug3lX2w
	 kPQIXfMqwh36ZO2coLxi2u6jRokNlRwhoEwAxIQ15NumsflWfytZ3O539wqYHLzMQA
	 apBR8Lwl79DV7n4k8/SBFS0ue3GMZb37+qDKGA01GPmaAFRWVRzs3uQc3btQXZxhA3
	 ThI3/I4JeR0GjzCPzyqH4sux85UmwK5LBii9LgahjwUtlHT6VDEM7htJ6/cx+I/+OC
	 4TME98PO+5p1Gb9I01x3Ml1A3UkufM50/TCZv9NuvJKtz8NpIOJhPpoDOEVtOPp1ex
	 lz01AVaghKcuQ==
Date: Wed, 15 Apr 2026 10:10:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Guoniu Zhou <guoniu.zhou@oss.nxp.com>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Frank Li <Frank.Li@nxp.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/5] media: dt-bindings: add NXP i.MX95 compatible string
Message-ID: <20260415-glaring-premium-nuthatch-ce00fc@quoll>
References: <20260415-csi2_imx95-v1-0-7d63f3508719@oss.nxp.com>
 <20260415-csi2_imx95-v1-4-7d63f3508719@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415-csi2_imx95-v1-4-7d63f3508719@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_011018_873017_CE1C12D2 
X-CRM114-Status: UNSURE (   8.60  )
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

On Wed, Apr 15, 2026 at 11:46:55AM +0800, Guoniu Zhou wrote:
> The i.MX95 CSI-2 controller is nearly identical to i.MX93, with the
> only difference being the use of IDI (Image Data Interface) instead
> of IPI (Image Pixel Interface). The binding constraints are otherwise
> the same.

Nearly identical with some difference really, really suggests they are
compatible. Express compatibility or explain why they are not compatible
(difference between IDI and IPI unfortunately does not help me).

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
