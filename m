Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0D84C88E42
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 16:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2ls18KveekUExaipsy6hzIvXguIJMOIvyH986wdLmQ=; b=sVKCWDfJpe8y6x
	5+nddk/ynjZ3yCdT+iISu3O3B3S0K6cSQje51Y3K8u7HBUdlfHLFWGXWLMn0obZY+R7XaWfs1W438
	g27Agys5nP4RGXRbnqi1/yk5/QUskMBTlmdUZm24TdMw6j9UbcBuKLnaSoOK3gD2uTZgFHkK/OpFT
	8x6JFRdIO7c4cHR3v+XggFwuwRmf6e6VHcxiyRSfdsSY4iOE3isKo749bJd7jXPKG+fCevvc/1Gkm
	0tOZpquTSikseQ38ZwhrpDXpO7FzTkcmLLbagxuLTMrnr2hHLaoqM7z3wMOfEQJgkBrvLlomPpFng
	QjwcEvNLKFpyxzbFFnaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4hxo-0000000EzlW-0g5b;
	Thu, 10 Sep 2026 16:49:28 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4hxj-0000000Ezjw-3v4Y
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 16:49:27 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6a7ea0046deso9423569a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 09:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1789058961; x=1789663761; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=trXMroz5mGRhnvsqxF0GR3hfGr2ispYPFG7I9RaBuY8=;
        b=Z/2BLlBY9wuoDrqNWFa7svSR2G6UYcutckKJo/TPBfl/PNTiLoMPfQ+RGsBBSOPt5G
         eeGvh0knpxkKBB6NHnZZfIqWOjzCGLDCnVwIR+UIeoELIwAvhHnMMpEa5E9shXstrWuj
         08CxiLfNqOKQRNYqYFofqb+1zrx2Ra6FIK67oE0Q0RFzpNQseibA4S6zyPlRUt0jlA9Y
         lqwS0QW7MNrx5GVsssvUdvgHdElil30tx7R3RzzWD4OqicuhWF5jpbgefLHaepNpF5+h
         SJiWRaLWFbO3hZR+kGqdQJA0RN1pxgCjWuWTZQ0MvFsgmmHsoTrgaXsUfNQWxRyPYzOv
         W5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789058961; x=1789663761;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=trXMroz5mGRhnvsqxF0GR3hfGr2ispYPFG7I9RaBuY8=;
        b=XYU81IS4nGgjviJ6ASok0vuSlQ108DZ08t+HrrkKDuWzYaZeSJ1sRdK5SHToJEd8Zk
         8NdTJxVicpbZd4oTQ1v8uMnMSB7fpLLka7aAlhqKZCyyw0b7LzF6PL6aGYO0pyv9hhnW
         g0NWlTEh8KlHwul983po9DMkKRH3nmVwmH1rOvHRptgERz4Iu1I5YYwjrZAAjfimmAuz
         zNNO8dbnWIjkoqJi8wO90LhRJ610SAt/k57M5emz2rRrl9igGzUQe0S+izJrCPmf9caD
         djK4UrKZB6aTAlMLPlXiRh0lE0D7XUImNeuDG1g0dQuafbi0n69Mz2N6m9rcfCWamwcZ
         z2CA==
X-Forwarded-Encrypted: i=1; AKwUvBxy1zGQpWe99zSCRTjQ6eiNbUDjRX+CPpzxI0F6nlogjGWGAnnFnLEMxaE6Uf2NolKb5f0wng7PRSQz00f1gQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lVtQG4uiYyQqhmZarDq1BSZKoXsRCYKgEYAYr5/WTx6feC16sF
	EwN6RTou54fwuM92lgllt4HGB3uarjtTLCVUFLmPo8DXenZaBb1N2a1+dXLY7uOKbw==
X-Gm-Gg: AYBFou2WaAC+XUFwlcAUt3tOQr3janrE7Sky5utvzWIA47We2Sb32tbvgVfN76UqiRw
	TTft1MIzpeqhkuw36wcgW9EODFbdFq4DMn1OqdV6G4F9mzMEtQeRGjcS8cXwwfjziHspUWpIAJv
	l54t6ouk/otcqjC1z1fF1SYIsx+LR4stH91KXjk/zZ4eYDhxXcrGMLjSE2oxDi1jUaFlmRIWmMB
	d75YzUT9PVGLesKTQHV31vp9jX+kc3s7XI9rwC0HxUcI47VLHrd0KuQcP4u5dwg2KZ6+g1GDnh/
	PZpItvH3t6M5XVo9PE0UIllTXANizIsjI7SpUdrFlTcub5wdnvMXTLiGAQOp+iVUjtVoUSMm1rk
	47wMPMgywnoACdYJRId9YdhVT4CrXD/t97O1yeZuTQ8QwZ3BrIi1YIElT/CWBReFmgh3cYagXzV
	Pc34BeBLmsn8bUpnHIQDR9io6szSZ3rYYp88eJpcxjniLwJoCFikkRVmCwaLQwCeJ8gti3dDMZ8
	3gFIrRqTQ9qOUCFRvxhUkCcZZ7KmK092PbF6C7LpTnGa1qR3r68j3RZgF2tPpoi6UFjPaObfYOE
	K3hthvu6mEfaXkXmHVCfIUQrHO3Bev2suVCxui8tWJUtTs065jiyoeUL9w==
X-Received: by 2002:a05:6402:2b9b:b0:6a9:a3a4:797d with SMTP id 4fb4d7f45d1cf-6a9a3a47b3fmr2194091a12.10.1789058961506;
        Thu, 10 Sep 2026 09:49:21 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:8888:6b72:e1ae:406a? (2a02-a466-4d7a-0-8888-6b72-e1ae-406a.fixed6.kpn.net. [2a02:a466:4d7a:0:8888:6b72:e1ae:406a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c294682fcfbsm143774066b.16.2026.09.10.09.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2026 09:49:20 -0700 (PDT)
Message-ID: <08011075-364c-4520-857e-cd1acf955b53@pardini.net>
Date: Thu, 10 Sep 2026 18:49:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
To: Alexey Charkov <alchark@flipper.net>,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ricardo Pardini <ricardo@pardini.net>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_094923_985731_D014A1BC 
X-CRM114-Status: GOOD (  21.16  )
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

On 02/09/2026 15:07, Alexey Charkov wrote:
> Rockchip SoCs are shipped with a unique CPU ID in their internal OTP
> memory, and Rockchip bootloaders use it to give boards which have no
> dedicated storage for a MAC address a stable one anyway: they hash the CPU
> ID and patch the resulting addresses into the device tree they hand over.
> 
> Kernels started without that fixup, e.g. straight from the SPL in Falcon
> mode or by any other loader which does not implement Rockchip's derivation,
> fall back to random MAC addresses which change on every boot.
> 
> Formalize the derivation in the DT binding and add a Linux kernel driver
> implementing it, so that a Linux image can use the same stable addresses
> regardless of the boot flow.
> 
> Only RK3576 is wired up here, that being the SoC I can test on. Other
> Rockchip SoCs keep the same CPU ID at a different OTP offset - 0x7 rather
> than 0xa on RK3588, for instance - which makes supporting them a two-line
> addition to the driver's match table plus the layout node.
Hi Alexey,

I went off trying this on RK3588 and - exactly like you said - it 
translates perfectly there, just with a different offset. Thanks!

Not content, I went for RK356x as well - and that revealed what I think 
is a snag.

Both RK3576 and RK3588 currently describe their fixed cells as direct 
children of the OTP node -- turns out that is the "legacy" way, which 
works due to 'add_legacy_fixed_of_cells'.

But RK356x/3528/3562, done more recently [1], use a single 
'fixed-layout' with child cells; and there can only ever be one layout, 
so we wouldn't be able to use the new layout for those.

I imagine one way around it would be to allow such fixed cells also 
under the new layout, by delegating to 'nvmem_add_cells_from_dt()' and 
adding patternProperties with '$ref: fixed-cell.yaml' in the binding, 
similar to what fixed-layout.yaml does, but I'm unsure that would be a 
good idea?

Either way, thanks for this, it really helps with Falcon mode and edk2; 
I can also use it for the fixed-function RTL8125 PCIe NICs I started 
describing [2] (and will eventually send a v5).

[1] https://lore.kernel.org/all/20260312213019.13965-3-heiko@sntech.de/
[2] 
https://lore.kernel.org/linux-rockchip/20260617-rk3588-dts-rtl-eth-describe-dt-alias-v4-0-2bd38922d129@pardini.net/

mvg,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
