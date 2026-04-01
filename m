Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D3410F6FD7
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 15:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=et9RdL+lwQYsWSqtl6d6+o84U6HuW3IzmULlE9wqeEw=; b=C1H+FmxVAL8a9S
	3mRtGxcqQEzGJumsVLn8vLrFg2pvTaVuZrrR3mNvUyHR/E/As2izmDUZMaaL5mu/7N0TybdFZ19Yy
	1aZoPNT9OqV02uUy8Nq5OcmgEUXNLnvbyHOiccuAU8tJiAyEWD75Li8vLW5SDWagw0kq89uz10p7o
	ew+CzvKODBqrkowCVUgf1NFb2DPVrRHeZJ/yRc/wje7xbkLuDgCyDxKGWty2Hqr2c3S9voH607f46
	z/XVJvM1hSV5lN/1REN/+VnmIHVWhdG10jtO9i07ePSVeubAdEK+pSY33CA3I+AhWRqyAibDTH9rK
	/Mlghoeyj7X9N1tWX7gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xDr-0000000FbMp-3s8D;
	Wed, 01 Apr 2026 15:11:13 +0000
Received: from smtp.forwardemail.net ([2001:19f0:ac01:372:5400:5ff:fe53:764a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xDn-0000000FbLQ-0ira
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 15:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1775056264;
 bh=OuuOxL55HdAFY06SfOG3LOC3qubiad/RGrqlyB0hkLI=;
 b=bvWrP9hmJtuh9ZRUxuGhSqhqkC0Ycv2Dx1vR7kP2GVGD7wv8fgk4iVpDe4OOmpCeh3x0U3n39
 1CsAGqTH6KrYyHEeioy9bv2IplG6mii071BLGQKVX3mj0ZHA6cNcjbJ+fF5dzZ7bYMM/P0RW07A
 XtekFj9BkI578/P6U+3/phLU8f/0ced7FGAeJ3aPpJDkUVFDS2DTUupnzyY6cCkurldu5Kv60II
 DfxPIRMd5k9q2ysGh8I3xgOyC2Azchs9H3oVEHU+6sogKg1tFCj0mKxJMc6GeHg1OD3YyhKBV0t
 NbRT7lYBRWmOH5OvVqETXj7g5ASXkOyAgW8cfHPTNX0w==
X-Forward-Email-ID: 69cd2639c44eae2b77aac006
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.64
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d7e235c0-425e-4da6-a51e-5efdcac5a5f0@kwiboo.se>
Date: Wed, 1 Apr 2026 16:05:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: refactor items from Orange
 Pi 5/b to prep for Pro
To: "dennis@ausil.us" <dennis@ausil.us>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, John Clark <inindev@gmail.com>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>,
 Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Mykola Kvach <xakep.amatop@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20260401010707.2584962-1-dennis@ausil.us>
 <20260401010707.2584962-3-dennis@ausil.us>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260401010707.2584962-3-dennis@ausil.us>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_081109_868352_9CB4C9BE 
X-CRM114-Status: GOOD (  11.22  )
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

Hi Dennis,

On 4/1/2026 3:07 AM, dennis@ausil.us wrote:
> From: Dennis Gilmore <dennis@ausil.us>
> 
> The Orange Pi 5 Pro uses the same SoC and base as the Orange Pi 5 and
> Orange Pi 5B but has had sound, USB, and leds wired up differently. The
> boards also use gmac for ethernet where thre Pro has a PCIe attached NIC
> 
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 ++++++++++++++++
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 ++----------------
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 ++++++++++++++++
>  3 files changed, 378 insertions(+), 189 deletions(-)

This patch seem to reintroduce a lot of duplication for the 5 and 5b
.dts-files. Please reduce the added duplication caused by this patch.

Maybe it is better to create a rk3588s-orangepi-5-base.dtsi or similar
where everything that is shared for all three boards is moved. Or the 5
an 5b specific parts are moved into a rk3588s-orangepi-5-5b.dtsi or
similar. Then the change in 5 and 5b board .dts-files are kept to a
minimum.

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
