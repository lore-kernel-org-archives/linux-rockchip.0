Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEFFC55174
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 03:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zt6n4zkeSI4nkbcXoUUdTllfRwIdZG3p8mD1iuwBkF4=; b=KkWJ00kBVkKu9+
	JRECwB8T7TQvd42tyzLdFO2qASfdxQvBPbrXHPVTdCG3TYBjsa5bKH6pTxr/fPoJOBxe2ux4nrtWd
	i8WUjSRNzQHaEPAFeTFxPq4IrC8VPqzGlE0TaqBFDx7e2YeDWStGwYxdL+h5oQ3MuP/zjsdE0INlW
	7R6l50CSulEkFkhG0oRMNZHLXEQajPVkad/55vpVjEpuSQDFdnLG6mf2Kb2sBIqmm7YclOHobh+fd
	jDKhw16M8rBZFHtvihnfkg3Ie/jWlDVHeigBvVjHYdnFLn3U+y5ePhx2+mM7M1qc7KjIEfZSCI9mD
	XaiPEDYEIMyn7GnqCnbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsH-0000000FJE2-28mY;
	Sun, 02 Aug 2026 03:28:29 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsD-0000000FJAT-3vJL
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 03:28:28 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2cb3f5bb19aso6575475ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 20:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785641305; x=1786246105; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=TpANIRIXCFEaCO+NoYgeEquheHUazRAsrSjmXdnDLkw=;
        b=H5mpKUwexT3Hx8L4CBH6b1rTFkoaJt1/ARPEcQ3lcjQvxWTz7CLC7qtPs2vtuunSJ6
         LU2YttO9t8lQFHHealSWgrR4Lks2Eo1m5gNU62goFIqiPJ4C/Y97n7rdpJbM2fcnJsiP
         SgM3V4ZP3+UTedukIoHxMwzt3s0FLtYcuNJAka6sV+N9S/LLssuETYqolbbF8Hws3gDx
         gzkAN/zJYEdgKf3i3Le8UJhhjJ+CE2ViZx9tauLluT1wg6UUxLBeLSCcrlPTAEPqkQGp
         hYHTWbrNs473YEQK4SFs5/2G/r005+AsnETWMSd3nUS8FHssEnbFGcOYw0B7TS45jtiZ
         +YRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785641305; x=1786246105;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TpANIRIXCFEaCO+NoYgeEquheHUazRAsrSjmXdnDLkw=;
        b=XCgH8AwN/Od8lDuNbXOcJYOfLKU+8YXXigtZS3I97zHlm2Q1Op/YBgW7IgLEfw8y/R
         iiTmrvavvd3DdgWCX4+3NdBjykidUyGore1zQMx5c4DzzjoC8BfPbWGFvDW/ZsK0vDyU
         tBA5Jw9wlY1UG3IeslKdSerVy7b0o7nHwsbV0jFi/xr4v0gXAQRbksLSLNTupOCzLu4g
         XNQOLwn79ZwLg6fS8Ev/tEo24TsBlYsw3i++STp1HCKX0eG1At2456mpF8hCvZF5nBz9
         XIzPc37qDC138EL/4kRLmxG8EV/Oes4ZUlPNRAuZ0pq7jYb+1Q2s3NsRIJNsVzVtbbKZ
         +ugA==
X-Forwarded-Encrypted: i=1; AHgh+RpxLCf4vS7NFeVRK9qOZWR2Ecnki7PCip9P0KBYcEUbdjigXE6wmozf2G/bD+Mu/KsE606Cd4dSY/2pm1J+AQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHDRUahkDC4GIUTsyJ6WsN4ZffV3NF+QRutDBPbo7toEPpdHrS
	V769ZM3WqP6ATnr6QeJtUS7mk6kD8nxtsQeuP3kOsbsx5gn0BGZulRoA
X-Gm-Gg: AR+sD12LHKeb07KQSn5AU2+h/wcOr6oyn9xcq1C2P2u7AoIKPsTZkSnNL6qs2SgPFJ1
	8wRJNM5jXDQSux25JgYvF2RGobX9/VtjbVIA/w+yiCG5lyVCpjfqI0lEZ2TyIYK50On6tXCkSXW
	z0WJOb1j0j/JuXfhzGPB9WLK3m+v17X+y+zmngvPKcajLc0OZSf13CfZaZDgu9AvywEEKndkrY8
	qiCz/t//QIOCRXr3gnyhIKi5Cyt/BOyUEmL/CHyLMLolSMB5Jqkj26NDcK849Ymg9uph6boZPhP
	kM4qZSMJ9zfunP0dd/1bnX6+kM5fBWVN0zLHTQEBPY65D8Ngufo6gRbl5akKj1oX5Dg25KdCJd0
	VsjmGS4YOq17Fw7nO56464VSHSl7EHlWezrMFh0RTpkcbeJJBsU8Tva8YGAejA18jQbmQNVBbjt
	Wf7TtYzh1QrYs65eirA0YFNJ7smpP0iLwr4hw+7N5Z+UrwusnXJk/aG41Yi3yBbTN9NEQ=
X-Received: by 2002:a17:902:ea0c:b0:2cf:6f7f:55d8 with SMTP id d9443c01a7336-2d0523f76edmr54404665ad.37.1785641304908;
        Sat, 01 Aug 2026 20:28:24 -0700 (PDT)
Received: from ehlo.thunderbird.net ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae19ba5sm23124875ad.17.2026.08.01.20.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 20:28:24 -0700 (PDT)
Date: Sun, 02 Aug 2026 10:51:37 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_03/10=5D_phy=3A_rockchip=3A_naneng-?=
 =?US-ASCII?Q?combphy=3A_add_SGMII_MAC_selection_for_RK3568?=
User-Agent: K-9 Mail for Android
In-Reply-To: <0cf1f734-69d4-471f-aa22-e1a2e7d0341b@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-5-coiaprant@gmail.com> <0cf1f734-69d4-471f-aa22-e1a2e7d0341b@lunn.ch>
Message-ID: <7F609DE6-F3C6-487E-9113-449F5BE05D94@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202825_989913_B738FF80 
X-CRM114-Status: GOOD (  15.20  )
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

On August 2, 2026 4:58:39 AM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sat, Aug 01, 2026 at 10:22:27PM +0800, Coia Prant wrote:
>> On RK3568, the SGMII interface can be routed to either GMAC0 or
>> GMAC1 via the GRF register pipe_sgmii_mac_sel.
>> 
>> Add support for this selection by introducing
>> the "rockchip,sgmii-mac-sel" DT property.
>> 
>> The hardware reset value is GMAC1 (1). If the property is set to 0,
>> the driver routes SGMII to GMAC0; if set to 1 (or omitted), it
>> remains at GMAC1.
>> 
>> This is necessary for boards such as the Ariaboard Photonicat, which
>> uses the SGMII interface connected to GMAC0.
>
>If SGMII is not selected, what MII is used? RGMII?
>
>Can this setting be implied from phy-mode?
>
>	Andrew

Hi Andrew,

If phy-mode is not "sgmii" (e.g., "rgmii" or "rmii"), the GMAC works in
the corresponding mode and this register is not touched. The reset
default (GMAC1) remains, but it has no effect in non-SGMII modes because
the register only controls SGMII signal routing.

Regarding inference from phy-mode: phy-mode = "sgmii" only tells the MAC
driver that the interface is SGMII. It does not specify whether the
SGMII signals are physically routed to GMAC0 or GMAC1 on the board.
That routing is a board-level decision and cannot be derived from any
other DT property.

Also, the PHY (Naneng Combo PHY) is initialized by the XPCS glue driver
(pcs-xpcs-rk), not by the GMAC driver. The PHY driver has no way to know
which GMAC is using it. Making the PHY aware of the MAC ID would require
significant changes to the PHY layer, which is out of scope
for this series.

Therefore, an explicit DT property is the cleanest and most maintainable
way to describe this hardware routing.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
