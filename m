Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A33FCD6E75
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jun 2026 05:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Txg4XfQT43Y2ZnTUPYOfs8f8ys3FciYTuKi//R3jD+I=; b=3dX3VwoDPlm/ke
	i6l6P96L6rxFpwefHNNtyoJP2aaxcFq6V5OIs6TqGQmGlRYRuXC/r1Ebw7W4OYX0Iqh0ks20m8Jr+
	ku6Nhw35DzAkbC2y0pRjkCdxA09cSMevWn1qEaunAKLgcpzQZf8UXFcRgKCDGpOfxyHrJ9/KLvHLO
	jgJx6wQyULhePw/OtLlZrb0lHrYW0+eMO8l3Og36ITVy9ECht032G4KgCotJ1ukjGWizxYbykyu+J
	2TB+mUDabrHl2Sf5AcTPjwD2fW6gW49Sf72AnF3oWgF+CZ69NPvGVTcR+96zbp+ETsMgE0rTz9y6T
	8sQzI28EBc9uZx/UArlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVjCZ-00000001SHr-12Fl;
	Sat, 06 Jun 2026 05:04:07 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVjCW-00000001SH5-0Rt0
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jun 2026 05:04:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6914a658115so716263a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jun 2026 22:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1780722242; x=1781327042; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ad3Risuri9Oy23ttuXXObF+tJAD6dYgEl+kDhesPP88=;
        b=fhJzi3b4acBqOFSq3Mf/wRsp7AGZYsE4yi8KeNKMldG7u7SraPDT2WdEfIUATmpcwZ
         0CCe0S7F7QhWJ5PwKNcEWLSsIBHwRipUJ4DyTdnPJCrplDmamc8pIaHOt5MwJySSF21B
         RZK7IJ587q2xnRgOsRDk0/pnam5tCNPoNAFYksudHMDV+E8aCXb9Af1ec8xE0EPmxafl
         verKAW733pGurIpmokyyu14vzrfsJ5f3cqQF7fPf+L+FWGPJ28TjZfQwfmijphnJkUiv
         dzIanCUswOHuLoJUXONmPa0R+n4fldy0dUH6qbiOmCrDKlCGtBLd2zwXBRwDSU5+V3Pf
         pBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780722242; x=1781327042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ad3Risuri9Oy23ttuXXObF+tJAD6dYgEl+kDhesPP88=;
        b=eh+Ac8yCLf9AsoJESpGg0/8wKkkM4+mtVwLWzhRZWblQwrMsNiyLndjZ0VKr9I8FiC
         C5gNmIKpgDomNhwUJfzjTm1AiX2Lk7KYbkJeJ/Ky9tLLiyevqGEwypVyKHmpTWSLFA92
         XA3C84GPP+ZoO9vCGSwzvEx0Sl4QOSf9LcHYzbu3WYFyDUMl2lnF1Ep6PWCMYDde1nNy
         cA3mmriRlvG/BN29d9JZROC8jdNhEAd9IvTPLQusl2BQwS3koKhslM1QchuINk8f8U+D
         V7KjQNe4rzGFifZ/uGacSxJBrbL5jg6U4K0l6QZUgfOyM4F64yQKm68Dde2XbqGgGkhX
         m9ZA==
X-Forwarded-Encrypted: i=1; AFNElJ/I+xog/v4bW5Mm+OwIz8QmHdGpbNkGMcwAY++LRvtT1zNaFbS+NB5+PJrCP0GnxvM1bc8otvcPILSjM4WIWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/Eetva3eFst2V6nHjdbONKzMgfQPz8//tf7ri4nAMqDCWuB5Y
	3eY2jf7b6Bomi1FAifrgCGjvd4u2oG2zBrvx20tV8eQ2dB2MfPP3/LkS5oD/fTQ0Ow==
X-Gm-Gg: Acq92OE8koHZn+gwsXvA6Ju2qInPDc4c17f+x4kTfWw+9NtzN2V7UYOMx3UWXJVEBJ1
	A2mjKe808Pn5dsPPhbvg4CdFzGHx+LnYy1XHP8HUxK81zgBjSrRByxvs7hCdy9dkbAEanIkF4cF
	2WfnC0fygE3BcTazpYsTQKgUeLjAka1akzSG0rsp1Z9mSjHm7r/FDIazbaGGORfFnTMhIFEkEMW
	eqXnfIBXUmzYu+hL7cq7Q+dJ81i8TxTTijGvW3qXk8Zp/jJ+/VbrN1ACjNWDSfOWbIwIlwIRcb3
	YNXldCbdD7ValjRyR0NaFUaxHpObINN7MseORM7OkY4ZHdOL7SLnAzCMk5A0lB5E2KiYWqO83Cy
	m2ySlDBRKRZyzeCGjMLnqZC8vcxR7rZ3nXGW16GXysHn2GEjq/4dR+H6/9rkmyxDb5yRMMsBKFJ
	itosj9VoJzSzrjRTGYVBZ0N1FBdpnChQnelahVKtnw5kD8WcZx2haVXWbuplXR3UkFRazg80U1A
	4vaGl8U3leSf9xJ74dSDb+iw0PY3wh1djArrwsxl7Y0cBNvWljKHeGKBQ0iCuftD/mYYhRHSSTn
X-Received: by 2002:a05:6402:268f:b0:68e:4c0:f599 with SMTP id 4fb4d7f45d1cf-68fa4c16b80mr3088882a12.5.1780722241268;
        Fri, 05 Jun 2026 22:04:01 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:c439:8cdb:ad2:c0fb? (2a02-a466-4d7a-0-c439-8cdb-ad2-c0fb.fixed6.kpn.net. [2a02:a466:4d7a:0:c439:8cdb:ad2:c0fb])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6915a637180sm421874a12.26.2026.06.05.22.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 22:04:00 -0700 (PDT)
Message-ID: <26da1dfa-3408-4654-9046-36ed6d57059c@pardini.net>
Date: Sat, 6 Jun 2026 07:03:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: add Realtek r8169 family PCIe
 Ethernet
To: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net>
 <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
 <b7cc8eba-ff6e-417d-8e74-b3bb24e08a26@gmail.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <b7cc8eba-ff6e-417d-8e74-b3bb24e08a26@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_220404_188768_65EDCEB5 
X-CRM114-Status: GOOD (  14.34  )
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

On 05/06/2026 17:48, Heiner Kallweit wrote:
> On 05.06.2026 13:49, Ricardo Pardini via B4 Relay wrote:
>> From: Ricardo Pardini <ricardo@pardini.net>
>>
>> Add a binding for fixed/soldered Realtek PCIe Ethernet controllers
>> driven by the r8169 driver (RTL8125/8126/8127/8168 and variants).
>>
>> The "pciVVVV,DDDD" compatibles are the Open Firmware PCI Bus Binding
>> spelling, auto-derived from PCI-SIG vendor/device IDs, but they still
>> need a binding when used in a board DT - analogous to "usbVVVV,PPPP"
>> compatibles documented in their own bindings (e.g. microchip,lan95xx)
>> so board DTs attaching properties (fixed MAC, nvmem cell, ...) to
>> these PCI function nodes can be validated.
>>
> 
> The of node seems to be created by of_pci_make_dev_node(). But this
> function is called for bridges only in pci_bus_add_device().
> So where is the node created in your case? Did you test node creation?
> 

Hi Heiner,

Seems to me of_pci_make_dev_node() is not at play here - that's the 
DT-synthesis path. For nodes already present in DT, the of_node is bound 
earlier, during pci_setup_device() -> pci_set_of_node() -> 
of_pci_find_child_device() via the 5-cell reg.

Ref testing: yes; with this series on a NanoPC-T6 I get, for example:
/sys/bus/pci/devices/0004:41:00.0/of_node -> 
/sys/firmware/devicetree/base/pcie@fe190000/pcie@0,0/ethernet@0,0 and 
u-boot correctly adds local-mac-address property there which is 
correctly picked up kernel-side:

=> setenv eth1addr 8e:b4:90:66:66:66
=> boot

...

# readlink -f /sys/bus/pci/devices/0004:41:00.0/of_node
/sys/firmware/devicetree/base/pcie@fe190000/pcie@0,0/ethernet@0,0

# xxd /sys/bus/pci/devices/0004:41:00.0/of_node/local-mac-address
00000000: 8eb4 9066 6666                           ...fff

# ip link show dev end1 | grep ether
     link/ether 8e:b4:90:66:66:66 brd ff:ff:ff:ff:ff:ff


>> +properties:
>> +  compatible:
>> +    enum:
>> +      - pci10ec,8125  # RTL8125 2.5GbE
>> +      - pci10ec,8126  # RTL8126 5GbE
>> +      - pci10ec,8127  # RTL8127
>> +      - pci10ec,8161  # RTL8168 variant
>> +      - pci10ec,8162  # RTL8168 variant
>> +      - pci10ec,8168  # RTL8168/8111 GbE
> 
> This list reflects just some of the PCI id's handled by r8169.
> Any specific reason for this exact selection?
I went for "chips likely to be soldered down on an SBC", but that was 
indeed speculative.

I guess I should trim to pci10ec,8125, which is all this series 
describes? (further IDs can be added by the patches that introduce 
boards using them)

--
Regards,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
