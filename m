Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86BF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9hAcb0WRnNkVpiMrwbTKsGNIDTsUXAzBYXQ88Om/eg=; b=Bc2TRU2lS1yKRp
	DaPjcfgPgzFJ5Kr0RwD+d7p4qu/dWdB7AkY2slwzQfIrAgsvJNZNqMtQz/HDVXyCl4XTFXnJddH4C
	5pCplVKjUXwdvKlGlojgYbNHKF9sEhTmXI7gAJJr2N1KHTiFA8AlZKenc+mIvWKslpPGSgYt5ChoZ
	do2JHygGSOh5ehBUZWe7+G05y2sZZK6+ZuIKfp/hcdW56ll90cXhi/nRffRo4AbqKQoxIpCr8FEdH
	FTUW4+6xduAAA+/27KGgRZ2ZXE/Xazu3DpHbVBjvdMFbUpXx52wI8C5IgHUgFP7dMpPKXXhCNSX48
	oMvJpUcz696m4ZO0hCrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9sa-003Brh-OO; Sun, 29 May 2022 03:46:12 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9sN-003Bpe-VO; Sun, 29 May 2022 03:46:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id C9B773200754;
	Sat, 28 May 2022 23:45:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 28 May 2022 23:45:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1653795957; x=1653882357; bh=WK6kA6QrCw
	wKMLUCmNwj3NNYnGVd5SuQZRtDlGxvgIM=; b=jA656v1jz2FAxKtCWhmQrhi7cI
	bAlr3xV+m4/yfpqH2MGwddW3OBcq73ObzFN1yfiGSZV3VzQ7vBOM3ZigPWoHo9Gm
	UUyqsd/tjBYL9ql7Ft3qgWwAhu95z5JSE9M0DHniUYRm+mqcZ2vxiDgDWqe5AY4+
	vHFJzEapzYMOifeE5mMuuvoy1SCebqWSSFbydpiFhD3IgsL8LVQp5lZXk+OF1w70
	kswguQHn92Qm1oGHErimniOH/gmF/AMDnXofN7K8FBPFKtTbt4feFdw7MsMaYbAD
	1XKn0/ezf+KVKRC7lCCiTEK23InyTkYK46GFtr35xD0ib+Az9x2ReSJX68DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1653795957; x=
	1653882357; bh=WK6kA6QrCwwKMLUCmNwj3NNYnGVd5SuQZRtDlGxvgIM=; b=f
	G6PDdLVbb8/GJ/ni9Z2Z8luv6q+mzoh37dh3c4jdnB6OxqEqQSPlEoKiE9dp6qrG
	7XnGdColZLVXKCpjAY83AXoFdHy08lC59RoyVbdSeIffbb/ALOoXvWayT6ntHjs5
	PuZXN7oyyu9jclhrJaMaGhRDyQ2AkmHD0TeDKcTIlIVMvJxUD87Hnn8AxDrBj6ck
	ksH+EEqNjxz0AIlYMzTt+ntf5mzUPh/ZCPYbaMUx9lYPwgvcKpoAuVHvGFZhPxlg
	PpBQI8qrytH5y4+MwoJ7nGIdOl6bUiqFLpO61PgnkrM9YsvHtmeV7jUd6ItfItRO
	Zqq7tzGm+uIlHEWxHEzLQ==
X-ME-Sender: <xms:dOySYtl0mCRmdM0WmTyoNrt29PRajIQM_nFipWP75yeJp2SwNKQ8pA>
    <xme:dOySYo3S5rsbohOnNa9UVpcIhId01TEi_P8HHfRBZUEU-jrIVNxHpI9Vew2druOXP
    teCu9FKmQGgzsRtTw>
X-ME-Received: <xmr:dOySYjqszrlqte656snlhzkuGbjNNh8uJPH9l7iWxt05A-x9ZWt4gbz15y1PYOekf3qNMjFjJKQKYpqguW4szH7m>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrkedvgdejfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfvvehfhffujggtgfesthejredttdefjeenucfhrhhomhepvfhomhcu
    hfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhkqe
    enucggtffrrghtthgvrhhnpefgfeelleeuteefjefgkeeuhfehgedvleeiheegjeegveei
    jedtudeludfggfefjeenucffohhmrghinhepghhithhlrggsrdgtohhmnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhomhesthhomhdqfhhi
    thiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:deySYtncFiIbHVeQ6_rYsnxQ3Q8FQLhRMRaK-0_dnYiW_hnzjAdqbA>
    <xmx:deySYr3CdhAiP8E7_6AryfkhFhshgP5xdSDG7GjXvVgyW1Xx3qhc5Q>
    <xmx:deySYstUqaKB0cMXk943KAAuXp90_HdBJU-8bqyxxnGHljFg9UHGyQ>
    <xmx:deySYpN1GPpRSC7SiBBGLx6_eismD5RWA8h-tZhAH4CiXcIF9_VIDQ>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 May 2022 23:45:53 -0400 (EDT)
Message-ID: <b6500fe9-f7df-a7d1-09cb-9f772126128d@tom-fitzhenry.me.uk>
Date: Sun, 29 May 2022 13:45:52 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 Ondrej Jirman <x@xff.cz>, Martijn Braam <martijn@brixit.nl>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
In-Reply-To: <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220528_204600_092020_11DFB743 
X-CRM114-Status: UNSURE (   9.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I've sent this DT for early feedback. I've commented below on the parts 
I'm unsure about, and would appreciate any feedback.

On 29/5/22 13:17, Tom Fitzhenry wrote:
> +	cluster1_opp_ppp: opp-table1b {

I don't know which OPP should be used.

Per 
https://gitlab.com/pine64-org/linux/-/merge_requests/36/diffs?commit_id=dcf78ea8ad6f0b1c6e3279d8d752ca68d6d05756, 
using the regular RK3399 OPP table exceeds operating conditions.

Perhaps this should depend on an OPP for RK3399-T (which would need to 
be added, as the linked merge request proposes).

> +	// Per "TYPE-C", page 23.
> +	fusb0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int>;
> +		vbus-supply = <&vcc5v0_typec>;

This is the node many PinePhone Pro users have been using for >1 month, 
but I don't understand the USB subsystem well enough yet to understand 
the node.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
