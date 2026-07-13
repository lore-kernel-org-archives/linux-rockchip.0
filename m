Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89794C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qNFpM9MPWuokzgjeTFT2vFi23kjP2qRSsP64XZbV/0=; b=jSipfuFS/gBG7L
	qW6lPhvmLNVccAgPCeV6AV1/hDIY7UYgwEIMWSN8tMa8cEEhsOcaRPH10Jj77qKIDflj0C0IfLfQL
	7dCXfABILfWGwtAKyiOKXyyIpojiB4FqCchnDuGN/xYzX/KdkjkU5lqYa3o5OwERFkW/kZT95+o59
	op/PcbOiz27dniYxO7Fo+6DmSEWqXcSqqH3jAxJE+ssRM340sjDVaFK2MtDcK7OnaWHbF5YKXdl0C
	ra445FAx2zxbLl0QPojOo0lAr1mS/uHmJ/RKII+v+yJTKG1jtcIYBSn16mQ+xbf7esa0fIKyETDoY
	OPc4f2l58dketxJCNwMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGbN-00000009N1Y-0ZWk;
	Mon, 13 Jul 2026 13:21:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGbL-00000009Mxq-2SmH
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Jul 2026 13:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BxQCdrmRWkrqzTZlKUuS543ZF8H8KMBQQnBga75zxC8=; b=fTo96wAZjRr5MG8qRxB6KeTkhn
	BEws8CAyy+ZzcCQTtmrnLXBjscF43oUlapIWNWrpOf8b2fI6TdrupUExorx2sZoGewvu+qxYX0lc9
	6Xowo6mhEqNb3xvAVa3G8S/riQ3rbvSiF2VMnIxofEfYyepyfCizdzGgKi8jweCQ5cqjZMVvnd8AZ
	nxFjnovnNpHTmQsCKFE6AkEqbLyE0GrZSpv7f+heJcyQCwg1W1YEKpYfF3I/4kRPyrELO8OQVl9DY
	dladQpaVuUTg4JAHoq+gmOz13QasD0SeGwKl79XJYjluiMl6GoxvpXD+8Cd9Vs8nda53A3GZ0iUzq
	c7S2e14g==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjGbF-0000000BdYI-1ct0
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:21:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDjMD1453327
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BxQCdrmRWkrqzTZlKUuS543ZF8H8KMBQQnBga75zxC8=; b=LuHB2LndYAhekP/j
	qqI6yQ1IIvHllU+v/KZAuCsz8E37eSBJ/bOgI8R9w1HloRsQVR/lusbYFphVuRQM
	ncaLznaaOZ+jeHtIqKrsrzK5JCqgTsSRyhCO9cXFZgwr9o6k33sw7mmJQNrb8F7R
	EC4ky7JImgq3CLSrmd3sZh6HesP8U9IIKPPhXIVLimSmDCbIAaSlKexL3PW2Gt1C
	hNXMwOBmK4v7ZEV+ILuRuT4iStzoti5NGJ4uK+4650V8aLn42qktRa1uUbwOZImt
	XTpbLooToXh5GCa7hlWSVWrwLEgxHPy75kUR40ZOGYkjWYalZ4Im/4G8MWbtq+ES
	FVA8Ng==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcuj01cvx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c2af04aeeso46251951cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948889; x=1784553689; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BxQCdrmRWkrqzTZlKUuS543ZF8H8KMBQQnBga75zxC8=;
        b=E13itL0l+9lkkD1FqccmgUCHygvmPE1dzl6F6rsrKU1vevcNLasgbX+q+foMIGubXe
         DFChxt5N++5Y+6Iav+50Th5//hkZGqRAEox7q7PPPHXc2E8zOnYw01Kxcgkr+liOpxO2
         PbI34l7DCCF6kZjBTLHQ+S9cJKqXmjRb+KBP0dtTKnFUSmW/Mxems7gv2Z/NWmfqWSGb
         d8jlIB0amRQPUmnKCqI+TcRy/S2GvB303mS8U/jrFkoScb+0kXp4/0ATXkvRwzr4NWzl
         r3meV96PnqXi1JhomXOk2hSssXyH3UNtRE7aKgTXpQ5lAjh10KMjWuMjQ7Cdr/sd5uIw
         /czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948889; x=1784553689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BxQCdrmRWkrqzTZlKUuS543ZF8H8KMBQQnBga75zxC8=;
        b=GZto/NwFHNOFbJ/s/vU8wC5a4DbQyDvGc/yfPu9j2YFGA/fphUfypG1Zyf0kxei4if
         z57UrVA/7twaIEq/w9Upfbd/dSSSzxQK1+Aa4nxhtTRF7oGcnIs+0OKzSlfi8zJ0xbgi
         ObiUc73igKT0wiaRg4hEyc8tuZ5MiZ3742j/HcCafY1dlmrH+xHej12JWIQ7sdl8T/iQ
         w3T0orpkNW2BvPtJUWPINnQEhwVEyiTNFjLzrUpwD1i2bQVqAdckckUwH2eHWUrAdAoA
         StAMgf22alTUSUbJYC63+UGOZAPNH8CUAI3+XX8o22aeEFVs7XvTQB1xmVpwG4ZsUd/D
         mdpw==
X-Forwarded-Encrypted: i=1; AHgh+RqRqT7BiVrI7VriUo5CbUhcFF+XXviUBqICsgeGmNd+bBHWbgSmmXg0+L5fXND3UXjNeq+nGftoKJ4dyImX9g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj2gV13LdK5EEk6NvtYU9ijDzpSLlK/ky/8jq96fDHCTIfd40G
	SXfIq4j2GBpbEgZMQLSh99UcZ+3PjIi1X8iDFUjBMZkO+XoKueO/BoImR5xMN4Ugb3F7TA7AR+Q
	jVI04jbs7cQo1E82md8nNhh/sf9giSpBVgErr06IVHB22sSD+t/hmDqxdWVHmr1CI89HEg+eqoC
	Y=
X-Gm-Gg: AfdE7cntrkTsUECiBu1C7JJCKJuzIRnbKfMWO2BCNXqE840nr2Lb/5pH06K/yaGUCwt
	ftKpx1Rtr52L2+8VgKYLni+ZL+2oyee4ufk/hjwVj6lrU9ahSEhMCgktxH/MhQgxTfAQXySZJvb
	dSBild32dF8441Ad6hmo+NP7GNcT79aQ4V9dFKY2QCWq8PD8cc/MHapPfu7j6Y9Oy00Pw0XF/zu
	erfHZypXyBJb6FPek5ULYBBsMhNMRDIc5+lGRB9gbLqtCoa1P6qKI6KVWETyKTJdu06tJKiYvV9
	ln4rFizrXm0HOcfKK3NgAf3Z8FX7TVJe+aRYX+4sXn+//zKzhRUyzVUbZypiCnIwb8G8UOxakQ/
	HBETv31eZKwR9Hr3TbV+WG/AbMS8PU77/Nh0W03RF
X-Received: by 2002:ac8:59c1:0:b0:517:63df:91a5 with SMTP id d75a77b69052e-51caa0bb46fmr141764361cf.19.1783948889504;
        Mon, 13 Jul 2026 06:21:29 -0700 (PDT)
X-Received: by 2002:ac8:59c1:0:b0:517:63df:91a5 with SMTP id d75a77b69052e-51caa0bb46fmr141763741cf.19.1783948889084;
        Mon, 13 Jul 2026 06:21:29 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:27 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:35 +0200
Subject: [PATCH net-next v13 06/10] net: stmmac: qcom-ethqos: update
 phy_mode to the resolved interface in mac_finish()
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-6-119f8699ef8e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1822;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=NA70xnk/UNTcZEimYYDwGN/0JGIaZCh/H15cO1NUAsU=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY5/+vs2/qf6ixq4/oND2Zx6UG66WUho2k1N
 BESE3IZZ9yJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmOQAKCRAFnS7L/zaE
 w287D/9ZdNDg6JWXdurG/2dzivQeLaVo/7EtsCSyerxef3uIlCFZXmkGtM9e5iwQwgajmvVUCn3
 JTuk3xBjg+Z1rKC1kB/R3MjBD8PhEW+E+xtyv0ZfJ0dLazOINtSW3GAlW8X8jCLTZTcdvwEFdzY
 KIC9IY/wiiZ8QSRR+AhHjb5oF9P7v6JqeoqmJjeOZtJfRdnWMv3WpoIwpkP7GEtoICT4ADSsMVw
 dZ7DKd/klrXJmNHOgxtCE3Sa/tiWHW37EyzPjzFDFIJcWktXMWkFucKsCab66xmA8dxOPc8oZCa
 J1xm+gim/rKwzek+BM1739EJ5i9AauUDha1WT5QrTL9P5+3SvZ4zNLwhomOEKkLoZghbp6Pbepc
 XYhKBRQQM4vu1cZJi7F5bb9E4ACR+buWVjXcCeDZANXlHHtlPmOHekz+wJ3Ua1YStpgBkEAzKk2
 dFiek2jbRDX7KFBUTDPBTBIRkqzc+Y7sXl/CwPYbMw8Afeddl8kY4dpRvzG29iFvQmjSVwHcAbe
 Lgkz6aIJy20PcDerwJKefrtBj6Uri6D3O1qhz/Z+7KvVbnD2CZq6zoC940lmSPJUt47jeAh1VDn
 Uu5E/R4SosFE1DGpvef7KgKjGkKrEm7yAWoep/YaYStb2OwTec/khkzbk+W6+0EYIeUbC+syBv2
 3gGFk01Yg1NAiWw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX+IXZAGY+JlaX
 9IiPmORoodXwMbIJb/8tSA3PL+FfdZgz/+kRxE/7Kp5hs+ozCr9fAAWUTY1kVIgJdw+uAHZL6Zt
 b26bbi62dhFDrw8E8Vi2kkx8tWDmGm8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX90eIE0jZgwm9
 xS2hW4iKcCYfCZvg2TJvB2RuSrSEuCctGtfG1iSnz9pomhQFLnTFanYHRk0oHYQEWeUSbr3sOad
 Gd7x9Ye/XbeH4ncP3/Ga1X4uxsSlyYNSx0b658J0uqkrszvGiQxerZKzPUPwfGmbcHlDMuGmaWe
 zoqU4NZfS0S8wTULgLM+sxS7Icio/xtp3lXc27W1NVUG9zW+OzO41RPlJO+y6zDXZ1YfKjFBBBg
 lmmWtFityTCXs7D8u9XW3epx9yyhCutdg1bEympGc3A6lvmCV+fzD1wC7MkhQMSGcPiBEJQJmEm
 D80DPsWMVFv+fhBe9PCcXsvjgi3/xOteWkOLKAyi4zbtk0Us4CdVJUfi5DIAFtI0TLfbUzgWExJ
 8K1CF5/9HkgtF1sXwhNQW5smLQVupg2XwevogKZAQluXeKycxAScYL7dJyQTdVapbqI8e0YjA/D
 wi4yeGsjhKC9WIGihew==
X-Proofpoint-ORIG-GUID: DFKsQpxFAMgFJiuXQ3f4_hWJuKvPo0k1
X-Authority-Analysis: v=2.4 cv=DbcnbPtW c=1 sm=1 tr=0 ts=6a54e65a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=fYsbkC7JaC8eFfGKQicA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: DFKsQpxFAMgFJiuXQ3f4_hWJuKvPo0k1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_142133_759723_AD503EB2 
X-CRM114-Status: GOOD (  16.61  )
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

ZXRocW9zLT5waHlfbW9kZSBpcyByZWFkIGJ5IHNlcmRlc19wb3dlcnVwKCkgYW5kCnFjb21fZXRo
cW9zX3NldF9zZ21paV9sb29wYmFjaygpIHRvIGNvbmZpZ3VyZSB0aGUgU2VyRGVzIGFuZCBpdHMK
d3JhcHBlciBmb3IgdGhlIGNvcnJlY3QgaW50ZXJmYWNlLiBJdCBpcyBzZXQgb25jZSBhdCBwcm9i
ZSBmcm9tIHRoZSBEVApwaHktbW9kZSBwcm9wZXJ0eSBhbmQgbmV2ZXIgdXBkYXRlZC4KCnBoeWxp
bmsgcmVzb2x2ZXMgdGhlIGFjdHVhbCBydW50aW1lIGludGVyZmFjZSBhbmQgcGFzc2VzIGl0IHRv
IHRoZQptYWNfZmluaXNoKCkgY2FsbGJhY2suIE9uIHBsYXRmb3JtcyB0aGF0IG9ubHkgZXZlciBv
cGVyYXRlIGF0IG9uZSBzcGVlZAp0aGVzZSB0d28gdmFsdWVzIGFyZSBhbHdheXMgdGhlIHNhbWUs
IGJ1dCB3aGVuIHRoZSBpbnRlcmZhY2UgY2hhbmdlcwphdCBydW50aW1lIC0gZm9yIGV4YW1wbGUg
c3dpdGNoaW5nIGJldHdlZW4gU0dNSUkgYW5kIDI1MDBCQVNFLVgg4oCUIHRoZQpzdG9yZWQgdmFs
dWUgYmVjb21lcyBzdGFsZS4gVGhlIG5leHQgc2VyZGVzX3Bvd2VydXAoKSBjYWxsLCBvbgphIHN1
YnNlcXVlbnQgbGluayBjeWNsZSwgdGhlbiByZWluaXRpYWxpc2VzIHRoZSBTZXJEZXMgdG8gdGhl
IHdyb25nIG1vZGUuCgpVcGRhdGUgZXRocW9zLT5waHlfbW9kZSBmcm9tIHRoZSBpbnRlcmZhY2Ug
YXJndW1lbnQgaW4KZXRocW9zX21hY19maW5pc2hfc2VyZGVzKCkgc28gdGhhdCBpdCBhbHdheXMg
cmVmbGVjdHMgdGhlIGxhc3QKcmVzb2x2ZWQgaW50ZXJmYWNlLgoKU2lnbmVkLW9mZi1ieTogQmFy
dG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBvc3MucXVhbGNvbW0uY29tPgot
LS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXFjb20tZXRocW9z
LmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXFjb20tZXRocW9z
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1xY29tLWV0aHFv
cy5jCmluZGV4IDQ3YjcwYjVlNzA2ZjIyMWMwMWYxYzBhZTNiMWFjYWZhZTY2NDExNjUuLjlkMTky
MDNhZTRiZDdkYzE3YWNhMDY4ZjVlYjg4ZmY4MzBlNGU5MDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXFjb20tZXRocW9zLmMKKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcWNvbS1ldGhxb3MuYwpAQCAt
NjMyLDYgKzYzMiwxMiBAQCBzdGF0aWMgaW50IGV0aHFvc19tYWNfZmluaXNoX3NlcmRlcyhzdHJ1
Y3QgbmV0X2RldmljZSAqbmRldiwgdm9pZCAqcHJpdiwKIAlzdHJ1Y3QgcWNvbV9ldGhxb3MgKmV0
aHFvcyA9IHByaXY7CiAJaW50IHJldCA9IDA7CiAKKwkvKiBUaGUgaW50ZXJmYWNlIG1vZGUgaXMg
b25seSBrbm93biBvbmNlIHBoeWxpbmsgaGFzIHJlc29sdmVkIGl0IGFuZAorCSAqIG1heSBjaGFu
Z2UgYXQgcnVudGltZSwgc28ga2VlcCBpdCBpbiBzeW5jIGZvciBsYXRlcgorCSAqIHNlcmRlc19w
b3dlcnVwKCkvc2VyZGVzX3Bvd2VyZG93bigpIGNhbGxzLgorCSAqLworCWV0aHFvcy0+cGh5X21v
ZGUgPSBpbnRlcmZhY2U7CisKIAlxY29tX2V0aHFvc19zZXRfc2dtaWlfbG9vcGJhY2soZXRocW9z
LCBmYWxzZSk7CiAKIAlpZiAoaW50ZXJmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSB8
fAoKLS0gCjIuNDcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
