Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A88D2C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 06:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9E3Z3lbbuguBzlhYB/465ytnYJ4ezJnYDsCLDtPlOg=; b=JgVxLXuoyvb5dq
	5R5aCKREgeHwUcODlOpGjMyCemqTV9xfRvZ9pNz31c0FDrJWee7KVBpQtJQOQ27fmupDWjMxkMJX6
	38C+XDSHU+4p57kii0vgFJ3vQ/44OCcNNwdjXeHtexyPxWUZLZKtoh+GVkBU8wHz7dU2nPiY6aDck
	Fm5M9pbazGJJ+w5Y2G9cQLO3lf9UPA3bznJf1KoXZioc2Msn+4SFbmPoaYUtgka7HOCUfgzazi6j7
	IsAvQVKJEsA3C9WKRW6JppiKW/rbiuLG/3h9N6Ahwy6h5GhcY5wf8pGjpGqpAo+8/ckVuHNGGROs+
	endvl6s0vz8Sl48Qg8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ328-0000000Hb1j-3hIB;
	Wed, 31 Jul 2024 06:42:01 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ31f-0000000Havg-48Lh
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 06:41:33 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-7a1d0dc869bso388822285a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2024 23:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722408090; x=1723012890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YzcsKxSamtz5qYylBq+mulofl7DNdl/8yBGrG+evBvI=;
        b=IfRzulti6l/C5M3t50DdttPazDyOU+BDKW46+cFm33Oj2Q/71t/6Py+oMAbogMuIg5
         RDqc4BpOP0fo7xk4+nLDxaSCEbQ2OtJlBj2nYJSnEDH36scapQFqbMMtx2jE4H/3UGQr
         lE5dysZpfyhGtU5/XLkNNtfINg9d5RTzC3ybI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722408090; x=1723012890;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YzcsKxSamtz5qYylBq+mulofl7DNdl/8yBGrG+evBvI=;
        b=cUa7yT5cjw8y8vFsCRWAjlM0WQcbE4rsn3GHBicZPOCOzovLJHRSyxZ5pgZYZy8MoU
         jTUm6bCdgaMi8tnvjNW2RCiLlC//oEYlHsbZuz+rZU+Fe038+WtkAf8axXz+coWO2i8f
         IySSYGiOd2o8nicw5RwTYhSx+qCKnyM5pns7DDeaNp702zsLMaeklzbteLz/Qmx6hVz6
         3tvZXUXVNQnOuvMKCFeU4tq6EXJv+NrZ0RPih917PAiVzRq8CQCKU/bSObrf06oLPr2O
         Rm4FO3VCRK+TEGo8ZtgP6s3UVCWumqZ8tEqI/EKeIpOLKpMU3ZPv5oSeQLP0GLbbuKJl
         TMgA==
X-Forwarded-Encrypted: i=1; AJvYcCUWkU2wqv5NxmCnLnhNopqHuP2nbvO4EXytAa/27hbVZxzGItvD5ZnBHFX07GRmKjmjYYtDhaucps1XuiLVNw2KFWLtAinC74E+ptgndk43a1++
X-Gm-Message-State: AOJu0Yza7kpv1ql4wkYxh6RlewogYBq0xBC+3J+1qzNgzqFEj43M5ty/
	1zJSu5y74oTBsWQpOqSaDdzGI7+CQhznzNMujPqwWdgWzaM90USR5a3Tw/ShCw==
X-Google-Smtp-Source: AGHT+IHVSnCSNUiDXZ50W1IsLXQBwnHUTc3D4diJbcUDSRlur70rvvyzQTE+g2F4ctDA9qBB1UnD+w==
X-Received: by 2002:a05:620a:4494:b0:7a2:e53:3f67 with SMTP id af79cd13be357-7a20e534344mr1952685a.19.1722408090009;
        Tue, 30 Jul 2024 23:41:30 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a1d73ed33bsm710259685a.58.2024.07.30.23.41.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2024 23:41:29 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Wed, 31 Jul 2024 08:41:24 +0200
Message-ID: <1910785a220.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20240731061132.703368-4-jacobe.zang@wesion.com>
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-4-jacobe.zang@wesion.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v6 3/5] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_234132_142693_C3A37056 
X-CRM114-Status: GOOD (  13.65  )
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

On July 31, 2024 8:11:58 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

> Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module. The
> pcie@0 node can be used as Bridge1, so the wifi@0 node is used as a
> device under the Bridge1.
>
> Co-developed-by: Muhammed Efe Cetin <efectn@protonmail.com>
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> .../boot/dts/rockchip/rk3588s-khadas-edge2.dts   | 16 ++++++++++++++++
> 1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts 
> b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> index dbddfc3bb4641..b80a552dad883 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> @@ -283,6 +283,22 @@ &pcie2x1l2 {
>  reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>  vpcie3v3-supply = <&vcc3v3_pcie_wl>;
>  status = "okay";
> +
> + pcie@0,0 {
> + reg = <0x400000 0 0 0 0>;
> + #address-cells = <3>;
> + #size-cells = <2>;
> + ranges;
> + device_type = "pci";
> + bus-range = <0x40 0x4f>;
> +
> + wifi: wifi@0,0 {
> + compatible = "pci14e4,449d";

Probably need to add "brcm,bcm4329-fmac" as well here.

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
