Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4164CC6B2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 12:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHPNkmomuzLKmlM9sY/k39G3LbAlZuHBiug1eq+UHUA=; b=Cbgkqk+U3uBULO
	sEDArJfCpku/FoQenkH7MUTF5O98LgwQfKgoV15qdI2bWW30jyvWgE0AT9HRUUuhRiOCsS0KR6Sqw
	bzck5xxQHKjSSMukyEQto6TDy23mh2gzO/0QW/m4A88bo6y83TpzaDsBsLekkMhF+yBl3yDo64QLf
	I5Fe2SdYoR6s7MdZUGmNuh3exJpv3ol2ySdV5Smi+atKu6ZpgbnQw+28dg+mvCw8nyRJsYbCj7ypS
	sW3+DZbcgmfvGGnPaZY5Mu25rYc2csWKlRvhkfTmEXt36/51jYhRNWq9mvV5kV5uhULcndZXfVSd8
	VksJTLw0R7Au24VvcCsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyF4-0000000FSVB-2lGg;
	Wed, 14 Oct 2026 12:37:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyEh-0000000FS3Y-43xM
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 12:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XhTimWLRVLL9+eUM2tB3gMhCDeAxv0EnsYkhKM2B8BY=; b=UQQCovi8+J4CvqQlUdduhj3FhX
	3hKksieea4i3GME25U2TfzOiOkDGW/P6WiWaIfM1ec0/TS6HUmk62iO13wxh4O8yAdDugL8/j8Nt3
	G/F5ek7ldiHnG9pknfjVkLppogz2KSevn8CgkYtmr6GdIswCXbPv3K0OYANkvZ+7HL+ZWqz1TNFwt
	uVfsxvq3913V2hgoTxKRw02giJkyq9Rb3HYbjOs1lbCirpn7Nq0ZOqlVMkweBKXygvhFSGUuZghJg
	H+ULEkWgCFSpCBM2ZwbGOVAeRXl30KyxAIT44J4STgvxpCvDFIS8qUIwgaN5jJnN4EDJskx/LAo/l
	iSQSyrJg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGyEb-0000000Gkr6-41FR
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 12:37:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E9eEka3696497
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XhTimWLRVLL9+eUM2tB3gMhCDeAxv0EnsYkhKM2B8BY=; b=fBAjplYu8rnbz4pl
	jLxXGNu+kn88qr66sJRjr353pRJXQ+/rBFN+0aqlhl46LDOAWG0LbxNEkTNdR2OG
	jh1H4R5LqZMmFPyQ2rI2gGs6l1FPP8+SxjtTehM2Wn2Y52Fd9vXWF1RMrxeehR1Z
	30ev5PQXGqOXNdfEh3a7L5rEzIEnkUv6ZTLcGbCoSADextAVQauEL6bmSfgntujO
	cfc6vVng1YzOrC3BDEZie98cFbxqcQelZ2fLWqDPFBDD8Ig0I8nXi4F67OMEcwcX
	7KRryUFURIJdSyn5CN0O+P51SrtDHC6GDcQ/QuFL8EZoeWTYmWzR6+b+uPpd8xDp
	w1VGGA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ha7aegnn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93caa0ce0cdso38550985a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 05:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791981448; x=1792586248; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XhTimWLRVLL9+eUM2tB3gMhCDeAxv0EnsYkhKM2B8BY=;
        b=E+MEYqljRfQKhi//7oaPmJotNGDjtOOmRI+1wIyuJQ+nV+Znd5ass8uhqA6T/6+9iZ
         gt4fSKSdVKzna4/jSMkJp1GAF88vqpqwO4+PjHKScb50jWHPkIuOzJ9HuAUnsR41phSX
         R6fb6R1DuNID1+7EqwnQXWBUX3f/0tKUjxV1l7UdTyd4maPJ7oXpiGatWQHsfp8adQRP
         X+T9gWNFbjlkczD+MGIXiSJfGUdCYFXQwdBHEm/jp27yuRF0I51rvfVvJYYpY4v5QH1w
         Y0Wm6m/H/ojUJwl/OhA1fcJUHIpnesvCiJbdItoQ3tJXBVkDFGoazkz4jqr/NO2704ZS
         vdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791981448; x=1792586248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XhTimWLRVLL9+eUM2tB3gMhCDeAxv0EnsYkhKM2B8BY=;
        b=l8CjCkzWx6+PTassd7fkBcO1f7xLuJBtY9gujOIdKfZRK0ChkPOFsIiNSvnqTQOj8p
         2GAxL0vi+wBphfCO1PEiFY0LX3z05xMECefWxHc9Gi14oa9bwBhBUsU8H9ul+b18pBpr
         pbOTdLC5gzkMc6kck5y/tKvktRfzBhKou7quImdLhhFvtMBJ5JVR5Us7ecFv1tUdvDRc
         G7E1TT//stGYOCMvsTlfc1ZbUtjn7iNRmXsYYbE6pd1I2reVbLu1Otbg24O3p67ASOCE
         2WKajtkj2wIFMU5DMBLqPgVA9MCLNudIqhfENUfaGWTsHJ8TnHmA2nPeIWm1zS3Uz79o
         Uhjg==
X-Forwarded-Encrypted: i=1; AKwUvBymRO4+f3JHHaFrfaptqoex/0woijBXccHnnRUNcbNiVmHepYgmk3VfEsxG3VjuvaF7Ufqv8hjVTGa3IBcaXQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLlJ3FA1AXVen+Sl5K6Tp5FnkhFYH3uNSWx4odqNH9NFtbE4zWT
	VOMYpJTWNkyLmuF7uhFsujdeqhLOV/u6B4g9AThmjccGwWMqSHDyUUx+ViExGJ/8kty/PEY7EjA
	zrQ0OuMeL1hnLKrFp/GrgPxp/lC1pw+6Vu0f0uFnD+fce78BmPHBHZWLPQwUDeoqHnw3F6H5YQK
	I=
X-Gm-Gg: AYBFou2fOhX10oaOkT9KN5+9Pe0Du4f6y0SmqNY7XtDhp8MEZFWRz2W0pJmk7ex/cs3
	0dquC1UGgnKsEi/l30ZAtdnndlfsYmsBmSWL1VmLsN1w3tWFCg2xhEhrFgkLcyWppbmqyra/Qm2
	C/hUEvAf7vDmJkNV+l9nzLa8WaJojbrxUMvTe8JAmpqUlKRuN6m9DSKFA7uwXSfk+KrvB0rgn/Y
	164lfnmBinqmD0uc6s2etVQJaCgmIoniklQMaIdynTXk+1VUpWTE8jl/VlLTt92cPtLQnd07sbY
	wmFQLqzS/SLBG0ove7UHDkMsnHnSoR9J1cih6r8o5a1WVSBd3mofEuTQR7OpQaMBtBSG4ytR6Ea
	9qFBHzIJhEWuqj+iQflP8FQ6EEDca
X-Received: by 2002:a05:620a:2985:b0:939:93a1:1383 with SMTP id af79cd13be357-93ebd2424b1mr2428524985a.32.1791981447343;
        Wed, 14 Oct 2026 05:37:27 -0700 (PDT)
X-Received: by 2002:a05:620a:2985:b0:939:93a1:1383 with SMTP id af79cd13be357-93ebd2424b1mr2428515685a.32.1791981446514;
        Wed, 14 Oct 2026 05:37:26 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a19f318c31sm206122615e9.3.2026.10.14.05.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 05:37:25 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 14:36:46 +0200
Subject: [PATCH net-next v16 7/7] net: stmmac: qcom-ethqos: add support for
 sa8255p
MIME-Version: 1.0
Message-Id: <20261014-qcom-sa8255p-emac-v16-7-0266c2ead980@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
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
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6602;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=E5+bN3D+sOSMI+IUMfDwqXdFOaJHc/HOHr/CKTtiO7A=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz3ds1bIQs+DrRQ+UYZftvNuSxlqf0zl+QMIyW
 Tsd+CGnBBuJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas93bAAKCRAFnS7L/zaE
 w2ziEACOjqFQuy0x40XxJZ/xl0i6ictP/z9z/Go10rQHDy+qpTl8SUcFwtVm8Qeg9H+66IyRoUM
 CTIK+9lLDnklaaK/X7v+vWqiuFN35N63oG+feQwfCu6epUnRbc86UWuVadyneO3VzlZc/RRhT+U
 6FJxQpcqb0QtjTeCQCHGMJj8+x+viVHyrLS2lStC4LBs014PiFN8XkG6vCOZBFW1XVTiB5kIcLj
 qI6TTqk505KpR5vhFeT3U0Ddt/bpbmZBxTKcWhUj9aGw1kwJS24Ha4UoRMMufJZhJYTyI/4q5cP
 I+V7MdCJZuKjXHoNl6G6BUo/QfTIV76quGOeM6P/z8mdA6QqpMsHnfUGLwyK00XUe7TL8xxIjRZ
 9EsKu5ggGAgC5b1erWogRHFB6Z3Jx2nQ03tNlDak//JgZU5uj4TeA1Ue0Kt55qj47gbNq8ePzFc
 m9YkpHijAPorQQ+/0tsviy7JXVlYrzIxRQm4nMR8y2ZMPup3PCn55FRJpMqN/0ZoXdq7KAWotwt
 yapYd8yGv6j8+zQ1MMLj7eSU+Z0uzcY0YHiaNRujTBFS7Wb4x3Y+JHZJCIvxWVAAI5MsIkx+1Wk
 r/GkGbq/G3dGmrCXTz/dbejgc26jAb2SdGJD+GJrbszdKXoPuwH5W+Q1JqPX50rbqs4FFKnzc05
 UzwFJ1st9Ah5JDw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: mStOFnr6jKd7sOLF4_UMg2s-oDe_wzfO
X-Proofpoint-GUID: mStOFnr6jKd7sOLF4_UMg2s-oDe_wzfO
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfX/TpzsK/v+LMi
 V89Mcp4CQ4UNXIux87Eq/k0w2jMiaSfy6M5icGaLzUnmSLWGYXd+oZ1nOHijWuOmNDCV21aOgk5
 2neSjB1n3X655FVzmMnq/xUvN4VPHec=
X-Authority-Analysis: v=2.4 cv=NctzRGD4 c=1 sm=1 tr=0 ts=6acf7788 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=MNMbB-VoU2yS88OP0PEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfXyCtOLjxZsGT+
 59fzBNf9VMolgNHz2p2qVP74jFyo3ilroL6KLq0RZds9VUdLUJqQ4UnJXQ7mxGGIcKDfuNQIt2+
 lMSUI2ZrD7V10H3dArzszJFmAC8EmkoLb1IfRjynal9M2SBWEN6deAqdOejW815rkpjZGKLx+d+
 NeZ+w6d7LkMiyZcj1IXFiHlTyfaK2Mf/9ABHD/KaHNRnKc7qMLw6IKn0zIC6RScdK+zackxDo56
 lns9TqCHvDcyN3CL8P0tqJBdKL3UPnTumkxNcjyF/OWpCneILR/d1Rtf5uJDb4bH/Xsn0vuesEw
 lfs1u616AThw/Xj2EOvIOTiCCKE/XbaR30y5PhipY65nfLIeBaqtjE26IzCIvHDltC8JnlINixv
 kVbY+PR41CNoritlKXeofv3xYkmWMt1W05vAIDprxB8fZ/Qt2RX3wOyC1/WGz93PZdVavCfb4jH
 gH2ia5PVRD8nyrwcQhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_133730_290795_5D70585D 
X-CRM114-Status: GOOD (  28.37  )
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
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 4e9c534fb240f0e08695282bb66cf6134415cc71..d59be76a20916de3febed400a64aff9763aac45d 100644
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
@@ -759,6 +791,84 @@ static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
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
+	 * The MAC AXI/AHB clocks are owned by firmware and brought up through
+	 * the "core" and "mdio" SCMI power domains above, while the SerDes
+	 * lane is powered by the SerDes PHY's own power domain from
+	 * serdes_powerup() in stmmac_open(). The MAC wrapper itself, however
+	 * is in the kernel's register space: the wrapper bit that loops the
+	 * PHY TX clock into the MAC's clk_rx_i - needed because no recovered
+	 * RX clock exists yet - is not configured by firmware. Without it,
+	 * clk_rx_i never toggles and the DMA SW-reset polled in
+	 * dwmac4_dma_reset() never completes.
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
+	 * Register clks_config to run on every subsequent runtime resume,
+	 * which stmmac performs after the power domains are on but before
+	 * serdes_powerup() and the DMA reset. This alone isn't enough for
+	 * the very first reset done from stmmac_open(), though: probe()
+	 * fakes the device into RPM_ACTIVE without invoking the resume
+	 * callback, so whether clks_config() has run by then depends on
+	 * whether the device has already gone through one real suspend/resume
+	 * cycle in the meantime. Call it here explicitly so the wrapper is
+	 * always configured before the first DMA reset regardless of that
+	 * timing.
+	 */
+	plat_dat->clks_config = ethqos_clks_config;
+
+	ret = ethqos_clks_config(ethqos, true);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		return ret;
+
+	plat_dat->clk_ptp_rate = ethqos->data->ptp_clk_rate;
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		/* The firmware-managed SerDes only supports SGMII modes. */
+		return dev_err_probe(dev, -EINVAL, "Unsupported phy-mode: %s\n",
+				     phy_modes(ethqos->phy_mode));
+	}
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -851,6 +961,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
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
