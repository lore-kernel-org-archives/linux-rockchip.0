Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B393C54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 15:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmpI9LJJldoSlfSs6lCqMSrofzpTsdPXqJtACETBMXA=; b=uJUvK+j6tIUmOK
	efeBarzzVS7batypbMRAMIQG4OzSWPSjcrYbFHwNj2w8fGAL+H9x4UXBTrMgxYn1niQ4h1FGgXMsr
	hiP7Ijakpp7FoldibytmsljQVaQ0PiyrvewIVEwFaKh4su4J9nOGHaBigkvZgUI8lOZn2q7THxD5F
	WhQ6DXtBUU2LOfomJxmb8p9fNuPuQ4y1hnbExlMuSOkSr1+xw/IKTB/3XGnSc9i5mWwsfWe2wOG8s
	hG8hSAizEUU+SWxAktWg1XyTq3ZQo0XZER7k7ct6byHoXVAWxFxaucuzRhn9e5vfBxI3EaoEoPP8l
	F50Q6QOvs0KXyYvsrA7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWJA-0000000EBT7-3DSO;
	Tue, 05 Mar 2024 15:02:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWJ7-0000000EBSR-34GI;
	Tue, 05 Mar 2024 15:02:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9D8ECCE1C4C;
	Tue,  5 Mar 2024 15:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4680C433F1;
	Tue,  5 Mar 2024 15:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650934;
	bh=nSWWFkWZffGoNnwURXuRLdlN9U+xWXsWoTFoIqMgRzY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZqacV4E2mAX8m3kka0wAt6DmLzjGVM6T6dyx3YJTi/F6B1PdXEtyvh2xhOdM5hZ+2
	 NjKyuS5tMldxYOwyzMqTUurifImY7x1ztuV23+TPmycCLZs+RUCCTZMRRpY71TrA41
	 MHTvmukwB8MI4oerUbbRswcZV/kgsGMhSHeENeny3oR+5y3M9GGF6wofhqrV0HClFU
	 9wI5H8cn6/nzbjNfSi191lRDVWRv87Dau5c0q4qkgz0BGjsTxu8k1ormRV7GAVR+ld
	 KUQbiJjaksVsIj6rzdT6/bi/waIC5WVYGICmc4TciR3zzOrLDzXlVpZRFJ9ull2TSF
	 yZt3Rf0vyGk9A==
Date: Tue, 5 Mar 2024 09:02:12 -0600
From: Rob Herring <robh@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: dmitry.osipenko@collabora.com, heiko@sntech.de,
	linux-kernel@vger.kernel.org, nelson.costa@synopsys.com,
	kernel@collabora.com, sboyd@kernel.org, mturquette@baylibre.com,
	conor+dt@kernel.org, hverkuil@xs4all.nl,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org, linux-media@vger.kernel.org,
	p.zabel@pengutronix.de, linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org, jose.abreu@synopsys.com,
	devicetree@vger.kernel.org, linux-arm@lists.infradead.org,
	shawn.wen@rock-chips.com, sebastian.reichel@collabora.com,
	nicolas.dufresne@collabora.com, mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Subject: Re: [PATCH v2 1/6] dt-bindings: reset: Define reset id used for HDMI
 Receiver
Message-ID: <170965093218.3352342.18143623274015359038.robh@kernel.org>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
 <20240305123648.8847-2-shreeya.patel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305123648.8847-2-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_070217_951509_3F9B1AD3 
X-CRM114-Status: UNSURE (   8.68  )
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


On Tue, 05 Mar 2024 18:06:43 +0530, Shreeya Patel wrote:
> Add reset id used for HDMI Receiver in RK3588 SoCs
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
> Changes in v2 :-
>   - Move the dt-binding include file changes in a separate patch
>   - Improve the subject and commit message description
> 
>  include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
