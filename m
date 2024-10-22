Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7AF9D2C55F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1cro9gZ+47XpIv3YrbKjx91iia2rXdH4X5HsQsVxP0=; b=OdhfKnAinjXohA
	S/a8bmd4e9HdrHJTBl8+xfKx/p3dNaeBXk5ewx+mun1bknBh+xRpA9wJ7Ol8SbahHYiwjW2+DX5uI
	2/FGOrqTK/e7M+CY6yjBj2nXJrYcdUFTV4v4FXv8uvZ6n3PMAoODrPFeQq2umYi4q6AyhH5+FqSEp
	OX04CWuHElLxJVWsdEJMoWeDeCgBN3lggT9dXEpJ8/1YBHmw17FH0FGe5M1/XAS7wnwgmbg5HFhNY
	8RfAj+dkT0mR3V4YP62MQ8N+/Nwik3dhCDlBA2FIYvVu8vyljoUjjMSCK1WSJufo1noq9siOTsIol
	IQV/exTPxboUPhb4Dn/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fij-0000000B4pN-1ksp;
	Tue, 22 Oct 2024 14:18:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcw-0000000B3qg-2z7m;
	Tue, 22 Oct 2024 14:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=d/zGrPtBECfUn9Wxr74oIUe8eBmH+ZAAzMoPX4DpgiU=; b=Aip/kP2BfGvoJYlXTGAcJ0AzFT
	Xptd1lEmQA9grgS6bQLY6/RmySyMDA9nAc8qQanJeGuOTCpQCT7gTY5VJKNIrnAamp7kEIhClvcv8
	ybIUolaBrSODdzVERTfYz5PgWY3UXMqwX5207CHU4U0JpupG/Ptc0HsF8CNikoBQEIKHjl1QvLrWb
	OCv4eeKOjNuN4+ohEq26OU8NDzLcdooK2a5AdlJ62sPe5WMaAI0bYR62j+vu1Vb4zkE9bX6O3DgQM
	L3Tws8ACK1/zMmEQ9swOk4ekKKYTxrJ/Gu8MYCXXlD2JFL5+C5IrOUcHPO6YGF+/VVEsnfPKuaipT
	msGKS8jw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fct-00000008E6V-3S9r;
	Tue, 22 Oct 2024 14:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d/zGrPtBECfUn9Wxr74oIUe8eBmH+ZAAzMoPX4DpgiU=; b=JXJdiNI2wuQdoiGf5sMJ16a76m
	2nZj0BQ81sYF0+L4PPq8a7qW/Oyh4YKWJrj4WDNv6wDHba6XvCREFyBraJzPB5ONupiNpK3y1MXyi
	faxyhbqsdnLFel4szgxVQu0V/p7yYPwE+9mZInnFw09R5n3IsF8vXSzT7K4cfona7Oj0QCdaxy33O
	d3HKvsOkGS4McdZvYiPqphPdLssCCvLoaWcs+IA2YVhQGlU930hkTNR1Fh+xUTGJmqO0CVX6GK108
	l29UkInWIeC/gNmrGRwod+ef/d2hYWJbtJ1vMfmpbs44rbj1NTvUz/76Oi8HLx6Q339pEX41cMkbX
	baNcbsFg==;
Received: from [213.70.40.217] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Fck-0005eb-L4; Tue, 22 Oct 2024 16:12:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
Date: Tue, 22 Oct 2024 16:12:25 +0200
Message-ID: <172960632903.1476617.9941592027677995572.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241020173946.225960-1-cnsztl@gmail.com>
References: <20241020173946.225960-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_151248_035197_792D7451 
X-CRM114-Status: UNSURE (   9.26  )
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

On Mon, 21 Oct 2024 01:39:45 +0800, Tianling Shen wrote:
> Add devicetree binding for FriendlyARM NanoPi R3S.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
      commit: 1e94bfea52bee081c42ab922c19156dd3d2bade8
[2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board
      commit: 50decd493c8394c52d04561fe4ede34df27a46ba

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
