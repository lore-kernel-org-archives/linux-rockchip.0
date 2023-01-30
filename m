Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AFCFC636D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 13:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wf3vr7IxJ5SqWaLVRqCuweMi6w69yxV96IttW0kn6l0=; b=lhpfkT57nn3kUZ
	ypdcRrLrqyz6YDEiWd1xLiZgYPywSEoa6fvVCe9sMXpOSUigyT/DjHlAwfQS5wMaUe5O8TZXsEGoA
	1sdRIiJyhg5INicN8hRSIb+BwWQ6mzgpTv9m8Ck+jEPO+r8Vt4IKsxt+tF2YFp3fnFW7N/efZHnAy
	Kp9T7szC7F49mohiUT/T/jLXau5UG/FrMcui7MX9MGqNxQHJCbK5gvjHk8I3kkcSEHVH/x8TYLNTO
	/eurIq614ApR6gEXsK78YNwKKDYbcSTNh6a1nRivAdG8snbE/+xR2b7PhYnG+5vcWCojs5gsKaaD3
	OKL0AW3l0QelKjqGX7/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUbx-003lkg-Am; Mon, 30 Jan 2023 13:54:17 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUb6-003lWm-2w; Mon, 30 Jan 2023 13:53:25 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-142b72a728fso14993399fac.9;
        Mon, 30 Jan 2023 05:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+5GJJ8rF8aG9dI5EbSjlK95PxeFIXWfHHihmcthWAs=;
        b=YCRjwoQh8w55DxFX7ywSf15CQ/HLQvuQHgEbEu2QNTlg/Vku7oaRNt/rSHcoTg8QJ2
         /Wrvugdm/vWwL+ts1R0apxqa7C1QHD0JdtMTH6G5BKsikktGtFQ7F52nvB7CCyJSMOk0
         +2x4LcJO5Z2uQ+/kp9GB9MU/x1Edauk5zFGuqAQQFhvAo5YWNE4boX6U3HoxGy3U8Kqg
         DIaFqbYsC356z5nCO1/R6qHQ5OlECpOrkanzIk9eForSjPi9ABlxE9MzTneRzqLSANZl
         6Rl3wa16NjlLXKDWpUomoZBcHyG/GbTmK8stiUFNelFz/VTC1KDvQdfztV5zNWp2WED6
         nDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y+5GJJ8rF8aG9dI5EbSjlK95PxeFIXWfHHihmcthWAs=;
        b=Yx6V5q30oWCZpTufJIA7XlQ5quKzhLR1/3s528mqacdb06yKCO7mMvrqiEixDZM/UE
         1YavhPCI2Q8PPt2R2jBRmUuka7R1M8GWum5pHQRVDgJnREzxJazd+GHKbitMl4vfcHil
         bQdDL3baYS1p2WHX02uL2+qdUDkyxVGenkmCE4cCv8Kq1AYJJwc1EYnLMHNInc4ya+P7
         /vZn4SZ55oDrZ5B9eEjExEbxbv3uUIHH6hfMaT7u8AbNN4LzSIWRj3aHM8hke6JGe1G9
         ZPOwquNQLCTWKbf854t4WzQ1wDbLGhoXxDFhA30aMkCSPm3XBF4J1h8mNStQ3ovzTxHx
         udzQ==
X-Gm-Message-State: AO0yUKUZ0hhmj7OBG70EdGlBz/qAD4oKexBTT+LEK7kM6KPdgxPoLnN1
	XTCXvjJ94rZKLldQXbPnv6vPjyrFpNMvTS8UsBA=
X-Google-Smtp-Source: AK7set8HEtjjr43uCKJQ7ULAJehzLK+fcnNTlwlz4cpiMXvVOL918RIGhn69NbrifIDqtfn9qnyHzlnC7A98A43mURo=
X-Received: by 2002:a05:6871:8a6:b0:163:9dc0:78f1 with SMTP id
 r38-20020a05687108a600b001639dc078f1mr726478oaq.265.1675086801813; Mon, 30
 Jan 2023 05:53:21 -0800 (PST)
MIME-Version: 1.0
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-6-rick.wertenbroek@gmail.com> <871ab2c5-5f11-5ed8-9e2f-500e0cbcdb19@oracle.com>
In-Reply-To: <871ab2c5-5f11-5ed8-9e2f-500e0cbcdb19@oracle.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Mon, 30 Jan 2023 14:52:45 +0100
Message-ID: <CAAEEuhqjv2VyTsPyHN10JE=5c-Jjgb_wNR8C+g5UsKxAYtcKyw@mail.gmail.com>
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint controller
To: ALOK TIWARI <alok.a.tiwari@oracle.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, wenrui.li@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_055324_143459_4A5C03A0 
X-CRM114-Status: GOOD (  10.32  )
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

On Fri, Jan 27, 2023 at 9:43 AM ALOK TIWARI <alok.a.tiwari@oracle.com> wrote:
>
>    DTC     arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dtb
> ../arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:460.3-52: Warning
> (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
> configuration space
>    DTC arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dtb
> ../arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:460.3-52: Warning
> (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
> configuration space
>    HDRINST usr/include/linux/aio_abi.h
>    HDRINST usr/include/linux/am437x-vpfe.h
> ../arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi:460.3-52: Warning
> (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not
> configuration space
>    DTC     arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dtb
>
>
> Thanks,
>
> Alok

These warnings are for the pcie (host controller), I did not touch that entry.
Plus they are for another file (arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi)
They are related to "pci_device_reg" warnings (can be suppressed with
"-Wno-pci_device_reg").

Sorry, but this does not seem to be related to my change and I don't know
how to fix this.

Rick

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
