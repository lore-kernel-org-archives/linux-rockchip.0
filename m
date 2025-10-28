Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F3C7CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 17:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPIRrCNNy04LcgEzwyyT+IBvpoA3nlpbFObQKcWI8zI=; b=iVlXjpl2To9AXr
	vwQTqJNd9FxMguWmVf758jIa4loi1BfL6MPjmIqMJwJFqxDN1LTExFVydTmdaVyDs1MOboXgOjQUk
	GQi0wddYmT6eM9RAsWxwSD4QnUzNvCNs7Jv/BlgbzTT4LBNf4wKDb8X4y/+VQCzsSwIJwQyYhv7ll
	Y2Jzq1Tg36CCqnb57AIUMe7FyIBzLaTvJ7riGF9uNRXyJmaQDaIGsyaVY5SAOcrvjIyAo7AI/n6wB
	ErGXIwlKnh8w8sliO06zzt9Di/5aJoSmKWDsf5kSUi32TxA/mzktePIfvwafVeikmYnUwZaj+kDes
	1Mik3nNErojbywskfpDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnQz-0000000GP6c-0Xm6;
	Tue, 28 Oct 2025 17:24:37 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnQw-0000000GP5q-1QzV
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 17:24:36 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761672268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E2Pml1G5/Sjw6JkBJ4bqsdsT4UzYGcaQDoLpBigadoI=;
	b=KS3bEumeNJwU0gYoic7hWhR0ndlInGfhrNEn6Ci2g3j4++LN6XDcgIv2WFW8MuMQstfAk5
	mqsoYLyRYPy1I4DpUa7/xk6VaprKxzABWovAfxk/3KHBNjflUqpERs0lxZMJcEXDjQqI2s
	YP1wvNOsCuBhYM0B2H8nmaPjwR9tTaPSIAHzKAItCbNOiksouigAihswuXupUS23Lkzk94
	mbbyEQnS0AyEaS2Bdmjffj8XpNKeuT9R5cPXTJz+O9Wj2+NoxPu9EnlbsZElH5MKiz8OP+
	ajxITudT9sD1Z+8ttFtCxxp2FEglQc7l8QUy7Q8vOnfY1735r5TruuydJPX9aw==
Date: Tue, 28 Oct 2025 18:24:25 +0100
Message-Id: <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "FUKAUMI Naoki" <naoki@radxa.com>, <heiko@sntech.de>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <liujianfeng1994@gmail.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <sebastian.reichel@collabora.com>, <andy.yan@rock-chips.com>,
 <nicolas.frattaroli@collabora.com>, <damon.ding@rock-chips.com>,
 <jbx6244@gmail.com>, <detlev.casanova@collabora.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
References: <20251028115040.101156-1-naoki@radxa.com>
 <20251028115040.101156-2-naoki@radxa.com>
In-Reply-To: <20251028115040.101156-2-naoki@radxa.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_102435_008125_04DA9444 
X-CRM114-Status: GOOD (  15.75  )
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

On Tue Oct 28, 2025 at 12:50 PM CET, FUKAUMI Naoki wrote:
> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
> and Dual-Role-Power. However, currently it cannot operate as host/
> source.

You describe the ROCK 5B+/5T while modifying the 5 ITX. If the exact
same logic applies to the 5 ITX, then ``s/5B+\/5T/5 ITX/`` above?

Cheers,
  Diederik

> By setting "power-role" to "dual" and "try-power-role" to "sink"
> (along with adding related properties), the data role can operate as
> host.
>
> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
> device's orientation is reverse, the root port is detected but the
> device itself is not. This must be addressed separately.
> (USB 2.0/1.1 devices operate even in reverse orientation.)
>
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..1664f85db4aaa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -484,9 +484,14 @@ usb_con: connector {
>  			compatible = "usb-c-connector";
>  			data-role = "dual";
>  			label = "USB-C";
> -			power-role = "source";
> +			op-sink-microwatt = <50000>;
> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
> +			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
> +			power-role = "dual";
> +			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>  			source-pdos =
>  				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "sink";
>  
>  			ports {
>  				#address-cells = <1>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
