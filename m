Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BA89C55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 03:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xY8o1+/PJXOCtxHctGl6v1l5nPNap1Or6d6HF8pvzVk=; b=nWjwDhffkOdI1v
	7/KetoTtVe0NgYpWPpaCidJURcSh3hzRzUFTyqkjV3xvMcbAUmXwbkQdpggSFc1e1I8+4JzF2saUY
	xnbAzuYBUI3LqDhzZsJPTl5/BBbxiyrCjN0YVhlX4HvaCetbsuBOtfuqt9r3U7dk/XnhqqGc3jnOw
	9MjQVPxkWufTYLJ8Se30W/Y/1JNBhd1cGK6+G5yf4lT5Nk7OoTaR6pnA4++NLt+QTzUM9Q1kso9a5
	a9TF00yYeBW6rZCrklV4g+nZEgb23lNLOX7bSrFnEvoStAJPOEKbt/RcUkc6hagcEJFLBiJ1zOYts
	pmVXFZyu7rHhY6iOsTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsB-0000000FJ9P-3cN1;
	Sun, 02 Aug 2026 03:28:23 +0000
Received: from mail-ed2-x02.google.com ([2a00:1450:4864:33::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMs9-0000000FJ8G-0eQf
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 03:28:22 +0000
Received: by mail-ed2-x02.google.com with SMTP id 4fb4d7f45d1cf-698ae23957dso1382925a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 20:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785641299; cv=none;
        d=google.com; s=arc-20260327;
        b=s71GQhYvp+YDwunUBiEl4d7mRrWEZJ0s65eEmu0Ljs4+y4UsL3wuq0cM7ylW40RJ+F
         CkE6RbP2prwH0+hM0wZMse4yCdUN1SVFiyv7fMiRDoAsNVPhwXpsfP+p4uqU1zwD1dcL
         1SEfYKjA5bb5CTq6P6z6m+BdCUNefZDkwT1VC4NZQzZnEga1rOBX52gjXLjxNyMV8uL0
         iO3JRs5MkTcEGr15KYLPj4rESoziJyXmigxP7RMsfzNaialazXxLqUamjzTEi7Hx6fgP
         FYVuaBdH9/ygR5VyyBdMEoIDcrrDRTqUbT81FbCkdYF3tfOorHkbJfa/M6ACqSUZaF/H
         bidw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        fh=uvFv8BDS277BQLdILvkypuvGPcnhVfW+WjWPuzyMhx0=;
        b=Rko3EE7bphEe94qdz8+nlA70UPRaRcqYNUujzsCBlNYy8pOiwlYUztZAeQ6BoPuurc
         FInn7tRqEY+r9e3b3GHuLCxhAajQO/s9vAMdvTMzciaxfKvUYu8So6tDWU62GmepRpzN
         sjMfxLd5O+J3v7a2YzNdJyTyaV7felaRqig5Uihu5YhrqrjrvEVuroULqrqg0QDmy9OS
         YetizNMQShkK0X2yi0zUQr9Svz2wwZtUrSKEgVa71lOC+3zYa03LhgXX0Tq1dPWVEaJL
         HNX2RVrNfYktziJwjksCRm5lsaKPFXT+XE/MgNKFbgezFyfWmiLo6iCjAYTgrC7s6OAY
         yRAA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785641299; x=1786246099; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        b=nngi+JHYnNGLJxw/hxhV1KJKSyAzCwFCE8UnrNZM9iTJojangKvckyIQHOktORKegL
         VRYnIluk221IdyccQ3BB5dZEvvjH9bvlbrwZNy+MLiBZqu4reZVwHAmFrH0mdshcsy8n
         hwtPdSKi/2hjFpsVm7YW5xHSRrrOb4lnOmNjS0JJpporzvJ93jCI/qpyI27evTLw3FTb
         f7LCI4yvMaPcwjXa3QUNpsW93pYI13D69w/qs5R3AsTMnvnYqomEFQgBGcgLjyjSkugl
         66nc9d97yf6SL7fT8JuxCfWA5JrKek8NrxyhZ6bYw/UA4JV3nIYlJ0jEQrClZJdaMfFO
         7ivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785641299; x=1786246099;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/0w0YO134zBV85YwnHp+km6pCsaY5x0vppPkNuKA2EU=;
        b=LQtD7DcLvkNKropxWrlDutRln158HP7kQVwqfVvP+Dx2WKnVAonhdcE1EJ/6AWpT4P
         riCZD8qULU4T9q9WalzSZ1KmA/SlxgcEQEoUlVT4SqlMagenjkk54WUiIbojjwklKIAv
         Ml1eYvEZksdI9YygZ3Ok6Zey8OOkBtw9QppIbiuL57n9/qT0tpTl7b6jMGTDf4GyMDrK
         /gufJSBxcp9HDDIz5Br4gJP0pYbLqq5iaYlO6Wb+3DRY1lCsgboR2o7g9lvY2Y8utUst
         IJZP8ym20nqfYfhTt3ZsiIJQuCrB8t0Kb38i8IKAItOAtKQ1CHaU+TKLh6DCaxlSWe/H
         15zw==
X-Forwarded-Encrypted: i=1; AHgh+RrFA9oOIpbRudKvWJjlO+D0RbFac6vDTCyXC0ghNOpmit2LKeL1cTErOG3AbfDE3UIZ7PWMeiYDWp9a9av6DQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8DqFG8UPGzByRdBRYDJr/ORXOUC/j0ulQoMFi9zknFi/e+UFF
	ZfEQtm77xvfIFyRHAK7+iThDrkTTJuHHSd/MKIh853bXHLLsylvCl6OSSO9fmEpopGQvxtmfCxS
	SuCSr7xyxB2pQ7fVPgHR969C/7CXjPvU=
X-Gm-Gg: AR+sD11fcHnb+a3AOqF38SFMZYJ8QQxu/0qdGAOwl5BmmBHoSAErc/A//QV9L9iRxHK
	7HAgLZyKGvZ5HUaIpSN5ls5/A/6u2zKLedgYzQmK9dUyvmFw5G8M2Vkgzs/XuQgCkG045IHruTN
	7F3Qdb7ZOVME7GGRoGq+crVHUwaVluGNS5IN2/n8awPyv2kFZUYAQ0Oc9E5TMXZG4R43oGSGlmX
	wDbBQ+LbvmEbkm90i19ulKAjpW0lzox+Va73+lCtYGSsjJ/PZAfyVMF6bVyC8ktib9By80hhFhT
	HrrpzazRBj25DMeh6CMrIQj0ECFILnzC8BC0ge010raQvgCmQbVHJGpUVtQ=
X-Received: by 2002:a17:907:7b9e:b0:c20:768:af62 with SMTP id
 a640c23a62f3a-c200768b973mr9148266b.22.1785641298865; Sat, 01 Aug 2026
 20:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-7-coiaprant@gmail.com>
 <2847036.GUH7pLUipS@diego> <CALj3r0gqvFZPb2SKRMPwf9chCx076rwCnXEoOMFch_V-fOKV6w@mail.gmail.com>
 <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch>
In-Reply-To: <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:28:12 +0800
X-Gm-Features: AUfX_mx4aMsgyN6RI3IxSSP4ztvHebSR5krnQ6YdL4RSbunpB8OT85Rvkz3cx3w
Message-ID: <CALj3r0guMmNRN4EBbKz7stPNMSqkLBvms643YXBEDMzqHHM=FA@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: Andrew Lunn <andrew@lunn.ch>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202821_216639_0993B170 
X-CRM114-Status: GOOD (  13.61  )
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

Hi Andrew,

Thanks for the detailed questions. I've looked into the clock tree
more carefully.

> Do you have documentation for these Combo PHYs?

Yes, the information is available in the Rockchip RK3568 TRM
(Technical Reference Manual).
The relevant clock tree details are also mentioned in upstream
discussions and patches.

> Can these clocks be enabled/disabled?

The 100 MHz input clock to the Combo PHY is a prerequisite for its operation.
It is generated by the SoC's internal PPLL and fed to the PHY through
a fixed divider.
It is not a gate that can be individually enabled or disabled by
software; it is part of the
PHY's fundamental operating conditions.

> And how is the Combo PHY fed with a clock? Does it have an external oscillator/crystal?

The Combo PHY is fed by an internal 100 MHz clock derived from the PPLL.
Specifically, the PPLL runs at 200 MHz, and this is divided by 2 to provide the
 100 MHz clock input to the Combo PHY.
So, it does not use an external oscillator or crystal for its main
reference clock;
it's generated internally by the SoC.

To summarize:
- The 125 MHz clocks (xpcs_gmac0_clk / xpcs_gmac1_clk) are outputs
from the Combo PHY.
- The Combo PHY itself is clocked by an internal 100 MHz clock from the PPLL.
- This is all internal to the SoC and does not involve a board-level oscillator.

I hope this clarifies the clock architecture.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
