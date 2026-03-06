Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E08C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSDu/8AMdNv7IEH0HYYJEAjHA//M2d//2fu7RvbD8bA=; b=3geRB1aEk50Nc/
	wCLDa3MmVsrjb+RD3L/aXzXbPrUrfhhsmvMLUKJ3EgeBJdn/S2GHJahmtEPtA2xgAva9r0Nlgl+GI
	wulUfgcOwqh6B9abQimCK9908pd0+URbL6OCTPaVVZTkYyWSAwt6IN8kaTRhiohtcLWi6k4Y7pRf5
	xnnKnFkjVwoP7Z20brY95eGzreVDXrEAkQTN2oJMW4udLFYllvROALKBLmQYZ2zmwpWD4JFp3ph3d
	VJil9VuMPIodhueFSmNd77Ez7JdIhPCYl6RIrZQs3pHJFPfbixuIL3gZQMkAcGjsGxuj1AmtvxPit
	zVoP8UHTBfUfq3RGNylg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7kt-0000000FIiA-3x6R;
	Tue, 07 Jul 2026 15:30:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXOc-0000000442m-3OmQ
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 15:47:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626FTGo63905294
	for <linux-rockchip@lists.infradead.org>; Fri, 6 Mar 2026 15:47:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7FZ00ncedK+mL4WvdIiqnQo5Amq5I++OhTfC5QvXt2Q=; b=EH9xO1OCIOWc1zvv
	3lyhYOt9wRBCHpHK8iwerd8cDL8VQIy0CKm5JF8+kO923+ECbVlYud+O1KloukJg
	VzuLR3ba2QFdzSmavfpZtG6OOlJBvQdq99sFVmzs75lQlQ7CfUcZypQdU8hl/cLU
	5EcdC04U0MOU5Qs7WF5y50SzqLqViByyMB75tJgervQVraNyoJRwwlYHtblae7rN
	/bhSkpkZOjQMrDkrZpngKpHqWkpqADPTHrYy+ENP12YnNPYKFxBG468tKwU41JA1
	LnglT1vxOTNZVbQ5qNHNquLSV7LA8gW/BrDtUWTyRanF58ePpavR/m48yiLk8vJC
	mNT4Qg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv9u95tf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 06 Mar 2026 15:47:21 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3a129cd2so5916038185a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Mar 2026 07:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772812041; x=1773416841; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7FZ00ncedK+mL4WvdIiqnQo5Amq5I++OhTfC5QvXt2Q=;
        b=NrafunCtG/isb/ouvtb63C7Wnec/CUA8JjiYOQHWBlaI8dNYV1Vp4dmQAURCVIpDdg
         FshtUHN+0SJfxie2tj9wrEtqwA3M7CRX76pFM7g4uZwZjeVNmlXwP9+h+l1lUw9ipWwQ
         gKNxRtm4CtI1+bgCo0IZF8S5TeeiFVSjTsBTu1aZ5ah/WGu53cxElTwBsKI/MRLfvhtB
         jNk/HeLS86fMIJ1Pj4uJSb8vvehR+MLVmabw6o1XBWtvI3+6/ZEqFJ00R5rV/pRk16bs
         SKwUfbwmmrKNDQuaDEhP6PtY7aqNMnjsXVyAyOjElqMSTTxIWxaoFhJr9Jgli1EGfggD
         IeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772812041; x=1773416841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7FZ00ncedK+mL4WvdIiqnQo5Amq5I++OhTfC5QvXt2Q=;
        b=A2ch87TjqbeCNoRzBStvPteY3T/+77mL8UGEhFpL40FgTDlvPTPiFfFBjdjBjomDkh
         3ZWgiSubSKbB09V2c7GgSK1MQ9bG4vTK7iTaIY+ulZDgx4X5q0ax1mhj26XkQCdIDGHw
         Ew35qIuDesnO1zeaaEUcsp68rlTc2JpjrJIpEcfHzXiErHrk2zBXizcIrR9c8OmELe/y
         jbRkLl2sCe+eh/ECYtIhOE/L7izFRrJEa+olICifNPY10/lZK9+7uSH5fY6qdT71SgsE
         s7uOR8onm0ByKwJUOnQLSMkkIqhAX8Ait8tIL/XqmbqGDyMUnAbtkbfu08QJPc/5gvvC
         LOXA==
X-Forwarded-Encrypted: i=1; AJvYcCW3mVB2uIzpvvxVzxvc9CgWWXRg6u1RskBJ4V0jWCNS858rYXHrQbln5k6FU+B0j2fFeKEjckHYNWoY52h3nA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv1PBFkT6OyQARTBVBv9utIYWC+OD9bBXznYR6ltgSW25AzRUO
	z7eEv2W0oGDPFprbe6niuCf1hI3phbK0UFcroITlnjcnowXeF1YePb6M3xppCOyxxHuVcL7qm4j
	jzqa1HIDfLGp+4DTIcmB5+X5Pyg65Fl3aaBlPOYZD7vWvx5Ot4RC/vYVe7R2cohGZ+qC15rFIom
	M=
X-Gm-Gg: ATEYQzwfZWPxEPZbdpC7Z/CZph13GIe3v1Iv7WGMJd1rXh78JPpYFIqdXNFUYP3x/Dt
	6kCTunnrawB/DmO2ueq5UxLOQ5oeCtBmJ02VxqHOJz94kSBCtktobVIJCopB4pepogX6L5Lp0+q
	sPyjji3qbAjCn43twH3/hlwWYdVCYOhn74pR8Pr7+wdyE5BcOyOvNmSEcg4e3e9y4yir16Tg7qD
	xCHhYpr5+6OyGO/aV0TWfU4SaWUo8ibJk0Jc+OOzxsAuECcT7RV1gta5LI2tfYCId9I3UK9UyyR
	D5Yk9u+T4gVCCAuBx9lGJfuixXSzkBYCPVU6cTevFcOAeUvS4rismTZ/r80mednmhkure/YEvj3
	nsbVQQ7svA1BMHHi8wIm2NOrWcnozG9LeCG6MijXC29cxPD0vIDQn
X-Received: by 2002:a05:620a:460a:b0:89d:b1e7:29e5 with SMTP id af79cd13be357-8cd63409440mr729251385a.5.1772812041015;
        Fri, 06 Mar 2026 07:47:21 -0800 (PST)
X-Received: by 2002:a05:620a:460a:b0:89d:b1e7:29e5 with SMTP id af79cd13be357-8cd63409440mr729242985a.5.1772812040433;
        Fri, 06 Mar 2026 07:47:20 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:6d2b:ebde:c946:11eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae35cf7sm5122767f8f.26.2026.03.06.07.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 07:47:19 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 16:46:42 +0100
Subject: [PATCH net-next v7 4/7] net: stmmac: qcom-ethqos: split power
 management fields into a separate structure
MIME-Version: 1.0
Message-Id: <20260306-qcom-sa8255p-emac-v7-4-d6a3013094b7@oss.qualcomm.com>
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
In-Reply-To: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
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
        Bartosz Golaszewski <brgl@kernel.org>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org, brgl@kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3515;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=4xdEZ3Xz7FPuhh4TIgOPGYV5mznSWY2Gmb1v1cWPOGU=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpqvbtqrbJrglPgvGD4e8XKoLPxkAHqr1h3Nepe
 9UbIf0JqnGJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaar27QAKCRAFnS7L/zaE
 w6aDEAC26/DLAc01J88zpFwROfoamNnM/xgAfAQbvQbU5luOZnh34NX/RcNJ0+nNFwz08EN5X4j
 5/JUw32zLJjd9HwDV1/fuqQezyNR0MnfpDgymbvYx3t2EmMNQa/hIxYER1tZfPvEPNBJ2Wu/y3I
 R57CjTB0NYLVSXoz90wG+F6uMQndZApxjZtk6xPJ3bZYlWkM8LXJydoVqVP86fOs2N4bDpOAiZy
 ud/NsEg7x+jpCSCFPGQbBW4j/VnYBFQnIP972sAfSiQQLA6bISpkzbTj9BYlBAjAf0/g5DUZddC
 GHdOAClK66MCmWlqKdWIQyIxa4CLf5H7ZFXWbfNCXXp7tCeKTJ7KcO8vRVrt0rz49p12/OrPnUE
 +xSwFwp4c3CWOBIe+LQEJVgZvOZNhiT/rFkYHDPqFcXgAU3h/4amGyjTx4GQcV41ouVzJz/d3ZL
 udtbd89DsaMLHJden6imqwwy7J0Cyym9sol9uX6NCus+M/ksJAiGq5ciFaeNqnaXxdx8C9JJOWs
 PC4a+tikzXDLlAaWMKTDDBSaAegMx2hwv/uzGEKhuik1rSI0l37Ot342QCdiijQB67EuWiBmDZ6
 3sfVGr3yhS5XncXXCLDr6Wb5Lnn8jxgliJwhTAthF+9Nrej9nFuX81hPoPs3qVeEXkOv5czbUB5
 fqP35uwnzraR8XA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0NiBTYWx0ZWRfX7724H0lUNL8C
 G9EI544rttVB2KVbM1izhiFIkZZKccMbPIHjSkMNBPKoezerhJkqcgP61LB5BzyrVWesntz6Kg1
 heW5W0NJnM2WliBNToO9ygwp9IHAlZ/tynwMFYqfbTQO2I50+DbvdDLvHLaqBw/EakhL5eg9CZ8
 AuQk5trHRt1cFHiaEwWRLRFKcx/9OZ81p68y0b23HMf96BQrWaz/PVBcDMEuiIcdahQu5Y8JlHY
 MUFsf4NkP73wS73b5zzX2L6WDbYs3p+jR83YZ7Eu2bT6GW1HFpGL6vNJBJRQ0QbszjozQp2KCiQ
 K1nddU4nbghIs9vAr1E2v3ojaCLJWFwYV/xA2mRvfFX4QQz5N7Um32Qdxyz+KDmfIj1wOmUvZas
 +3UW+kOx4ne1e4mEmefvIZOiojsXJ4IJXk1G3LQRTh02r4uVg+Qlf6aGoZKhbUUKTbWLh08PcqJ
 odXHQ2EA2o24RwvFcCw==
X-Proofpoint-ORIG-GUID: jpkGRIfyAfRVAz1815NEOws8IRo9mi0c
X-Proofpoint-GUID: jpkGRIfyAfRVAz1815NEOws8IRo9mi0c
X-Authority-Analysis: v=2.4 cv=eJoeTXp1 c=1 sm=1 tr=0 ts=69aaf709 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=fthQcs0maGYz3WdgJrEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_074722_982640_11AD767B 
X-CRM114-Status: GOOD (  17.23  )
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

Now that we have a separate wrapper for device match data, let's extend
this structure with a pointer to the structure containing fields related
to power-management only. This is done because a device may have the
same device settings but different power management mode (e.g.: firmware
vs manual).

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c   | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index ae7e088b122753fefa24fd2ca715151fd56e6376..f9a3741b692665b5acce34487f7fc2aaf557f0cb 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -91,14 +91,18 @@ struct ethqos_emac_driver_data {
 	unsigned int num_por;
 	bool rgmii_config_loopback_en;
 	bool has_emac_ge_3;
-	const char *link_clk_name;
 	u32 dma_addr_width;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
 };
 
+struct ethqos_emac_pm_data {
+	const char *link_clk_name;
+};
+
 struct ethqos_emac_match_data {
 	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_pm_data *pm_data;
 };
 
 struct qcom_ethqos {
@@ -302,7 +306,6 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	.num_por = ARRAY_SIZE(emac_v4_0_0_por),
 	.rgmii_config_loopback_en = false,
 	.has_emac_ge_3 = true,
-	.link_clk_name = "phyaux",
 	.needs_sgmii_loopback = true,
 	.dma_addr_width = 36,
 	.dwmac4_addrs = {
@@ -323,8 +326,13 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_pm_data emac_sa8775p_pm_data = {
+	.link_clk_name = "phyaux",
+};
+
 static const struct ethqos_emac_match_data emac_sa8775p_data = {
 	.drv_data = &emac_v4_0_0_data,
+	.pm_data = &emac_sa8775p_pm_data,
 };
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
@@ -751,11 +759,13 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_pm_data *pm_data;
 	const struct ethqos_emac_match_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
 	struct qcom_ethqos *ethqos;
+	const char *clk_name;
 	int ret, i;
 
 	ret = stmmac_get_platform_resources(pdev, &stmmac_res);
@@ -801,6 +811,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	data = device_get_match_data(dev);
 	drv_data = data->drv_data;
+	pm_data = data->pm_data;
+	clk_name = pm_data && pm_data->link_clk_name ?
+				pm_data->link_clk_name : "rgmii";
 
 	ethqos->por = drv_data->por;
 	ethqos->num_por = drv_data->num_por;
@@ -808,7 +821,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
 	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
 
-	ethqos->link_clk = devm_clk_get(dev, drv_data->link_clk_name ?: "rgmii");
+	ethqos->link_clk = devm_clk_get(dev, clk_name);
 	if (IS_ERR(ethqos->link_clk))
 		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
 				     "Failed to get link_clk\n");

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
