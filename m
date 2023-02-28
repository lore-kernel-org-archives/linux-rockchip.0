Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F7D7C64EC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 22:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Jl3hpJa2gDtlhoSc3vlvhJ2WA6vcgZoDTUJnZJtTgc=; b=uv3kIZmiXeC17x
	6WJJ3sSYAOGj9nOkpG0CyEsGPtxDmS5IB0kSU48Qg3bzz+qUXQ8rpbh0opwv7idWxb7MKSHdmzIw5
	sTD2d6p5X9NwDEXFe4dv0XeblJzCShfPFsKdGA/Vf715H/eRZg27QuqMLynue64CljPd36+pvQQfy
	VTQ1sf3FEz8bSOktb6Z9ZI9RRdFne28ozzkkCq5rK2ziymUL0bmMGIZBD9XBeiagINIY+VFPICZlS
	KUBuLrCQta76C3scJCeP8jA5h1KyXUg3kHVUg9+Qp8AV+cWpQHwsNQXn278/zM926oHrw6eFbPfm6
	X6ALKFF3u16cSCIRJjQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX8dE-00EV6f-8b; Tue, 28 Feb 2023 22:39:36 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX8dB-00EV5S-Fl
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 22:39:35 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id B0DA13200954;
	Tue, 28 Feb 2023 17:39:25 -0500 (EST)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Tue, 28 Feb 2023 17:39:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
	 h=cc:cc:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1677623965; x=1677710365; bh=hx
	VjkJn7zqJxqfQH01xBcClvQ5vUJ3mcknplStIuuKA=; b=pHFItyyQPOnxzEqrkL
	CWWve+XidER5QUkJYRsWOkQioN9rSaumKJEkPVj2FLb1yITTnjdoT+RQnHHN2NrC
	4eotblEm6nltCTcRVYc4A+CmLVgyi6wzYLIXys/IUoqyyNncioL410qSExsNqXzb
	mlcMyl68A85+WDmSYaZAF6YlBB/Q2OkvSYCM5Ic5AnE6r45v2tjP+h+uZcT824kP
	knz6UT94sIyVgj1dVWAHXFSoGrLctv1mKddaY/3i4xSsZEo2WGF1Q1MtmpcY7IjD
	bC8V/8eCFHKJpVysqX5abtwkj8s283zC4e2pdGPe0kGINTXERsSdHaqCritCVkub
	GP1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1677623965; x=1677710365; bh=hxVjkJn7zqJxqfQH01xBcClvQ5vU
	J3mcknplStIuuKA=; b=GmgWreykv+Mw4IoOvmTDGGGRXBiS9e9do5VqMypJOvrt
	ODzkefPcDIDFaf13ITHVhlCDy592uTyNHU3K3txgXtj4labH86+mX4morZAi2eS/
	0wrLYV4xOuCQxVP7/kd2J7dGtRGjNeiMp2L0NsiBPWKlNsSlK8510uD3xV5LqaQf
	RWt2D/vo5rp43pkF9wB0njDuSuTfvNdu5VLOFNw8WbwI7Mp5z4pyfMUqCnUC0Yzz
	MEsYvOHptbrIpB4GQqzy5+35dl05nzJnpB6QArpq/ktJFmd6XgiRE+w9fS48500n
	kf3FFMgHZOd/qzsB5FjbC0nZSdy+onoyOdixMTw3Sg==
X-ME-Sender: <xms:nIL-Y4xhMPpwqOKiBAFDb7Tdk3Mid68GdNVEcpmp7PV8XeZtSy5nZw>
    <xme:nIL-Y8RsQ5tCvgdHsy1-8qGan74n4ijBe0bpI-wK1CLfT8JWZG6YVJf_P3qkLiiiZ
    qBCwLlqLnUaO9O7zLQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudelfedguddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomheptehl
    ihhsthgrihhruceorghlihhsthgrihhrsegrlhhishhtrghirhdvfedrmhgvqeenucggtf
    frrghtthgvrhhnpedujeejledtgfejtdeiieeludfhfedthfehhfffheeihfdtiedutddv
    keekjeffhfenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegr
    lhhishhtrghirhdvfedrmhgv
X-ME-Proxy: <xmx:nYL-Y6W_feM8HDHi1cMlnAau_TKCc9Mr8gktmfS-SIpZNxEwWETLBA>
    <xmx:nYL-Y2hDuN2qdvU3a5dbGR1zK2_LAvTBR1cWaQIhUVCSIP3DYePSAQ>
    <xmx:nYL-Y6DnJ4SGY2m_29c-dflAylidQGWG5ezoVCjh9OBC38g5gHkUig>
    <xmx:nYL-YysOhWRpXfSyDpGUzIPiVtumwFyWrA6Dizn8nUgHTO5ywqPiRg>
Feedback-ID: ifd214418:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id F276D2D40074; Tue, 28 Feb 2023 17:39:24 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-183-gbf7d00f500-fm-20230220.001-gbf7d00f5
Mime-Version: 1.0
Message-Id: <e209c4dd-c4da-4f02-bbb0-40cb473d8275@app.fastmail.com>
In-Reply-To: <20230228152205.133582-2-macroalpha82@gmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-2-macroalpha82@gmail.com>
Date: Wed, 01 Mar 2023 08:39:04 +1000
From: Alistair <alistair@alistair23.me>
To: "Chris Morgan" <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 "Vasily Khoruzhick" <anarsoul@gmail.com>,
 "Luiz Augusto von Dentz" <luiz.dentz@gmail.com>,
 "Johan Hedberg" <johan.hedberg@gmail.com>,
 "Marcel Holtmann" <marcel@holtmann.org>, "Heiko Stuebner" <heiko@sntech.de>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Rob Herring" <robh+dt@kernel.org>, "Chris Morgan" <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/3 V4] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_143933_904693_B0AD27E7 
X-CRM114-Status: GOOD (  13.87  )
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

On Wed, 1 Mar 2023, at 1:22 AM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Alistair Francis <alistair@alistair23.me>

Alistair

> ---
> .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
> 1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> index 143b5667abad..8cc2b9924680 100644
> --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -4,24 +4,30 @@
> $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
> +title: RTL8723BS/RTL8723CS/RTL8821CS/RTL8822CS Bluetooth
>  
> maintainers:
>    - Vasily Khoruzhick <anarsoul@gmail.com>
>    - Alistair Francis <alistair@alistair23.me>
>  
> description:
> -  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
> -  SDIO, while BT is connected over serial. It speaks H5 protocol with few
> -  extra commands to upload firmware and change module speed.
> +  RTL8723CS/RTL8723CS/RTL8821CS/RTL8822CS is a WiFi + BT chip. WiFi part
> +  is connected over SDIO, while BT is connected over serial. It speaks
> +  H5 protocol with few extra commands to upload firmware and change
> +  module speed.
>  
> properties:
>    compatible:
> -    enum:
> -      - realtek,rtl8723bs-bt
> -      - realtek,rtl8723cs-bt
> -      - realtek,rtl8723ds-bt
> -      - realtek,rtl8822cs-bt
> +    oneOf:
> +      - enum:
> +          - realtek,rtl8723bs-bt
> +          - realtek,rtl8723cs-bt
> +          - realtek,rtl8723ds-bt
> +          - realtek,rtl8822cs-bt
> +      - items:
> +          - enum:
> +              - realtek,rtl8821cs-bt
> +          - const: realtek,rtl8822cs-bt
>  
>    device-wake-gpios:
>      maxItems: 1
> -- 
> 2.34.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
