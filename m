Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310F1CA6012
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 10:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qu7YlXJ5rqVFsJvy7YWncwQPiPF1JBHA3NstyC2UI4g=; b=UXORTcRv3wBfGb
	zdWS3gWAVPcwMNTSITjg0msBussZfK9HHc1M0zMQqy7+jX2PoWZrvb65YsYFrA61nK08aZF4ZNRHM
	BOsFq7R5AzWfjq9GDtiDDWCG6njCA1gvr9SIM8SNXALvO5l7+2Tpp2dgyBCiXx64yJMNOf86TVbPa
	QXNIWrSJ32bv2UgGAxyA+M14DuLLoMelawrnMnAKwdUcB9uoGrARI/dSZ2/PxKbaCCXOSEE9WG+Cl
	Wo78CiBP4kzjk/LEBPdNcxav42+/2oT1NcBlrKP3PPmDgAntcOfEbWNm/ymNENrFrvTXfB5sfmhIU
	yCsk8ZF1XgyT0hJIQseA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7mg-0000000639N-3QA2;
	Fri, 09 Oct 2026 10:25:02 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7md-0000000638K-1jZf
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 10:25:01 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48c4d870d54so2563722f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Oct 2026 03:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791541497; cv=none;
        d=google.com; s=arc-20260327;
        b=UwSy+lwihMxPK990qQ5VQQK++ZALUJtd3rzq4K+TcfbNPcy7f/HWvopLzzRKGAeNA+
         uOqzWstmPJ6g3iUAbRQ94asDRPKRF1z3F2Gz0gn/HgaXOniiJgc46zIiIFGSXy+U8u2e
         Hf802zXvhzM9b0zSaO5CbXoZZAL0ToYKmWpzHc9xtsMwSt+z6ED8iiqQlPr4cI5JJKo+
         CayLUvtFfi/vfgwbedvhjMscafV779ngilI+SklojlXOlrJDS26RUVcCxEPchbN/swC3
         IhshywJ8PAzKUdmdiejwlym7RMsIA2uBx5snTa7JlM/XJJhTEQhPwAGD6g0lUxTzD2UA
         G27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bnKRBBjAYtVyOhtVnDBR7/L8dKBBeGYupGGvQ33buec=;
        fh=jQoC+BLr9/aMqEd7IiR+3j6Gq3Pu///zJs1L6/Ewc1A=;
        b=ii6QaTfRhUUvNhijY/2L25V7Ptw64ogZALJtTCdvjf7v1ig8sVPSOO1yQuXqw6OFa9
         anfoq/1BXPzVIClYj62GIBJt6mzqvC2A1Vo5BV40qVjvIgQ+UBR199qjhFkkFkBVfSQJ
         23iiFww1j5Q7qITnPBZn9u2Jc7LQ3hNHjfMk3wE/SFwJzfXzPBKnDqGLyTd3aP6dvU/O
         C9gOTG5j9FRSE6MxJ8Eshmznq8/AFyPCiwdQsmgxOQP1Jlj2cgsbQfEuDwOE50cXYy0H
         M6whTZBGkEp0C+yw3njh9eJqkuP+45XJuPFjhjA3IJAOmxoTJGIAUgGugVSKuo1tBLsh
         BqNA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791541497; x=1792146297; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bnKRBBjAYtVyOhtVnDBR7/L8dKBBeGYupGGvQ33buec=;
        b=PytMb4xPDbR0t+EBu5OwNVb3XIdEFVWv6XbvvIfcm2zAWKbYW4Epd7TVo8ubQRxQ9d
         1fewdAuIR/MQoclea0wVnHwC0GVDllcWP01XsdCZ/aun+B8bWmHwmGR24POMxHinJ5Yh
         lPEKcX9jMfzQuJe/5UTHcQnCYtJ+Ujxy/wEOeO/Q3nItT6RS81lYXIGRLHMDcmLZ6a09
         0GCtj2kJlO871dsWnb2fGDYEOo5orPLMSRcmZXEudXIyQ6R7g27RJ9R36KaVrEAFhJ7z
         MEoS9hnl/dgOQIjOYQ79wmFsZ5zq5C1TMHQHEunH8dqbniU01DaCJIgHLz3hpu7f7IJ6
         RAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791541497; x=1792146297;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=bnKRBBjAYtVyOhtVnDBR7/L8dKBBeGYupGGvQ33buec=;
        b=Alqa/eb4RROUKZGChchBAz78OfHAKwrntgRlNqZYfmHP58+Hv9RCGg5+lc6ib0PqtM
         i8eQGlnC2mapGDDv728J5YlOYf1HW430WHDVAk7Mdzyt7dejq6mIwgBPEnxQpIVhkTHc
         GTGDmwRZIE/yTP3VvP1jgClMH16/RoxazrvHUuO0pkEEKEdpPoAcjqcr9h/o88fwHdG4
         XQIIqjsowsbFpfzwKnySa5naMwBmseXfZD7F3cfU8qYRs886pELZkEmCFmwCfmDROyJr
         YPCGdVJ2KjGGqpCqHqrTB5Uf6rUg5OCHIZXLIPYvLzV0BHfvnA8sYo4G0l+W+HhLrGIt
         FXew==
X-Gm-Message-State: AFq9FYLmdVC5K1YV0yBoj/tvTVXUjNvJv+QhY8k1luiEdkzBb2Jq39yR
	W+RaHkkAoWg3rv2pNbe2WGd81QBFUXZeAp9lc8zieVGLeIF1gIN0e/dJg1ZeLfxdKV9XSxuHA7K
	KuyREOVrvVNCZNh+Ck9+ABvs7+rQx0e1N24Jy
X-Gm-Gg: AYBFou30hPQF8hstQwgjOrL1V5KAly5V+RGJnlvxvJaksPVinBAY/D9e9DBVS6Hb3M/
	wPQXfm1toDV0SdL/vN5nw7oPaimHfJC6jKgm1cWe+l6pAyR+2eOsisypNxkZEk/f7vwh9g5x9je
	5k15bfrjACiHc7EWnIqEmpD7fAt/Lcti27L7I5gSUY+Oc3n36L/SMTEJde8lpC5JGY2r3Q+OpZK
	4plzt8bEdZqpaXKAE2Zy2xUv5/lOe960DsXUWtk2ZI+GjH+Xw1DSZdlGJIxQV4SiEhsSEj2Q5oC
	JJPKXDIZruA5SIk5Pc/X7zppGxG/K6vq9wlunJ/k7dCSZpRouuNVIw==
X-Received: by 2002:a05:6000:2002:b0:48d:b940:af77 with SMTP id
 ffacd0b85a97d-48dbace21ecmr2436243f8f.36.1791541497350; Fri, 09 Oct 2026
 03:24:57 -0700 (PDT)
MIME-Version: 1.0
From: "Evan O' Keeffe" <evanokeeffe@gmail.com>
Date: Fri, 9 Oct 2026 11:24:45 +0100
X-Gm-Features: AclHuK_D8wspupTCh3dudjzxHoiATOnvtb6lx7k0mPOsCGlSHwcHFY1hVkDy6io
Message-ID: <CAJ8W1Lxmz8W2tS+HmwS6_CbDWUR9ATccUtR8+XK4hSGxjOx6gg@mail.gmail.com>
Subject: RK3588 combo MIPI D-PHY (phy-rockchip-samsung-dcphy) + real sensor -
 any known-working case?
To: michael.riesch@collabora.com
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_032459_475898_AE179117 
X-CRM114-Status: UNSURE (   8.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Michael, my name is Evan O'Keeffe and I'm working on the RK3588S for a new
hyperspectral camera project.

Thanks for the rkcif/VICAP work landing in 7.2 - got us most of the way to a
working camera on an Orange Pi CM5 tablet board (RK3588S). Wanted to
check something
specific before I sink more time into it.

The board's camera connector is wired (confirmed independently from two
vendor BSP devicetree files) to CSI host port 0 via the Samsung combo D-PHY
(phy-rockchip-samsung-dcphy.c / mipidcphy0), not the simple Innosilicon D-PHY
path. Sensor is a Sony IMX219, 2-lane, 456MHz link frequency (912Mbps HS
rate).

Everything I can check in software passes cleanly:
- i2c control plane confirmed solid (chip ID, MODE_SELECT, CSI_LANE_MODE,
  DPHY_CNTRL all read back correct via direct register reads during an
  active stream attempt)
- Sensor confirmed actually in streaming mode (MODE_SELECT=0x01) via
  register readback, not just assumed
- Full media pipeline validates and v4l2_subdev_enable_streams succeeds
  through the whole chain (sensor -> dw-mipi-csi2rx -> rkcif-mipi0)
- The DCPHY's PLL_LOCK status bit genuinely passes (real register poll in
  samsung_mipi_dcphy_pll_enable, not just computed math) at the exact
  target rate (912MHz, prediv=1, fbdiv=76)
- CSI2 host CONTROL register readback exactly matches what
  dw_mipi_csi2rx_start() computes and writes

But: zero interrupts ever fire on rockchip-cif's IRQ line, and ERR1/ERR2 on
the CSI2 host stay at 0x0 - total silence, not corrupted data. Hardware
itself is confirmed good (same cable/sensor works fine on the vendor BSP
kernel/driver stack).

Before I go further down the register-level rabbit hole: do you know of
any real-sensor test case that's actually exercised the combo-PHY path
(as opposed to the simple-PHY ports 2/4 that the ROCK 5B+ IMX415 testing
covered)? Everything I can find in current devicetrees that enables
mipidcphy0/1 does so with no sensor attached at all, so I can't tell if
this is a known gap, a subtle bring-up step I'm missing, or something
board-specific on my end.

Happy to share full register dumps / dmesg / devicetree if useful.

Thanks for your time
All the best

-- 
Evan O'Keeffe
Forti Et Fideli , Nihil difficile

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
