Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 152ACCEBF87
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NTifCRMOCmqpHUeMUgIwV0qtmThq3v6+Tja5zGfFBk=; b=WXGRRHV4cBYpjV
	TkAiVOPHfbzUNaIrthILPA80HFePVk2Or5UpAeLVfTaHV9RtpQn7GFp2Lw32Eml0kMz18rmOfm9eg
	QUuog9XEp4C0UzHcVMLIDOr3rOrsKX3YDVMIwEABtJlvqVeYrqmlmaeRJ0yYeXvP5ip65t1tycV4J
	Jzj+yFZY+wbJucTOQHBRL4PapKnp3XAyRVY7T4+JocEu8R1x8KNSV10M0QwpHUg2q1AdWCYnYcuvj
	DmcvgAIuweZorZC1Uiqidko9SPqUY3cML9U9otqSnK4Z9jgUBupH4aedzb/konzubfILMMP0cVeWw
	vDHdS636YDsMJ/iaqxkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhi-0000000ECQ6-1UN5;
	Sat, 15 Nov 2025 23:29:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJYbY-0000000AdhN-1lQB
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 14:47:21 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD8jM4e2962404
	for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 14:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c/j8O4OMZ/iO6ANHgdWOttUeORFw+6paoVM6GB+aNhc=; b=b/JRKlQaoXhQbjBg
	7mm9S/5h3Fp/qe27uSlmDQXdKJyVelTPms9TAYlDvBXVpwrx7Y/JPF42qOoJETR1
	cZsoxMoudkiU5Xx0VLidAV4Vf4PHDod433Ykxn74s+LsoMkTrwjARIl3IDm/A+Rr
	grUZjvJu70AF5w6jwH7l4Aq5Be8BuM4nP6pt3KJhqDbJ+xtwdCLznzo3aNk/9SZu
	F6Qj+Ub89gKav1oigAckmv9WKdjgeoUN7Q2qgBe471l3GyeBKiIxCveVSXs/+XGB
	RXI/WhEDsA6qtDMbbTNJWwMSedDbYI2Id5NJthr9QY3IvsFmN+3HmL11WKKwX00L
	cTlHdQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwbpuxm4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 14:47:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edace8bc76so3168281cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 06:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763045239; x=1763650039; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/j8O4OMZ/iO6ANHgdWOttUeORFw+6paoVM6GB+aNhc=;
        b=jEOdhlfoi+0W4ctinZsomfTmDUIYgeG3Rna2/bUNui2JljAPxM+ZH3EJsHHItjYhUc
         wf3N2PGoAI1HkAh/QtC1vcdX7oXd3l0m5w8XUDkiod4OJSLWUsoJl99GKD3VtaQvJTL1
         SfLC0CD+dMen+LwHT/A4jTDfperwloptaVYXJniue/mbLnSX+tEjO0ajFNZaW9DFPbS0
         RXR68pshR56tOO7jKPYjMFqK4g0KCiFPTrPf4RBh3yzIp99MDEd9sUgWPoySQqJRtUlJ
         zCgEUoF6j8DAh8MCUZ1lxVwryfKaSLAeQ0zWdpxSnwM87Oh5uejwXtb0/Nzv09DDsgLH
         seKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045239; x=1763650039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c/j8O4OMZ/iO6ANHgdWOttUeORFw+6paoVM6GB+aNhc=;
        b=gp8gyUPPhYy7YkPJTRkBxNp83DHRuQwG5CjfM/Z9PqQdSc7unNaOE2xNkdZEKS7yRW
         BAaQZTtw59dIvZlsD2OgpcQovJmMhXEfNSGMG8f2Nu70INtS7oghCeQdRecXu4l4UnQx
         MFAV2++DEUkaMYKHTNYHqtLKa7yDmn/7q6zfoX9cOb2dtxdgSOgVwqgoZiw5cmMAkiUw
         hEs/dOKH/X4hIshX77dKrpPScZx2Abvnz+YHCc08lJ1mCcrXfLWSlEe6izgxbyIOLnzv
         2MJ9xanb6hxNnfGwyx9EBzjoEBtGKLOV3d+RtayyViV3LKOhZJbBeOxKx49St3/Cug50
         furw==
X-Forwarded-Encrypted: i=1; AJvYcCWuCjR4e1XXFvn8Ocfrqb/4xVPqhxR8IkEkWFLMmTOFkTghkLt/aQ1ZjRxQyMTgF/U1NjCJUPGzZCjK59Le9A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyzm3bNr108oZtZ74ZwyAkrV+vQl8xAVPWpeLWQ/vkOb7xCtjeN
	P79Ipmsfc6uh1BZkVM6rIA7Wh9pSuDG3OqbPKBM8ToUgsSmSXiEDthjtilpbwfDEf6Sx/WhR1J1
	DPw3yWLtj2yVfLSNPgF1R1EMJZ4On9FpuXUW3gsV2o2bRFmIkq6cfnk1H1lISyo+c+F4xm+HULe
	o=
X-Gm-Gg: ASbGncuJMmYJ9eZ1KVolus71cs5o4AWGbveZAdSKqa/Rq9zf9oMcF2s0QWznMqVQbjW
	c2Bq12UiF/2WqGGqlBRUMg9D7MO6RdFt4aIL191yVi+SZTi6sWk4WJ9SQn5J2ZRNr4azL9OVMAs
	Gwn/Mbpf88tc937UTGScVkBMKEwqyEPvtGYdeH/C4f2R473vdCguClQ/GnWOHYa8FqnLlndB1Yv
	iAAfIolnpuWnr3kJshPTe6TnPxYOeeICsZIb+3FLkFnXjta1AWmXtp8MX89NevjaV6RWQtCeZTd
	f8U5PSwg9Rm5EbAJ3aNm8/oOi6zqoKJJHa7CU9zxYHFN6nprnDbohe3IKfQpjRZJ65g0xOQ3YZX
	j9SOguubUmj8GldLFgzPWL4JlEeMC/oxRapNElgAiOJKmz8DJ/oC9Rscb
X-Received: by 2002:ac8:5f10:0:b0:4ed:7ca:5f33 with SMTP id d75a77b69052e-4eddbc9256dmr60354931cf.5.1763045238334;
        Thu, 13 Nov 2025 06:47:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM7YamsAo7x44iby6/PzuNKLIab4wveVf6S4JQ4cd4mg9yAzxbvu88BKH+RnT7m5FWyF+0JA==
X-Received: by 2002:ac8:5f10:0:b0:4ed:7ca:5f33 with SMTP id d75a77b69052e-4eddbc9256dmr60354251cf.5.1763045237576;
        Thu, 13 Nov 2025 06:47:17 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdaf6dasm176196266b.63.2025.11.13.06.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:47:17 -0800 (PST)
Message-ID: <45915f40-caa1-417b-95bb-deb7363a2ffc@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 15:47:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/8] net: stmmac: qcom-ethqos: use generic device
 properties
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
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
        Swathi K S <swathi.ks@samsung.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
 <20251107-qcom-sa8255p-emac-v5-2-01d3e3aaf388@linaro.org>
 <21a3d269-76e6-4da9-aa25-bfd1fb6dfb07@oss.qualcomm.com>
 <CAMRc=MexMn_GSC2EtMek5hDRLjGYA5HKM8ge9vrxw1pYDqPJgw@mail.gmail.com>
 <cd7c0490-a2d6-4885-aa36-ee1492f107b8@oss.qualcomm.com>
 <CAMRc=MeuByh=N_-F2+zPiqnh+Qp9u97kiMheLJ-xxcSZSy+_tw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMRc=MeuByh=N_-F2+zPiqnh+Qp9u97kiMheLJ-xxcSZSy+_tw@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=NvjcssdJ c=1 sm=1 tr=0 ts=6915ef77 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=IegXRtMujPCPvfbY5ZIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gxA2ySuv4rn6Ylu12lWpIvb1JLXhU_np
X-Proofpoint-ORIG-GUID: gxA2ySuv4rn6Ylu12lWpIvb1JLXhU_np
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDExNCBTYWx0ZWRfX5iNXUsmbfYj3
 w9z0Ph7kT1XJwGGi/ihVWtxBnLUsrzSZmu2B7JyY/mxamtL8ODE0EejhfZHTUNPWL2V3RaRh657
 ZU0WpAnIUNLHCrFrkW9HW/mzOqp3bSB68IpQVn44z6maI4uqa4xQA6uulUk5uyeRgEc2nAal/sL
 /j9A8xx5sFiqF62UpYV/0IfJAJacVkxdZp0Amk8nHav5vAl3GeVcz6wMY78YdunUn7hq0BEz76D
 HC3cu+xGDlEDB86rAkdzS/eITNM5F2JM66lBDjZ2pqLXxH67dS5sQMVsLoFTUkQim1huc73gf8c
 2tyBigoFfTmXniB+09+pFaGQw9b6AyiGJ3Ccg2pgr0udJAgABNpp1EyTHA9y1O6Ibc4IH48kjB9
 wgwgZO+s59Jdi9dUcVPeEyr5SDZw+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_02,2025-11-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_064720_607186_1FC10238 
X-CRM114-Status: GOOD (  18.41  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTEvMTMvMjUgMjo0MSBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBPbiBUaHUs
IE5vdiAxMywgMjAyNSBhdCAyOjMz4oCvUE0gS29ucmFkIER5YmNpbwo+IDxrb25yYWQuZHliY2lv
QG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBPbiAxMS8xMy8yNSAyOjE4IFBNLCBCYXJ0
b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+Pj4gT24gRnJpLCBOb3YgNywgMjAyNSBhdCAxMTo0OeKA
r0FNIEtvbnJhZCBEeWJjaW8KPj4+IDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+IHdy
b3RlOgo+Pj4+Cj4+Pj4gT24gMTEvNy8yNSAxMToyOSBBTSwgQmFydG9zeiBHb2xhc3pld3NraSB3
cm90ZToKPj4+Pj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3Nr
aUBsaW5hcm8ub3JnPgo+Pj4+Pgo+Pj4+PiBJbiBvcmRlciB0byBkcm9wIHRoZSBkZXBlbmRlbmN5
IG9uIENPTkZJR19PRiwgY29udmVydCBhbGwgZGV2aWNlIHByb3BlcnR5Cj4+Pj4+IGdldHRlcnMg
ZnJvbSBPRi1zcGVjaWZpYyB0byBnZW5lcmljIGRldmljZSBwcm9wZXJ0aWVzIGFuZCBzdG9wIHB1
bGxpbmcKPj4+Pj4gaW4gYW55IGxpbnV4L29mLmggc3ltYm9scy4KPj4+Pj4KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8u
b3JnPgo+Pj4+PiAtLS0KPj4+Pgo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4gLSAgICAgaWYgKG9mX3By
b3BlcnR5X3JlYWRfYm9vbChucCwgInNucHMsdHNvIikpCj4+Pj4+ICsgICAgIGlmIChkZXZpY2Vf
cHJvcGVydHlfcHJlc2VudChkZXYsICJzbnBzLHRzbyIpKQo+Pj4+Cj4+Pj4gVGhpcyBpcyBhIGNo
YW5nZSBpbiBiZWhhdmlvciAtICJzbnBzLHRzbyA9IDwwPiIgd291bGQgaGF2ZSBwcmV2aW91c2x5
Cj4+Pj4gcmV0dXJuZWQgZmFsc2UsIGl0IG5vdyByZXR1cm5zIHRydWUKPj4+Pgo+Pj4KPj4+IFRo
aXMgcHJvcGVydHkgaXMgYSBib29sZWFuIGZsYWcsIGl0IGNhbm5vdCBoYXZlIGEgdmFsdWUuCj4+
Cj4+IEV2ZXJ5IERUIHByb3BlcnR5IG1heSBoYXZlIGEgdmFsdWUsIHNvIHRoaXMgaXMgbm90IGFz
IG9idmlvdXMgYXMgd2UnZAo+PiBsaWtlIGl0IHRvIGJlIChJSVVDIC0gdW5sZXNzIHRoYXQgY2hh
bmdlZCByZWNlbnRseSkKPj4KPiAKPiBUaGF0J3MgbmV3IHRvIG1lLiBJIHRob3VnaHQgdGhhdCBp
ZiBhIHByb3BlcnR5IGlzIGEKPiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9mbGFn
IHRoZW4gb25seSBpdHMgYm9vbGVhbiBmb3JtIGlzCj4gYWxsb3dlZC4gVGhlIGZhY3QgdGhhdCB0
aGUgZHRjIGNhbiBjb21waWxlIGl0IHdpdGggYSB2YWx1ZSBkb2Vzbid0Cj4gbWF0dGVyIGFzIHRo
ZSBiaW5kaW5ncyBhcmUgdGhlIGhpZ2hlciBhdXRob3JpdHkgZm9yIERUIHNvdXJjZXM/CgpZb3Un
cmUgcmlnaHQsIEkgbWlzcmVwcmVzZW50ZWQgdGhlIGlzc3VlLiByZWFkX2Jvb2woKSB3YXMgaGlz
dG9yaWNhbGx5CnVzZWQgZm9yIG1ha2luZyBzdXJlIGEgcHJvcGVydHkgaXMgcHJlc2VudCBhbmQg
dGhpcyB3YXMgYSBwcm9ibGVtCndoZW4gdGhlIHR5cGUgd2FzICE9IGZsYWcuCgpQbGVhc2UgZGlz
Y2FyZCBteSBjb21tZW50CgpLb25yYWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
