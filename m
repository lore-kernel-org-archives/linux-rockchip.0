Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D50EC5B572
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAcOh0rPe1mquOM1v/f3xlkGq+sttj6Bgfn+3GGRHeQ=; b=Rig5qTHSnq4fvw
	OShvGVkIQ0LutVBAuK7lTqhGbzL4ogoPCdS850IrteUCFe2y56LSATlcJeOMBBVuCXzYaIeib9Ycc
	lIpLdxMk1YR/SwkigL+8aW6M7diB9QsCZULNtV5JmcQBzIa6iH0X10tcozLpYLPmvQz1KEJPsP6Ha
	RsLtRIOD3wWxQ4VXi84AEnCiA6royYstjypQn9npFP8AWloR0LzZJ2r54v7vfGjKDxTptVupvEiXG
	KdULo7vMu4bKp3bbKil0Lj4oyldFx2/jdKfoKWuS57EgqlcwlJ/Q53wsV8u47grgtnM+IKAdlhe2H
	TO6Kd8dHv/4T/WZ0MTfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuowr-00000002UVF-1K7s;
	Fri, 14 Aug 2026 10:15:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuowp-00000002UUk-3LQg;
	Fri, 14 Aug 2026 10:15:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2597143B0D;
	Fri, 14 Aug 2026 10:15:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD691F000E9;
	Fri, 14 Aug 2026 10:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786702535;
	bh=mwHOjyPcBjFJwUy1wg+Xz3IWBa+kx7JlzZt+oq/NInc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FIqmu4aDSrKEH+ei+l9NY/L4Yjn7T8I0CLeqZ81qEbTNQAOm7s62Rz7Wx5vyyGdJi
	 oSpydOQ3VyiDimUK6hJtiSMyexBVgOBzXUwXelgTk/F8d+NhYFVMFa76cVp1H4yfaU
	 4rzqry5CvYED3LjxqCWlpPelIRkty+vAFsniGKbchN4WDk8JZ+r/g7CaF+wcMMCYt2
	 7WVAFv3gWq60azC2yj1Rqk4w6n1xzy/9n3f//b68vGVuDj65IJa38ZFmMwFQ9/2XEI
	 6l6T71Sq1cTycVp9r6RLKYGMRM3dXERDFFl5ACdDMhR+VWdDovbrlCIO2e6yP3k+bw
	 GU27jVw0OGGtA==
Date: Fri, 14 Aug 2026 12:15:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 01/25] dt-bindings: reset: Add RV1106 CRU reset
 definitions
Message-ID: <20260814-pristine-warthog-of-tolerance-4be5cc@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-2-vlad@zlab.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810121121.210040-2-vlad@zlab.su>
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

On Mon, Aug 10, 2026 at 03:10:52PM +0300, Vladislav Leonov wrote:
> Add the reset ID definitions for the Rockchip RV1106 clock and
> reset unit (CRU), to be used by the reset controller driver and
> device tree nodes.

This goes with the binding/compatible using it, where is it?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
