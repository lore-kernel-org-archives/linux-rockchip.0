Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F03AC47DA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 18:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BC8lc+3pzkTy5FTng8CeaMnlzc+FBaj73NfvH4xw7HA=; b=WBN/uMFx8mk08+
	+j1OnUku2Xa+YEsVUasAgeEPgpvSGHSx770r3j46e6lJZYOwv9SwD/eCavoInyqqoUDwcrqYXtQny
	RhDqkmad/KTscnhqEeR17Jq0XfNXIRoUnEyWUveEsMy7GbMZi+A9KFOOPbX5nIjg4+/OFgGr966ed
	hjhoV9fSUF+/DhPTWf8kzPBG2cQazvoC4jk38XG3TJ0n+Ry/uNaHy5DiDI/DbhCXE74jXRdwoi4rv
	HCyf3W0k8niIo8krn7pzpHtm1PJ5T5nAFmWh96yJ7/ySqLIKtB0y2oS2GpS9uRjyDBjLUnXA/MD3Q
	5uX0HcpVGQ0JQz9AnYRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsjs-0000000077C-3y9C;
	Tue, 30 Jan 2024 18:21:40 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsjp-0000000070y-2Nb9;
	Tue, 30 Jan 2024 18:21:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40fb0c4bb9fso1959635e9.0;
        Tue, 30 Jan 2024 10:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706638892; x=1707243692; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e9VubAmaaSRTnW+owpxkezzka6tE/KYNpuT5KbngMRE=;
        b=OnI0fJReUwq0wegGPLKhkU8BwdjSTlLv1y3ysVAgu5xLlw/A+Cr5SjbRHtUruh3NRW
         O9SZGvb6V7+l8VGawpK0cPbYkXufGW675OKZcymNlNPwe7oyTS1Q+IwDp6CvdIhLYqvf
         I/GLc9BwsLCVzzX5WBAFapDxPteFSsIMatJCbtiwfANepykJCdbW57ivG+9LdX+F0QdQ
         Q2UztYRm2PDMwRx9fNaDHZ+4IQJqy0kcPIKr7XhDTA5IrmJr4dzOKchd1eG/K85EINHv
         o8/oE9NN4eEgCs2dfkIhNqz7Jal2bmYqVms45BCXZofWRdaAZrQjIsFqt57A8O6Xphf9
         uucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706638892; x=1707243692;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e9VubAmaaSRTnW+owpxkezzka6tE/KYNpuT5KbngMRE=;
        b=mj460aNyG55YrQ1bkQpDkC+/vadztg+KP2AS6wMapY2wYyJQNGlVGoHrTaV0QTyrIL
         DnxNJUaVPRSwT3vWkfuQTyrSk8Tt1vxxeKO8wg+ga0WwVt7eGIIh5nDvGa8iwiEyHwGu
         UeOhpUVkNAYlCozlyD6ab3BKIG31VUeWdADVTFic6mRVbPSWoTEKWh9ccjcNx29j/1Du
         jRXP6Y2+zhVJbZ06j+O5Rk4Nxo9RpWkVnkrnwJCGHxjKNEQz0rAXCGVz08p68cVBR4s2
         /svoipkKR0hKAt+o/rEqakMC/x/mbf8SD9dQyi0J2vKY3INQmq8OUPjOCIMK1yEGmQM6
         ApDw==
X-Gm-Message-State: AOJu0YwZNdXgYZmwMSrWxIEnGNZKUzmz6DQqCo0eX20XVB4yEXzg5ro9
	e91XNT1nam/yiCSHWXZu2cn3A36iACgjZNs/4oCP2R4Fwr46R3Tt
X-Google-Smtp-Source: AGHT+IFLXdhkL2WD30RpdlAbcXXlr0f71XFBz/XOA07FR93Moskp6+X23fkN87H0FoXlMnz2DXfoKw==
X-Received: by 2002:adf:ee0d:0:b0:33a:fe63:77fe with SMTP id y13-20020adfee0d000000b0033afe6377femr872761wrn.15.1706638891801;
        Tue, 30 Jan 2024 10:21:31 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id u18-20020a5d4352000000b003392b1ebf5csm11374254wrr.59.2024.01.30.10.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 10:21:31 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH v2 0/4] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
Date: Tue, 30 Jan 2024 22:21:12 +0400
Message-Id: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABg+uWUC/2WNQQ6DIBBFr2JmXRqgIuqq92hcgKBOWqUBQtoY7
 l5q0lV3837+f7NDsB5tgL7awduEAd1WgJ8qGBe1zZagKQyc8poyXhN/JyYGoozBWLrlaozUgst
 W6g7K7OnthK9DeRsKLxii8+/jQ2Lf9CcT/7LECCWilR2XwuhLM13nVeHjPLoVhpzzBzTNuUmwA
 AAA
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706638888; l=3010;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=adjuFoy6nt1GW5d4QC6awoBjEu5YFjCdHB0I/DbiuqY=;
 b=vxae3YmuZ0paCU+BN095MkbNCIEuFp5KMEL/tC4laXGc48XyJGHJrugcVTOMqkfmloKgDTgHM
 8W2wls6X7ozBn/vtICz/O2r2axOzmDTAtlpqlg1kYn+osOMDrDCEUBM
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_102137_701753_7D20B293 
X-CRM114-Status: GOOD (  15.46  )
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

This is an assortment of device tree additions for RK3588(s) and their
enablement on Radxa Rock 5B.

Thermal zone information and cooling maps is the follow-up to feedback
received on v3 patch version [1] - thanks a lot to Daniel for continued
review of these!
Changes in v4:
 - Set higher 'polling-delay-passive' (100 instead of 20)
 - Name all cooling maps starting from map0 in each respective zone
 - Drop 'contribution' properties from passive cooling maps

Fan control on Rock 5B has been split into two intervals: let it spin
at the minimum cooling state between 55C and 65C, and then accelerate
if the system crosses the 65C mark - thanks to Dragan for suggesting.
This lets some cooling setups with beefier heatsinks and/or larger
fan fins to stay in the quietest non-zero fan state while still
gaining potential benefits from the airflow it generates, and
possibly avoiding noisy speeds altogether for some workloads.

OPPs help actually scale CPU frequencies up and down for both cooling
and performance - tested on Rock 5B under varied loads. I've split
the patch into two parts: the first containing those OPPs that seem
to be no-regret with general consensus during v1 review [2], while
the second contains OPPs that cause frequency reductions without
accompanying decrease in CPU voltage. There seems to be a slight
performance gain in some workload scenarios when using these, but
previous discussion was inconclusive as to whether they should be
included or not. Having them as separate patches enables easier
comparison and partial reversion if people want to test it under
their workloads, and also enables the first 'no-regret' part to be
merged to -next while the jury is still out on the second one.

[1] https://lore.kernel.org/linux-rockchip/1824717.EqSB1tO5pr@bagend/T/#ma2ab949da2235a8e759eab22155fb2bc397d8aea
[2] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#m49d2b94e773f5b532a0bb5d3d7664799ff28cc2c

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v2:
- Dropped the rfkill patch which Heiko has already applied
- Incorporate feedback received on the thermal and OPP code (see above)
- Link to v1: https://lore.kernel.org/r/20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com

---
Alexey Charkov (4):
      arm64: dts: rockchip: enable built-in thermal monitoring on rk3588
      arm64: dts: rockchip: enable temperature driven fan control on Rock 5B
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
      arm64: dts: rockchip: Add further granularity in RK3588 CPU OPPs

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts |  34 ++-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi       | 371 ++++++++++++++++++++++++
 2 files changed, 404 insertions(+), 1 deletion(-)
---
base-commit: 8a696a29c6905594e4abf78eaafcb62165ac61f1
change-id: 20240124-rk-dts-additions-a6d7b52787b9

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
