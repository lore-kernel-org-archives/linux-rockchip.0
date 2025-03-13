Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D502C35FF4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 17:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtAu69Hxlo8vy18NbUogWUwI0kCYFLdsuf6HGKG/lY4=; b=aUhWFgYVMsq4OV
	E2ydrwDIxvVmkHjNkru1BSPlk2x+VXMTuv5W5AnceKVYbsAnC95tgX1XQmJgGDuB3Exj+eJcNsBcz
	4sAiJbB0QUHcwPOGMJhHyHput+LX5z10r3t8Cn5lqPARZ3rC9jgNYzRq1Ob9V6g8kJEwjw0A5Gcw6
	xPZw2j+9ouWxWM5qtm5TY30Ss9xwFvfP/MJfFd4w1CtVyNX/BPs8yBJjNRMfY8JC5IlF26gyKoXY0
	RWUoikhgYrcdoecV6Ta5YH8VFBWmolhAIil2FbnERC6GDzBFKeYVQGAl983A6E14EKXrC9jMbqn5y
	YWa3xfNkeYZsnECFkZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsm9a-0000000ByhQ-2Ts3;
	Thu, 13 Mar 2025 17:15:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tslr0-0000000BtgU-30IP;
	Thu, 13 Mar 2025 16:56:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E0B65C6054;
	Thu, 13 Mar 2025 16:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF2B1C4CEDD;
	Thu, 13 Mar 2025 16:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741884977;
	bh=AOqMFoSF7wMysKxflwNKrdVJb6TkuN/Bi0bZXKPBIh8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ukcXNXJLHYRqcpTN+7GEvlB0tlcsMOtTkmRUmB1pLqLoD8psS4WALY6g24l08QA+R
	 jn0qfvPXOnMOVAP0B4h0iuk8doOWpACR61KEJx0ek1FUIhMxYijGqq5JN4Gdy1JPCC
	 /VBJCOoEttl1XOaQLfuKvVzwdDwqh9ptGxHvg5CFyECteetU3TI92+ZbgPJR7uGP2/
	 DlXyPAgnDcM8/YbkUUxp3WlNCyid6t29oLLRvlXT7dX5deilt0FWxmHvNkhlXgVLWo
	 EA8zUDgg/apH6bCsV7nMEOs/esKmfX7Py1b7ws1yY1k1cnTmDCu80wyRv1Y3Yl6/rU
	 c/H61qRSciuyA==
From: Lee Jones <lee@kernel.org>
To: Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20250306123809.273655-2-amadeus@jmu.edu.cn>
References: <20250306123809.273655-1-amadeus@jmu.edu.cn>
 <20250306123809.273655-2-amadeus@jmu.edu.cn>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: mfd: syscon: Add rk3528
 QoS register compatible
Message-Id: <174188497549.3792331.5613971273362591228.b4-ty@kernel.org>
Date: Thu, 13 Mar 2025 16:56:15 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-510f9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_095618_793515_BA9DD1A1 
X-CRM114-Status: UNSURE (   4.44  )
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

T24gVGh1LCAwNiBNYXIgMjAyNSAyMDozODowOCArMDgwMCwgQ2h1a3VuIFBhbiB3cm90ZToKPiBE
b2N1bWVudCByazM1MjggY29tcGF0aWJsZSBmb3IgUW9TIHJlZ2lzdGVycy4KPiAKPiAKCkFwcGxp
ZWQsIHRoYW5rcyEKClsxLzJdIGR0LWJpbmRpbmdzOiBtZmQ6IHN5c2NvbjogQWRkIHJrMzUyOCBR
b1MgcmVnaXN0ZXIgY29tcGF0aWJsZQogICAgICBjb21taXQ6IDFjMzEzNjA3NDE2MDUyNDE0Y2U5
NGJjOWJiMjdiNjg4NzQxY2IzMGQKCi0tCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
