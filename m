Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC7A6CCF2C1
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 16:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpRE1RAIWEQGb6ipuOPpOyMa1LyAbEEXHpYi8HrsGt8=; b=DekV44FGSrMAFo
	gAusZsYZTPZHE48GkfxFhgiJqtyBte+APl1OIZ9UboH/8RjimpbQ8i6km7lRJc9eZXjns+c9uIlX2
	00QbbVGQ+PaMdeegC6GSSYI4YVUgwcx0i97oEhDt3dEqbTvK3sYsxZLFiAwfV38kHvjMkEBAVz5Ka
	qhmz22xrkVItvFhtuC0tT0w8Zufh8RgGIKcJQCpnrCyU78ja6snYzUBSuBAFMGzVfHNDtp2ckbuYi
	FBcZ2z8bF3oaVF6mo3Lz7zfy+bSUux4wNoisxecnx+XI72Tdgy9XkwAcjWJBxGqPqYZOFVPIhRqgX
	lieFKTOVEs7E6n4d3P0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7RU-00000004wKw-1GBp;
	Sat, 17 Oct 2026 16:39:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7RR-00000004wJV-1tgL
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 16:39:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGA3FZ2032773
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:39:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hz4iIDuDhHEcy2mIuGeKuord
	9GLsrFZT6JV2X218PUA=; b=iqcI3njCDzM4e7mRHLw+YV3xmeKx13qdpNpYLO1c
	uKuJcnhcRz3rtqo+XqDGeMCZv2dURNY8sE4Up/wSPorj21shN+H4P4PvOUiE1k4f
	HrKJsV+TXCcL1K6rMrtrXUEtT4Vlu4w4TsY7ngl01CsdTZz1rKlYemGVmnu3eNHV
	+HjThJ6ViFeCJyAVpyHQYmZUV+RGbosOkNtCwmXNHB6OUn0sulMIxvCNKMz7qg71
	VvhPs8OoWfwTc1Wwi9VbA8nr0EEah65QxY+qlhZZrIAZfY7QJDXrV6PujpiUFd11
	LA1oKqK2zNAXkDqjMldYzsbUJ7V6A2GAOrlTldaC5GhPdA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc0kxhbuj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:39:28 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35d4538fd74so2935989eec.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 09:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792255167; x=1792859967; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hz4iIDuDhHEcy2mIuGeKuord9GLsrFZT6JV2X218PUA=;
        b=Adqoyl3VEdi+elyTpQ55ybVsDo+2i6wiVEQAeUf0qjeq3771rQH33PjCHsTycFNnUS
         70XUj3JoPgJr3iBJk9KnT/9Qb0UGNpBVjm2BkxX/1B+Joc7fOymUQ2wRfRUU/a4q1iy7
         noBnMJjmkI2pmlQ5t713cKrupHyMNvEptpK549Ho4R/l4gDQOzYsBtU7/4E4qfiH44Pp
         MqOcfTr5n32anVnS7RoOmLlx8T+2bycei36uXOcwJHGaMT2RLQHGEQaRhabN8jFnLdUs
         jmUq5WquyZaew5G9u+B3d82UZw3kQXZdQBs6BIAW2H47tAaFPvEE1Fr1zRBlKXJpLkrZ
         KNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792255167; x=1792859967;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hz4iIDuDhHEcy2mIuGeKuord9GLsrFZT6JV2X218PUA=;
        b=xR/2xp62uuxpdSGaS51wrybgUBI/WhyiCokLhYnffaFrEufL91hoSLGC/fO/h7irNV
         kysdhpxW+XF6eSbsZMrAqIPNC1+hhKG6F/U36behhM8Wt8mV9rQwg2c5Qk8ehbQI1IdK
         sNLSKth4oKuDJx8I6to/gMcraSGKxEzFmv5BlsdJi3lq1DZMN4GTRO5k4HjAUv005LZK
         EGd7zZ5DuQwWYvd+0Kdz+vWHJUQZQCIUlpbC6NJqe2xJ1OjFIAHpTvQTXJt9IqKhDAYX
         CnHuES5DCA2QO87P4t2MLRhQKtfEomtz1ctbJRYKQjihwTS55a+aQ/Aw63x4y97OYnuw
         vzkg==
X-Forwarded-Encrypted: i=1; AKwUvBzJkpNCf2vL/jMNeDWD7UWxKfFGONM1JGSD9CiH/pV7VK33AYv/1TArJjTuGGP+O8ZuLgacS7fS8CEO0xPKXw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLhDxytIDSNII8raDuBrj1a8GLBG8IRzv3SDkYrvExOwhyaB0f6
	aLRrWQfogsgyE5RYSd3C909DEWVSKHfQSQbO+fWeYrqJNaw0nF7mVSlf5oXrGtBFdaIJX3m0o9T
	n2L1HOeHnzxiyyTdOrYdLjyxIWyoUImh4uNDhBsZuzFgDfyp5wiT2y6hewWnD9wOJIHfkGuhDFV
	Q=
X-Gm-Gg: AYBFou2SHFgPHb2fuOFA8r9IaCDPElcCH/IlyRRB9q+gJ0mwB31qiy2MI4zsiDH5qNa
	LcIagJG5LB39kkNUHfF1WonjfNhCtHMRyBHHRsWh2wAkX2yhzxumZgZklB6kZlsMpn/lN4v6EXf
	0J6ufhgygi8UujZcjyRv6jUAgoFkycuhW9aX2hT6qlK0umAl/e2TiPqhQb1XaxkCcbeeatc2f9H
	KoVpzs9J7NeKCz77qJoB5Qh30hM0sEMNJoUCCS/T9fQY59Xw5Wos44yC1IWV6qO5Y0mRgR2RdvG
	TfTNQhokPHgjuXoCa/3zIzq/ljGoGmC4bEbl/ZPoDfRVVTamyYGRd3ggF5MRN2i4Bi0qRites19
	mC1Ns32oqadW+
X-Received: by 2002:a05:7300:2406:b0:360:5f7e:2eb9 with SMTP id 5a478bee46e88-361a254da08mr4629957eec.32.1792255167312;
        Sat, 17 Oct 2026 09:39:27 -0700 (PDT)
X-Received: by 2002:a05:7300:2406:b0:360:5f7e:2eb9 with SMTP id 5a478bee46e88-361a254da08mr4629905eec.32.1792255166648;
        Sat, 17 Oct 2026 09:39:26 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17691508eec.7.2026.10.17.09.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 09:39:26 -0700 (PDT)
Date: Sat, 17 Oct 2026 22:09:10 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v16 4/7] net: stmmac: qcom-ethqos: update
 phy_mode to the resolved interface in mac_finish()
Message-ID: <atOkrubiz/V7aFiu@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
 <20261014-qcom-sa8255p-emac-v16-4-0266c2ead980@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-4-0266c2ead980@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfX7y5DUy7jCIcV
 +5fHdDAzLJdGkh8eVpXh9r+Ja+pvV1/kJJjByMUZcSpv6lL/MjiydYxi0SgnpAsO16UQco/eeOT
 +MPrbalmyJjonb1iHOfoiMyS6SUgI2o=
X-Authority-Analysis: v=2.4 cv=JpZkP84C c=1 sm=1 tr=0 ts=6ad3a4c0 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=K33ZUWoUxhUzfzW7EYwA:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2NiBTYWx0ZWRfX6U7J6Vw75C+c
 GRnx/8iEiDuhiYAahmJ97qPqOzFianNFgfAybaJ3ea7hLUcaIdeb9HNTZtPejjGejTz77e+jW35
 sJQnaNjVTCadNVm5HC9JtsilJg6f8r7RAxi/rMLaoCS0M9MJtjsJslenaWxhIXzZVfiFmZdNylj
 3OfTShA14rx0N2ayw8yJ0Vsiit8PttuTp5XePJ1SKcljSMGrkch2KbPmgvKpITeMDGFvsewQ1p3
 SGBlZhp6GIF6VAK25/5IoIlX2kQx13oRy76q/9t/hj5E1ph5v+aGV2+/w+cHUglaNrauS4cwphn
 d1TQqdC/AeLc5rZDpkd4aA+sifPJz8ZWnZ9chtDMMin1o44wHxJQWqvmRdbHX5c0Aq1LECXDF5x
 A9gkKqpVgwa0XnKJ10YPWtz9szl8kQzvdryAXrIQg8RN4QYlpz8oRnxHkvnyZEQEyuJUwZp0BNz
 1d2noQGflI8KloRXdcw==
X-Proofpoint-ORIG-GUID: JbEZKgajBpXnOmMbP3VlqaKfj1TWSrIm
X-Proofpoint-GUID: JbEZKgajBpXnOmMbP3VlqaKfj1TWSrIm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0
 clxscore=1011 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610170066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_093929_647335_6A86232C 
X-CRM114-Status: GOOD (  19.61  )
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

On Wed, Oct 14, 2026 at 02:36:43PM +0200, Bartosz Golaszewski wrote:
> ethqos->phy_mode is read by serdes_powerup() and
> qcom_ethqos_set_sgmii_loopback() to configure the SerDes and its
> wrapper for the correct interface. It is set once at probe from the DT
> phy-mode property and never updated.
> 
> phylink resolves the actual runtime interface and passes it to the
> mac_finish() callback. On platforms that only ever operate at one speed
> these two values are always the same, but when the interface changes
> at runtime - for example switching between SGMII and 2500BASE-X - the
> stored value becomes stale. The next serdes_powerup() call, on
> a subsequent link cycle, then reinitializes the SerDes to the wrong mode.
> 
> Update ethqos->phy_mode from the interface argument in
> ethqos_mac_finish_serdes() so that it always reflects the last
> resolved interface.
> 
> With that, we now update the phy_mode to the runtime-resolved interface,
> so any subsequent resume with a 1G SGMII link skips the loopback setup
> and the DMA reset hangs. To remedy this, extend the guard to include
> PHY_INTERFACE_MODE_SGMII.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

I am not sure but should this have a Fixes: tag?

Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
