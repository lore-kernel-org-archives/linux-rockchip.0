Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AFBCC52D71
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 17:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkOEo1J4KxM2fcdWSx76iecxTmZwMHuyqSA3AFdfVcM=; b=KOAPEnhwlT4oM3
	fyHmqNDk/+oy++kzzMWKNyfErE5vDZqbGy6vYFU1bTDG4mwtzGZxn6lio8u8Ck+J8w9FR8Bdcj4BF
	5XcTWcnanpP8lpKVet6eKyjSnOOSStHYlrxaJ7naIAVYAnz8inMMkRfkCmwbDGeCAKi2Ob/kPFZ2A
	XGcF2liQSTzUVDHXxUfi932BEFUmVQM5luYb++n/SlM6Pg6Fr3T07ZO9A94/oVC5sIpFkFDn1IjLD
	kNpiIKN0+prRP2Kw1jfw8BfBy2RXQREviphCYpwacjfI6N3VppCcaTHPLai3wzdqldLTu4RygafNG
	hMAn0J5arLm7q1H8ERBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNw8-00000002UO2-2s0n;
	Tue, 06 Aug 2024 17:25:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNvZ-00000002UCK-3xaI;
	Tue, 06 Aug 2024 17:24:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 07FABCE0EA2;
	Tue,  6 Aug 2024 17:24:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E27CDC32786;
	Tue,  6 Aug 2024 17:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722965091;
	bh=MCsRf95V/233ppFa+ogoZO+TKh+T4CSExd6cp5gIZw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nX5McNm4MWFmK0KGuU0aKb/nNbKdG468bU9lApVnGo7uzkscv+XRH9q2Aa0ZkiWHZ
	 9v5Y6xnJ+4LDwrp1yrlQ1GOEpxDyq8bMe7XFMo5VvvH90uFV+q4yKJQX1RoRjNtLot
	 YgouMUgnDxcqJ0FLVXbfWMqPxffDI9kCG5t/aHVq3Pu6e8arIBFPMemwH3GO9FN8/m
	 T4H/kfn5JW+wuQ8fnMz19iUL92HF0R2MpjK/UcQdEJqEl+qwvA1LwYaMxKo87oQUiB
	 2d+OvoY3xpgclfg3RPHwcqsGNIc+lY9nZZBN8LbeBX52Jcr+lYW3fU5OfRJmCcQVbA
	 FjnEeo4XLNASQ==
Date: Tue, 6 Aug 2024 11:24:49 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V2 2/2 RESEND] dt-bindings: arm: rockchip: Add NanoPi R2S
 Plus
Message-ID: <172296508945.1835210.9491608113074748962.robh@kernel.org>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
 <20240801175736.16591-3-jin@mediatomb.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801175736.16591-3-jin@mediatomb.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_102454_176387_BA83F27A 
X-CRM114-Status: UNSURE (   8.19  )
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


On Thu, 01 Aug 2024 17:57:36 +0000, Sergey Bostandzhyan wrote:
> Add the NanoPi R2S Plus variant, which is an R2S with eMMC.
> 
> Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
