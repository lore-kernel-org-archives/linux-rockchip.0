Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D73C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TjmwzYMH3m3yTgggKADGs48DWhbgoAtsXdVCS0U3xHg=; b=PxciO0Ci5veKz1iykluKaOlQFx
	YR7nbnWDH+ENac/on7bY30CjVHWIkfJwE+cU4Cj1cEaxY+dDe9nWIIa3jz9pNZ58s1I1yqeqXXICo
	dj+yVoNzdEqjpOykbHppmf6Ft54Ggt6RW4KjKkN3Zgf0RRjnxqFo0YSV4ZOE1FN61Mpti/Jaryy35
	YtwW8haAMiPT9iPLYL64D3DVoVJdaQLdf3oi5GRLUG8kxSUF40bqCuaC4kq9muCKtKcbwPsiQzYnv
	IXCg8bJ9JNVPK9E0WA3tPLnEKQFobnKIf2PwibHrJuvIKCZmFCIjwd5tjPO5JJ4xJofKssqBm2qEU
	CqSpYM3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbiSm-00000005UC5-1JR3;
	Wed, 07 Aug 2024 15:20:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbiSj-00000005UBB-30bu
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 15:20:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 20744611F4;
	Wed,  7 Aug 2024 15:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A253C4AF0D;
	Wed,  7 Aug 2024 15:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723044028;
	bh=pLFN9w/+n0MeDntYCYv2CDhdPD3EXRaMmnfwSv6Y6OU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=SAUZFW9f5JwCbC6RR3he+Vh6cmSX9AiKflylsHRDlh2D9OObaQtivdf4rATf/ULdl
	 0eRYA/dnPZLtzMB4PMxjq7c9oZ4vi0xAhh3J1s8+1qlooD3uiMLyVlsFYqbKuupzdY
	 B6rtGbolTpAoIrghCteogk8Aw7pwtRHb4vZM0n8s0gUUjohDme+hjSvoAoQENLIlUE
	 vgKxIKg3WDFqH118tDGZGEzPm8h6YNA6GZj6uaBB9Ur8fFJU7iFb6wJ7AAybFtFJ43
	 /whNNsnXeEK9gMaDXVC1qR/YZ5vn1jGHnbTj5mlmGu4iK4VcL1yehfG5AHsejFPiCT
	 v07dz+7vhbFxw==
Date: Wed, 07 Aug 2024 09:20:27 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
In-Reply-To: <20240807084642.742-1-naoki@radxa.com>
References: <20240807084642.742-1-naoki@radxa.com>
Message-Id: <172304385887.2508235.982090729519727246.robh@kernel.org>
Subject: Re: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_082029_827212_B3E23F07 
X-CRM114-Status: GOOD (  11.53  )
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


On Wed, 07 Aug 2024 17:46:41 +0900, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer using the Rockchip RK3582
> chip.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> how should we handle RK3582? as far as I know, it's just an another
> version of RK3588S.
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-radxa-e52c.dtb' for 20240807084642.742-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588s-radxa-e52c.dtb: leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-radxa-e52c.dtb: leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
