Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E959C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gHS7rE7jKftuL6rZxGRvChvayxxjJ9dZXHbq8q14aM=; b=mz2hyrkIIxMOTQ
	0esepnQDlDIzLrrLqrLnELd96dr/aiEk8Oro6XiRP+pbKfr8lPkG3Js2INrRUjQ+bzdUgMaDIcNZh
	lhGL+W06CoMTj7Ih10P3iy8r6+htUMri+m6/ljsz1/nY8+CrkZsgeMU7JH62QsyCb34NRz+jhrf/C
	i3HU7/94mgPU1L3NpAGy0+d8VNyO/SkUD11zhKagOrsOqyUW6/GqbMeekSnPFuCwmLGrv/PdLi37i
	Dm+C0hCxbn/3RdDuxHADbL9r303+qcoYkFbtis3yKIf7to0coAqxQF2nzzr0cS9+/BWyxJEgU5JOK
	D6iuwV0dSFRQ4pUnoSbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ogr-00000008eX8-08mn;
	Wed, 23 Sep 2026 15:15:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ogl-00000008ePS-3DOI
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:15:18 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbWPg2443383
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=; b=oaYnBI4FY86JFFj3
	NUUpWuY4PVq1DwIYGrcirTaLqvcQk/tmiNCY6/X9tXRqfDyhxo2AxQmecmdOPRo+
	6XoTmN005WvzxmivYvjDXyhSSOLn7TZEm05ri3XmUUtOpRhIQ4DRmS+q5BjFm1GY
	EaVVKxuos1j8XiiBf0t3znXt9blhwYVawv9yR1Qq0y2VD6pxmqEVd+9oIwpiNwlQ
	dcrF0fIILFrB0X+oABM5Qc/qSuZjk4kTc/ElbGTRrjhVpnzhRxMK4o5MyHvVbcu8
	x1zwYIk7NDQnfqHz851x0gX00BMUOi2nxJ63Frq30NfAsKsXZuOPyXSEyshW9Tps
	aIbaTA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvbx7hgpq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:15 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5bbd01d56ecso331571e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 08:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790176514; x=1790781314; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=;
        b=fzWlUEqwBIS59MlBPyxvHjvH7WpLXvmtLYj7EdalA8TgRiiSNv62TiRJ2dRLuqZ00g
         om3Ph9L4SLyS5UxjFRe6IO/9oj70VfMcUWJ4ReOOp9hyusTOHOUnYVHa3e7QqlDXJ6Dt
         5w6y7+p2Nr0yYNfPTROsShExA3psOxwQRf0A4GmqCarRol6lMeAr/gPTQ8q+ty3tpcJr
         XYQp0R9TiMhN6ypqjPTUueycp6fxdCYMBxIp1PnQ07adTzmAgOVdq7Bn5ccMH9Adg8D0
         cuzRDoZz+R/Y+9rka/MwlJPnDDPd1LWJCi5De0UNPr83oXQiXr6ziW/CBH6fzmvenC7d
         zAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790176514; x=1790781314;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RyU4Ifafpyh/FLtyPoayXjzPbwMU/X5o2UFaqrYzldE=;
        b=JhibVjPkbB2BH9qgcGlvxyNoyeydKpWHAoaFZ7iwSYFSrs0QWpkpQr2xfBNvBGOJQQ
         eolDyfme15DHc68OaZlXRyamFFjdIR5RochbqHMaFmyiYLIgBKgwnGHrzCDUgYgRa+EJ
         YW5la4f6+uYZ+xuZlYatKx1853MF85XkN5F4hwUnEmswPcBtJevO7kvdWeggZm+tcJ9y
         00Sb+K7LkXMnZLj/qYJB6sN+ld1JpyLu9CNK6ShV8bkh3FRgH02wW1yo22ewXOkaCN5A
         5W8oJOIfg4MtndSd2FTghY8AgmD7OJxyjxLhneqvtkPp0AkBlpC820MXzAGOkoU8MvZo
         wMOA==
X-Forwarded-Encrypted: i=1; AKwUvBykxr8nr9j1525YSDs8FUYkC/GYkt/cFB6bY+w4ByYcSERpdDHVWplPKz4l6T4GwD72fmTPYo7C5rIYkbCwgw==@lists.infradead.org
X-Gm-Message-State: AFuF++nLDT4v2tYFcUalAUZYYRI3UBqTTxKPNoo9dMIzZ7JC1dEhqnIE
	6D1k2t0dy0jUSB5UnN5lZH8Mu8TIXeu3opb6fusJsAQwJ2fK5qDwwYkx/x/YQk2d/uRl4yKqUb4
	khmF/reogaN2ulFiJ09SenOTLSZDGWwjIsghJEwUk12ilsQei+x9EE2SEVUHfexSeCwRu60WwpH
	0=
X-Gm-Gg: AYBFou2VvLOdkPo0v9Jw52+JRlotgJAVHHn7R3oGkw5mqfl++JfKh+r1DNuSEVlCrLT
	9EC2De2Jpqa9OLXmlmfm5gTTGNDnyB8h2/BeniNCGPI6dyxtQXkhLSv9UWGlkWkbtdVAxIQtGGF
	8DQH2AsFdkKgvf3o+c3lxA3rJK+bFLvs3ekMOrBPXh6gevurLrjF/6hnrzfLcFcW+dZjmxLK1C4
	+asWPWanSrrbZd+yKqW1bOHcDtR9VTiAUyqrDPend9u1M6EpZqDlgJIf22AVCWXtbQZ9V/OsezN
	m89mjN1F3i86vwL3jnFgPUdJs/xhvGm1xLIpnb40EmB8Y3+DmbiPugJPD4Jy5C+7X2ATYvQbX+S
	AAOOZQm9qIx25Y5G1+6J030AJVdYe
X-Received: by 2002:a05:6122:e442:b0:573:a779:62cf with SMTP id 71dfb90a1353d-5c9f15a8529mr3242471e0c.7.1790176514338;
        Wed, 23 Sep 2026 08:15:14 -0700 (PDT)
X-Received: by 2002:a05:6122:e442:b0:573:a779:62cf with SMTP id 71dfb90a1353d-5c9f15a8529mr3242398e0c.7.1790176513783;
        Wed, 23 Sep 2026 08:15:13 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:34c6:dbd6:5b58:a3fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe0c4054fsm55126325e9.3.2026.09.23.08.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 08:15:13 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 17:14:39 +0200
Subject: [PATCH net-next v15 5/9] net: stmmac: qcom-ethqos: set serdes mode
 before powerup
MIME-Version: 1.0
Message-Id: <20260923-qcom-sa8255p-emac-v15-5-e82f33720737@oss.qualcomm.com>
References: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
In-Reply-To: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
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
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqs+znmxfJ65EaHdReTe9c8RxTkoxpSJy+BciHI
 ooUHTBSphqJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarPs5wAKCRAFnS7L/zaE
 w7eGD/9me0usFPzjz9Ap74v8M7uevU7NNQu8WYdLzpmJBCHqK46zb9X3Qs31qUKCdGnsbihLbjr
 i7C+wf7iDiXNppsWiIlCGYG4rcfZr4DVYR31Lynd5rZ9PcdXo0M7xf2aFf4DsojYNa9fye3g3do
 TSI32h1enIQKeNqFocyf8COvMtqtaAdDYXnQOFzIfulM1+e5AWjLLse+e+ppmzj3tu3PJUlkjEw
 s/RVWFLLFDAhl+1Qb13GOnrTJjMPrr+0gb8aAX0ApIh21VxiWlk/lkP/UMboIQjsDMyr/0E5Tk7
 1M+nCLSLRLuJPVpgimvvWmeQWrc8t6tE+avihxWVQjF1yPTWqG6YnG5PPmhJK4visB5CI5gE+Qr
 3eI0RmGvllLQifmGqzMC6ivwn3DI5Fljv5hug3bePkXBkjR4eF91PptFTM+rRu4LU1RdWwKYpCU
 uTYPakyKgugnnE3+ga/iY/SfTfJUJaBscMdUW6G4VE3rDiM+0hg3onBrwKkxQ6iWwFqM81uTgJ6
 UdOBGv9yzdFuevJdpJe7T2JDJ32Zp+zGmbdn6jr6OAiyxz8uUgq+bYrYSCeB/jXsDjUtvQ+1Mbz
 PHjDsbKrjzuRXy32lDmtrXX0dukM9pTbcJN2PXKbKJJjF5Y3FtYhPaHU4ryuGcX9Lr9HyNGtWWX
 PHxpgsRslwWmWhA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: n6lC9VAg0JRU-TOKcdy2q3fIAIhyKFQ7
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ab3ed03 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=lIIuVyqIMTwqdMfQNTsA:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfX45y7D7wIqxnd
 SReOeHrEiardfOZE0CLzDBcKAGot528MqCxpq+Fua4Pas7HMSxhvtP3TxPbwRBUT38pK1FPzMKS
 o8xAtTALnAM7eI3S0sUrVW/EdNXJpFCjOL+XYX/Y1ta6zkRanScqCCZuY/6vsy7NRYqXznN+bec
 9OtnVM8e0yWd93xayhfII/uxtEkLoTQy91TONQnRJB9DCETq3ATk59KCgbczRVrJSNlgTwekwAq
 8jza81s73mUZLC5tW8SFVl7vF6GQVyNx8dRjcE+NtR8yKcmCM2G4BhcIrCxxQ1rCTSUol9HSOOD
 V1XxoHkaMCPo7XnS+WMDMyWuxP7+B2G/R4Nswm6st0E0m+LwyPq4kTMxc1qeDKnj1HWt72tyIwo
 q5j4m5p3kH1UCJhr5tckopsCvmynSPoE0f2cOSZQknCpsUpWKENP8XSPVYWbQ0JCj07DXLoiFgg
 og5hs4nnZ4VSu2qiC6Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfX7nHthUpwLpaI
 s8uN8Hv1C6Yho42JJtKboktzd/v6krrIyBPFFCIa3UBa+NEdohbk5oGWjgQQCRxVwXLy/W7uZ8N
 rZFbmM79ex0LSUhgk6up4odMQlqfNfk=
X-Proofpoint-GUID: n6lC9VAg0JRU-TOKcdy2q3fIAIhyKFQ7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_081516_164967_79EC5AB9 
X-CRM114-Status: GOOD (  17.09  )
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
