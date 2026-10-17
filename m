Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFF5ECCF2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 16:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLdQwbVTOi4GvGY81tVYWPIXu1zG170XUFd6BTIn9ec=; b=d15OBX+NJB/aUG
	07HsQcAMJbW2sY7rFFfwCTkKwCBRNIBhiFnWDHF2PQcfVjGIOQazwGZw2+dlDBpsdKgt/CcJCPli2
	gF1MeeMfIt5dvXu+SBDWoEjidBPS2uEDHcvRTGYlfUMAw3pdUqCHI4imUAuZJReK3zMXCheswoZQ4
	ACY2C1EUqQgCB65mwvmznIOApj2iO7oeBDpjXipfKPEjJxJuIBgeu/mclLa29RrLiIMmvIQGIEyd/
	R7MVyb6Pat8zDkYzw5xCKcTp5GP/NV+CHXBpKE9H9ySM8XkuBOK2+op3iMn7AscHDvMSL2sTIV7Vy
	IZwkLRpIK6jvUoY7knRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7do-00000004xiW-0AbA;
	Sat, 17 Oct 2026 16:52:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7dg-00000004xfg-2iEY
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 16:52:12 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9l9v634831
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YwGr/VFcVBThPZuxD7wslr2Y
	PtoE5+81Oolo9GzuWu8=; b=ddkdEhfxlYdg0WsHZwg9YM05OnoCCx+IZFh7CpvA
	fZM4QzivJbpNpTR3Qtvrat7NqSk6ZsAwVBAwG3CoBTtAjfQGMNpWcuQ268iZAdGt
	b60a9SGpXkDLJ6ph+xnqDDr9mh0at3I1KPAALHtr+svlkjG7/Nu0r9dSvr1TPFdT
	ASyOqglJ2l2IcfKTLLF/bBQqY7QXhXz2vgiuIIoH98GsX7hItE+yHIikqJ9+b0XE
	900wrUHa54nqfofviVcxz0LDmr5v/J2R/i8OjdfSzkD3oOKAXZspDdj/WuXU8KkI
	nVOP8wkXAUnOP9wrXm5HU6qi64684cL5vBonmhbOSiPozg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc2a9h77r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 16:52:08 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35cbea41088so1363998eec.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 09:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792255927; x=1792860727; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YwGr/VFcVBThPZuxD7wslr2YPtoE5+81Oolo9GzuWu8=;
        b=PTsrsF4/L79za26wwDOBUUUmkEtyFD3oZjQcnPYAq/7DbmAzwJqJOlvHdLPmEfOjA5
         dRdz1MdECnsA87aAz4n2on5QCzLZ80txRZtczzEliF/prreOo+ggLH35lCE6ILW8f58H
         AtsdifyrNMrcNMcd4Dc5pRLivejWt/r3RUjZdLmH0WF6n6Qo3MxcBZrRLhXccvHljDmW
         ZP1GaoEfG2VA5Rb+wd6J1lfu/Qoc+9PFUbD7Wl1Hy18k6Md9lRlSd3xYZ6gRmrAgDS++
         iuvphVl594dGn/SCJuZ16cn9rCc7cP8R6aRluP8SwufnrsSNdtkspIUqexbPcgoS0yX3
         S36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792255927; x=1792860727;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YwGr/VFcVBThPZuxD7wslr2YPtoE5+81Oolo9GzuWu8=;
        b=y8gGxznPZ/zQ6H59NFfKCBgK7/ssCgpLAbY3u0L6FmZCwSOxjxRDv8IUnePzkEQSIB
         hH9rc+QLB+S9rS0aKVNXXxK5iBxzfwqnwg3SZRR3Zy9DLoZFlsVlWOsM4fkqwG0mF8OS
         GXOAGWW30LAMJjC6unTyUruVLM1mAHE7LqJfSV0e1+PdW3npDOsNNRTebMRB8HBCffQl
         X19ZfG/UlEwk5NqrLy0+k4RWtyrBrinXzjlXjf2JbJoAm8cpKIvCD+oZY/fQ2sn0Ccsm
         7/X38YUU0lEkwy+612h6KxAEPJbHQ4DEpgvqKv+ONkTKOk7CICPqEhx5cEcoq3UleqAr
         TwYQ==
X-Forwarded-Encrypted: i=1; AKwUvBwdGpBTRE+PBK+21XB6r89ImjN7JdmCUaXTMktS6/oY8zBObBo3ADSAG9CiSLFFbg7Yk/LJxiFWKPDCLxoC9Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYKO3ex0WG54vjyywGFeHQGyYPZeKMsq/kFtsvZGCvQ36qZiQzLg
	GPGC6w7p06/8c1Sd3XeVvfSgFYb88Y2M0DEGa7Nayb0a/ztpbKF3Q0H71IvvjY2XajTSG3mcwFA
	IY9FkfWKg9Ll5LD4uDFHU2rcxafMseQUs94yszNVwcHfuQWiCZHlKZFqkzkvxB/3hXQnblquMz0
	M=
X-Gm-Gg: AYBFou1vrIDUiWkEylbIO8ca/aQR3DagY3bU08XIzxMDbbtSIsT5s82RXnEm2X4XwvG
	Ugx0FXqcS66M5qURyYGfKN0jMzA7sNXs6snFMcotP6d/O+DiXqlLfD444PJBD701F9kfZfHDL3V
	2Ntha9Ay4Ca3XHwARkBWVo1V1lwZs6H2glj6BANf+/Smav350P9O3btbAAheLcZntGtl/mdEia2
	iDBB703eZN4D8ybr1fmFyEKQIIG8RQr4xUg8S+0/fZ+yNLbiJ1M8qlUaYsMOYLGYhw7GgRD1DLB
	io62xcc1g8B8JORjZp+QGDNg1wQORheShPoblY/P2Yfjno6Cqot3gVJZVCbu/eDMHmSU8v5IWQk
	JqL74OcJHoUsp
X-Received: by 2002:a05:693c:884f:b0:35d:4e41:d2c2 with SMTP id 5a478bee46e88-361a2c38d17mr4246673eec.33.1792255927185;
        Sat, 17 Oct 2026 09:52:07 -0700 (PDT)
X-Received: by 2002:a05:693c:884f:b0:35d:4e41:d2c2 with SMTP id 5a478bee46e88-361a2c38d17mr4246646eec.33.1792255926579;
        Sat, 17 Oct 2026 09:52:06 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6ca5sm16487376eec.9.2026.10.17.09.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 09:52:06 -0700 (PDT)
Date: Sat, 17 Oct 2026 22:21:50 +0530
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
Subject: Re: [PATCH net-next v16 6/7] net: stmmac: qcom-ethqos: factor out
 linux-level setup into a separate function
Message-ID: <atOnpkct5QYK9VW1@oss.qualcomm.com>
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
 <20261014-qcom-sa8255p-emac-v16-6-0266c2ead980@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-6-0266c2ead980@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2NyBTYWx0ZWRfX1e0SvQ9w7FSv
 g0rn7y1YLaLBQYfm/eO9MMmQB6mo5jCm4OBePQPiKdnsLBf6NLE2ogQSxG+7Ey7j1h4qkCpYZL0
 YuGcRDYxltIqtCAKuv1qOpbWsgEsleg=
X-Proofpoint-GUID: Df6fZldPWukI-ZSoonSlz_6WYCvVfeUh
X-Proofpoint-ORIG-GUID: Df6fZldPWukI-ZSoonSlz_6WYCvVfeUh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2NyBTYWx0ZWRfXykjrFQyLziMI
 /cECRdAdwhzpEB+LxdPWUeHPowNFKIeehKFeBegx8Bo41zBxUV/e7MKUCB5R+UOldolM6uPcBT7
 zW11z4OBatxRY2dYY8ttIv0GoRPsCIGUzz//8YzlIijnjA9ANTazdICJ0n3pWeMq4MhNFkXFoe0
 UoKmQRW/oEKnSX7SYUsz7WYBTnExKuCcoqagDggcypRyXpRGMFKI2sOAwnGdGcymZ1RNoKqxCFV
 KiedPKNj/HiJv3HeCEnx7+JwcIWmjHd2LYXTowoWVRm2VscmgK75IjSwK6ociaFfPJgGyez3JXG
 U9VLADCi5GgbL1rTyULZdATRQY+HXW5VOly1foKJbz4PlBfzu9d2CI3pnd0oYbK1eN8FMW4O1rc
 h+uuXUK4E/aBfS4fd66hRX6SZmZW7SE9KneObOmB8+XzXf9YpkHs7aSFT4dy2fqDhPVCL3eTeAn
 VSMb57sQXQYvsg/G3rg==
X-Authority-Analysis: v=2.4 cv=PMeaavqC c=1 sm=1 tr=0 ts=6ad3a7b8 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=rqvSfYwyKISaz1XZPbMA:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_095208_696685_22948FC6 
X-CRM114-Status: GOOD (  11.46  )
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

On Wed, Oct 14, 2026 at 02:36:45PM +0200, Bartosz Golaszewski wrote:
> Ahead of adding support for firmware-controlled EMAC variants, extend
> the ethqos_emac_driver_data structure with a setup() callback, implement
> it for the existing models and move all operations not required in SCMI
> mode into it.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
