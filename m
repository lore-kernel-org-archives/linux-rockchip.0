Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3020CEBF86
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cF8tjobvu5GYA22EYcaMxqMJtW4W3Ucpj+1nPKd6ENk=; b=q/X95cemSDHS1m
	eyu32pKUetQ1xEA4KANx/+qs8teNni5IrsiZ7BddjRiuiWQd827uDiZcrGlJI0suEJln0jGAamCud
	aEEXiKI1nwTJKrf3o68/dHsK0IhDQFzA5/xunxPPdGt1twk8mLhYt3vagiq1LVxukRd/Lff6uINwQ
	rWo1RCdz5towigiPEwEBs1HlVbni9ND/dPKBsxt1iQ8jpSKBxEAnePxRkZW3X5yhdBhE1FAFrYBgI
	Y09qunftbjWeDit92dgBG5+S85I1eSh8IRh0lWRBD1sQJY7Y3HQ5vIJknWOi/HF1Z7KkMedUQItjE
	0eymz/CW2U5uONVc0T9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPha-0000000ECE4-0pra;
	Sat, 15 Nov 2025 23:29:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKME-0000000HAaR-1kCp
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Nov 2025 11:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vP5CsM5g0HeHOTSJ0OMxMqeLtmj8J5VZdu7ouInriPk=; b=TXBPsZTHFjHBWL6oH6UBm+qQ8H
	IjLlhOqewLumqLQG9aZ1bHf+VaKMgyv823FUsMaUZIBpOMpigzPwNNJ7BrEWl/A7HQ6EcUXFVYxij
	iCfr47F+CBsZDv6B2Uw048/klmwAwfRBXWHbwiBx3hNVGx+GV+FPERzg173k0uGTe8DKO+1WBy0PL
	DLk15wIGkwGdqjh3zc+/S8kmZyX/m2TA7BrQcNIqKKIW/s7JulELXymKTwJjg79rw+s1CRvfubkpM
	Is2e05ElHlLkE9MPqfqOp77wplBvmDNbxgQfl8pNSIG6KtkuAIGXZoly2Qd/OuVTAawbGE7JA2IO/
	3ix/YARA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJUU-00000006GMm-15EZ
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 10:14:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A797wMH1709849
	for <linux-rockchip@lists.infradead.org>; Fri, 7 Nov 2025 11:10:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vP5CsM5g0HeHOTSJ0OMxMqeLtmj8J5VZdu7ouInriPk=; b=kTVL2uNAU7+oNJ0t
	NR/5a4pLbFGYY5wf72iiXu3Aa4fetjFKQ9zdlH8oYDu1NewO8kjuYZOdjhXjdvUv
	bf9H5CrpXtD3FxEPcZGGEe/I7iM/0aRRpxXoXCHoPjp7StVXZ72j9UVDYvOKO9PK
	dM6P/R36KX94fYH/c+vCqaqes2PvZ/LrkNM01vU7XAbdqPBV6FVSt3SDB1O09pk8
	SELlf5XSIHWr6/eEojdjY43BaCIsGJtdJhRfz412+r7RW1eoyiS4nL6TQwJhxIf7
	B3ni+nzSCZoHdKpoDZxL3P9Eh96zOXP7YNsyWVkUNd24P1KuGRuBYPvKnw4TQFFq
	CgY3uQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a96ue1ky2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 11:10:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed73c9e3aaso816671cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 03:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762513812; x=1763118612; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vP5CsM5g0HeHOTSJ0OMxMqeLtmj8J5VZdu7ouInriPk=;
        b=QHOYyFOFNnlNCPnlRLkUrJBY7+yyz51GyPSk/7NcJ2oszxXPwGkMq9ZqagnPH1tU7z
         dEbQk+0/JNexl+XuEbYXmUAhgiLSFq6K27pQuq4s1fj/gK0DCA5zEA9QDz7OS/mVfxn8
         4bMpiW7VswWKna9f1QHq43dM42PDjlgVSLewMdVUsamlczGswpMF8gWWT23ruD+UfUks
         NNlczLFNqOdOFTjGy8jB9ZKEVnY1Fyx/IsoMEoPlpkXm7SZrGmK+szserqjYWpoE0Slr
         34yfvYkorPmZDQWR59r4/ruUkEphSeNTiE5lzRIL90gflSM+39D07uzEmXSyBj4mu6aL
         BSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762513812; x=1763118612;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vP5CsM5g0HeHOTSJ0OMxMqeLtmj8J5VZdu7ouInriPk=;
        b=bDhX7uzZSonQYeSF7NbA8NATsRDg9Sz7ZL0tULG8KIGT6705yAQdNd/W1lRob1Mn2T
         LnGFGK0YFdwrG6E9NDJ1Dkjl7/EI6kt7i9v9AMd83kE3mUHzxydsz/+huTkitFsOXbck
         Qw2UlhU0gFjazCFRpI4OzngVmcDMTvY4bwev3VYqgrFaRv8O4A9FgNrQTxE8cv2yK81c
         99IN2jUhzuoZ2N41myQ702ov6YgXLpt64sKlypcExRI8XEUtZolJSMsilUQUgKxPVW4N
         h4n69PGcn1fMGOTVNAYmMGs0ly9yREnHXuZ3kM6WdWYsT67K8YdMuMpPt3kHI/L4PAFa
         bknQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpiJWcyRHqPAxSNjPBMlmTDqZjzzhgZ37YI8rIGpYpPjgDKVU1Cu0s0l0K9xJB7XZE39fhESCc5tWOzouxPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwO0vvpJMEWU3/Pa1wPsdambSE40jXxJQapsvX0r3ncPM9cK0QF
	2UyZxQXf+SvhcGeGO+tu1PLCVfJcUUJMIZKrMISfIcCD+Mvlum85WVHdqC2AqNhEoigDTA4l4o7
	vXs2mvxVQH4L3ZlBdkYF+JIVxd2ugAPJ3DSICMl3QM+0Qm0eXI2wX84pr5MpN+Rll3AcysOjphW
	I=
X-Gm-Gg: ASbGncsaeLzZcWnZODEDpVrKE/Fvm3//BNClgglr/Vxh0gzCP37IjJJn8RE/y40pC02
	CNhc2GnKbrgpP5Le1VxqSTsY4i2XLxsHjwh2HARQrBZA91hjzLbHWQIak8DXjEv4M6Az+o5TbJl
	anpRLrOfVjazS1QbQqHCMOi97T0N6X5wbVdLXrx5WOQOXq+03UskjHdhNuigUqq/eRhddEzEE9j
	UfM3vzQoLJaWxC2hx8qhnxlXLXYn+cvJ8VbfxYvY7KlYbO4jrXUvDkJ1icjXdD6Rc8CNzIAL/Pw
	5atxS3WoX+UnB7jmNa6P95umJMqg/MR0fuy5DV2wvgFDO1V5iT63IL5t1DeHM6HNFl85E77Zala
	lTXD63/5PTiKnZVSvvyUfpv74RvUnk+NKAtDe+kRvnVYdoLdwl1tF9x31
X-Received: by 2002:ac8:108f:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ed94e79806mr13951781cf.3.1762513811876;
        Fri, 07 Nov 2025 03:10:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+oSsE67XF0MhznsqL3RMh0VmCG7Jg2iUSdY+a5r8YCwj9SfReJWThGgi5T1OFd6OFN1sfjw==
X-Received: by 2002:ac8:108f:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ed94e79806mr13951281cf.3.1762513811430;
        Fri, 07 Nov 2025 03:10:11 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf31286esm217650966b.21.2025.11.07.03.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 03:10:10 -0800 (PST)
Message-ID: <5fea976c-a047-43a4-a062-fee1d40447b4@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 12:10:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 8/8] net: stmmac: qcom-ethqos: add support for sa8255p
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
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
        Swathi K S <swathi.ks@samsung.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
 <20251107-qcom-sa8255p-emac-v5-8-01d3e3aaf388@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-qcom-sa8255p-emac-v5-8-01d3e3aaf388@linaro.org>
X-Authority-Analysis: v=2.4 cv=fYKgCkQF c=1 sm=1 tr=0 ts=690dd394 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=hDgXwu4zDwT_Ch0b-w8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: HFntAT8wCVLBEokvdpikq67Orcu2OJFG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA5MCBTYWx0ZWRfXycS7QbAqroGe
 51KjrXC8210f+6CJ9/ubYucy9J0KJTWQNKsuCt9dG+EnT2f603P5lC/P9eypI3B/yc3tt7+qMxv
 s4SKFGDM5ke9MkwL+GfenhoUE2tB+/BYQ166M6tt4um0KCnH2JvGehGF0gvZA7eyFoCnSqYT84U
 Zha507hemXJ4P+BAijfc0HodQ7XLZzOSKJenvw/GxUdIhwAd/FPY6JJTE57vePPvua5EF/gKqQv
 3yETow+I4BdD/3uWomFhwd9XreqmFOWEFoZhI+wRP5x9O21xuvNxUX6wxxu+ZhGaNwRtwcgaWCB
 YNkNPWtRxq1capbHErwgwbGxM58B6vnEf7t1E3mEJx+1vr+AYKv7D8ujdtjgNDCqjiC1dXSgre2
 nOOGxrKaBqbpNKcrftkdU6zrrWykjQ==
X-Proofpoint-GUID: HFntAT8wCVLBEokvdpikq67Orcu2OJFG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_101446_817454_4AC6B188 
X-CRM114-Status: GOOD (  13.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 11/7/25 11:29 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Extend the driver to support a new model - sa8255p. Unlike the
> previously supported variants, this one's power management is done in
> the firmware using SCMI. This is modeled in linux using power domains so
> add support for them.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

[...]
> +static void qcom_ethqos_pd_serdes_powerdown(struct net_device *ndev, void *priv)
> +{
> +	struct qcom_ethqos *ethqos = priv;
> +
> +	/* TODO set level */
> +	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_SERDES);

dev_pm_opp_set_level(dev, 0);?

perhaps with _index?

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
