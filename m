Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D765FD0060
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 11:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfLcZaFE8mSES0tCw0T0pQJv0EM5LVbbRufiFeuMMtg=; b=1U0ED0wPfru/31
	DTlCKxmacTKhZwjmFpP3SiXAEMQZww9HToIq1p+RxE0nZil8+wV5a8aeMkw6HZeRySXkqZ2dkQRSh
	FXFm1CFLFBjM4CKDV70nDJ0T5Ut12F8gOGmArhnxvs2Ydb7E7xbd8lARjxm3yPfcOoDArhmGz4uQe
	CMvRZIMcTZxMJLFK3kr4mbMMfl7KAlNAhGtTR1KJEb33V/8q8W7yvNt8/lekdVc/TNXFPdMlADsYi
	bI67ilzYiQW9jd1dT6dT3+RSB54oLMZNKsvyTWG07Lfc9jAzHffp2wV1gh6xV/DXjD6gGoehBqHrl
	Y2yUDgn8GBzlxtA3LyoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwfQ4-0000000B5BU-2DQB;
	Sun, 01 Mar 2026 11:57:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwfQ2-0000000B5AZ-3Ahy;
	Sun, 01 Mar 2026 11:57:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C9E8160008;
	Sun,  1 Mar 2026 11:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA647C2BCAF;
	Sun,  1 Mar 2026 11:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772366225;
	bh=LHspUG1gPw4r6JNluWjjZ9kJfoAty+suillBorvVnKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CiwUa56E8JH90lRbP0ZT1twRHa78KV1ntDAdUpHRRy7BEpIwuzeRNbRfJc0jo8ASz
	 Nm0K4qhpcggpN7TSM75Qsb4GtzLE0VDJGCV8aSRMPz0A9hc5kfVIbri7vw6lwBx6aS
	 b43IYW1eyCb8bGNREFRugJsKasauQXnZGrvaMQmf1E/LzYdL6GpZPrtBBX58TMV0fZ
	 5CX8muviWedwyaUPM9qpXRVG5bw08zv/oug2IO7PQWwzzzDMmEZQSj6Pj2dffxHlVO
	 p4XRtdMknGE4XlCsNKlLJFx6NC4xzwbb0p5h5n2Y0wuudPVQ9tpF9b+08J9EyHj8jT
	 E9Aig9OPIhMNg==
Date: Sun, 1 Mar 2026 12:57:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Message-ID: <20260301-pearl-snake-of-innovation-5f917a@quoll>
References: <20260228205418.2944620-1-dennis@ausil.us>
 <20260228205418.2944620-2-dennis@ausil.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260228205418.2944620-2-dennis@ausil.us>
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

On Sat, Feb 28, 2026 at 02:54:16PM -0600, dennis@ausil.us wrote:
> From: Dennis Gilmore <dennis@ausil.us>
> 
> Add compatible string for the Orange Pi 5 Pro.
> 
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
