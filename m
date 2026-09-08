Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D4F2C79FAA
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 14:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gHS7rE7jKftuL6rZxGRvChvayxxjJ9dZXHbq8q14aM=; b=ync4qSxkskcKzZ
	6Fw3AfY+SJM6IybS6XZi9WqXuMQYibClALZv4qTO0nvr88XWaLc/qbhQT0k0VtLYdzlf1BAzNPznB
	KjyhMQzyllozs3mCtFkOd1zf2BWz9qzrxypvL/0RtfNzGXGXXssINcC1Ny1kVCKPJbiBO5bG4FE2V
	FpR2UVYISF58VmYJqmFhL2R/RXUumU1CeNZL8YCg7u7akzvGiab0mC1HGacwrTi/agBbmB7jjxTwt
	/tAhagIrH1HugroDILlhq3k84DHgnSzN5Fk0/Ohd0hmC4NL9U4o4RnXYoEgpnp4YRSX31ypkSHbkM
	Vyr7un7A0P8VoCjP20EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xHc-00000009Mt0-3Cxy;
	Tue, 08 Sep 2026 14:58:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xH6-00000009MJf-0zII
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 14:58:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688EjBgA3835519
	for <linux-rockchip@lists.infradead.org>; Tue, 8 Sep 2026 14:58:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=; b=TlfY/+70lYPBwKfG
	8C+dPQvcTQV5IWcBhMbPO3VQCQZbx9FGQlPPtyxXFmZ2ZPNkrjBxPpSwG8FxPQRX
	IkPviXWaBMs5F7rOTPVAklbcam91LZ5oLtPhuhV27it6Ai6880PRcG6CqxGaf9Ix
	kCawijrWOm5I+qk/2ewAvYYCZd175r699olAl6bWXKgp102LwYvOsdFY31olu5SZ
	Ug6q/2vRt+a5KBrUdSgr02i9M5w5Vbe13ToeJ2JPg2U2XESm5HdG5WY7tLgMbfgt
	hIgwfGrq5kBar8GOh6Be2mUM+m5MDsCFQGeVHzke756Waxuz8EejSIJxKkwieNvq
	qIa3sw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjfp49cbk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 14:58:15 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97e9e2deaa4so3456094241.1
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 07:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788879494; x=1789484294; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=;
        b=bYTVPLS5DCnsCI9OYDcrpIHrOAocrpoc5ndEp78iluCzuyti/l3DTzAE57DT76Hx9X
         O18W1LRMAMwsLF8EoNLaISvrTKORigP2zYH624s3E8zIUM4jXjhBMukyOS5gxGzcZ5e8
         Rj0+NoA8WxWtHLGtF6IuNiM/GZ9OXXxvj+zB7TB9OQgiLekBOClLY4eUESPXypZf05Vb
         W4UG3GvY4xoTcmaQCBLRmwhHDJCUD8D9HcFiEqc8uBkFVItm40gNRqdsItgEaHwncubN
         1F1A9PH9+LMWGJ0DdKjr82TrftVQx7yrzR0cBbs9K2uObWdGaMSfmk1GOE5JIiZLhnfg
         RUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788879494; x=1789484294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=;
        b=pccF986fdVZmuoMIn1UTjfyH5qIM/rZyIA/WTpQ9P/5d+Rc5WBW6uzXN+8J3uZnOb2
         l4PzcPdBQtgI3XpEnqbRQh3Bn269Ubv9xYKHKePTZIGAVGyocnA3wXBG6Bb3AM1SgwoN
         kV4g5znCLn2TH4TRcOG6XUWaqT4du8gP/k9scFQoIPZsDKKU7VubgmkQ84pNWxQBm3r4
         SvgJnjlJpd0ndF++EI6XikJODSGZlEhojGxpLnDHdq+WE50ZqyPzYfg+u0Y+c4yQZxSq
         f/OI0Wl+zT5OuhSeNJMmQSfUFMUOE06FlWSwZT6TwClihD2dksPh5b1vxyE0C/QkwglJ
         7KYg==
X-Forwarded-Encrypted: i=1; AKwUvBya7TyILlvLN7E4qCsAZs4Ui9AWDkeZ2RVa50Q8k8veT6jAQASPbaCoXxbTDm8K2d3iFg35M6rMBGYcqfOq6w==@lists.infradead.org
X-Gm-Message-State: AFuF++kgz3lhaBkp9RgIoxoHDlHUy8+LAoc5n7UkogyasaNjqdoGMzyk
	/+NixrRRptId2BcxLPIsYpB6TqarbkIEFiLFOQI+kdPe4sMuZAUhyqZVW9jIzm0F5jgpw/n1Jvp
	FJAVB7ujzcPO6TCV/8ai58f3QhB9635HK9HEHa7wtin1GnGd7eCOM+HxIfLcpG19QD7xtsuc0La
	8=
X-Gm-Gg: AYBFou152eXkKILhXCwOrqJ2PosFZWXNfxGix5+Ds1j4Yhg0Z4AVnINoso42pKPcP5o
	QsU4aAV+5Ek69qlrZKf3rOvuqzAgOV+q2MELeHfSPTn2arnaSpz9LV6FqN2Sak4jrZZ7ZwJy7fK
	DYdmRJ6O+SF5Q84pCt8U0KMMKv/Fs7YUIfqNtC9cMaMaaeedITcXjAQ9OSlLv1MKX9TaDjVGoUi
	JRQRzmX42Ry7hvofnDJz6thC2Hw/P5727ymsn14eFFnTUfjv48OCRlCFoIZRFMc88G577veiX3g
	JLFAZN9K243X/hdZGSpTqjpfZpmaJKBJIHYrzeU6YkxbkNCLo1rPYbdQ43QLOgQJlAdnLVddAsm
	NTZaHTto6zoN3fI5vHNH2v3XdjUzU
X-Received: by 2002:a05:6102:54a8:b0:785:c960:ff85 with SMTP id ada2fe7eead31-78a4a8e5299mr12862077137.7.1788879494508;
        Tue, 08 Sep 2026 07:58:14 -0700 (PDT)
X-Received: by 2002:a05:6102:54a8:b0:785:c960:ff85 with SMTP id ada2fe7eead31-78a4a8e5299mr12862044137.7.1788879494031;
        Tue, 08 Sep 2026 07:58:14 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:79a2:f118:df09:fe51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485958f1493sm25191276f8f.37.2026.09.08.07.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:58:10 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 16:57:24 +0200
Subject: [PATCH net-next v14 05/10] net: stmmac: qcom-ethqos: set serdes
 mode before powerup
MIME-Version: 1.0
Message-Id: <20260908-qcom-sa8255p-emac-v14-5-ec212b747a7d@oss.qualcomm.com>
References: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
In-Reply-To: <20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1365;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Rq+TDPdqhF6BqR973VgYSIdLvxRoWPIkY3OnfX0xzLQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqoCJr2HJy3rNOohKIofZRC/HrZwZ9P0zZOWRXQ
 S51BxunZFiJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqAiawAKCRAFnS7L/zaE
 w1OnEAC2YRnquSZ8wqTHNjfW4N3WzbgI3U5rbMQqt5bXxKUwgjLXrFzhBTY8uZA1Uu0+YoP08u1
 hQ46nB7p89WKc1VrhJY1U3TBBxcnlyLqIkl2hqgHtf1fSMUN4qgDtlqVocrwtLo2m5B+ZkA+SNW
 BABXgXrQBkl+InavpYsVxDOsCYpsIkjcfcmemRkzzDrsydaAUlT8Ov9GJ2BYIOGg7WDuD4Rz+ik
 d+Y690KTRpYoKbThlgXcMVH24nuDtDCJNvpc1ldLVtyFga2uu6MbHTKv/6UbAFvDX+QPpMGFrAe
 Oy6Toa8Mi0W/hKPw3y8okYWSFMnIFgjaM4kxHqbSwGsaNVS0b+9EVcOCZtCExYoaUn9Pimgu3fT
 RtbsIwGW0KLpbisASrL4SCIbir8WO67kRTu+ghSfBbEDc6lZbBQ3rj1O2Of6YuerpwjRD3KvuGL
 ipmpqBLUgXTallF0viP/60sN8lmlCHK/P40dgJmAQqQDeJ8FPkbVhTaFywQtHpXvZqHlH8Z4PAu
 vYOZLTFTPtfeOKLdmOcry2ULa5ykPNwawmv9hfmoKv37Jms7ueFEvSgx6/1ZJOGmzQQ7BGMKch5
 F+tv2Ty8o6jwM4rTrDx8+PYus1TZZCr5JRunxR90WQ1+tThTC+LYar9fGlOy+BPfOTWZf4VN7WF
 5ZP/X8M2ZwFQnFg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=Qu9uG1yd c=1 sm=1 tr=0 ts=6aa02287 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=lIIuVyqIMTwqdMfQNTsA:9 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: aVzLIM8Nux3_PPxMKTSN1aeC4ctUrhRU
X-Proofpoint-GUID: aVzLIM8Nux3_PPxMKTSN1aeC4ctUrhRU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfX0U5ieO3Hgy9x
 FoOqMJcje6gmB5xy/I8EHSPHnnByAYPgtYw40IVaWoJv9Z86+XEBXddXl4hkxfVOw+r/j1ZPqtd
 NnF8RGioVPU1HkSqKhw0Y2PcbNFXDic+jo1Sj7xMK+z+zX2KIfq4spzNVJIbBnFk3N7f09lun9o
 VJmiRGD/W1Ji2JGwuttZdSE4Ele5kWgpTq7VTMiv3KtMHeYgydqAi4K9FQw8+Bf7FpwKQBLeU64
 z0Cpzt1fegBWgVuepm/64e74mTaUgdGHPTww/5pfPEXuNH/1gJPaWeVIbfi3LDSbQUy0JikDatx
 n9QgovbKiT/S3/lEJhYRm7p0syc58Jc28W/BCG03gJBccX+pLj+9LqD2x8VKQRjNh6bLOVdwBsW
 zk7q6TH7y/85InlYwTSakc3FWaOMH8lD4YWqxCeArPeVAKJx/WKYRnoTmLIBBxNky8QJ/NXdDuZ
 Z5hCo2cFLsp/cFWxHfw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE2MSBTYWx0ZWRfXzTMpccHIZEvD
 MZYLyVKWvFJ2XuUPJw6Bc6D8RMopa0LpqF08uR7Hb8jxA58wT+hcBxOZaVMDR+kxtSMnRUYhNd9
 pCcq32TgLElzBCV4l1KwFT9H1JzWqow=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_075816_435222_72124E49 
X-CRM114-Status: GOOD (  17.06  )
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

Call phy_set_mode_ext() before phy_power_on() in
qcom_ethqos_serdes_powerup(). This is harmless for existing users but on
SCMI systems this is required for the PHY driver to select the right
performance level - which translates to the link speed. This is done
ahead of adding support for the firmware-managed EMAC on Qualcomm sa8255p.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index ac7d6d3e205a1ab5b391def879d6f1033a0961b6..47b70b5e706f221c01f1c0ae3b1acafae6641165 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -601,10 +601,19 @@ static int qcom_ethqos_serdes_powerup(struct net_device *ndev, void *priv)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(ethqos->serdes_phy, PHY_MODE_ETHERNET,
+			       ethqos->phy_mode);
+	if (ret)
+		goto err_out;
+
 	ret = phy_power_on(ethqos->serdes_phy);
 	if (ret)
-		phy_exit(ethqos->serdes_phy);
+		goto err_out;
 
+	return 0;
+
+err_out:
+	phy_exit(ethqos->serdes_phy);
 	return ret;
 }
 

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
