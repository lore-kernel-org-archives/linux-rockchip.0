Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12E2C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQvG9kJygZsatoZA9mJyLawqzWRAyXRc884dY/TSeAA=; b=qSFTV+XZXN3lBC
	43EwIfP4RBL3BpRTXPYI5+zvHJg8yO/h4N/s/coOhxMBc0e2iB1rnaIe5Wpxn/xIcYanvmi0XC9rE
	Q9Ih3vkYrD/eJk57IQYo9hqN4YBG3/1wEZn82omj/54z+mIqIdnr8hqlPGwOaAgcZ92f8Va3VIIrz
	21wAQzpqnfqFmz0On0pmBXZpHQdu7GwVByZ1/Voei/+jmk/cilJUL2xBna9L91lNDwzcIgillr+Ct
	qp/sZ5HeR2w6f3ew3TurJorC9/qX7d18H6+ZUT1YCGjy2L4C5KVfBJMdYbsEMe3cOPfCoTSaIdyp0
	LUM72vYGcvoYUXmhNucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGf3-00000009OWQ-0PvW;
	Mon, 13 Jul 2026 13:25:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGf0-00000009OWI-3bFW
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Jul 2026 13:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+2ZprCy+bUYfEEV2sLvW6R099FI4HZnlU8Ix92wRw7k=; b=ApKgHpMKsCIHu2GhWFn4xhCd4g
	b4zd1WsmRd1Q7GQFlPBW7+bIXZtl4u/bpa/zLagZXGoEIhSHcKRjMNAbPEf5DaVzsqIPLlmqdhWUz
	mCUcpdX6E9GoityXiB92/5SxjvcQj+IB/npZV3A9I4X5SDR758Hw1tFig+J3aq0jjkRQo8wmw36IJ
	encAqJ5H9ZwYCDkuHECLl+NXrbzry4KJt/7xuJ29QTbmpolLdo+/qTmAfR+eoNjoRp3X6n7td4GMx
	QUPgWKtVX0tyx/MIZ+Kox9wngF/yW6iwZ6ApsGslepEp5dkshmfEmD60fmQXvy8gst8zT+5z5UZet
	kJ7ntVQw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjGex-0000000Be5x-00cW
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:25:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDu7h1209911
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+2ZprCy+bUYfEEV2sLvW6R099FI4HZnlU8Ix92wRw7k=; b=dAqZS2MRgD9bQjzE
	7fkd7SLmmebZa0KqKh/N419BADvAkALOln4bbxCm4KlpyE9E9QtRJuK2DFjSEgFx
	MoZMUJYgGg6PkkW++3WtZDUzBFlTu4Yb7p4YxQEi5BKwEc0bbr9JA1X1EOGn7Mke
	GUgse6seFhGYIZzv8v9tIYd5hAAcQYFFnmPQU5LeLJI0VddrDbrsJdIczg12onFv
	MDUVprMl7mGSFdYXpRHBd08sYrxfj915Gq4mQ/gAT7wONX5mraB/CJI3DFwc1CZe
	9dUGXitF9erhRkx7HJGDb+P5ajq/3RUmi4bI/q/TsigdZTg9ZOWAAtsykPEGy+m7
	12vQow==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcw4qrw6d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c20762d21so34831331cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948903; x=1784553703; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+2ZprCy+bUYfEEV2sLvW6R099FI4HZnlU8Ix92wRw7k=;
        b=ViZO3Xfxn5gIKr618/zkLypkVKB/QzfRc2lFpQl8nJytFoa8nGP6X/SMsYdTlRP13X
         PypxvgosAK70rDmeenBo1UbJ7iprvKFuCLo/jQttOqp8p4p9hJOMXZDAMnbVTZhi0yHQ
         6aE16GUd+tTp6pqiReONtvfg7It68H8zV9Bsmn9ci92R3nz8G2n04mvpnFChBwpBVPC5
         gWtTVkMCuYlz7zh9tOboZ6qpAHuI2XVsfgESeyV2qo75MsJH/M242Z8r5lrBklKOzTmt
         OWxFH+9NEiaJW1XvPzIgme7vdd8ND2BPkJ69jSJxLO4lH5IQvNlQnfNntdRwUK1SYFX2
         H6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948903; x=1784553703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+2ZprCy+bUYfEEV2sLvW6R099FI4HZnlU8Ix92wRw7k=;
        b=GctQWiUFedLWHG0rB1c+UB9uLdF93vG8gc3VIdUs8zUah14mJMTP3UpLIeBeMKJBJt
         7dSENThDZrvf+bW2cSB68S/ieQD9YQz9RIJS9zk4044ci60z9rNp74SQ9++Yx+EXzBru
         gGfkhujQDklZlOW6pw+yQX1fWKh7+rXs5PEt8Uf/CmJ9EPNfCbjMgMMelq6t8BPT9eXW
         SeYN3XR/0Tpi8JFTwJsCqx841TABJFdS01LceqOyA8fHRQL6STvcUCzdGZO3qBRCrxy8
         qYIjrkFTXzTQWTfJIHMMmbKuRw4utWUSo/eCbhmyEgS4asUdC+PzjNepla80IGoqJ83M
         0Dfw==
X-Forwarded-Encrypted: i=1; AHgh+RokIzkhkFIfqs655ZuagszZ3RvP23RMawI/nyEaHWQCwH6ivXKPJVA55utn2cZRnWWEcu3DVJrFZrLrHmzILA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjeAK6tAXeB7W7z/dLWL6lKkqaq+LhDOMULWbhXvSmJHFuQmKv
	RmTdkPAcnB3wvn/+c5SB92tgL+qotEx9LBWUKRFs77d5aLwbOHk0kM2eXCseuczfB6Z9hVzlTzm
	IIPF/FI5jI3+jFirxWSBXlPTDK7mxT76XHZclmpT8R0+zMfExCRq/+KFUOPR0ggSSZ5bbseuKQH
	Y=
X-Gm-Gg: AfdE7cn+CB4AtohboKV3LImucAgQHDAVUZnJBh2qKmePN3jV2Ht7axtI7eZ8nbU7vzA
	rkis9b03Q6q5mUS+f4XFafRPL9gTILGdoTcd62I6jUmdxqOnAn2lSVYxledDMkqT9AIGXa1kxt5
	h+hHsFqKHr/TSTJ0X6BAEmzHLTmf0qItHdaFagjgWPMUdb6v6AzWRaaWT3ae0pAqJTlR3vL96Hl
	hYnwGemFMlE3OEiXz2lw42/gwxfF15tnCenzFPNlytktdU/qhf2qfSdUIUOHHhdwtyJEF0/VYUp
	f1qFCOcO6tvzMfeGLxvaI7QVYg1yU4T96TnosukzMJ2jECsOuChWD3FPPpVs6j65SUNfqctD96s
	fLkDPIFOzCYdJZJQC3a1tMzd+Gs3XM1jhJCu4NbsZ
X-Received: by 2002:ac8:7fcd:0:b0:51c:1b78:b044 with SMTP id d75a77b69052e-51cbf27e714mr91207851cf.61.1783948902470;
        Mon, 13 Jul 2026 06:21:42 -0700 (PDT)
X-Received: by 2002:ac8:7fcd:0:b0:51c:1b78:b044 with SMTP id d75a77b69052e-51cbf27e714mr91207081cf.61.1783948901957;
        Mon, 13 Jul 2026 06:21:41 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:40 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:39 +0200
Subject: [PATCH net-next v13 10/10] net: stmmac: qcom-ethqos: add support
 for sa8255p
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-10-119f8699ef8e@oss.qualcomm.com>
References: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
In-Reply-To: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Radu Rendec <radu@rendec.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5660;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=TqGGHsUwyhTsco06VxVuKgwFcBldf6bN3oZwc4gBkFI=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY9WSl89yzJ2CqMhlNNU32SUrhE3oOrdIQ8i
 NwsReN/KxyJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmPQAKCRAFnS7L/zaE
 w3nCEAC1q3NEe6qIb2fTolQ4Z9crn1CgZI+xbic7vhmRZAUVv2Y+TlD1w+G8QI+LY1Q2jCtPvHE
 APl58knmDufMR0I2L7Kjq+b0xL6+z/8+9cW1te2Nv9Mub5tO7TOQ4bS0siuIDg9h75hoYRhmTYT
 VG2pDnADdTWmYlJadmBqZQesz3LU/8wgeP/MCx7WMuUoxL7dr/vdGjhke74AypqVAmWBQqyE7zb
 9LhGB8JQuhU2axn4XHHVaUB/XvWBDoRWRF6QwJ66eoUBPPOgGvhp/0OdDigx1Nv3aMf6mfloKsg
 U8iOqKIb2FPUGDTv0vE5myMB84jwjXFg3ux3UkSejFAe0xik3eT9GYgUHPm1DUgkBPqm9aUBGsx
 zLMVZu7dEVweNIBa2BXOOb9v586Mk6rSYrH+t//kxMyl5dv6n2mnScucHHH6fAw+RxoE1NTawCU
 QrOT1N6vB1LUWwolnHaVH7lXf496fbGZnfkb49q0UW0GzEgSzSs9t/gl0oFMQx2yhgXX1u+Q8Af
 82h70nfjk9yU0b+AqzlPEyHcp7YK8Tj4dCs5YgHPDAFdlTumFOnbQxweaxv1hOBXVOhp0CC/rbk
 YrqsYusTK0WT9c/Ecb7BzFoI95ZNE7eaddEsJBBtJmPJAC7mO+h6atdhgwE5FnPbFDoNb24il+N
 9Y4jV9pjO+YFPVw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX4IGVs6OUY/5v
 O/rvLx/g58SUMU7PLFI/EvepM7f+x/Ijmf1SqwEOT6FnlOSl2rfMIg9S2aQ2oo0aN9KHPh98crd
 5DtnpKUDpL/f16LGkOOAd1s2ykAm1G+PJkmQmMeiAICf5z5ASIgiHkwK5TJbQkXeoVoUXw73b51
 YhcTVSdvT/U8/x6naf84dTfaIJ/npAR5Hzox7FZHdDSmuzO3jfWTGkZNFOsdktB8JwNy6TNr88d
 /u4s9ElcRX1hy3M+P4lZApUy22tRkUKxA0oDbGjv4QKt7IhBLgZxe/NvjkDDeZi1XQccONNy1uC
 SO2TcbDawv24NhDr8hzIg6rslYXMpRPxRIr9rMTK8lJN/FuVZ1Ss6rMCNb6u4kBgHliajXu4EIK
 2+Beu/rdvhQYLpm/ww6kEkKiNxGkgaupTJ5NEpWZvFi8Drnvw0lU7EEd4u2r3iCZyQDFg3Si1JR
 UyipJb25S4CZ57ayidw==
X-Authority-Analysis: v=2.4 cv=HJrz0Itv c=1 sm=1 tr=0 ts=6a54e667 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=2F0B3szvjGg3gJiy4BkA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 2tWax13C5cKzUTXjrRb8sv76P6ieMBWt
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX+H4uOfyWIwib
 cVWzw/cVN7MfTKGUEGYaOsXrUvhjcrfJy+z5415PHVSb5QopVl6Ww2q35E3exLOygvkM/cX8wDX
 o7RjDwlGva1/nMpPQu/lGjJikgBs5Z4=
X-Proofpoint-ORIG-GUID: 2tWax13C5cKzUTXjrRb8sv76P6ieMBWt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_142523_623388_2C1D3BCA 
X-CRM114-Status: GOOD (  25.20  )
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

Extend the driver to support a new model - sa8255p. Unlike the previously
supported variants, this one's power management is done in the firmware
over SCMI. This is modeled in linux using power domains so add a new
emac data variant and a separate setup callback.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 90 ++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 3af1608fc21cc7cf6b0ad31952b9f59d6f00a2b1..d34f20f868138c4e81ce85364cc97d47c445238f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -98,6 +98,11 @@ struct ethqos_emac_driver_data {
 	const char *link_clk_name;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
+	/* Fixed PTP reference clock rate, used on SCMI platforms where
+	 * firmware does not implement the clock protocol allowing linux to
+	 * query it.
+	 */
+	unsigned long ptp_clk_rate;
 	int (*setup)(struct qcom_ethqos *ethqos,
 		     struct plat_stmmacenet_data *plat_dat);
 };
@@ -108,6 +113,7 @@ struct qcom_ethqos {
 	struct clk *link_clk;
 	struct phy *serdes_phy;
 	phy_interface_t phy_mode;
+	struct dev_pm_domain_list *pds;
 	const struct ethqos_emac_driver_data *data;
 };
 
@@ -207,6 +213,8 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 
 static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 			     struct plat_stmmacenet_data *plat_dat);
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
 
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
@@ -311,6 +319,30 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	.setup = ethqos_hlos_setup,
 };
 
+static const struct ethqos_emac_driver_data emac_v4_0_0_scmi_data = {
+	.has_emac_ge_3 = true,
+	.needs_sgmii_loopback = true,
+	.dma_addr_width = 36,
+	.ptp_clk_rate = 230400000,
+	.dwmac4_addrs = {
+		.dma_chan = 0x00008100,
+		.dma_chan_offset = 0x1000,
+		.mtl_chan = 0x00008000,
+		.mtl_chan_offset = 0x1000,
+		.mtl_ets_ctrl = 0x00008010,
+		.mtl_ets_ctrl_offset = 0x1000,
+		.mtl_txq_weight = 0x00008018,
+		.mtl_txq_weight_offset = 0x1000,
+		.mtl_send_slp_cred = 0x0000801c,
+		.mtl_send_slp_cred_offset = 0x1000,
+		.mtl_high_cred = 0x00008020,
+		.mtl_high_cred_offset = 0x1000,
+		.mtl_low_cred = 0x00008024,
+		.mtl_low_cred_offset = 0x1000,
+	},
+	.setup = ethqos_scmi_setup,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -756,6 +788,63 @@ static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 	return 0;
 }
 
+static const char *const ethqos_scmi_pd_names[] = { "core", "mdio" };
+
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat)
+{
+	const struct dev_pm_domain_attach_data pd_data = {
+		.pd_names	= ethqos_scmi_pd_names,
+		.num_pd_names	= ARRAY_SIZE(ethqos_scmi_pd_names),
+		.pd_flags	= PD_FLAG_DEV_LINK_ON,
+	};
+
+	struct platform_device *pdev = ethqos->pdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	ret = devm_pm_domain_attach_list(dev, &pd_data, &ethqos->pds);
+	if (ret < 0)
+		return dev_err_probe(dev, ret,
+				     "Failed to attach power domains\n");
+
+	/*
+	 * The SerDes lane, its clocks and the MAC AXI/AHB clocks are owned by
+	 * firmware and brought up through the SCMI power domains above. The
+	 * MAC wrapper itself, however is in the kernel's register space: the
+	 * mux that feeds the SerDes recovered RX clock into the MAC's clk_rx_i
+	 * is not configured by firmware. Without it, clk_rx_i never toggles
+	 * and the DMA SW-reset polled in dwmac4_dma_reset() never completes.
+	 *
+	 * Map the wrapper and program the same loopback/functional clock bits
+	 * the non-firmware platforms rely on (see ethqos_clks_config) so the
+	 * RX clock is present by the time the DMA engine is reset.
+	 */
+	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
+	if (IS_ERR(ethqos->rgmii_base))
+		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
+				     "Failed to map rgmii resource\n");
+
+	/*
+	 * Run on every runtime resume, which stmmac performs after the power
+	 * domains are on but before serdes_powerup() and the DMA reset, so the
+	 * wrapper is always configured ahead of the reset.
+	 */
+	plat_dat->clks_config = ethqos_clks_config;
+	plat_dat->clk_ptp_rate = ethqos->data->ptp_clk_rate;
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -843,6 +932,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
+	{ .compatible = "qcom,sa8255p-ethqos", .data = &emac_v4_0_0_scmi_data},
 	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
 	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
