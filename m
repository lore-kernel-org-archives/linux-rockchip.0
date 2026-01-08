Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240B4D148AF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWkMFT8yMcK00+rRoBp22Ot7CKq5EwCP6wY/SbqFsaY=; b=cVR6lZBfwX/Nq3
	81RzIEPTAI8UYi3Mewo9a1Y3jexA4biKla6Uf9617Q1UzSgUHbXouV37au41U6HQqhi7PBMyKEJ6L
	A5hTZV0mceEHeItUhzcnXc3GiLCUt3JAYO2KvIzXCDnfYQw5xdHIr5X3J1D+giEQlhl3zcnVjzHkd
	wg38U321APPlkc03P9nhR7UG9/wKh2pOWQoS6Mh+yejOmql/AxTXJQHe51vAkuTmxLMAbF6aMeugD
	HoYgy20R2SsgUSMsuar/ClWpKBlhCNc4AR2H5vKtxtrRmNm4MANgqfk5/lUVF3rp3riqyH4GfI39M
	KjyFd+/jyTs4+n29EadA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjvm-0000000G2Np-3O3S;
	Thu, 08 Jan 2026 06:55:38 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjvh-0000000G2Lf-1fo9
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:55:37 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6505d3adc3aso4373724a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855331; x=1768460131; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z95RpMEmgNwl7YB+bCq/7uMHk15Sjdmwjz/1QwjCtwY=;
        b=IqibMo8O4avMdGPULk0jV4e3ca46v9GZnUk9kl6604c0GmOoPTuGE3DhA/7hDPmRR6
         0sFazckXabiHOvqMzgVIaya5dD34jYQw+VCxDq4mm3TjeUX3krF1JjLdMLHx/SpfK4Ku
         VLqJvaoxo4A6zHzeVWJbO71vX7WVxoobfeDKKt1iWQO/24Ag9mmtvvk5Q436s4BKS54K
         bc4oy7cpByvkzQbEqjOZpdPli6gwaesKa+PQGz+2TDxuhRNbABB9P14CDZVQ1gkGEwFc
         EiXdoAmL0t1ulRp9l9WKPzZ+FdBKr2w+S5WtSXSK3zftRD+prYiQ3jxv0fN3EMndGKdP
         sQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855331; x=1768460131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z95RpMEmgNwl7YB+bCq/7uMHk15Sjdmwjz/1QwjCtwY=;
        b=Pi7L3hP37NIwL4FWGZoYv93bLW9HI9CT1u4q4W14BZ3JWdtp4dbgbn1FpKHN9nd3VU
         n9VTfoimNvpj3kCIC6G9/U9dZcVEyU0rU+ZFzz7pJ8KfN8kZ1XJIeeJdJeTrXdE9D58g
         EHnSHDHfHnvhbZseoJapG8edALdBh7XKb0It2RUTwZKdPdebezQr9RkTiULSAlReU8ud
         iJFeJcA5FRnrku0mkaEM35VeRrW383L470gPP9+ZCJqHBAj6Nq+RDaJVYJB6mo020810
         1asN1Q9quitOWCj5k1XODFi7lz43oxWHBwv726Yh56eCaB5DQNhHv+kLdY4Ea8rXExtM
         m7VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUp6w1frlGAbR7TvpuljuWng9ZHqtjdAKgwe9eghJIYaPL95pluJs3xQ0Uppr4E24fazbzzrVsr73V1jZeXbg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOSQJOduzWtOA4O6YgmxCCFB8R5/u/LD259MKd+gShQNFRYPO8
	cA62C7RK9nvHx9Z0cfQKirGFKhW+pjnS2YRR7hlf9hA8Pimvnyp/H1TvMuzCRysWfvbzzEeXEA0
	qc6m6ZBpZBZ+lzNuoU6bE8xluYWvvIsM=
X-Gm-Gg: AY/fxX7YRf7O1wVCJDOPJPFZWoP/YsxjUItrgpA4sIFAuLHyts4+WruMqqCj0YbuO6j
	VW3juJAkQQDSm6W1ESEIM2lYV82QFLuW+/y80dMGFSae7N2thJWGwGS2ddOpTKp9NXvlN7IorCP
	7QkHTgzZGqROTnt2biJ0I6Jz/v0H69oulM/LvmA1zJr3NCqKSewMIaLgLX2BeXYj2fy4sZHHXo2
	IECIY9hhgz+GUbm4J26db5NuyrieeboMNe+1PpqVKs7JpXtw6tHV+lgqvMHkl/R2WGMGLj2pXh8
	Yw==
X-Google-Smtp-Source: AGHT+IG4U6kWECKctcFw6T4T3/RU4yz9c56j1F9uY6dHVa5DSvL+D+02G9vCcItZfsXHq6Ag8SriCCmYiwhyppBRQFI=
X-Received: by 2002:a05:6402:358f:b0:649:2347:e15f with SMTP id
 4fb4d7f45d1cf-65097e6e3cemr4114953a12.31.1767855331317; Wed, 07 Jan 2026
 22:55:31 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-3-linux.amoon@gmail.com>
 <aVkfNBUDUumzV0-X@venus>
In-Reply-To: <aVkfNBUDUumzV0-X@venus>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:25:12 +0530
X-Gm-Features: AQt7F2qUzy3nVOhqisJzP2xjjJX_kUrGnrajstWtAcg0dioD3CSqLPjSWSgZj2Y
Message-ID: <CANAwSgTmAbswY6scsxj40B7Y6QbnkqWPuCqyevRjdtHNemq0aQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225534_549511_859D1E9C 
X-CRM114-Status: GOOD (  18.98  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Yongbo Zhang <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

Thanks for your review comments.
On Sat, 3 Jan 2026 at 19:35, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Sat, Jan 03, 2026 at 02:01:18PM +0530, Anand Moon wrote:
> > The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
> > USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
> > regulator which ensures proper power sequencing and management for onboard
> > Double-USB-HOST.
> >
> > Update the u2phy2_host node to reference the correct phy-supply.
> >
> > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
>
> u2phy2_host is connected to an onboard USB hub chip, which is
> powered by &vcc5v0_sys as the comment says.
>
> You can see this on page 9 of the v1.45 ROCK 5B schematics (page
> name USB2HUB). The usb hub chip uses VCC5V0_SYS + VCC_3V3_S0 and is
> connected to USB20_HOST0_DP, USB20_HOST0_DM. The related USB
> controller for that in the upstream DT is &usb_host0_ehci, which
> in turn is using &u2phy2_host. Thus at least for the ROCK 5B the
> existing DT is correct. Properly describing the downstream port
> VBUS regulator would require something like the following series:
>
> https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de/
>
Actually, the Radxa Rock 5 B doesn't have an onboard USB hub chip.

The USB_HOST_PWREN_H GPIO pin acts as the enable signal for both
5V_USB1 and 5V_USB2 regulators.

Data signals from the USB 2.0 Host 1 interface (USB20_HOST1_DM/DP)
are routed through the CON20B chip to the Type-C controller's
TYPEC1_OTG_DM/DP pins.
Additionally, the schematic indicates that the Type-C controller's
power delivery is managed
by the USB2 host (5V_USB2) rail.

From the schematic, I could see that the Type-C controller is controlled
by USB1 host (5V_USB1) and USB2 host (5V_USB2) for power delivery.

[1]  https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
(page 27)

> Greetings,
>
> -- Sebastian
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
