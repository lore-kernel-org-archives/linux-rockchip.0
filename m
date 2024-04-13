Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 204D9C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v1CGv542YUPWAYHNoV6h5SQPZi6qsfOpLIeLKSOYA50=; b=t5Uxn1f+uzJEvd
	pVggvkYAS1fazg51RZEKMMYljdlDAWNPKkejfhpYK5+AkoFQas41A2xV1i3kX5JxrX/JCeM5OnP1g
	3esydMWnOM8EBQ79fO4BD4uSrac0LaDgxVriIzBTivLRakzuXGVl6+XnFKOXQtN2Ba+dY6ECFkNmU
	FsV/tMNuXwnvdqMfIxBKDABdnOzHCmN4OYoCMIWYDpKNkm2r7X4yNRG+YXp5jjuNZ9sOkk07n6m9r
	alY8vO0P3IcA8f2MBwPQxX0PQ8sdvNlPWvEHQrUWSDco52oKFYzrg8vak3gCMqZH5cebhOep90LDm
	BL8ZuksgeHCMymRvhTUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX9u-00000002ZH3-3nRE;
	Sat, 13 Apr 2024 06:46:42 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX9r-00000002ZFv-3Apa;
	Sat, 13 Apr 2024 06:46:41 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6ef9bd94d81so452075b3a.3;
        Fri, 12 Apr 2024 23:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712990797; x=1713595597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=twRetE152Y2Fvd4PMDtj8L/32OUiKxwrCOgAjYJA/T4=;
        b=X5Tsh6JvbKjUR6cp26n/xD7WZ+HrSu3+iLAO7kGfvYZIpYl1Pyg6eJgqyqbkVXPm+2
         rfXU/RhkoVMZ1YoANsMFKvRZiCX+ei+JRFvKB2QUQlJTGd899HijjyvX7UisvrrWjvOU
         Q0lBVCboSQdd445Bc7uKwAtmKbJdVmlNdM5UcjMio08gjcxiHTVx0gA1L6pNrYjIe40A
         cH8RLkuvRtU9l+uvZB2w3WKOMAMWd73r9wnsN0SpNq5Vi0VvpNIiw+K+Rlz7fGU4ZxSw
         wBMPGy9QRPFmvos1CVaopw3iov1l5PjnpeXYVrKqQGdquUX+ILd7xd8lAWL33lZTGsR0
         Y8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712990797; x=1713595597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=twRetE152Y2Fvd4PMDtj8L/32OUiKxwrCOgAjYJA/T4=;
        b=vvaW4ZRQJv6H3XVJq62cHH1uivZh2ilm2MsW5On9GBwXRgz/fAv8ownZ0BJDosU2ZF
         np9cQUtxFOJ8V+0bFxjqH1KndxNepKuZaJ5qoQTA25ftRrUDaHJwZNQQGLZuxf67LjCJ
         oJpqKR1JEO27JD9bIzysgIkUIFJMUKszBlBw4ZWSOHfZSEeRQWwYVIGywQMxZYtCe1k2
         ScIYfTkHDxfkIbQ94YbfhlmfyQ2Lx7UHSOCkmpCcFDcpu3GwJmUqWt9oQZ1Lsi2DpE2l
         xXohZxzuoLhh1BbHZPvlgcBlwzf7W9wiSN/gHtJEqhhUanIeoREupAQWLTNbCe972F81
         5bqA==
X-Forwarded-Encrypted: i=1; AJvYcCUWAJvY6/DskF2Q58kGlaEvmkr+OqixYAxMAUNVzqRL4YxQGv6J4OphqOwyRd5wGid511ZAldGBeCO/RgmStKnQhcg4vc7plLWKdj72dovPpmbJWfXlbV0Qnn9MHfLOkjcJsgoiaWxxC0iC2AmaxVfimYWzSr3MvKE=
X-Gm-Message-State: AOJu0Yw2R1KrQv2kuQ2LFJKhLFfxgs8l57Xrh74UdZIWhg1iBPiyo7PT
	eSUTWjrxW9G7vSoMg0c0KMmFrLXq7nBdpniiW7oYmKw7RrLQI0HDu7kncE58tjE=
X-Google-Smtp-Source: AGHT+IFW7qpsvXblAiMX/RvthcFLBilYOKUGwz2LBo1EmPVEmqagdDyQemcgq5bYd++1E+at1QyQRg==
X-Received: by 2002:a17:903:48c:b0:1e4:425f:5795 with SMTP id jj12-20020a170903048c00b001e4425f5795mr3679487plb.58.1712990797341;
        Fri, 12 Apr 2024 23:46:37 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id p6-20020a170902780600b001e2a7e90321sm4096693pll.224.2024.04.12.23.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 23:46:36 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	sfr@canb.auug.org.au,
	liujianfeng1994@gmail.com
Subject: [PATCH v5 0/2] Add hantro g1 video decoder support for RK3588
Date: Sat, 13 Apr 2024 14:46:06 +0800
Message-Id: <20240413064608.788561-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_234639_823332_4B088CBA 
X-CRM114-Status: UNSURE (   7.79  )
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

This is the v5 version of this series adding hantro g1 video decoder
support for RK3588.

RK3588 has Hantro G1 video decoder known as VDPU121 in TRM of RK3588 which
is capable to decode MPEG2/H.264/VP8 up to 1920x1088. This vpu ip is also
found in RK3568.

Test results from fluster can be found from thread of v3[1].

Changes in v5:
 - Add missing interrupt-names to devicetree node
 - Rebase devicetree patch based on next-20240412
 - Link to v4: https://lore.kernel.org/all/20240316071100.2419369-1-liujianfeng1994@gmail.com/

[1]https://lore.kernel.org/all/20240118080602.9028-1-liujianfeng1994@gmail.com/

Jianfeng Liu (2):
  arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
  dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121 compatible string

 .../bindings/media/rockchip-vpu.yaml          |  3 +++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 21 +++++++++++++++++++
 2 files changed, 24 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
