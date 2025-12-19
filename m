Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9A92C44501
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjRieTzpcLrIZw5y3NhdJwNIDiIspIcnX+PSgqAY8TE=; b=coXpOuQmq8OeJt
	g5lVbAMyMnNQzELjIkIHYyDXzUB0o0Ju9NH4DBQIJMCMGF765Q+M5VTzpC7yUg4Np5W4Pkm5Y3rXv
	VmAxKHJ+wS+/c2Rvn6yVQtT/80/r47Q0fqOEmAcmJM34QpwilI11rsnNcgcVF+928VIhQEyi7/r8m
	RhBX2GW+EytO/ikvCU6vAlgWS5uAnQeG9DB0yDt6HMxHzDTBZ8DT0I1mZXDALd4JWOjhR96vjGpWt
	JDJmoOzWt9+YJkgJiVKZwWTe0s1xOb5SSBL8WqoxYsEgkhcp+98va9k4v4u1zatdqAcU7tUNapqFI
	VjUvnWOHxJh7EKRSbQtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kA-0000000FI18-0N2t;
	Tue, 07 Jul 2026 15:29:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWYsl-0000000ACu4-2aGh
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 11:42:53 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBDhJd3559086
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 11:42:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=; b=baVyyRmVfe9qj4sa
	pHFnT1QI9blnNeCFEOBU09p93csi463TZABWAaQSphX+XMncivwy66FwbkZaU0+Y
	I4Xn4T73pBN8ObNTB+GTaNBOsOqX6iAkRXPUf/14XVNVDXPq58JfQUHE2BWOKKSL
	4CPL4kOqBvLufXbmohZ72SvWZNI/NySIicIsk3zVfShhBWrgonVBq6y/9OhHXvmm
	N+UGWI2y78BXM679V/tboUk+GSFVKfcA9puMmdV+M/Qf8OW+oEBK797+PGZVvyi2
	hEKYdPo0Ysc0H2zSiH1beqFimry66v0UpCHbyGyKdw+3h+uwBgRvFVm4u7N8WuxQ
	Togz7w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cahbu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 11:42:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eff973c491so37354831cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 03:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766144570; x=1766749370; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=;
        b=COkpcRLHSbU3Rwb4sCbHeYFSztl1X2QNIWxWPD5svVLdPyzms6p3DpzB/ecdM90GgY
         RUgQFEFj5T1ull3gKMSWpl2UYuDUzMTpazSFhNMgR3UworpynceU+mEIinCjBXwpo9n5
         9ZFkGMH4H+j6dqZHGWL9PZ4RGOxerxaJNg9fqYTwZiRpu3tpUKIyI/nyQAc/a1DEpfQb
         R9uRREz2Ma1zUUGU9N7AWnbVMwfiTpoz2eYs+PipD4uLqSsgfdgmnG44SfbnGg1+99fb
         qmqKjARq66g5kBWHm+zh1OxLWY8Gf2X2x3VTPFWBJ1KdgieepuVX+IfZDXKWknNO/v5b
         /8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766144570; x=1766749370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=;
        b=JS63/WM6CmsKunCiyQnisKlGqNWBZI14yH4ZjfC0HsRUoPPdoRTVwDdV51ueTdElFE
         vSwI6+I7/mg5+NAZLbDSWoq57tk/xTU+9SO4WvNqv8K9g1G3he75tHr3dLCkK0d7+xMD
         Qgn5y1VBsIEN2AqiJxWNp0WxVdpdKR810v4dYC9wOFMJoPVovg4qbiE2pGE0HZjv7enC
         qtk556tAkGbyXvEUDDtFWMp6wgTXgkTp6zZYH3INebTon8hzoqgGV15onQuS8KW0cenm
         G/6dO7y00hX2lqm+JBwZxcPHxzQGKV2BRRs5bGpjl3Ri5WprVAB4By7jOz5izGVv92/W
         MuzA==
X-Forwarded-Encrypted: i=1; AJvYcCU4lYu/UYvond/E22KeHVK6eafpanpUIFSHPwJ3b4M94JejMi8a/5wdMERTCUcCYLw+q07+U8RP7Ldb5dKGQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvZAFC5YkpsJihjngvUKSGZsyVdXNDDNPtPm49Ra1jSiePHpv7
	7tenogTbmvUPrKIZITkX2srz1dkZt5cklI6LjVG3+xaEfBTiOd6L6TWD+X0xajlDmSEgLJYEmEq
	E+ZUV3g68pY92uQPONCEcTkBl+9NDdNGPPpwOM0s0i6uf6OUN16ocfMYy/0IsODXEt/ziA9n7Jc
	s=
X-Gm-Gg: AY/fxX5wc+KJMFPKy4Qgpl5twFmcOAMf8eChrnxGM+uW3yKiTpqPSJ/ZrTnB8bkmeWs
	rf+blD9qd8qLH13XAIxGiobfOqNg1o2RoFe/xaaXaoLJ5/QvW7PynyuOt7dpITBOwJt3SqJESlk
	rIKnZGc7FIsNOjTSrljGlNeIsJKhqiOe7elfXmaRtRT5XKOsIRiEfqOUajhx/s6i0k5EvdrPAim
	ziNG6E0UrvQh2fBxjEdIkap9XJTpOAo+b3GC2wzZk2ho64F/tXd/SDPi7KC/NfTwnFbi4eo/9U4
	XDnwHeErXZRMcGrSIGfM/j+XTfQ2jV5rwnAYfBu6NhQk2BSIhWrhqlR22VcCFClDygHb/NHVcAP
	hmhBtq3WvVV8HRr0+kknj7/VjgpY37LiokZs3iFs=
X-Received: by 2002:a05:622a:180b:b0:4f3:58e4:a35a with SMTP id d75a77b69052e-4f4abde3e12mr32877941cf.76.1766144570076;
        Fri, 19 Dec 2025 03:42:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECiVptxgXjkIKJmiC4JmYWvSqGKkOWSJZ9Q21CIYcj007Vfa/jr3CTRomRkZ9N2QHy8fFZnA==
X-Received: by 2002:a05:622a:180b:b0:4f3:58e4:a35a with SMTP id d75a77b69052e-4f4abde3e12mr32877161cf.76.1766144569549;
        Fri, 19 Dec 2025 03:42:49 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d857:5c4e:6d25:707c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4f09sm41134425e9.12.2025.12.19.03.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:42:49 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:42:17 +0100
Subject: [PATCH v6 2/7] net: stmmac: qcom-ethqos: use generic device
 properties
MIME-Version: 1.0
Message-Id: <20251219-qcom-sa8255p-emac-v6-2-487f1082461e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2859;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=knjXZj6R/hueaGnR6/EXXoMJkQxuh7Sk2qPaMWFoa38=;
 b=owEBbAKT/ZANAwAKAQWdLsv/NoTDAcsmYgBpRToqOS8oyUwzdZ6bFwCOj8uhGQOQzcwFVxmQ3
 nVgvnnvtpCJAjIEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaUU6KgAKCRAFnS7L/zaE
 w91BD/Y+GeL1VbPY7IpcOD77EGxUIV7J9nZjHIfpW/lrdgeZuAYZCJoFR8yeKeZNZm+sC7Pf3WG
 DWsngV3W6tkRAbNKdIhbE+SwFne8d/w+C2SbN/tFi7w9galITpYTIo86czSnZRxJFGw/eHAa2j3
 estndX0VbgY+KAY37zDxHrDSmaI3rHv+nXx8YWLL+hL0ZWrK2qNNBb5q+m4vg42btlEt+9009Te
 4dx2Zfj7sH2I9+Q19A64leq0U9B9YekTPUDlhDfJ6E09jx5FM1csMFiaik0chB6DtiQ1/+mg6X+
 Hl9UB2Ihg93Smwu/8qJfKhL/4CQynSGGdzO6MTZJ0CBfyEkdR12eIzT20VNQ0Hv4aa6bktCbIiV
 bf5tMHkgVGpGNGx92Shhsd0IR5KTANJlOAxIw6BYqLepW8xFZStepSwM+gl02XYUjtWnbkgnQMe
 kZGEJbKYUnK+xRKz66PmMd+FEG5PBO/AasDrchuQYEAqxg8+GThb83raYr8aPfTjpEtxqcUvyRV
 k7qPoi7ufE/94WUtbC6VC8oXOO5np41VDm0Dq11txOLEHQUVidpxRkH7Fg61mG/qW4LIWpUNUqx
 Wm1v7aok+LcMIRPnPokWeXU+V8m1JdsjneNGv31WchSnoyXsDBwiVevbXHuv4+2C2UQ3pHXT4Fx
 Djn1tdjEHMc+S
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=cpSWUl4i c=1 sm=1 tr=0 ts=69453a3b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=aGGWjMbO5e2og8PNdkwA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NiBTYWx0ZWRfX6lz+8ZygHI9x
 kRGrI2MqMeaNXfPcX01RaSJ/iZRcAMOtNRSEptiBwVfnlWaJsmSezx4GkqgNXVbSnbLOWnFPNBA
 2VAWR1B7pfgZi38C5SMAbGx26wl5892y+9X7biOB0HUVW5t8p6yI8h5tlNU22KVyMvqpdhVKDG9
 u/EWtx1N/Fyb/2PWCfmJRLkTtC9mGI28g4z5vHHP5QU6B50VdF36bJdBVCXX2swJOtzzFrQhcu5
 OR6P/oIZpL4VXMkJ+YxsmUbri3QckP22Ze7eq1FABiHxKTSgONGwezr2Ns/PaeC1mfR/LEk+gxW
 GTj/IYMYRt+ZYeLVku6pXx1U2PhDxxHlJCUg/ipx/867HFabaq+TyTlKMVi7dchcad30w6NL99C
 bhQ5clTGltFbzpJYJF3BmA/EMZRAES14CoQKkgF+8Th5o+J7pC1r5JylbB3r2gz/Ja1ZlZJuu3C
 00D2Kvp/ck8lxZtrJIQ==
X-Proofpoint-GUID: QBHriihJ3wq97kD_AEl0h3PG26_63lTc
X-Proofpoint-ORIG-GUID: QBHriihJ3wq97kD_AEl0h3PG26_63lTc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_034251_674200_60CA963F 
X-CRM114-Status: GOOD (  18.30  )
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

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 907fe2e927f0..1310312e3e09 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -135,7 +135,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 0826a7bd32ff..457748e57812 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -723,7 +723,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -774,7 +773,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ethqos->mac_base = stmmac_res.addr;
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -811,9 +810,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = 1;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->dma_addr_width)
 		plat_dat->host_dma_width = data->dma_addr_width;

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
