Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78ED0CAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 08:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wA9bprUeTg2V7aN0pTATeeh1kbLr3bL+F/51q64SvXY=; b=LxiidKPLiSUSjD5YIMLUgTtQWf
	X5MA6lJPwYHvOY3ZCtm9A6taRwn8Dn+kh4tKoJpQWqdE5x0FWboICiYqNsBh19Sysd1NzF7G3jPf6
	fdKPRAnJ7Ab4qjKSWEiiWhiygwJerWVwazZuM3wexcsQ9RMny+Sd0vusaV18nUz0AxrWRlsf7nsR0
	ZSkrQPnGiMeU7hZqYUWz9jBSuBRSjrOAQv5mWcyWigiBDb4vWR8WRqq5r6jDpcDsKqVIepVPHtDK1
	EwppNwInRftcjA7UUbmECKVNrjGhk48NqTHYcUGJpuY66Ti+UDqkMQbTda9I4G6DJ7l9mymZG4XGK
	jz4QKUGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39Jg-00000001nSh-1v2F;
	Mon, 29 Sep 2025 08:33:04 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39Je-00000001nS0-1TxE;
	Mon, 29 Sep 2025 08:33:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1759134780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n6IgvnJf+TwuohwKNDrr1f+Fnh1ZrNwh++ABQ4h5jac=;
	b=r2V41+vfGVhb91wQwN19qdC63ckj2jVdjphymcYJTu5Jx2T4hXThp+0oY3ErPz+RH7rTEt
	+93F1HDZZ9LX6LeLJMssOs2NZ5ZtHCCgMh/+vNumqvhI7E0jd6PT9/5NHEvmJ3sYOKOZid
	LXu+fHBDfCRweYj/Ne/22L20BtGfy1Jzl+gWO9zZ0wuV92UF/F53dZ0sVJoZFRfHBFhRs3
	xWos+OQPdycV/ExXd2xwUPY68QE3ImwziUwhzEDpLqz0HY3QAGJBdhGkcYj/VI8kFXrslU
	TN5iTmXXB1ipMxjVRP8czyQjyl7gaPlZ3JxxQgEDNyVFOI4v1d5hBc20sRG9FA==
Date: Mon, 29 Sep 2025 10:32:59 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Ondrej
 Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>, =?UTF-8?Q?Kam?=
 =?UTF-8?Q?il_Trzci=C5=84ski?= <ayufan@ayufan.eu>, "Leonardo G. Trombetta"
 <lgtrombetta@gmx.com>
Subject: Re: [PATCH v4 0/4] Upstreaming Pinephone Pro Patches
In-Reply-To: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
Message-ID: <49dafe9afc5962d8fec10e6135c9b84d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_013302_576298_EA38373A 
X-CRM114-Status: UNSURE (   8.33  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Rudraksha,

On 2025-09-29 09:35, Rudraksha Gupta via B4 Relay wrote:
>       arm64: dts: rk3399-pinephone-pro: Add light/proximity sensor 
> support
>       arm64: dts: rk3399-pinephone-pro: Add accelerometer sensor 
> support
>       arm64: dts: rk3399-pinephone-pro: Add magnetometer sensor support
>       arm64: dts: rk3399-pinephone-pro: Fix voltage threshold for 
> volume keys

Please note that the patch summaries/subjects are still a bit
wrong in the v4 of this series, because there should be no
"rk3399-pinephone-pro:" prefixes in them.

You can always check the commit history for the file you're
editing, to see what's the expected format of the patch summary.
It differs a bit between the subsystems and architectures, so
it should always be checked.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
