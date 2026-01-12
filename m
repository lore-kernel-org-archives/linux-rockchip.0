Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C37C44502
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSV3OFYdOuAcmbAjegES2JY+uI2dqnntz5dpVDwNgKk=; b=eNzdMU1F2KSndQ
	75KBS6FdIw7JPyTmaJPg0m+qjLs7Xs2LBG/FXPaflNXx3K5iX2+mkK45UDnCxs5XzdKkt843S8J7L
	RRaUbqTFgnxvhq37+Uf4EGAY7dMoDS04pJh6/V6BncPDVL1SUABD+YTPtVxyQRlovAISz0IrZ987F
	YxM7ShU3DUvJBkj+Q03oZo+oVWxlxcvsXEFSEvzPgmhpCvgm0k5OVHsdt6QNNzumc4DXw4o4WvxLj
	dD/29zM59CDwPmxeV4OTQhw9qeTBBuoGbzVbnxJTcqzifOpR5aw1xxLn6aEviFtfuMUMIDcXKzvzT
	0L0VqDM0vgdfMzpycDvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kI-0000000FICw-3W9G;
	Tue, 07 Jul 2026 15:30:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEyW-000000058bP-2uI0
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 10:16:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8rsIS675693
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 10:16:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=; b=LzKp1vd3CVvTxyrg
	891A3N3bCDhSzqosNgMudxdOkCW1ACjnF4NR0tLDYL/hiQZMP8SdOTJrz5Fy/HRO
	yPL2rU5xEtH6ftkYw2tfao85xbkTcIvVQVdx822EppUHSztYV4ng7eioRQKX9D1T
	MqFI85XMf5BeOnF3EbDWdn97v3LYIvQ1AHzbJKZUxzzal3t+klOneF0eAIUsHp+L
	/iR4mjt0DYwO2ZtQ+g5Vb0ZhNpV+4VwJ6E/TDQcLmBDy/mdCTCrD1Ty8Sf4M2jCE
	JbJ+YMLhA56yzDQE6HtIRGZdx7inIh7ykX/eb/jGtFF2XUN2PajYZ4/3o0T0PZAy
	EoxMBg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmwur893m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 10:16:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb6a7fea4dso1529745985a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 02:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768212999; x=1768817799; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=;
        b=cgIGkwbCtLRbht/XH3g+05l0rAGrB6XeNpyeBwAWtDWuCEz+XfScN/0IaZ5fao6/LO
         ko4Ax3ZGYK6YBQhDbXDgAdX60VgBC0qgHAGVBE64iJs+PVWqjrJ29xhtCkqTf7oT3Pek
         UkERD53R0btL1SfyH+0/lvkBIFs19J1GfR9HYjovvv5t+A3THya36BYSsOLjrh+118HJ
         awIYyxFwt6hJbILqxoG4MnnD3ayEfHowcdq4T+ONiAr8+Nlq9ERD6Gw2wnilb+Ur+i4+
         hhdYU5+YGSS1xntj3ZNYwBicdjj0ZfgaA4LtZQhlQMFPVc7mV9UnBsa3lVVpZhdEMEVL
         dsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768212999; x=1768817799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=;
        b=q7c5PJDKwuZYQPaEgMtBbjpcA9v3b5yFr2NyhQLA6D/h0tYF/pnRHqLCYvBEPhxtJn
         SD8f2IGE7dGaowXCnAexL61F9LOXD8hG7t/34t/etgivCAG9c5kBMXAZc4WXGeVDlTwS
         yk4EQxpXobDl3ellsP+rRmzLBTIlrYMoNITW3vEp2/jrcbImer2c71zMQVLD+x1pjUq6
         iqnXv475yzzlbj2tkDtY/OuXBGF2YT10UuYr/SkycD7rJG01hgayBvdw8CBCdhC56O5m
         H3iB+dv7bVLyuc7RhlDV2e1d8wth+DVLii+hPs/2Ar/UXoiVIeVJUX6KdNpf1I4+MaPr
         6Egg==
X-Forwarded-Encrypted: i=1; AJvYcCWa6mOghm646yMrk1ZG7XlW6XrdSzbca4p+k+alc18PTujop7jusKcjvKWak+EnrVrbTiIYqI8tCOkICeirAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5tIG4xuy3x4bv0E6dfUNOa4MmFSM2gE+erC75FmipGR5wE2v4
	eGBRjsSo+YCyzLlMBeTKAA0n3IDnLrd8IxPa5wtg/i5p2dv/cLnu6L/bbU2W1JsARxbCIRfIYrN
	SrN59pQmqSJYuVT0M6Hti/a5cbep0RPTJF2wcqx10MjmSmfqNZVKJbG87wn3jpq+owVpuUTZIrg
	E=
X-Gm-Gg: AY/fxX6cE4Lrb4aF4dVQ/3P+0L9D1+29xtt5qlcWv4dpvctQht5PAnoNtESKIi3tyJF
	Tm6X33Rq2geRVhGs0tixWhZ03Vh8LzUlgumQbt1p79wbClTC1smk+41pEVY/LxVGaacnJ6GnI5u
	oBh5sFqP/Hyar2vzH9aEpW97KeMVL9zFecpbr1Ye9i9wROonaW03lHf6S6vFxrfT2Nfoiv9qfR5
	gXoBvwG51mWrkFLvSPthHqwnHmyo2YHCaYsxxXqeSIuLYakdU+cY/R/iq/OjW1gdzaD1U7iFqEJ
	ZoS4qMMUtzctgKY5nvvW5YllREr5W76rxv3GfACetUNP06L2wYgjVLU7rdUW2KqKgBERDqW3Suu
	GQFC2eVm0h9R0fBUd/X4oQTYiZUpNOKZoUUvN2EIq
X-Received: by 2002:a05:620a:258c:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c3893f7e49mr2354232685a.60.1768212999116;
        Mon, 12 Jan 2026 02:16:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHChba9lYARVO8Wf79JzkrcaWw0Ivu8ZXpRcyXcwijI59hBIn5H5xOpL1yFSlfcxTqLJoYP2A==
X-Received: by 2002:a05:620a:258c:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c3893f7e49mr2354228485a.60.1768212998603;
        Mon, 12 Jan 2026 02:16:38 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:eb74:bf66:83a8:4e98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f0cf2sm126530355e9.3.2026.01.12.02.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:16:38 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:15:45 +0100
Subject: [PATCH RESEND net-next v6 6/7] net: stmmac: qcom-ethqos: define a
 callback for setting the serdes speed
MIME-Version: 1.0
Message-Id: <20260112-qcom-sa8255p-emac-v6-6-86a3d4b2ad83@oss.qualcomm.com>
References: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
In-Reply-To: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Matthew Gerlach <matthew.gerlach@altera.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Keguang Zhang <keguang.zhang@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Minda Chen <minda.chen@starfivetech.com>,
        Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>,
        Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shuang Liang <liangshuang@eswincomputing.com>,
        Zhi Li <lizhi2@eswincomputing.com>,
        Shangjuan Wei <weishangjuan@eswincomputing.com>,
        "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
        Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>,
        Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>,
        Samin Guo <samin.guo@starfivetech.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Swathi K S <swathi.ks@samsung.com>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1989;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=XhZwpSvJ7UE7PtdunInQMevxaiqF8VYCYkdOSwXLngk=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpZMns4kbe8XUdsvQKvrAsOQ1wzF3np1c8DjUeM
 3bh/6KE3EuJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaWTJ7AAKCRAFnS7L/zaE
 w1PtD/9zyqAcP4ZgryRKibjlq5X13bpzu6/2kJ2pincj0K2b7lSUuzwczycjHuQLc4wndagggJI
 mvPxyLijrA2tCDAsMbbEJTrsy3HO/XOrXt6K/p1RZF+4zCSaNoP/Wzl4CASdrJx7/F1fA3CD8Hi
 r6nRm2l8eVWqVGMp1pbwIXpPhpLTq+8+rMhN5ir2pVHvlI6SYkkmiuc8CDM2ZuOTsXvChwftKHF
 e6OCAd2Qj5Klg5RP+WWiIEN+0/W1djw0WlLbm18SOKfPFiyo70K7BMaBRQDDV131rekfqUQqUKr
 IbsKs+nUHGj7WVpyrvYkBzvBSsPGfRyu6pqo/d9tayimwvMPzjLzgRoGpH9+a0381KriRGPc2Z1
 qe/mpz/jcm1tdaZj+PlLSYkNr6Dspjo3qLeUNRC/ZFhpKcFZolv8fIjq4V7ZuXPFy6Jlk1Sa9ed
 SkRit3Olz1XtMYdgD2Szhu5MA5NdZS6REnVyeQh7CcCuj4jl+i5e2YKpn3aiKkrDSO5QEi/8TyK
 2hsl7l0BxZnaelZxdzMsUV0ycXT3EniRqFjaNyrDtSzrtbS3wl9cN3/kuPx/2UMnxRf/PEFNf6A
 9tSHg0ZQVON4XnXyYSUSBdVRe3ZyL1Eo3Gec5MXfbhQ/AJAl8OHmy76nwzI86ZhuM2Hunxq7DV3
 qakjiD2YLFuHwwA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4MSBTYWx0ZWRfX45I+hRYFpK9j
 Lyy88fQtGN3fJcqu9iCH25LN87fk9IhVdgGiCqin4BHJ2L3L4rlQw44pICWwT7Ga1/BZPu78FgW
 PGuovPOyLCIa2vAz+3U+ULjHq8N6Nn/p9wXlNrx+26kNryZYYVlCDGSra6WzToFih6NkhFWw+hS
 p1OsduuDCaHMEdYjEwd/MkXT63TPoyEprti+XQYhD/t2zUDDHv7T+vsD0O0HK17dEd+LcrXoNh2
 V15rAQ/aLqG7FhrAL5v3xiZIcDWhSZ6WfKB8vu+CuEVdKi9aNoJTOAj6s9TFzOMatHcamI1KKj4
 MmBmWLdwGintQ7ktT5EnwXSbewrdf0qtH7RiistcJ6/EHIxjDWOwvcoRkMY2NGgsyXQ5Iulb1IH
 /7I4qMe2yTcdn3gTIszbdtQ0o6ahUs+QTERXTnVeZqoQgh8i/NUK/sljt14ftT90WpYqiBx5fbv
 Utw3Ezv7imrV7bEbYRA==
X-Authority-Analysis: v=2.4 cv=HrJ72kTS c=1 sm=1 tr=0 ts=6964ca08 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pVQroq3X6MeQavp43gIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5ej9Zv8xd5CbCdRWRDBegyMbKyM45rhh
X-Proofpoint-ORIG-GUID: 5ej9Zv8xd5CbCdRWRDBegyMbKyM45rhh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_021640_864327_07672C1E 
X-CRM114-Status: GOOD (  15.86  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:46 -0700
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

From: Bartosz Golaszewski <brgl@kernel.org>

Ahead of adding support for firmware driven power management, let's
allow different ways of setting the PHY speed. To that end create a
callback with a single implementation for now, that will be extended
later.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 856fa2c7c896ea3068ac38d9ee71b4173edce80b..8ba57bba3f2eebe9e44964f9e6c7c67e46ccb02d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -120,6 +120,7 @@ struct qcom_ethqos {
 	struct ethqos_emac_pm_ctx pm;
 	phy_interface_t phy_mode;
 	int serdes_speed;
+	int (*set_serdes_speed)(struct qcom_ethqos *ethqos);
 
 	const struct ethqos_emac_por *por;
 	unsigned int num_por;
@@ -617,11 +618,16 @@ static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos, int speed)
 	return 0;
 }
 
+static int ethqos_set_serdes_speed_phy(struct qcom_ethqos *ethqos)
+{
+	return phy_set_speed(ethqos->pm.serdes_phy, ethqos->serdes_speed);
+}
+
 static void ethqos_set_serdes_speed(struct qcom_ethqos *ethqos, int speed)
 {
 	if (ethqos->serdes_speed != speed) {
-		phy_set_speed(ethqos->pm.serdes_phy, speed);
 		ethqos->serdes_speed = speed;
+		ethqos->set_serdes_speed(ethqos);
 	}
 }
 
@@ -838,6 +844,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
 				     "Failed to get serdes phy\n");
 
+	ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
 	ethqos->serdes_speed = SPEED_1000;
 	ethqos_update_link_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
