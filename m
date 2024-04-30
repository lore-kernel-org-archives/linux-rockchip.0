Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8202EC04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 02:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dbc7z0PNPUBiwbGr78S67HTAWlej21ylFNALWAMb4Bc=; b=FKYP2eEllnLIm/
	MAKrD4aqT4mjO0vzg+LOT9QcVSIBajy8TxEiUtjLrNwUINl2mPCdsGMTYwam/u2cVUnXhqjK5oOYa
	racFumdy2iEEXsTodoEbOXdKXeGBv3A9Hm0zV8X8OhRMXQ2LqQJBcELCERCIS4hNlKoBUSEfZylOa
	mje7inR5Ev4D3W96V1kn0l2oVMOdOnAzEnOwNYFuIdsXwNCUL/uYJXEkaKn5SNJJb7lAgx6oysgr3
	OLsBKcFKBkimP6k/eXBdjIMdKD8XX2NHpmUJ6SaYs6afQR7KqLBLuyxLQAwDRUTWHdIszL4YibvVp
	34rWAANkORqfGWRc1mtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQ6-00000004ohL-1Y8J;
	Tue, 30 Apr 2024 02:40:38 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1dQ3-00000004ogg-21Il;
	Tue, 30 Apr 2024 02:40:36 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5ce07cf1e5dso3665317a12.2;
        Mon, 29 Apr 2024 19:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714444834; x=1715049634; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sW8wTvn689x/3NF6m1acLAgYnG3AFU0fUmh1MuYjwa0=;
        b=melQ2O+sRRlh7R+X3KOiCyut253wlfjcSdSJriDLszNVIaAnb463kj1j47gv8E7ZRY
         OLqhdY/uDZzR0BkQhtbTLWXyb2bVMX9VPBqhBzV1QW2V76eEcBH7deK6Z4K9z/R1rfp1
         TWHXRNPvrMC1GvQMF2qt9pFByQNPYIbBYABVXdwXcQhSzM5tmJN7GigYsHboAtL1H2CV
         G236bOW9Ldeyd/VSg5Yj65afHY33yCGcE9zDwScegW7QoxGgwpB0aAfJ32Mv2MAFkUN6
         Oc3Sus+S3yyrX2aYUFcd2UOYD0BeUvjUKI+6nH5fEwALXApIENiAHODzVhxJq2P1hAQd
         dwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714444834; x=1715049634;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sW8wTvn689x/3NF6m1acLAgYnG3AFU0fUmh1MuYjwa0=;
        b=aMbWXPy0LzZ/4IeL3/fgqIc6UGf8WoWiSNvYg9AO9jiYkE0lExNHJO7VmjStDPHcIO
         bXVGhyWlC7l+9Lgbm6jEHXDyMP8OPHPVN3kxd/kIQa6taaMvGIQQ0kI5EOGQhk1WCzZr
         jvbM/KVw8NXy3lbwdmZWtL4aEz9FRU0zA+H/pSyh08un8WZFuegN6XeehGNusnsw4pDN
         h/xlh1yV+dVCwCL8jjhUqeTPBGbC6x9tyHvVroqcLsKBeSz520XPycTObsqFaF2xGagg
         d5ZTBXJAIrNoF9qKSBAOQuX7HhtPQROij1SH7ZC0EUdZnb3wddKsJKvSrNZyD2GPkZSD
         n7Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWFpD+bFEwgiPacFfika07GWLnNyipmnFxHB1ctGg11EhyYjmV+vlZvuYAPFP2N6yxZVlZYIpp4ywIS1sMT+m3wnCwhVjQouD0NnYQeEU95WSg98A8RL7/zAZcNDC/3ax7QlCqRBxvxWlgS/S3M7E0aJ2Vqw+/6RZA=
X-Gm-Message-State: AOJu0YzVP5EJZd2ogESSNjOFrqllIZMjth0QQ0azORraNn5XSo5h7URC
	Yd4MfZh+O8JAmpUqlz3QpUc8RKp7z07ywfZ8eEF1uhyXjtXZSaKa
X-Google-Smtp-Source: AGHT+IGQ/U4aomSuAFTFW8a1DiWeeFc6BiBlthAINUNDuett4xlAUBHOZ+zlA9EnnefZijQ2Xnwbnw==
X-Received: by 2002:a05:6a20:2a1e:b0:1a7:94ea:a9b4 with SMTP id e30-20020a056a202a1e00b001a794eaa9b4mr10919673pzh.32.1714444833844;
        Mon, 29 Apr 2024 19:40:33 -0700 (PDT)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id x12-20020a170902ec8c00b001eac94472f6sm8400379plg.93.2024.04.29.19.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 19:40:33 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sigmaris@gmail.com,
	nicolas@ndufresne.ca,
	linkmauve@linkmauve.fr
Subject: [PATCH v7 0/2] Add hantro g1 video decoder support for RK3588
Date: Tue, 30 Apr 2024 10:40:00 +0800
Message-Id: <20240430024002.708227-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_194035_563541_33F0DAD4 
X-CRM114-Status: GOOD (  12.05  )
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

This is the v7 version of this series adding hantro g1 video decoder
support for RK3588.

RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 which
is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is also
found in RK3568.

Test results from fluster can be found from thread of v3[1].

Changes in v7:
 - Change compatible string from vdpu121 to vpu121 to match the real
   hardware
 - Change the devicetree node vdpu_mmu to vpu_mmu because this mmu is
   also used by vepu121 jpeg encoder
 - Link to v6: https://lore.kernel.org/all/20240418111002.83015-1-liujianfeng1994@gmail.com/

Changes in v6:
 - Apply dt-bindings first
 - Collect missing commit tags of old versions
 - Specify the base commit suggested by Diederik
 - Link to v5: https://lore.kernel.org/all/20240413064608.788561-1-liujianfeng1994@gmail.com/

Changes in v5:
 - Add missing interrupt-names to devicetree node
 - Rebase devicetree patch based on next-20240412
 - Link to v4: https://lore.kernel.org/all/20240316071100.2419369-1-liujianfeng1994@gmail.com/

Changes in v4:
 - Change compatible string to rockchip,rk3588-vdpu121
 - Link to v3: https://lore.kernel.org/all/20231231151112.3994194-1-liujianfeng1994@gmail.com/

Changes in v3:
 - Drop code in hantro_drv.c because hantro g1 vpu in rk3588 is compatible
with the one in rk3568, only adding devicetree node should work.
 - Change devicetree node name to video-codec@fdb50000 to match the reg
address.
 - Add dt-bindings rockchip,rk3588-vpu compatible with rockchip,rk3568-vpu
 - Link to v2: https://lore.kernel.org/all/20231228131617.3411561-1-liujianfeng1994@gmail.com

Changes in v2:
- Fix alphabetical order in patch1 and patch3
- Sort device tree node by bus-address
- Drop rk3588_vpu_variant fron v1 because that is exactly the same as rk3568_vpu_variant
- Link to v1: https://lore.kernel.org/all/20231227173911.3295410-1-liujianfeng1994@gmail.com

[1]https://lore.kernel.org/all/20240118080602.9028-1-liujianfeng1994@gmail.com/

Jianfeng Liu (2):
  dt-bindings: media: rockchip-vpu: Add rk3588 vpu121 compatible string
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588

 .../bindings/media/rockchip-vpu.yaml          |  3 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 +++++++++++++++++++
 2 files changed, 24 insertions(+)


base-commit: b0a2c79c6f3590b74742cbbc76687014d47972d8
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
