Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F39F1125863
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 18:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OT0G4G8pSb6p3htF4eAY97sHnkchViCTP9oESjqYx+M=; b=Wl8iIzJQ4VDHFo
	RaAkP1ieribds35UXtY6mpQLLBFfGFc/urU3QA5Anx7LLQHFTw2e8S6oWq2kbE7e+my9y0C60CcqP
	W+HL8ihjxgAOqCikjxKH4GSeYFdi4/wkyn4h1h1yy5jGDpmm+44oOn8ydAksWYnmgaWs8Cnh6YmDJ
	hkaWdc8y86WVgfXQwVnV8wOEoEdfl4rYPljcdOxR2mVqyTU6On6zxdQlKugMtYnNFvp2ofz1XA+k7
	VvDpjbsEkMDveUI1iRxj6yTjB3RV2vfAgUs6GOYaFXFIhL9LnJpjCBP9s5YPDPPqbNHWVyuu6hFme
	ad0Lp0KQjiiEN0/3fOwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OMS-0000000CBln-0jJw;
	Wed, 11 Mar 2026 18:32:48 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0OMO-0000000CBke-2sbl;
	Wed, 11 Mar 2026 18:32:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 60AC042183;
	Wed, 11 Mar 2026 19:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1773253959; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=81J9RcYlVjgXPDSeMj9W/C70E173wqDJE/JZDphTsSM=;
	b=qpY5+DyJVsvmbHbN+N+4uRjVm2nTPpA3XmNT0W0zNPxvY78SQNsI7zJ983G5NQGetqLDTP
	wSkzbFXWxtJae4N8H+hmPdV4/0BPnb5Z7+asjBLcTqX+QWv+1/uoSxyLrSeY2JYOxpcQBy
	iTggG0B0MxpNxGp2OMaMfAzm5WsWmS4uOhme8T9Wce+rGpy5PNVtm6THlJu5ABt/ANoF2Y
	eaueW1q2vE6Z22XQGpS8uVl+bqft3ItI+eiE/xvN3mbeJMtaJUOPIRJFUoGbKXXuYNkMvQ
	X5h7rWKVx/0cznDHHf2OLI7CsgDWtDwCKuRZ+oeKMRSLtqsg34wZS+/2v758ig==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
Date: Wed, 11 Mar 2026 19:32:35 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heikki Krogerus" <heikki.krogerus@linux.intel.com>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Gene Chen" <gene_chen@richtek.com>, "Heiko Stuebner" <heiko@sntech.de>, "Sebastian Reichel" <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: "Alexey Charkov" <alchark@flipper.net>
MIME-Version: 1.0
Message-ID: <802df30e-607b-7404-6693-6691ea45618b@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 0/4] Add HUSB311 Type-C controller
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_113244_961925_DF3B049E 
X-CRM114-Status: GOOD (  13.89  )
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

Hello Alexey,

On Wednesday, March 11, 2026 17:20 CET, Alexey Charkov <alchark@flipper.net> wrote:
> HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 EVB1
> board and some other boards closely following the reference schematic.
> 
> The existing RT1711H driver seems to work fine with HUSB311, and there is
> no public documentation available for HUSB311 to identify any meaningful
> differences, so this series wires up the existing driver to treat
> HUSB311 in the same way it treats RT1711H.

I'm a bit surprised that you haven't managed to find any HUSB311 datasheets,
because they are seemingly rather easy to obtain.  I've got a couple of
HUSB311 datasheet versions with the register descriptions and whatnot, would
you like me to send them over?

> This also enables a bare-bones DT node for HUSB311 on RK3576 EVB1, but
> currently misses the connections graph for the USB SS and SBU lines, as
> those might require the USBDP PHY ports schema to be updated first for
> proper DP AltMode support as indicated by Sebastian.
> 
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> 
> ---
> Alexey Charkov (4):
>       dt-bindings: vendor-prefixes: Add Hynetek Semiconductor Co., Ltd.
>       dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
>       usb: typec: tcpci_rt1711h: Add support for Hynetek HUSB311
>       arm64: dts: rockchip: Add HUSB311 Type-C controller on RK3576 EVB1
> 
>  .../devicetree/bindings/usb/richtek,rt1711h.yaml    |  2 ++
>  .../devicetree/bindings/vendor-prefixes.yaml        |  2 ++
>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts    | 20 ++++++++++++++++++++
>  drivers/usb/typec/tcpm/tcpci_rt1711h.c              | 21 +++++++++++++++++++--
>  4 files changed, 43 insertions(+), 2 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
