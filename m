Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E61CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 19:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoVteICRNp4df11qHYU2m85sz9Ghy7C9N3jjRe44/Fo=; b=QtAxOMSr3fBBHI
	Xq/IybuwHRU/VGKQPIoJAjzqfVMvy+v01iTISv8kgl00cHk2r26fGtFkwROy1W37rs0fS2MSzlZ0x
	EelXkBfzbZLjpr9zBJ/6pgUjN3I02NhccaESfF0sdirBQ4bNgVNtSY836HjyCS7Ub7K62hYpB96R2
	jUahXFT+o2sqD6Y1RjCCkWwKzHV+H77t7KmAwguWGCcziNB7k9vdwJ+0eO9zPYzs6Ite509IMV4+U
	gMhUMUfChausF9tF5CQizBNqeV3nDD5lWqa2pqaOyUbCyclDntaVfL+KZ36NLPFYQhpbz1+LI5d6p
	o6A2jrxp2VXbCQZsBZXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrO8y-004A8p-0P;
	Fri, 13 Oct 2023 19:48:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrO8v-004A7i-1i;
	Fri, 13 Oct 2023 19:48:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 99784621D3;
	Fri, 13 Oct 2023 19:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 587F5C433C7;
	Fri, 13 Oct 2023 19:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697226496;
	bh=smLVpenbHF8Flm0poW9y4kwQ6SQllmTRnsMnx7QCUwY=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=sRmvzBOEQL1uEGRflqP+uL7V9TASSYHkf7yJ2T6RbSsZo4/YD9M0K0OIgYYsf2fxc
	 g+IlpDVHK7IGqPIcyGTnvk8u3+D21vUwrrmaPRdQY1VSRHl5tHmnRf2GdplOSVxAK4
	 tS/A9IAEm3Yjjhf6z7jh+CPessHXnCZC6WRc4h7g2jvJDh1j0aR//cpoMnGBvdDomE
	 +0ges718Ogu3ddbWZudOXzhXCBdbdug+txwwCMAEkOj/yBPGzn61HbtOrCb900u2h7
	 mQhglpAZA78wrda5qoiAcnkGvWg7nubt3s2oDdLuLQtzo2Oy8Nlba8gJypTdSrmr46
	 1TRL0avOCdNsQ==
Date: Fri, 13 Oct 2023 20:48:12 +0100
From: Conor Dooley <conor@kernel.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable UART6 on rock-5b
User-Agent: K-9 Mail for Android
In-Reply-To: <20231013193722.78630-1-tszucs@protonmail.ch>
References: <20231013193722.78630-1-tszucs@protonmail.ch>
Message-ID: <4DB8788A-4B0E-4C2E-A26B-3BB9FC50F612@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_124817_613134_91460E6D 
X-CRM114-Status: UNSURE (   5.82  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhpcyBlbWFpbCBpcyBlbmNyeXB0ZWQsIGFuZCBJIGNhbm5vdCByZWFkIGl0LgpTZWUKPGh0dHBz
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvZW1haWwtY2xpZW50cy5o
dG1sI3Byb3Rvbi1tYWlsPgoKCk9uIDEzIE9jdG9iZXIgMjAyMyAyMDozNzozMCBJU1QsICJUYW3D
oXMgU3rFsWNzIiA8dHN6dWNzQHByb3Rvbm1haWwuY2g+IHdyb3RlOgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
