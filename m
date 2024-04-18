Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3787C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 11:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ionagb7yax13YQM5NaX8kFa/cpO7dXfGEdfihk5LJX8=; b=DBH1Lz4fAZn6P8
	fJrsLDVaw+wVxF9AxLMZtCCagRyPWVhRuC0kLRwJCxC50do10/z+YAUMsx871GwXBjwcyBBQzTDS1
	3MG4ihE6ZPdoRpQpdDptD0kzuikLkA9g5NhYbVNkpsM8GQVRUXbQpxogyvYLS8inmQoX/YJjXOu4m
	uxajXLqHht0anzFHOTqtKkC+2ggQGTrz0HysXqIHpsm73S2FmYv14x+6NnGKRxq7L8iPkwR/NjZ5t
	w/gdIN/e/xvNkcundrmtGROg4twSPbXxK1y5VSL3Y1dZMQjcvDZ/cVuDuwq6uLEQdPvsc463v2EVu
	aWVDuQqSVOqWv6Nf+YKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPez-00000001wj3-1HnE;
	Thu, 18 Apr 2024 11:10:33 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxPew-00000001whn-14B0;
	Thu, 18 Apr 2024 11:10:31 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1e411e339b8so5742525ad.3;
        Thu, 18 Apr 2024 04:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713438628; x=1714043428; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MEYZdxZ9ZKFOWmTeiAFHDTp2vDfUpWN0o2R7rPWODZc=;
        b=fFdivuhlmA0C2WZkw4y2d0iQxG1tm7cW3fyip3Os1RNArToCZ4Tgy2Jz5gItLznLJv
         t5LfEZHz7iNfpAJh4iLcxztZBledwHaL+aev2Mn5k+W1TUWeftGJhirc/j2km6wnTa4l
         e9V6cfkq0xT4zzYZxCSlv8lW/z2YqU/tmlL6xS8WuqGeIMHY9LlCUrGqBmuz2Sn3Ubbx
         mB97Cb1sebpCp2C3zfOiE8dKwURx6JhqqCEmNGpP3k5kA8MQBCu0+8fblajNUq8O0rCQ
         o9lVgpQMXWHX+cMLZYFr2W1UwhwGGYB7O3zUIZ3sz9rsQv40kOKhSRmthtl9DIR3DTpR
         8DFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713438628; x=1714043428;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEYZdxZ9ZKFOWmTeiAFHDTp2vDfUpWN0o2R7rPWODZc=;
        b=PmwK+t08VJp0t1ST+IFCcAyKZkSIp8+YTcdCD6w5brE31MBcK82PFJvhGSZI5M9/87
         Nj3l8ro9tMINHw97D/lWxfofUrcggCOWj4BBqvaHiTz67Zcgin0sxsoK5wly1WTacsIM
         F4DDMvTNu//J6ruwB4GsfGL81vlOUp4rj/RO1OPPYTDFXHi72KQ2sTk2H22JbygeKq1V
         zpCVohYNJh2quledLTajvEeDRp/ewhac9SwnLKHa088tJ7P8Z2WNxGsk791kU4ht5o8t
         CtB4TMlowYUzRKAtl9XoYmHmX0Ul5971bOwzGBQMkOQ/N3xmq+9I5QCWTfY2yxThoL7B
         jT3w==
X-Forwarded-Encrypted: i=1; AJvYcCXqqje9b1XTR/5BBdh2N8qvIqtoTU/Oz2Kfo8db0RqiDDfLq4E71zUMJwv80KDJBLiyNh72y+uaXi/Ar/H6kzOsLaOsYn5yIRLbwvYW+p+hPLqnHCWEPT1qoGdEK5N/2Oegs+chaRsgKaY09uWUW1FlYEtVrz518pg=
X-Gm-Message-State: AOJu0YwyTh+dhKLhMS8SgsNwzOAlf4J6dqdsJAc2AU2hbsoKSVAK7wL8
	lHlFvgngjANY/5QFbwd6h/EPOLYQBS7kKnEKOQbFJxiEC0g41NojwYBq7h4cqj8=
X-Google-Smtp-Source: AGHT+IHW2OefZKApGAQcCcxMIShFsJ9lBRZjH06QsH+lKPPakyQiSSbApOKUwSHn3fD1f8W0RHQLDQ==
X-Received: by 2002:a17:902:b716:b0:1e4:e5fe:ce0 with SMTP id d22-20020a170902b71600b001e4e5fe0ce0mr1999513pls.43.1713438627752;
        Thu, 18 Apr 2024 04:10:27 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id kh5-20020a170903064500b001e4d22f828fsm1051159plb.33.2024.04.18.04.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 04:10:27 -0700 (PDT)
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
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	sebastian.reichel@collabora.com,
	sigmaris@gmail.com,
	didi.debian@cknow.org
Subject: [PATCH v6 0/2] Add hantro g1 video decoder support for RK3588
Date: Thu, 18 Apr 2024 19:10:00 +0800
Message-Id: <20240418111002.83015-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_041030_389084_E1EF1B90 
X-CRM114-Status: GOOD (  11.58  )
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

This is the v6 version of this series adding hantro g1 video decoder
support for RK3588.

RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 which
is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is also
found in RK3568.

Test results from fluster can be found from thread of v3[1].

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
  dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588

 .../bindings/media/rockchip-vpu.yaml          |  3 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 +++++++++++++++++++
 2 files changed, 24 insertions(+)


base-commit: 7b4f2bc91c15fdcf948bb2d9741a9d7d54303f8d
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
