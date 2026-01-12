Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B3B9C44501
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjHYFB83KXbWxrQsCuj9c1af3tsRa/2NRZWKlunzD/I=; b=cRCJKuRUzvlRuX
	6sdI8s1dpy/gwgfWd/rAS3fJ6lp2qbcg1AR1/arG240lEWY2Ob7kFTzDBZMrVbPK2o0uSjsBRS+mg
	PutW+ASxz5SeQo9VwtlVk/Nicr8uD0d0gnFIwFHeEZpq75DiQ7rEfbn7G4/V87D9Dq6/zejotYu/F
	qE7W/+pscAU3hPZFqhQ/+ukgoYuxuOe+KMHkN2Jg8L66jrTmY4608JAlw+AiS0yzAV33MJ31JHCJ1
	VJinpw7lbORSYQqcu+2ZLNzsil3Be799WSnHeDLcwFeULuWBe8d2K3XE8zfkqxUYUnMDEJ2LIBWRk
	SMavlObVq6Ltg7W03Axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kH-0000000FIAp-31Su;
	Tue, 07 Jul 2026 15:30:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEyL-000000058O0-3gbV
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 10:16:31 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8qvcx113539
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 10:16:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+Z6aIVkrhhREMp41SA/JdGCM+9SvWLbacrpqL7MVlU=; b=N4gKoyI65i9dDHJk
	Y9vPOXxQ44naxTz7AJdgU4cno65B9RAWMj9qvyAOFqW/nz2JMcunfyD07+cwh4bC
	EGn1HDB3rryhUBvugqxNwZAmfLZdEr2CIWNNP5YhpCeZcaL5QqTCAeI0HEuQWYte
	EDkVu7hcMC1xpV8uIcQ1qG2jLClRmkYJkgQUJ3r4wqCvsPY/NGfQP/e5MmOGOT+k
	5jrOowKETiVdzWdMpwGdORWpGE6EDnTIboo1M1NKHx297vbJavRDkz6XwfPE/9dG
	oLBzHvN/YgcZAi5nXWyEwbI1UkAZbieaoeIPbCQ4E7J6KFBFNfk+ykS19HtP+o3M
	Bib2yA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4uhbd9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 10:16:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e41884a0so1312021385a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 02:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768212988; x=1768817788; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+Z6aIVkrhhREMp41SA/JdGCM+9SvWLbacrpqL7MVlU=;
        b=itC20l6gjHQY8sn8xS5/hUcD1D4ujDStE5eqSDFt6A8Qk21uatm/VUHM4MwC9YUDLr
         5pBup5+oPr/xKPAD8OQt+Iqngym8cp7RE07qbbn904xtlanUgPNe79neW6RZLMGGmFeq
         lhliMPifA9Dr7CLAwm+BsQ/a9h+cOOS7lrSZMl4OOn1/VMCm7H9PqVrFehVqjswbiMYW
         aHxMZvF6OSx1sWMDyYdFnH6ZPxJX+F+qUSwDXavQXXOGZwmdufdbcg+OFnoySUDLNfyK
         sFHn/TNWQQSbyIDYM2iH/TZ7fgh2BrTJdfMeYJ2T+8UNi3hJvrsb2r2ae5yjP/L8KWNc
         R46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768212988; x=1768817788;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+Z6aIVkrhhREMp41SA/JdGCM+9SvWLbacrpqL7MVlU=;
        b=iDAOfnNLNWQSJQe/0YV0eP/kPz+yexnT/O0UIgZ6x62sfDyeGp+z5kFzNJvZHgktqe
         NWn4QTC4t4VLlZKJIW2/7luWDKcQpWPP7hHngHv29InX/jRAS4NMbj1iOWhedOJ6n/f0
         x8DH53TPxXF//SPyxZXSH8P7bdDTYEYVgBGji5WCnEpH+6p9/FzTb39AorUECeH4fP3w
         lfIljuwE0GZWFCXnc5RWyCwctruL9dGutHleALzyLnAO3fTnAmkoeLbeXO31xZjwKoF2
         zqL5XaNyRVtlJ6pJEw6XfBNNDG8QN715SxcwRlZqsTSzTVC5T19DOMiaV4DdxZMwqW86
         tAcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFApVnziOzWUA/IML9wFXF1xRQvtSGRWFs5C4eXgb1kb96+7p+I/zcODsv9+Q68GKgN8vTGFMz0r91/73nCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzqg/zOMw+hNaeGAWmGfL0SR+kdCzV5BotDhlXSxYVt/mkfivTc
	BOFjmQZMbw3khC96yzAL7AN3QX44KH5aiHvvsuftAcHnRHFUYORLI2M7pqpYpon6S7uIi8tjXCz
	SIfCxB1aWtgMVERzsA2LGotZ/VYeqUQyYYXONUiRFai7RiJoWW19XhtZmKkfh6tuW45jVQ+lZ1t
	w=
X-Gm-Gg: AY/fxX4thFUoN0n5CWwz1Oc+ZfGbvAw9efUXwJzNHDc84jjsHtZmcBc6S4emImE/+Mn
	yERyt6T26FAPdvKOmkwH7MDvjpj+nzPuFvoWELy70VtKEOpw15znboHW+ihCZ3KJEFqK/Z11hFa
	pgitt42AD4iyFD9Jd6yJjVsEux8z/Kv43/dAWtG5bAmGrPRNu+cBpcPmP9i5ENQGhSTRpWZ+jW8
	N65Yp/eXo91lUYEo2mfDFn1LHQ9fxKlp6HnAyQGTfON9mCglp6UP3N/iXwgR+gJTgw9g7a/tG3M
	qTUXO8gP1qnGWdtVks6XvlV7NvQNGC8sVumyJSTMzzTZpYlOeXKQFUAQbLwNCmsZrBN5RA9unXj
	+9Il+PjLRC/VxIZxIsTyEK/jGO2JnHLsbGcT1q9dN
X-Received: by 2002:a05:620a:4802:b0:8c3:7e09:7305 with SMTP id af79cd13be357-8c38936be22mr2496000485a.8.1768212988156;
        Mon, 12 Jan 2026 02:16:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFDcFp13cELDqg5yb5c2F8mogs77zvA10+uG/S30hV3BqtYmfe0ZqkG8u1DcAICWOnVi+8xw==
X-Received: by 2002:a05:620a:4802:b0:8c3:7e09:7305 with SMTP id af79cd13be357-8c38936be22mr2495991485a.8.1768212987621;
        Mon, 12 Jan 2026 02:16:27 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:eb74:bf66:83a8:4e98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f0cf2sm126530355e9.3.2026.01.12.02.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:16:27 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:15:42 +0100
Subject: [PATCH RESEND net-next v6 3/7] net: stmmac: qcom-ethqos: wrap emac
 driver data in additional structure
MIME-Version: 1.0
Message-Id: <20260112-qcom-sa8255p-emac-v6-3-86a3d4b2ad83@oss.qualcomm.com>
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
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5782;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+98MGhNEMTse5rrzUsNGNnR0YKmhUi7WzCmUr+BPXL0=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpZMnoliueKXick+xAzQraAN3ULEXA7idrAkBy1
 J9TMOwkINiJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaWTJ6AAKCRAFnS7L/zaE
 w+9jD/0Y5/ZiDp9I1wx8sDKr9gzh2IhVqIDuVPk1jNE9b8uNWjJCxrJA68RJohfUkeOMBW4A6W3
 /4c18p9KiRuGcKp/fw0+OQ5lLiGPMe2nsOCZzUXxxBX3tgtHk+fIPkKh3wxl3JMafbuxsuoOQqJ
 oVYHWrbxwMxIbTzLwVwD+FxNYxi7+ISo3fqhFz1D1Pkvd32mgiGqeMvV9tZDOIiB9TV9K2I/5IT
 LxXjmfFxYBVLuR+5INNiiHleBrhekDuild2FCXkSjXwdhWyEYZmDcCOi61z4v6XtxN84OqKtcWy
 b7iph6sGKcvUmZwIWMMIWk1mozl/Sna1wwX0PdmifEPV9mr+pl/v83h3mmoKij5QWofCvMfJkAp
 jtoMcAt7P1/J1Jfn39OpvwZEAE8+6Dfy5sRV89ktbJH8J/6BAHlsUXuRed5m/RitDDnE0qfmZs6
 pFccfzaOcVGXexqzPAtb1IWBDIKCWM137KKJm0di89Nnhn22v3DmEjRpG3vu3Dq9DA77Ei292gr
 z3S2OkUV+o0yMOBRhHGHvhl/KCPHg5qkwsKM02fIyqDLn79VEoflziIkEW7+ZH5arc3DwnxfXQe
 4Y8wrx/Q7W/SjEGf00ABgVj/mTcKipD2ujP8qOVCGO31mIuMhIuQowFziIyx5WXSCnubuaKhlwr
 oP6YF6+Aui8XK3A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4MSBTYWx0ZWRfX7DtKu6izvb3z
 +9TpMfMI7TuL7Y/f23gNN2jkuRyUx3Di+V+XJfJ0nRbXvqjVQP7T2NnU/nd0FK2QZODzezd1GJG
 ZZwdmRFMYgY3pe0CTuaY0EPjb6y89/yqCrQACteX7FXLVMp1bjLpz01mVg5M2Xq5/xFMXOflUaO
 EFoTEZFtSQOlQBXacGQQ8t9KfRPTvMZUWv5ysw+O7tVSIt1zK6cZ3BK3+L56IMRsndSExPV+qtH
 WVKOdEdWUM3/YPalE8boBcHkA2DdsdR6/KrSY9EO53ap+/iNcdmjbkVS1hwHTKJTmsefp74+HiB
 kf3safvWtebsH0dT6VskCLtxpzGf7vbjG9Q2tNm7U+uuni9Mhq/RsbNsKcWkJDwJxgig3Xb56Go
 c8fpGOdPeL/NBf6Tnu8Bpx4e7j8bcdX3h1rn2ROcp1US/DtNrQSPivzlLdXKRQKSEtq+5Q49uZc
 T91BXPO7EeS/AKVw6Nw==
X-Proofpoint-ORIG-GUID: SakPF4JBBJQZRvISo-hrFRvxMbYjdF4J
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=6964c9fd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=fYgtqwV50X64hY7jBhMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: SakPF4JBBJQZRvISo-hrFRvxMbYjdF4J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_021630_685978_DC981AEB 
X-CRM114-Status: GOOD (  18.65  )
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

As the first step in enabling power domain support in the driver, we'll
split the device match data and runtime data structures into their
general and power-management-specific parts. To allow that: first wrap
the emac driver data in another layer which will later be expanded.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 51 ++++++++++++++++------
 1 file changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 457748e5781231680b64382fa73e195cf7473924..e0f0eca943420e24dad4e506e12bbb1eb731b8f5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -97,6 +97,10 @@ struct ethqos_emac_driver_data {
 	bool needs_sgmii_loopback;
 };
 
+struct ethqos_emac_match_data {
+	const struct ethqos_emac_driver_data *drv_data;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
@@ -225,6 +229,10 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_qcs404_data = {
+	.drv_data = &emac_v2_3_0_data,
+};
+
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -241,6 +249,10 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_sm8150_data = {
+	.drv_data = &emac_v2_1_0_data,
+};
+
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -273,6 +285,10 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sc8280xp_data = {
+	.drv_data = &emac_v3_0_0_data,
+};
+
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -308,6 +324,10 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sa8775p_data = {
+	.drv_data = &emac_v4_0_0_data,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -723,7 +743,8 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	const struct ethqos_emac_driver_data *data;
+	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_match_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
@@ -774,13 +795,15 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->mac_base = stmmac_res.addr;
 
 	data = device_get_match_data(dev);
-	ethqos->por = data->por;
-	ethqos->num_por = data->num_por;
-	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
-	ethqos->has_emac_ge_3 = data->has_emac_ge_3;
-	ethqos->needs_sgmii_loopback = data->needs_sgmii_loopback;
+	drv_data = data->drv_data;
+
+	ethqos->por = drv_data->por;
+	ethqos->num_por = drv_data->num_por;
+	ethqos->rgmii_config_loopback_en = drv_data->rgmii_config_loopback_en;
+	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
+	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
 
-	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
+	ethqos->link_clk = devm_clk_get(dev, drv_data->link_clk_name ?: "rgmii");
 	if (IS_ERR(ethqos->link_clk))
 		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
 				     "Failed to get link_clk\n");
@@ -808,14 +831,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
 	if (ethqos->has_emac_ge_3)
-		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
+		plat_dat->dwmac4_addrs = &drv_data->dwmac4_addrs;
 	plat_dat->pmt = 1;
 	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
 	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
-	if (data->dma_addr_width)
-		plat_dat->host_dma_width = data->dma_addr_width;
+	if (drv_data->dma_addr_width)
+		plat_dat->host_dma_width = drv_data->dma_addr_width;
 
 	if (ethqos->serdes_phy) {
 		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
@@ -830,10 +853,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_ethqos_match[] = {
-	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
-	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
-	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
-	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},
+	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_qcs404_data},
+	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_sa8775p_data},
+	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_sc8280xp_data},
+	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_sm8150_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ethqos_match);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
