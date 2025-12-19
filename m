Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF996C4450D
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uawp1cWvooXCCxXpWPJrc4u2+1+w1SNb3+mOftbHcLw=; b=oGGDsP+gyQqhuE
	9AzxD9k8AzLMTQfQFR9uzso4A3t5YwBoGgVFKr81rflHT2lLvkrHQK2K5mAGzeIdKgNTA/WBqb8/A
	LsucCsVKVNaYbDd8GFwMkXSW0M+NvySV0OV1kYaPWgpnt2IzDn3+bnG4DyPKfkIPPQ0Eo/4pZ+Gn1
	3vPnf8EZVpef/S2U7iHYHyJX3d90vPI8WbwaeoyFHQ6rPzCCyOU7t0NVFBDIKdLoi0yPzgr/GlT/Y
	YCRq85sUkktdKoZx4QROZ3VtIzt9Rh+hNIWJ6DfJ+/wbyjEHtRzny0fl6zZBhabZpS8VbTYYlF6UI
	lsUs4UK7lCHQ29BNHHRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kB-0000000FI2g-1dmf;
	Tue, 07 Jul 2026 15:29:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWYsz-0000000ADDf-2JOj
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 11:43:08 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBAwm74146888
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 11:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bX0ELyjisY599ILAxQteYNae5xTg+flefV8EL6QhF6c=; b=AORecW+zGPdToLq+
	HqdASpHg3KknK0QK2jUu7seuqC35HeVs21ktVpMPf8NWX+1fUP1xeC8hTDlzl4qy
	1ywHpG3XB3t/rqOkC4XtgXV8kacDz2frSXnlOy5ai8hg9UEBftXNozjfgwfGnTm8
	5sQn5nPVk478sfMp9SJWKWC1lWJjPm6EOJo7+jZkIq5+yUSFt8RqUejJ06xBDEki
	wezwZCzwaRPOJW+g8ETfsr58l/XpEnSbva6fMWFqBgz4SCku1n+9LUEaZqjSIgj9
	teyaiHwVjd0SfErKCVwOWFa2MLntwUsxWWegI+osVfaB7q5hpEzjafEB0YGXAGFi
	qr56kA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dthbu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 11:43:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed69f9ce96so51025501cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 03:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766144584; x=1766749384; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bX0ELyjisY599ILAxQteYNae5xTg+flefV8EL6QhF6c=;
        b=iUYxumY0wuzVA+u3PjYeAOP4h42f3QIHmb8/XEc7p1QlSWyet0PoCF6uJxh2WV1Mth
         9nSlpbrQgp6hbJdGRLUb4Y/DRBbaJDqjL0DH34UK/UIRZkK1y3VR9Bc04oxVrJCHma6G
         i7Q6NgXYKPa9heKaOS/txns6WHosAh6B96n+roKH/OkGCkEMtKEREm3hUQ9qCLWaj9vu
         khJkRwulhFaP5HCzHWMQQM7YsWHNalbRfFBriJJUSeoiXvO6/yUFDl7cpkK0ARp2k7JM
         qpcy2r85hiFzLLRaSOlgt7gD0ktOImIMIFk5BfzgM40NwGKF/6RWAN7VfBvWdMzh1idq
         JCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766144584; x=1766749384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bX0ELyjisY599ILAxQteYNae5xTg+flefV8EL6QhF6c=;
        b=oenz3ZMK4zI39sLQOhCU+2ibxB24zi5k9kz7FYviyk69rQDHIGhVra/PVf1KKcYABY
         TlxGkQsasJ00cNZcU68cr7d+Jnwul/s/BIz9CjU3tWiZO9WAfCvy2ucsdCD6B4EtZqwC
         63jFP9ziOyyCrJ/i3OQTfGdU7fBENGbWPPV9y8T7NYs3ln12E+5GawRfYRv5YkyMbQKy
         YnqJNBrn6f8LUBkamfkJiNtj7OKrCPFOA7XrS17SRbaGNZdySXstX2+HdBx5uUagTNaK
         II85Oq5QP/jDAx95/76HKkK5zpIppAar9xMIMyHVICpf7zOxghnJu8M5IDQHTaFfF36y
         3/Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXy19OjRQ2Aqi2rIw/366F/pzHW28guhZaVoe54h3jpGmzBXI2+jCo/WVnwz0w/an541xh1dwAH0PVa6JHurQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwfaxUaGG7ybDeFexF6V3eVkSzIRR4h6ajQ3fxJJZSHiFIFClxU
	NfMxluGva7WC+SDM/xyFbRGm7Z2NxBN+djCogmRwrLFi9j73zKxHYTvldqUv8kJdMzeTyOnJ6vA
	1cegRilhYEgjKJqtDbp8xDVTOcS/Mx8kiAp4jS6doVh81o09qhNdcndENYPh4QcwC1/5oODjTzp
	o=
X-Gm-Gg: AY/fxX5rCktQYzjafmqN8P6Rj1AExWK7DWfTibgXOTeAgPNPZ/k7AW7hzVAijkY0BRR
	1/cNjFsB7Z7RwS+abyGjT2lv1z+ybnuCUVxec0IbKfAa68rdw6wWSod9eAIMztfRFDHT7jyJDn2
	6dQVGh547JqcVQYkbsrEbrp7g1Fj1XXktRBl7xtWErZW27ZlWYr4qkDH2oNAJzyDg8YzfPJv20P
	rFu51mPQfvD+eC65Mesf1skODGbgnDcsMmkBSbQidfGS0uhSsH0ZXBgrrayvwUWpKcy/RBqzrcM
	NvF1UnEkFhh3ZPc1vZQOKbP2L8vgqCr6lytAubukCUISoPB9CvmoOd0k4w/LZ2/oeAiHLZeo5bX
	PLebv/mfvRYcgl8pc3N4DmLOPOgtN1sLCssx0Yi0=
X-Received: by 2002:a05:622a:178b:b0:4ed:2ff9:b325 with SMTP id d75a77b69052e-4f4abd9da0cmr29498911cf.59.1766144583864;
        Fri, 19 Dec 2025 03:43:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCUeryxEuhslnEMUgRLQ538+mugwQpyqKxhABdKsq18zRMJQYzzEDch02GfgdLzQT6oGGhLg==
X-Received: by 2002:a05:622a:178b:b0:4ed:2ff9:b325 with SMTP id d75a77b69052e-4f4abd9da0cmr29498401cf.59.1766144583291;
        Fri, 19 Dec 2025 03:43:03 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d857:5c4e:6d25:707c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4f09sm41134425e9.12.2025.12.19.03.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:43:02 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:42:22 +0100
Subject: [PATCH v6 7/7] net: stmmac: qcom-ethqos: add support for sa8255p
MIME-Version: 1.0
Message-Id: <20251219-qcom-sa8255p-emac-v6-7-487f1082461e@oss.qualcomm.com>
References: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com>
In-Reply-To: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com>
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
        Swathi K S <swathi.ks@samsung.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=11109;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ERxrAI7TvvbsXfivQVyIhZA9WF7tFtyd4OT7NKWaK70=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpRTowVuabPf3tOQ9zohZII/RkRRVd2Gj8jjepZ
 Va1GL7gD1uJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaUU6MAAKCRAFnS7L/zaE
 w3+WEACG/S8OdNzvmPmN1BeVLBcoxBvRMN0v8Ucc2P7BkTW39Kcw6jgcTXXh0iRZKaZ1AkXKZLE
 KFgf99nqm2wejxaYbn9Lf2AX6uZl1x0wGAxYY//mywVECqGRyBBr+i07ApEk/SPBsKQDRBp8rg5
 08UfegvhdYq0ojcBB40b8nyE/epaX2yuodZbmbx7ZNjusFWJseSqXiKhizjD1JAVcEC+zKFQuII
 J+LDLAdfqwgTZhhzbjJH87hmqPo9Drb/s3KCr6O3prvKbHmVV/EOcLwTz9fbJPMqwLjz7czdIax
 xK0fLMOqCLCnRbtcWW2ehMR/Iy3w+aAqHaXvDIr5nDac/F+vktt2xDFS5DxEn64/ZSnCe6Wjk+A
 q7SFlaHf9OghjyUikRycrMjNhgPGweUWWJ7RqK5H9p81H76zPQNq8BdEV4kwzEqQFOFgtzFkgQR
 s4wzRZtQBxgVBTn6c7w39gjm2IdKaKbzlo6g5qFeTDmdIvg1m/8o8upbsS8EdPcNfirOXf0CDkU
 Gt//crhoCD1Up2CBhD6sEOzxnRUDO4nDLLo+LcEVKaNp0QO/ZtUr8m0s5Z+23KeWMn83+fcFs5q
 1m/Gx4RbA1MG1/8ROYxwIq0AwOXQ+I32v7fCwkM1bwCzFkYRjKHisNbvgD5aHIBRrUOUw1DYfAG
 k/02tyI78oTROww==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: omI5ILhdMAGtLi9ZReGQyjhxVWvxlt2x
X-Authority-Analysis: v=2.4 cv=A7ph/qWG c=1 sm=1 tr=0 ts=69453a48 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gYhETRYomtM5McKHAMIA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: omI5ILhdMAGtLi9ZReGQyjhxVWvxlt2x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NiBTYWx0ZWRfXxi3KKK2hQbGP
 ydAh7dMi6i+7nT3+r56dpTR7itUtDCCWuVpDAQ5BRYg/29ExyvsofAUSIvOVv/Gyr8BUpOzOIBM
 u2x+wWBfI1DKuKn7NzbaEBc7BBwQ7yR09nynMzKxxtKsSsC1khO3e9q+1qL0KCWHgp7IS8BLise
 VQ4g7uhQf2eIurXF6IWLFaUyJQEnudiyFPm3VdSUSWC/97MI3fyEM5CJ6Wu6b/vHuohW0eVky/V
 ETguIu8YxBtqH6x4Nzk90EHcOXG5zzPLUiffS6thE5rHjBpjRui068t4S3jN1P190nf7RYM042M
 Q8r9nKJyMUKbFYDOOnft4NyiPVj/5+QQQHsc/6erIUx+3kxIBAX4ZamXRM1GV5RD6OFVAvgDkBe
 5tPHlWv/6wsN6PT9gTXQv1jB5wyy30r2/oHbi0wO68toVCHYscdrm+kHGLuET5fM+O7pLAL2Mwv
 YKTuablS2riqmEdsMjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_034305_772297_327652C2 
X-CRM114-Status: GOOD (  21.54  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Extend the driver to support a new model - sa8255p. Unlike the
previously supported variants, this one's power management is done in
the firmware using SCMI. This is modeled in linux using power domains so
add support for them.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 234 ++++++++++++++++++---
 1 file changed, 209 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 8ba57bba3f2e..54f8ef3cfd7d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -7,6 +7,8 @@
 #include <linux/platform_device.h>
 #include <linux/phy.h>
 #include <linux/phy/phy.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_domain.h>
 
 #include "stmmac.h"
 #include "stmmac_platform.h"
@@ -81,6 +83,13 @@
 
 #define SGMII_10M_RX_CLK_DVDR			0x31
 
+enum ethqos_pd_selector {
+	ETHQOS_PD_CORE = 0,
+	ETHQOS_PD_MDIO,
+	ETHQOS_PD_SERDES,
+	ETHQOS_NUM_PDS,
+};
+
 struct ethqos_emac_por {
 	unsigned int offset;
 	unsigned int value;
@@ -98,6 +107,9 @@ struct ethqos_emac_driver_data {
 
 struct ethqos_emac_pm_data {
 	const char *link_clk_name;
+	bool use_domains;
+	struct dev_pm_domain_attach_data pd;
+	unsigned int clk_ptp_rate;
 };
 
 struct ethqos_emac_match_data {
@@ -111,13 +123,20 @@ struct ethqos_emac_pm_ctx {
 	struct phy *serdes_phy;
 };
 
+struct ethqos_emac_pd_ctx {
+	struct dev_pm_domain_list *pd_list;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
 	void __iomem *mac_base;
 	int (*configure_func)(struct qcom_ethqos *ethqos, int speed);
 
-	struct ethqos_emac_pm_ctx pm;
+	union {
+		struct ethqos_emac_pm_ctx pm;
+		struct ethqos_emac_pd_ctx pd;
+	};
 	phy_interface_t phy_mode;
 	int serdes_speed;
 	int (*set_serdes_speed)(struct qcom_ethqos *ethqos);
@@ -341,6 +360,25 @@ static const struct ethqos_emac_match_data emac_sa8775p_data = {
 	.pm_data = &emac_sa8775p_pm_data,
 };
 
+static const char * const emac_sa8255p_pd_names[] = {
+	"core", "mdio", "serdes"
+};
+
+static const struct ethqos_emac_pm_data emac_sa8255p_pm_data = {
+	.pd = {
+		.pd_flags = PD_FLAG_NO_DEV_LINK,
+		.pd_names = emac_sa8255p_pd_names,
+		.num_pd_names = ETHQOS_NUM_PDS,
+	},
+	.use_domains = true,
+	.clk_ptp_rate = 230400000,
+};
+
+static const struct ethqos_emac_match_data emac_sa8255p_data = {
+	.drv_data = &emac_v4_0_0_data,
+	.pm_data = &emac_sa8255p_pm_data,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -407,6 +445,28 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	return 0;
 }
 
+static int qcom_ethqos_domain_on(struct qcom_ethqos *ethqos,
+				 enum ethqos_pd_selector sel)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[sel];
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret < 0)
+		dev_err(&ethqos->pdev->dev,
+			"Failed to enable the power domain for %s\n",
+			dev_name(dev));
+	return ret;
+}
+
+static void qcom_ethqos_domain_off(struct qcom_ethqos *ethqos,
+				   enum ethqos_pd_selector sel)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[sel];
+
+	pm_runtime_put_sync(dev);
+}
+
 static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -623,6 +683,13 @@ static int ethqos_set_serdes_speed_phy(struct qcom_ethqos *ethqos)
 	return phy_set_speed(ethqos->pm.serdes_phy, ethqos->serdes_speed);
 }
 
+static int ethqos_set_serdes_speed_pd(struct qcom_ethqos *ethqos)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[ETHQOS_PD_SERDES];
+
+	return dev_pm_opp_set_level(dev, ethqos->serdes_speed);
+}
+
 static void ethqos_set_serdes_speed(struct qcom_ethqos *ethqos, int speed)
 {
 	if (ethqos->serdes_speed != speed) {
@@ -712,6 +779,28 @@ static void qcom_ethqos_serdes_powerdown(struct net_device *ndev, void *priv)
 	phy_exit(ethqos->pm.serdes_phy);
 }
 
+static int qcom_ethqos_pd_serdes_powerup(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	struct device *dev = ethqos->pd.pd_list->pd_devs[ETHQOS_PD_SERDES];
+	int ret;
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_SERDES);
+	if (ret < 0)
+		return ret;
+
+	return dev_pm_opp_set_level(dev, ethqos->serdes_speed);
+}
+
+static void qcom_ethqos_pd_serdes_powerdown(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	struct device *dev = ethqos->pd.pd_list->pd_devs[ETHQOS_PD_SERDES];
+
+	dev_pm_opp_set_level(dev, 0);
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_SERDES);
+}
+
 static int ethqos_clks_config(void *priv, bool enabled)
 {
 	struct qcom_ethqos *ethqos = priv;
@@ -742,6 +831,68 @@ static void ethqos_clks_disable(void *data)
 	ethqos_clks_config(data, false);
 }
 
+static void ethqos_disable_serdes(void *data)
+{
+	struct qcom_ethqos *ethqos = data;
+
+	qcom_ethqos_domain_on(ethqos, ETHQOS_PD_SERDES);
+}
+
+static int ethqos_pd_clks_config(void *priv, bool enabled)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret = 0;
+
+	if (enabled) {
+		ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_MDIO);
+		if (ret < 0) {
+			dev_err(&ethqos->pdev->dev,
+				"Failed to enable the MDIO power domain\n");
+			return ret;
+		}
+
+		ethqos_set_func_clk_en(ethqos);
+	} else {
+		qcom_ethqos_domain_off(ethqos, ETHQOS_PD_MDIO);
+	}
+
+	return ret;
+}
+
+static int qcom_ethqos_pd_init(struct device *dev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret;
+
+	/*
+	 * Enable functional clock to prevent DMA reset after timeout due
+	 * to no PHY clock being enabled after the hardware block has been
+	 * power cycled. The actual configuration will be adjusted once
+	 * ethqos_fix_mac_speed() is called.
+	 */
+	ethqos_set_func_clk_en(ethqos);
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_CORE);
+	if (ret)
+		return ret;
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_MDIO);
+	if (ret) {
+		qcom_ethqos_domain_off(ethqos, ETHQOS_PD_CORE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void qcom_ethqos_pd_exit(struct device *dev, void *data)
+{
+	struct qcom_ethqos *ethqos = data;
+
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_MDIO);
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_CORE);
+}
+
 static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 {
 	struct plat_stmmacenet_data *plat_dat = priv->plat;
@@ -782,8 +933,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "dt configuration failed\n");
 	}
 
-	plat_dat->clks_config = ethqos_clks_config;
-
 	ethqos = devm_kzalloc(dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos)
 		return -ENOMEM;
@@ -825,28 +974,67 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->rgmii_config_loopback_en = drv_data->rgmii_config_loopback_en;
 	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
 	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
+	ethqos->serdes_speed = SPEED_1000;
 
-	ethqos->pm.link_clk = devm_clk_get(dev, clk_name);
-	if (IS_ERR(ethqos->pm.link_clk))
-		return dev_err_probe(dev, PTR_ERR(ethqos->pm.link_clk),
-				     "Failed to get link_clk\n");
+	if (pm_data && pm_data->use_domains) {
+		ethqos->set_serdes_speed = ethqos_set_serdes_speed_pd;
 
-	ret = ethqos_clks_config(ethqos, true);
-	if (ret)
-		return ret;
+		ret = devm_pm_domain_attach_list(dev, &pm_data->pd,
+						 &ethqos->pd.pd_list);
+		if (ret < 0)
+			return dev_err_probe(dev, ret, "Failed to attach power domains\n");
 
-	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
-	if (ret)
-		return ret;
+		plat_dat->clks_config = ethqos_pd_clks_config;
+		plat_dat->serdes_powerup = qcom_ethqos_pd_serdes_powerup;
+		plat_dat->serdes_powerdown = qcom_ethqos_pd_serdes_powerdown;
+		plat_dat->exit = qcom_ethqos_pd_exit;
+		plat_dat->init = qcom_ethqos_pd_init;
+		plat_dat->clk_ptp_rate = pm_data->clk_ptp_rate;
 
-	ethqos->pm.serdes_phy = devm_phy_optional_get(dev, "serdes");
-	if (IS_ERR(ethqos->pm.serdes_phy))
-		return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
-				     "Failed to get serdes phy\n");
+		ret = qcom_ethqos_pd_init(dev, ethqos);
+		if (ret)
+			return ret;
+
+		ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_SERDES);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to enable the serdes power domain\n");
+
+		ret = devm_add_action_or_reset(dev, ethqos_disable_serdes, ethqos);
+		if (ret)
+			return ret;
+	} else {
+		ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
+
+		ethqos->pm.link_clk = devm_clk_get(dev, clk_name);
+		if (IS_ERR(ethqos->pm.link_clk))
+			return dev_err_probe(dev, PTR_ERR(ethqos->pm.link_clk),
+					     "Failed to get link_clk\n");
+
+		ret = ethqos_clks_config(ethqos, true);
+		if (ret)
+			return ret;
+
+		ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+		if (ret)
+			return ret;
+
+		ethqos->pm.serdes_phy = devm_phy_optional_get(dev, "serdes");
+		if (IS_ERR(ethqos->pm.serdes_phy))
+			return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
+					     "Failed to get serdes phy\n");
+
+		ethqos_update_link_clk(ethqos, SPEED_1000);
+
+		plat_dat->clks_config = ethqos_clks_config;
+		plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
+
+		if (ethqos->pm.serdes_phy) {
+			plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
+			plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
+		}
+	}
 
-	ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
-	ethqos->serdes_speed = SPEED_1000;
-	ethqos_update_link_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);
 
 	plat_dat->bsp_priv = ethqos;
@@ -864,11 +1052,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (drv_data->dma_addr_width)
 		plat_dat->host_dma_width = drv_data->dma_addr_width;
 
-	if (ethqos->pm.serdes_phy) {
-		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
-		plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
-	}
-
 	/* Enable TSO on queue0 and enable TBS on rest of the queues */
 	for (i = 1; i < plat_dat->tx_queues_to_use; i++)
 		plat_dat->tx_queues_cfg[i].tbs_en = 1;
@@ -878,6 +1061,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_qcs404_data},
+	{ .compatible = "qcom,sa8255p-ethqos", .data = &emac_sa8255p_data},
 	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_sa8775p_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_sc8280xp_data},
 	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_sm8150_data},

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
