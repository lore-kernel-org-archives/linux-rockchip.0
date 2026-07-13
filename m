Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4FD5C4450A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7msmmfYHhdgUvnUqbrX1ONoioMnHoQPxgxcmwADXyKA=; b=OL9VRYDJaAkTLJ
	SQG3dPcAaskEJqI3RAPp9HbqBHYUc3MOoeVHkABDp03MvMnfNbnDjoBmjhpEwsyyiafLZ7BrPIowC
	CkQ2TluwLFaod6CfH6lXV8BE9D80rqposNq/mypo50uTSdsLyu4DLBwWKLD0wQ4BUVs/YXXpwple+
	zUiazraEKMdFfUUkK4BJhzT6WtePIRkdhb+sSNeo3wN5kVr0uyF3i2q0ghohByUX7chdeUgYL8nkZ
	TTa4kFGiOUQiQdmclg+1Kjx/DzT/f+IHo1CtjJ3+6DP5QbFnRT+5eG3109NZXexkYBA9k0jkd7eWY
	ssMTZCI4FT8kFPkE0nnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGb9-00000009MdV-2CcQ;
	Mon, 13 Jul 2026 13:21:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGb3-00000009MSE-1yU9
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:21:25 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCEGZf1516541
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iIY3wGO/Evz0NuvH19TFbyDP0TJUcPcg0Y3OgJVn8VE=; b=GqORSD1nWMrLIwju
	dywUGkEYFKq+rmGNeRyunPZnA42kW8w/K6rvHmSPDkEc6clZdmiRAaA3p/0th2Dl
	NYqVD9JjGR/onQ/xfUg1XGgoqpw4L+rRMSClGnQNgihTbKTf7GZwLO4NINKOLEld
	HHN6Qaeo6sNGB4IltzlvxOFQln7SMAlF4uoyOl/j8ykAYNTAhOH+CKgyDiT9Q7Bc
	7pKx5ChfjYC8H00edOy1Sq98fkRbN3pNo2ZARt85UvH5Q1i+RzPy5saw/Uv5l8Uz
	koWdVyX3bn6GnnH/C5P9FofwqQujr8Y+vx5TrfgWJ4pHHY62ft3IHSjQi+Vs1uFZ
	95HSfw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcubssc9a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c0408254aso52841031cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948880; x=1784553680; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iIY3wGO/Evz0NuvH19TFbyDP0TJUcPcg0Y3OgJVn8VE=;
        b=VBeiddJT8sLC5OQHlYXTMsGHhFSSuHa6dT3kPZ2BEfyjF74tHE+3bhDRaKPQrkGT7A
         GnRZY4NJ33OqV8efEczQmU4RhSOYwOo9NoVtC8nQ0MlKNNQ6FDmfoOrL4Uuw+b1YWnTQ
         R47jk+or5vChBCf2AGJop9mKf5VzpdHkg9ySrLD/CFS3KEge57o/bdLQN+QHzlY04tcW
         inDPeqorRiT6zos5uvU6cV2L6DfwiSooER9QwDtQasSX/pHROfuVpU0l3jJZ5QiX3UZG
         DgiAyvmBUWyS7vbhyr6o0/15cBhPUJsz/0WLcGjGps8lD8c1RjV4FYOtmNAtgAzjddr/
         Qg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948880; x=1784553680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iIY3wGO/Evz0NuvH19TFbyDP0TJUcPcg0Y3OgJVn8VE=;
        b=hlpoMbLcm3qOQTJVv+oQHfIfob6msn3C1Dc7uvx64xkg7wUB7ihdbzjVZGm+1IJRzm
         057CU+AisFEpEZfgotXG8NBIP1bxAeH7RzaU9AJ5+Boaqq3y+lIz8qT7oRJistxcLo+4
         MMEMHzcAvC/jJ+T4quVRsJp4F9gOLSKEgVnLVCsmOFnTeij/n6PrFpB62qiJub3bbdD+
         4dXKJFGTu23MEvAPZqEvvHe9GaJIM9RwNUvT00hYCBIssSCDVTqzImX/S+ReEbpfJnj1
         Nq6g9qFk73NlaEiAslZ+nJ3fHZmdKDj0LKtdRi5gvFNFvt5KTMSaOTMKK/WQI3MlZHo8
         4fFw==
X-Forwarded-Encrypted: i=1; AHgh+RqsEZ//+xyysBBDY1MUQ8f2afDFMpfEcHXblLCrUPCuCb5422rb8kpTemm0tBfZFW93kq0cx+wuFg++BkH6ww==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbP2X89eSVFAzpUX83mQvz+Ipdc9G9vhWVBHZSPxmjiwNkocHc
	exYVgcvo2Kr1/Hzev77BlMN3X2PD/ZOTqSSs1ZibSLoOoqjKPewAdxfYe3xfn2vwyvxryE6zakp
	3Xmb8sTtzR2qd3TibyIUVXU1/jS5j+i0Po8RsxO9EWTSIFiLAVciCtD4EsS7Tj1co4lv8ku8YBI
	Y=
X-Gm-Gg: AfdE7clsLXb6+NrofV5yNH3rsaHAa8/ZrP9Ml6PI+0cTThZ7AhBnL0KxUZHMy6A7Xn+
	xMsAkLPAIFFxtrq3rcTD5EGqDxYLVNUEfu4anMYAJV8ns9i4Ui8BdER6EB4NPxtLoXCj7GtLQn2
	nAqBL4mYtetrnx8bz3FAOpnsp4adShTTIJU0ZT3z8bwx2/v9/axrKZeefUIFr4IkTuW8uJGKPqp
	GlsKDLmdi7yGXC1kPBxOhbzTSbGDkMxsRyFO0mt+cnXVCPYtLTa0EqzPzDESaQRcvTy3ASCqsfb
	ndZDaascttxXBX1CXd0MiMxUj1S0Ep2Ci2om8ugNDk7Toe6+I0DCpxIj6klrjByvUzwbeIIFWF7
	DQ/sHzW/Yotpk1tmyaGvyJOrfsi8Wuc8S+3InlDgh
X-Received: by 2002:a05:622a:5148:b0:51c:753:4679 with SMTP id d75a77b69052e-51caa1275d6mr140016361cf.28.1783948879537;
        Mon, 13 Jul 2026 06:21:19 -0700 (PDT)
X-Received: by 2002:a05:622a:5148:b0:51c:753:4679 with SMTP id d75a77b69052e-51caa1275d6mr140015751cf.28.1783948878843;
        Mon, 13 Jul 2026 06:21:18 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:17 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:33 +0200
Subject: [PATCH net-next v13 04/10] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-4-119f8699ef8e@oss.qualcomm.com>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=18313;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2NeLxgTgsWOX5mimrNITiBcVK62N6JSjZN712yq69CI=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY3Ignv9BCyI/HHCcLCcZz6T1HmfewOYSlj/
 VcV0Rh5xbGJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmNwAKCRAFnS7L/zaE
 w4B4D/9KgA9PZzso9nUQjvIbhSCPPqE95028vrjuq3muJFM4kgDAnTvxVLBNAv2TpfLzTmpFgUx
 A2C4wL1Jhgvsf61fBUfnmzmMoat2qWH3K2onNAhLfOsJ/YScMFsc+vftzgeNsvidxNr7wLnKzOM
 AXwZjGQaKFypx6YmT/Gp7YMSJpDr3DM1fPklR21FjpuvqFwShGK7DHJ6m6Kk339baKTfVZ0MJsO
 1HOjcx8sUsfQLCIRB6c6TQKVO0AdeUTvC8GakhelqwjVk58U8kaz4kBxjT0tL/TdPs6kxdg8E/o
 7t1/z7oqixTT8y0dTUN413RXbnrjG12FyoT8MeHxXWNg//5n4GTNj0R4Wwl0Zz7MReSISnM4rDZ
 aUaD3lMdzpmpMJfHi0Y3c501LS1K3zoplYWlwDddz3H3ux/UPGdtAZSfcAzznc2qAPkfM3PRaN8
 ACj3rCLOAfccKSZCmauqyNhYVbVEJYU9I0hMTjDD4aWi/upFZdYTUGzf4T/uvJW/QqLEvapM6Sb
 PlegcQoiwVICClh+BC75S8aX4inrTjYzq4WvhWKnXYuvKE+j0sQq4MtSI6nr54wIDFef8/inkNn
 0DYfOdabCofkMHYoIi1MincXOiXS9lRyK1SNMhun14q4HMasCondNZJkNJb2bnN4kYcOOpxHHQI
 RKaA89lS28yPmtg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=Oq9/DS/t c=1 sm=1 tr=0 ts=6a54e650 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=gEfo2CItAAAA:8
 a=KKAkSRfTAAAA:8 a=mK_AVkanAAAA:8 a=EUspDBNiAAAA:8 a=yC-0_ovQAAAA:8
 a=P-IC7800AAAA:8 a=VwQbUJbxAAAA:8 a=aDaa4yMnCzVJehp5dXUA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=3gWm3jAn84ENXaBijsEo:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: FkG9x0Mk8SQbiuLWvJA81n-VQRdhAPo4
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX0owL92EhroWS
 SNVrfbFrSbVv0Uc7EoO9sjWVT2mwLgCyB5ojkdXoJ10aSXeQN+uGCIOL35ZBkqJq2U3g31O84Q2
 QyZOpYqQlWw7I6So+UOOv4+lYRgiD/Q=
X-Proofpoint-GUID: FkG9x0Mk8SQbiuLWvJA81n-VQRdhAPo4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfXw4e76VxSbayF
 KmWrpu1cHtIGbmx2pOJH2aGGqHzPSDVriM2VavvJNOZefs+jbi1NM/0/7lpVbkctav4UZI0S4sE
 Cc01RayJs5OJ8Z7ExFHitXtQF9eOTwS5eq+bGvuzCmcKh4VSsc5C5MmxezU3WZNFEBj+SsVGUGa
 HJYuj2sASGFlJ+W/4vGVUATzx9n1SFbM9z3xCn4AjuSxa4ZD4Qpg4WoYcoIjM8sclqZns5/EvX+
 aeun0vtu8Wj4n7I89p4ib+fA0VohUrh93TbWdy3iwKVqe9Fh5s5vWgx6cF1Gc2tfERf2n6XjuQd
 MS8Z7Hv4ezPxV9Mc8icK5d0u1X3FpD9dRH7xQpZp9moac+bV8/1th4ukaGw12I3AN5uyHVAp8h/
 7Yy1ZOZVMo3fVnXVsG2RCIoUFGFmbtzgKqWASL6b4xtt2qY3KwuFX2a7DY6S0kk0fiXJarQY0Ww
 TWtEWVjdnJRouXm+1pg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0
 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_062121_742057_61D37197 
X-CRM114-Status: GOOD (  13.21  )
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

Describe the firmware-managed variant of the QCom DesignWare MAC. As the
properties here differ a lot from the HLOS-managed variant, lets put it
in a separate file. Since we need to update the maximum number of power
domains, let's update existing bindings referencing the top-level
snps,dwmac.yaml and limit their maxItems for power-domains to 1.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Romain Gantois <romain.gantois@bootlin.com> # For RZ/N1
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/net/allwinner,sun7i-a20-gmac.yaml     |   3 +
 .../bindings/net/altr,socfpga-stmmac.yaml          |   3 +
 .../bindings/net/amlogic,meson-dwmac.yaml          |   3 +
 .../devicetree/bindings/net/eswin,eic7700-eth.yaml |   3 +
 .../devicetree/bindings/net/intel,dwmac-plat.yaml  |   3 +
 .../bindings/net/loongson,ls1b-gmac.yaml           |   3 +
 .../bindings/net/loongson,ls1c-emac.yaml           |   3 +
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml     |   3 +
 .../devicetree/bindings/net/nxp,lpc1850-dwmac.yaml |   3 +
 .../devicetree/bindings/net/nxp,s32-dwmac.yaml     |   3 +
 .../devicetree/bindings/net/qcom,ethqos.yaml       |   3 +
 .../bindings/net/qcom,sa8255p-ethqos.yaml          | 107 +++++++++++++++++++++
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml |   3 +
 .../bindings/net/renesas,rzv2h-gbeth.yaml          |   3 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |   3 +
 .../devicetree/bindings/net/snps,dwmac.yaml        |   5 +-
 .../bindings/net/sophgo,cv1800b-dwmac.yaml         |   3 +
 .../bindings/net/sophgo,sg2044-dwmac.yaml          |   3 +
 .../bindings/net/starfive,jh7110-dwmac.yaml        |   3 +
 .../devicetree/bindings/net/stm32-dwmac.yaml       |   3 +
 .../devicetree/bindings/net/tesla,fsd-ethqos.yaml  |   3 +
 .../devicetree/bindings/net/thead,th1520-gmac.yaml |   3 +
 .../bindings/net/toshiba,visconti-dwmac.yaml       |   3 +
 MAINTAINERS                                        |   1 +
 24 files changed, 175 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 23e92be33ac8609a16db530782989caed22a5730..b12632545673b2ad0148a677f45a7447309a43cd 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -40,6 +40,9 @@ properties:
     description:
       PHY regulator
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
index fc445ad5a1f1ac490e921696d6f7ca83d15de459..448e617cddc4cda8dbc77e83324495ffd5dfb9be 100644
--- a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
+++ b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
@@ -140,6 +140,9 @@ properties:
           - description: offset of the control register
           - description: shift within the control register
 
+  power-domains:
+    maxItems: 1
+
 patternProperties:
   "^mdio[0-9]$":
     type: object
diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index 5c91716d1f21e617543b03c5a90b993f8aee053c..9c9cc3ef384da0270489c21b3426572ea46d9499 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -158,6 +158,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
index 65882ff79d8d7e3227e31415676639dd86f7098f..081a21174fd42bc4925d1850b1147545e111363c 100644
--- a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
+++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
@@ -95,6 +95,9 @@ properties:
           - description: Optional offset of register controlling TXD delay
           - description: Optional offset of register controlling RXD delay
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
index 62c1da36a2b5a29290e5e01be87c48158c4adf89..e41851931b947559c89b0cd6f4756f71046f9594 100644
--- a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
+++ b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
@@ -47,6 +47,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml b/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
index c4f3224bad387b87a5b4a3049dabd75f2c4bd42f..c9a131b8d8304c41559a416b324df749c0a87d14 100644
--- a/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/loongson,ls1b-gmac.yaml
@@ -66,6 +66,9 @@ properties:
       - mii
       - rgmii-id
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml b/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
index 99001b940b8361f69bb917617f857ee99f4b3fa5..49db18423dd807683b9bb297978f5da8ea6cee3d 100644
--- a/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
+++ b/Documentation/devicetree/bindings/net/loongson,ls1c-emac.yaml
@@ -65,6 +65,9 @@ properties:
       - mii
       - rmii
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index e5db346beca9649be4f97727b78fda8973095912..b240c76e7dd5254d0c3752610c4aa848a3c3d65b 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -83,6 +83,9 @@ properties:
     description:
       To select RMII reference clock from external.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
index 05acd9bc7616356e68090ebdd4df20e42f70dd7e..f61188ab0dbe3c0cec5b10f7a65dfaff4dc3898f 100644
--- a/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,lpc1850-dwmac.yaml
@@ -51,6 +51,9 @@ properties:
     items:
       - const: stmmaceth
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
index 753a04941659b82b655dad1439ff66f8b37fa18b..fcad2274302d9cff36760184b74918a9835906f7 100644
--- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
@@ -81,6 +81,9 @@ properties:
       - const: rx
       - const: ptp_ref
 
+  power-domains:
+    maxItems: 1
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 423959cb928d945aa3e758a3c803d12bd61ec42b..ef520f8105773e22c0536ff419dad55fe316e1bd 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -86,6 +86,9 @@ properties:
   phy-names:
     const: serdes
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5158481e5e5b0feed5b3dcd2cda2f593b7ff62e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qcom,sa8255p-ethqos.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Ethernet ETHQOS device (firmware managed)
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
+  - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
+
+description:
+  dwmac based Qualcomm ethernet devices which support Gigabit
+  ethernet (version v2.3.0 and onwards) with clocks, interconnects, etc.
+  managed by firmware
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    const: qcom,sa8255p-ethqos
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: stmmaceth
+      - const: rgmii
+
+  interrupts:
+    items:
+      - description: Combined signal for various interrupt events
+      - description: The interrupt that occurs when HW safety error triggered
+
+  interrupt-names:
+    items:
+      - const: macirq
+      - const: sfty
+
+  power-domains:
+    minItems: 2
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: core
+      - const: mdio
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    items:
+      - const: serdes
+
+  iommus:
+    maxItems: 1
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg-names
+  - power-domains
+  - power-domain-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ethernet: ethernet@23040000 {
+        compatible = "qcom,sa8255p-ethqos";
+        reg = <0x23040000 0x10000>,
+              <0x23056000 0x100>;
+        reg-names = "stmmaceth", "rgmii";
+
+        iommus = <&apps_smmu 0x120 0x7>;
+
+        interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 782 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "macirq", "sfty";
+
+        dma-coherent;
+
+        snps,tso;
+        snps,pbl = <32>;
+        rx-fifo-depth = <16384>;
+        tx-fifo-depth = <16384>;
+
+        phy-handle = <&ethernet_phy>;
+        phy-mode = "2500base-x";
+
+        snps,mtl-rx-config = <&mtl_rx_setup1>;
+        snps,mtl-tx-config = <&mtl_tx_setup1>;
+
+        power-domains = <&scmi8_pd 0>, <&scmi8_pd 1>;
+        power-domain-names = "core", "mdio";
+
+        phys = <&serdes1>;
+        phy-names = "serdes";
+    };
diff --git a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
index 16dd7a2631abf6fb7dc8e0c90755ab1e81915b38..ed0d10a19ca4c47c05f6873c64b0537b90acd15a 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
@@ -44,6 +44,9 @@ properties:
       phandle pointing to a PCS sub-node compatible with
       renesas,rzn1-miic.yaml#
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
 
diff --git a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
index 2125b5ddf73dadd8b0d372e83a6b5c4624f5e648..8338834f49cd21df6c697a1f52a8b195c0208c23 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
@@ -154,6 +154,9 @@ properties:
       Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml#
       (Refer RZ/T2H portion in the DT-binding file)
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c4533deff85b052157984d0e2f23..3ec3f6dc2a125908ba98f20b1120311de8967954 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -123,6 +123,9 @@ properties:
   phy-supply:
     description: PHY regulator
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 2449311c6d28ed3fbf8c92526ce8b872900653f4..d3aff1df3070d1b22198766ee2e0131dcf925287 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -72,6 +72,7 @@ properties:
         - nuvoton,ma35d1-dwmac
         - nxp,s32g2-dwmac
         - qcom,qcs404-ethqos
+        - qcom,sa8255p-ethqos
         - qcom,sa8775p-ethqos
         - qcom,sc8280xp-ethqos
         - qcom,sm8150-ethqos
@@ -185,7 +186,8 @@ properties:
           - const: ahb
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   mac-mode:
     $ref: ethernet-controller.yaml#/properties/phy-connection-type
@@ -630,6 +632,7 @@ allOf:
                 - ingenic,x1830-mac
                 - ingenic,x2000-mac
                 - qcom,qcs404-ethqos
+                - qcom,sa8255p-ethqos
                 - qcom,sa8775p-ethqos
                 - qcom,sc8280xp-ethqos
                 - qcom,sm8150-ethqos
diff --git a/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
index b89456f0ef830991135bd17626da98661429596c..e78cbf594c695204040a53ab1e367daa9e12246b 100644
--- a/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,cv1800b-dwmac.yaml
@@ -49,6 +49,9 @@ properties:
   reset-names:
     const: stmmaceth
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
index e8d3814db0e94fdcd0f3ab2a9fa8bab972a97ab5..845e2c67d20037496bb1eec6eb73c99cde74e944 100644
--- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
@@ -52,6 +52,9 @@ properties:
   interrupt-names:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
index fdcc61c65f87d1dc15a17b9486cde032ffa7798b..c424e77973921e1f9f18135c3106f1c270c9ac87 100644
--- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
@@ -75,6 +75,9 @@ properties:
       The argument one is the offset of phy mode selection, the
       argument two is the shift of phy mode selection.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
index 987254900d0da7aab81237f20b1540ad8a17bd21..29b878079ff0c1a0ef95fc63f2035f478ee039b2 100644
--- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
@@ -121,6 +121,9 @@ properties:
     minItems: 1
     maxItems: 2
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks
diff --git a/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml b/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
index dd7481bb16e59982c26c1a54ae82b8cff85fdfe0..ad635529d676ed6b752ab3bde5152d5cbddcb519 100644
--- a/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/tesla,fsd-ethqos.yaml
@@ -67,6 +67,9 @@ properties:
       - rgmii-rxid
       - rgmii-txid
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
index b3492a9aa4effa73fadf92a63a76ba8bb65a8769..c859f8bb5d582af8b8782f2f89ab5e6ee3d7a46c 100644
--- a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
@@ -78,6 +78,9 @@ properties:
     items:
       - const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - clocks
   - clock-names
diff --git a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
index f0f32e18fc8550e6f63b87b60a095972453836c9..efa39eab0256a1102b01872bd848749788c9b4e8 100644
--- a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
@@ -48,6 +48,9 @@ properties:
   interrupt-names:
     const: macirq
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
diff --git a/MAINTAINERS b/MAINTAINERS
index 806bd2d80d153537393761df322165f683954d50..86e67aa4fb9dd187905a0291c09fdbd5d39379c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22185,6 +22185,7 @@ L:	netdev@vger.kernel.org
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+F:	Documentation/devicetree/bindings/net/qcom,sa8255p-ethqos.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
 
 QUALCOMM FASTRPC DRIVER

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
